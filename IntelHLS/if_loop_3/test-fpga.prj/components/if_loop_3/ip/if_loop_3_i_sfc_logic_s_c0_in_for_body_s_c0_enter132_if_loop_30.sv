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
// SystemVerilog created on Tue Apr 18 14:50:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_3_i_sfc_logic_s_c0_in_for_body_s_c0_enter132_if_loop_30 (
    input wire [31:0] in_lm1_if_loop_3_avm_readdata,
    input wire [0:0] in_lm1_if_loop_3_avm_writeack,
    input wire [0:0] in_lm1_if_loop_3_avm_waitrequest,
    input wire [0:0] in_lm1_if_loop_3_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    input wire [31:0] in_lm42_if_loop_3_avm_readdata,
    input wire [0:0] in_lm42_if_loop_3_avm_writeack,
    input wire [0:0] in_lm42_if_loop_3_avm_waitrequest,
    input wire [0:0] in_lm42_if_loop_3_avm_readdatavalid,
    output wire [31:0] out_lm1_if_loop_3_avm_address,
    output wire [0:0] out_lm1_if_loop_3_avm_enable,
    output wire [0:0] out_lm1_if_loop_3_avm_read,
    output wire [0:0] out_lm1_if_loop_3_avm_write,
    output wire [31:0] out_lm1_if_loop_3_avm_writedata,
    output wire [3:0] out_lm1_if_loop_3_avm_byteenable,
    output wire [0:0] out_lm1_if_loop_3_avm_burstcount,
    output wire [31:0] out_lm42_if_loop_3_avm_address,
    output wire [0:0] out_lm42_if_loop_3_avm_enable,
    output wire [0:0] out_lm42_if_loop_3_avm_read,
    output wire [0:0] out_lm42_if_loop_3_avm_write,
    output wire [31:0] out_lm42_if_loop_3_avm_writedata,
    output wire [3:0] out_lm42_if_loop_3_avm_byteenable,
    output wire [0:0] out_lm42_if_loop_3_avm_burstcount,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_if_loop_31,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_070_q;
    wire [31:0] c_i32_100072_q;
    wire [31:0] c_i32_173_q;
    wire [32:0] c_i33_175_q;
    wire [32:0] c_i33_undef69_q;
    wire [3:0] c_i4_766_q;
    wire [63:0] c_if_loop_3_a_local_pmem_q;
    wire [63:0] c_if_loop_3_b_local_pmem_q;
    wire [0:0] i_acl_if_loop_329_s;
    reg [31:0] i_acl_if_loop_329_q;
    wire [1:0] i_arrayidx1_if_loop_319_vt_const_1_q;
    wire [63:0] i_arrayidx1_if_loop_319_vt_join_q;
    wire [61:0] i_arrayidx1_if_loop_319_vt_select_63_b;
    wire [63:0] i_arrayidx42_if_loop_322_vt_join_q;
    wire [61:0] i_arrayidx42_if_loop_322_vt_select_63_b;
    wire [3:0] i_cleanups_shl_if_loop_35_vt_join_q;
    wire [2:0] i_cleanups_shl_if_loop_35_vt_select_3_b;
    wire [33:0] i_cmp5_if_loop_325_a;
    wire [33:0] i_cmp5_if_loop_325_b;
    logic [33:0] i_cmp5_if_loop_325_o;
    wire [0:0] i_cmp5_if_loop_325_c;
    wire [0:0] i_first_cleanup_xor_if_loop_34_q;
    wire [0:0] i_first_cleanup_xor_or_if_loop_320_q;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_335_a;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_335_b;
    logic [33:0] i_fpga_indvars_iv_next_if_loop_335_o;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_335_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_if_loop_314_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_if_loop_314_q;
    wire [63:0] i_idxprom_if_loop_318_vt_join_q;
    wire [31:0] i_idxprom_if_loop_318_vt_select_31_b;
    wire [32:0] i_inc_if_loop_331_a;
    wire [32:0] i_inc_if_loop_331_b;
    logic [32:0] i_inc_if_loop_331_o;
    wire [32:0] i_inc_if_loop_331_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_337_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp95_if_loop_315_out_dest_data_out_0_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_35_if_loop_312_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_36_if_loop_344_out_intel_reserved_ffwd_2_0;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_321_out_lm1_if_loop_3_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_321_out_lm1_if_loop_3_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm1_if_loop_321_out_lm1_if_loop_3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_321_out_lm1_if_loop_3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_321_out_lm1_if_loop_3_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_321_out_lm1_if_loop_3_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_321_out_lm1_if_loop_3_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_321_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_lm42_if_loop_323_out_lm42_if_loop_3_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm42_if_loop_323_out_lm42_if_loop_3_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm42_if_loop_323_out_lm42_if_loop_3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm42_if_loop_323_out_lm42_if_loop_3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm42_if_loop_323_out_lm42_if_loop_3_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm42_if_loop_323_out_lm42_if_loop_3_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm42_if_loop_323_out_lm42_if_loop_3_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm42_if_loop_323_out_o_readdata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_010_pop8_if_loop_317_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_010_pop8_if_loop_317_out_feedback_stall_out_8;
    wire [31:0] i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_feedback_stall_out_7;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_feedback_stall_out_6;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_feedback_stall_out_10;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_feedback_stall_out_9;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_if_loop_311_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_if_loop_311_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_if_loop_340_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_if_loop_340_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_i_010_push8_if_loop_332_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i32_i_010_push8_if_loop_332_out_feedback_valid_out_8;
    wire [31:0] i_llvm_fpga_push_i32_sum_011_push7_if_loop_330_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i32_sum_011_push7_if_loop_330_out_feedback_valid_out_7;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_336_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_336_out_feedback_valid_out_6;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push10_if_loop_343_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_if_loop_343_out_feedback_valid_out_10;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push9_if_loop_39_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_if_loop_39_out_feedback_valid_out_9;
    wire [0:0] i_masked_if_loop_345_qi;
    reg [0:0] i_masked_if_loop_345_q;
    wire [0:0] i_next_cleanups_if_loop_342_s;
    reg [3:0] i_next_cleanups_if_loop_342_q;
    wire [3:0] i_next_initerations_if_loop_38_vt_join_q;
    wire [2:0] i_next_initerations_if_loop_38_vt_select_2_b;
    wire [0:0] i_notcmp_if_loop_339_q;
    wire [0:0] i_or_if_loop_341_q;
    wire [32:0] i_sub_if_loop_324_a;
    wire [32:0] i_sub_if_loop_324_b;
    logic [32:0] i_sub_if_loop_324_o;
    wire [32:0] i_sub_if_loop_324_q;
    wire [0:0] i_unnamed_if_loop_316_q;
    wire [0:0] i_unnamed_if_loop_338_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_if_loop_335_sel_x_b;
    wire [31:0] bgTrunc_i_inc_if_loop_331_sel_x_b;
    wire [31:0] bgTrunc_i_sub_if_loop_324_sel_x_b;
    wire [31:0] c_i32_171_recast_x_q;
    wire [9:0] i_arrayidx1_if_loop_30_add_x_a;
    wire [9:0] i_arrayidx1_if_loop_30_add_x_b;
    logic [9:0] i_arrayidx1_if_loop_30_add_x_o;
    wire [9:0] i_arrayidx1_if_loop_30_add_x_q;
    wire [63:0] i_arrayidx1_if_loop_30_append_upper_bits_x_q;
    wire [6:0] i_arrayidx1_if_loop_30_narrow_x_b;
    wire [8:0] i_arrayidx1_if_loop_30_shift_join_x_q;
    wire [8:0] i_arrayidx1_if_loop_30_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx1_if_loop_30_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx42_if_loop_30_add_x_a;
    wire [9:0] i_arrayidx42_if_loop_30_add_x_b;
    logic [9:0] i_arrayidx42_if_loop_30_add_x_o;
    wire [9:0] i_arrayidx42_if_loop_30_add_x_q;
    wire [63:0] i_arrayidx42_if_loop_30_append_upper_bits_x_q;
    wire [8:0] i_arrayidx42_if_loop_30_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_if_loop_33_sel_x_b;
    wire [63:0] i_idxprom_if_loop_318_sel_x_b;
    wire [0:0] i_last_initeration_if_loop_310_sel_x_b;
    wire [0:0] xMSB_uid147_i_div_if_loop_328_b;
    wire [31:0] yPSE_uid149_i_div_if_loop_328_b;
    wire [31:0] yPSE_uid149_i_div_if_loop_328_q;
    wire [32:0] yPSEA_uid151_i_div_if_loop_328_a;
    wire [32:0] yPSEA_uid151_i_div_if_loop_328_b;
    logic [32:0] yPSEA_uid151_i_div_if_loop_328_o;
    wire [32:0] yPSEA_uid151_i_div_if_loop_328_q;
    wire [31:0] yPS_uid152_i_div_if_loop_328_in;
    wire [31:0] yPS_uid152_i_div_if_loop_328_b;
    wire [30:0] normYNoLeadOne_uid155_i_div_if_loop_328_in;
    wire [30:0] normYNoLeadOne_uid155_i_div_if_loop_328_b;
    wire [30:0] paddingY_uid156_i_div_if_loop_328_q;
    wire [31:0] updatedY_uid157_i_div_if_loop_328_q;
    wire [31:0] normYIsOneC2_uid156_i_div_if_loop_328_a;
    wire [0:0] normYIsOneC2_uid156_i_div_if_loop_328_qi;
    reg [0:0] normYIsOneC2_uid156_i_div_if_loop_328_q;
    wire [0:0] normYIsOneC2_uid159_i_div_if_loop_328_b;
    wire [0:0] normYIsOne_uid160_i_div_if_loop_328_qi;
    reg [0:0] normYIsOne_uid160_i_div_if_loop_328_q;
    wire [31:0] yIsZero_uid161_i_div_if_loop_328_b;
    wire [0:0] yIsZero_uid161_i_div_if_loop_328_q;
    wire [38:0] fxpInverseRes_uid166_i_div_if_loop_328_in;
    wire [32:0] fxpInverseRes_uid166_i_div_if_loop_328_b;
    wire [32:0] oneInvRes_uid167_i_div_if_loop_328_q;
    wire [0:0] invResPostOneHandling2_uid168_i_div_if_loop_328_s;
    reg [32:0] invResPostOneHandling2_uid168_i_div_if_loop_328_q;
    wire [5:0] cWOut_uid169_i_div_if_loop_328_q;
    wire [6:0] rShiftCount_uid170_i_div_if_loop_328_a;
    wire [6:0] rShiftCount_uid170_i_div_if_loop_328_b;
    logic [6:0] rShiftCount_uid170_i_div_if_loop_328_o;
    wire [6:0] rShiftCount_uid170_i_div_if_loop_328_q;
    wire [31:0] xPSX_uid171_i_div_if_loop_328_b;
    wire [31:0] xPSX_uid171_i_div_if_loop_328_q;
    wire [1:0] zMsbY0_uid173_i_div_if_loop_328_q;
    wire [32:0] xPSXE_uid174_i_div_if_loop_328_a;
    wire [32:0] xPSXE_uid174_i_div_if_loop_328_b;
    logic [32:0] xPSXE_uid174_i_div_if_loop_328_o;
    wire [32:0] xPSXE_uid174_i_div_if_loop_328_q;
    wire [64:0] rightShiftInput_uid177_i_div_if_loop_328_in;
    wire [64:0] rightShiftInput_uid177_i_div_if_loop_328_b;
    wire [62:0] prodPostRightShiftPost_uid179_i_div_if_loop_328_in;
    wire [32:0] prodPostRightShiftPost_uid179_i_div_if_loop_328_b;
    wire [33:0] prodPostRightShiftPostRnd_uid181_i_div_if_loop_328_a;
    wire [33:0] prodPostRightShiftPostRnd_uid181_i_div_if_loop_328_b;
    logic [33:0] prodPostRightShiftPostRnd_uid181_i_div_if_loop_328_o;
    wire [33:0] prodPostRightShiftPostRnd_uid181_i_div_if_loop_328_q;
    wire [32:0] prodPostRightShiftPostRndRange_uid182_i_div_if_loop_328_in;
    wire [31:0] prodPostRightShiftPostRndRange_uid182_i_div_if_loop_328_b;
    wire [31:0] cstValOvfPos_uid183_i_div_if_loop_328_q;
    wire [31:0] cstValOvfneg_uid184_i_div_if_loop_328_q;
    wire [0:0] signX_uid185_i_div_if_loop_328_b;
    wire [0:0] cstOvf_uid186_i_div_if_loop_328_s;
    reg [31:0] cstOvf_uid186_i_div_if_loop_328_q;
    wire [0:0] resFinal_uid187_i_div_if_loop_328_s;
    reg [31:0] resFinal_uid187_i_div_if_loop_328_q;
    wire [65:0] prod_qy_GT_x_uid189_i_div_if_loop_328_a;
    wire [65:0] prod_qy_GT_x_uid189_i_div_if_loop_328_b;
    logic [65:0] prod_qy_GT_x_uid189_i_div_if_loop_328_o;
    wire [0:0] prod_qy_GT_x_uid189_i_div_if_loop_328_c;
    wire [65:0] prod_qy_LT_x_uid190_i_div_if_loop_328_a;
    wire [65:0] prod_qy_LT_x_uid190_i_div_if_loop_328_b;
    logic [65:0] prod_qy_LT_x_uid190_i_div_if_loop_328_o;
    wire [0:0] prod_qy_LT_x_uid190_i_div_if_loop_328_c;
    wire [0:0] resultSign_uid195_i_div_if_loop_328_qi;
    reg [0:0] resultSign_uid195_i_div_if_loop_328_q;
    wire [0:0] signResFinal_uid196_i_div_if_loop_328_b;
    wire [0:0] OverflowCond_uid197_i_div_if_loop_328_q;
    wire [0:0] CondNegX_uid198_i_div_if_loop_328_q;
    wire [0:0] invSignX_uid199_i_div_if_loop_328_q;
    wire [0:0] CondPosX_uid200_i_div_if_loop_328_q;
    wire [0:0] postMuxSelect_uid201_i_div_if_loop_328_q;
    wire [1:0] cstSubFinal_uid203_i_div_if_loop_328_q;
    wire [32:0] resFinalMP1_uid204_i_div_if_loop_328_a;
    wire [32:0] resFinalMP1_uid204_i_div_if_loop_328_b;
    logic [32:0] resFinalMP1_uid204_i_div_if_loop_328_o;
    wire [32:0] resFinalMP1_uid204_i_div_if_loop_328_q;
    wire [31:0] resFinalPostMux_uid205_i_div_if_loop_328_in;
    wire [31:0] resFinalPostMux_uid205_i_div_if_loop_328_b;
    wire [0:0] resFinalIntDiv_uid206_i_div_if_loop_328_s;
    reg [31:0] resFinalIntDiv_uid206_i_div_if_loop_328_q;
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
    wire [0:0] vCount_uid222_zCount_uid153_i_div_if_loop_328_qi;
    reg [0:0] vCount_uid222_zCount_uid153_i_div_if_loop_328_q;
    wire [0:0] vStagei_uid225_zCount_uid153_i_div_if_loop_328_s;
    reg [31:0] vStagei_uid225_zCount_uid153_i_div_if_loop_328_q;
    wire [15:0] zs_uid226_zCount_uid153_i_div_if_loop_328_q;
    wire [0:0] vCount_uid228_zCount_uid153_i_div_if_loop_328_q;
    wire [0:0] vStagei_uid231_zCount_uid153_i_div_if_loop_328_s;
    reg [15:0] vStagei_uid231_zCount_uid153_i_div_if_loop_328_q;
    wire [7:0] zs_uid232_zCount_uid153_i_div_if_loop_328_q;
    wire [0:0] vCount_uid234_zCount_uid153_i_div_if_loop_328_qi;
    reg [0:0] vCount_uid234_zCount_uid153_i_div_if_loop_328_q;
    wire [0:0] vStagei_uid237_zCount_uid153_i_div_if_loop_328_s;
    reg [7:0] vStagei_uid237_zCount_uid153_i_div_if_loop_328_q;
    wire [3:0] zs_uid238_zCount_uid153_i_div_if_loop_328_q;
    wire [0:0] vCount_uid240_zCount_uid153_i_div_if_loop_328_q;
    wire [0:0] vStagei_uid243_zCount_uid153_i_div_if_loop_328_s;
    reg [3:0] vStagei_uid243_zCount_uid153_i_div_if_loop_328_q;
    wire [0:0] vCount_uid246_zCount_uid153_i_div_if_loop_328_q;
    wire [0:0] vStagei_uid249_zCount_uid153_i_div_if_loop_328_s;
    reg [1:0] vStagei_uid249_zCount_uid153_i_div_if_loop_328_q;
    wire [0:0] rVStage_uid251_zCount_uid153_i_div_if_loop_328_b;
    wire [0:0] vCount_uid252_zCount_uid153_i_div_if_loop_328_q;
    wire [5:0] r_uid253_zCount_uid153_i_div_if_loop_328_q;
    wire [13:0] yT1_uid271_invPolyEval_b;
    wire [0:0] lowRangeB_uid273_invPolyEval_in;
    wire [0:0] lowRangeB_uid273_invPolyEval_b;
    wire [12:0] highBBits_uid274_invPolyEval_b;
    wire [21:0] s1sumAHighB_uid275_invPolyEval_a;
    wire [21:0] s1sumAHighB_uid275_invPolyEval_b;
    logic [21:0] s1sumAHighB_uid275_invPolyEval_o;
    wire [21:0] s1sumAHighB_uid275_invPolyEval_q;
    wire [22:0] s1_uid276_invPolyEval_q;
    wire [20:0] yT2_uid277_invPolyEval_b;
    wire [0:0] lowRangeB_uid279_invPolyEval_in;
    wire [0:0] lowRangeB_uid279_invPolyEval_b;
    wire [21:0] highBBits_uid280_invPolyEval_b;
    wire [29:0] s2sumAHighB_uid281_invPolyEval_a;
    wire [29:0] s2sumAHighB_uid281_invPolyEval_b;
    logic [29:0] s2sumAHighB_uid281_invPolyEval_o;
    wire [29:0] s2sumAHighB_uid281_invPolyEval_q;
    wire [30:0] s2_uid282_invPolyEval_q;
    wire [1:0] lowRangeB_uid285_invPolyEval_in;
    wire [1:0] lowRangeB_uid285_invPolyEval_b;
    wire [29:0] highBBits_uid286_invPolyEval_b;
    wire [38:0] s3sumAHighB_uid287_invPolyEval_a;
    wire [38:0] s3sumAHighB_uid287_invPolyEval_b;
    logic [38:0] s3sumAHighB_uid287_invPolyEval_o;
    wire [38:0] s3sumAHighB_uid287_invPolyEval_q;
    wire [40:0] s3_uid288_invPolyEval_q;
    wire [13:0] osig_uid291_pT1_uid272_invPolyEval_b;
    wire [22:0] osig_uid294_pT2_uid278_invPolyEval_b;
    wire [23:0] nx_mergedSignalTM_uid308_pT3_uid284_invPolyEval_q;
    wire [4:0] aboveLeftY_bottomExtension_uid313_pT3_uid284_invPolyEval_q;
    wire [17:0] aboveLeftY_mergedSignalTM_uid315_pT3_uid284_invPolyEval_q;
    wire [11:0] rightBottomX_bottomExtension_uid317_pT3_uid284_invPolyEval_q;
    wire [17:0] rightBottomX_mergedSignalTM_uid319_pT3_uid284_invPolyEval_q;
    wire [17:0] lowRangeB_uid325_pT3_uid284_invPolyEval_in;
    wire [17:0] lowRangeB_uid325_pT3_uid284_invPolyEval_b;
    wire [18:0] highBBits_uid326_pT3_uid284_invPolyEval_b;
    wire [36:0] lev1_a0sumAHighB_uid327_pT3_uid284_invPolyEval_a;
    wire [36:0] lev1_a0sumAHighB_uid327_pT3_uid284_invPolyEval_b;
    logic [36:0] lev1_a0sumAHighB_uid327_pT3_uid284_invPolyEval_o;
    wire [36:0] lev1_a0sumAHighB_uid327_pT3_uid284_invPolyEval_q;
    wire [54:0] lev1_a0_uid328_pT3_uid284_invPolyEval_q;
    wire [52:0] os_uid329_pT3_uid284_invPolyEval_in;
    wire [31:0] os_uid329_pT3_uid284_invPolyEval_b;
    wire [0:0] i_exitcond_if_loop_333_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid344_i_cleanups_shl_if_loop_30_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid344_i_cleanups_shl_if_loop_30_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid345_i_cleanups_shl_if_loop_30_shift_x_q;
    wire [0:0] leftShiftStage0_uid347_i_cleanups_shl_if_loop_30_shift_x_s;
    reg [3:0] leftShiftStage0_uid347_i_cleanups_shl_if_loop_30_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid351_i_next_initerations_if_loop_30_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid353_i_next_initerations_if_loop_30_shift_x_q;
    wire [0:0] rightShiftStage0_uid355_i_next_initerations_if_loop_30_shift_x_s;
    reg [3:0] rightShiftStage0_uid355_i_next_initerations_if_loop_30_shift_x_q;
    wire [15:0] leftShiftStage0Idx1Rng16_uid360_normY_uid154_i_div_if_loop_328_in;
    wire [15:0] leftShiftStage0Idx1Rng16_uid360_normY_uid154_i_div_if_loop_328_b;
    wire [31:0] leftShiftStage0Idx1_uid361_normY_uid154_i_div_if_loop_328_q;
    wire [1:0] leftShiftStage0_uid365_normY_uid154_i_div_if_loop_328_s;
    reg [31:0] leftShiftStage0_uid365_normY_uid154_i_div_if_loop_328_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid367_normY_uid154_i_div_if_loop_328_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid367_normY_uid154_i_div_if_loop_328_b;
    wire [31:0] leftShiftStage1Idx1_uid368_normY_uid154_i_div_if_loop_328_q;
    wire [23:0] leftShiftStage1Idx2Rng8_uid370_normY_uid154_i_div_if_loop_328_in;
    wire [23:0] leftShiftStage1Idx2Rng8_uid370_normY_uid154_i_div_if_loop_328_b;
    wire [31:0] leftShiftStage1Idx2_uid371_normY_uid154_i_div_if_loop_328_q;
    wire [19:0] leftShiftStage1Idx3Rng12_uid373_normY_uid154_i_div_if_loop_328_in;
    wire [19:0] leftShiftStage1Idx3Rng12_uid373_normY_uid154_i_div_if_loop_328_b;
    wire [31:0] leftShiftStage1Idx3_uid374_normY_uid154_i_div_if_loop_328_q;
    wire [1:0] leftShiftStage1_uid376_normY_uid154_i_div_if_loop_328_s;
    reg [31:0] leftShiftStage1_uid376_normY_uid154_i_div_if_loop_328_q;
    wire [30:0] leftShiftStage2Idx1Rng1_uid378_normY_uid154_i_div_if_loop_328_in;
    wire [30:0] leftShiftStage2Idx1Rng1_uid378_normY_uid154_i_div_if_loop_328_b;
    wire [31:0] leftShiftStage2Idx1_uid379_normY_uid154_i_div_if_loop_328_q;
    wire [29:0] leftShiftStage2Idx2Rng2_uid381_normY_uid154_i_div_if_loop_328_in;
    wire [29:0] leftShiftStage2Idx2Rng2_uid381_normY_uid154_i_div_if_loop_328_b;
    wire [31:0] leftShiftStage2Idx2_uid382_normY_uid154_i_div_if_loop_328_q;
    wire [2:0] leftShiftStage2Idx3Pad3_uid383_normY_uid154_i_div_if_loop_328_q;
    wire [28:0] leftShiftStage2Idx3Rng3_uid384_normY_uid154_i_div_if_loop_328_in;
    wire [28:0] leftShiftStage2Idx3Rng3_uid384_normY_uid154_i_div_if_loop_328_b;
    wire [31:0] leftShiftStage2Idx3_uid385_normY_uid154_i_div_if_loop_328_q;
    wire [1:0] leftShiftStage2_uid387_normY_uid154_i_div_if_loop_328_s;
    reg [31:0] leftShiftStage2_uid387_normY_uid154_i_div_if_loop_328_q;
    wire [15:0] prodXInvY_uid176_i_div_if_loop_328_bjB6_q;
    wire [65:0] prodXInvY_uid176_i_div_if_loop_328_sums_join_0_q;
    wire [52:0] prodXInvY_uid176_i_div_if_loop_328_sums_align_1_q;
    wire [52:0] prodXInvY_uid176_i_div_if_loop_328_sums_align_1_qint;
    wire [66:0] prodXInvY_uid176_i_div_if_loop_328_sums_result_add_0_0_a;
    wire [66:0] prodXInvY_uid176_i_div_if_loop_328_sums_result_add_0_0_b;
    logic [66:0] prodXInvY_uid176_i_div_if_loop_328_sums_result_add_0_0_o;
    wire [66:0] prodXInvY_uid176_i_div_if_loop_328_sums_result_add_0_0_q;
    wire [0:0] xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328_b;
    wire [63:0] rightShiftStage0Idx1Rng1_uid407_prodPostRightShift_uid178_i_div_if_loop_328_b;
    wire [64:0] rightShiftStage0Idx1_uid408_prodPostRightShift_uid178_i_div_if_loop_328_q;
    wire [1:0] seMsb_to2_uid409_in;
    wire [1:0] seMsb_to2_uid409_b;
    wire [62:0] rightShiftStage0Idx2Rng2_uid410_prodPostRightShift_uid178_i_div_if_loop_328_b;
    wire [64:0] rightShiftStage0Idx2_uid411_prodPostRightShift_uid178_i_div_if_loop_328_q;
    wire [2:0] seMsb_to3_uid412_in;
    wire [2:0] seMsb_to3_uid412_b;
    wire [61:0] rightShiftStage0Idx3Rng3_uid413_prodPostRightShift_uid178_i_div_if_loop_328_b;
    wire [64:0] rightShiftStage0Idx3_uid414_prodPostRightShift_uid178_i_div_if_loop_328_q;
    wire [1:0] rightShiftStage0_uid416_prodPostRightShift_uid178_i_div_if_loop_328_s;
    reg [64:0] rightShiftStage0_uid416_prodPostRightShift_uid178_i_div_if_loop_328_q;
    wire [3:0] seMsb_to4_uid417_in;
    wire [3:0] seMsb_to4_uid417_b;
    wire [60:0] rightShiftStage1Idx1Rng4_uid418_prodPostRightShift_uid178_i_div_if_loop_328_b;
    wire [64:0] rightShiftStage1Idx1_uid419_prodPostRightShift_uid178_i_div_if_loop_328_q;
    wire [7:0] seMsb_to8_uid420_in;
    wire [7:0] seMsb_to8_uid420_b;
    wire [56:0] rightShiftStage1Idx2Rng8_uid421_prodPostRightShift_uid178_i_div_if_loop_328_b;
    wire [64:0] rightShiftStage1Idx2_uid422_prodPostRightShift_uid178_i_div_if_loop_328_q;
    wire [11:0] seMsb_to12_uid423_in;
    wire [11:0] seMsb_to12_uid423_b;
    wire [52:0] rightShiftStage1Idx3Rng12_uid424_prodPostRightShift_uid178_i_div_if_loop_328_b;
    wire [64:0] rightShiftStage1Idx3_uid425_prodPostRightShift_uid178_i_div_if_loop_328_q;
    wire [1:0] rightShiftStage1_uid427_prodPostRightShift_uid178_i_div_if_loop_328_s;
    reg [64:0] rightShiftStage1_uid427_prodPostRightShift_uid178_i_div_if_loop_328_q;
    wire [15:0] seMsb_to16_uid428_in;
    wire [15:0] seMsb_to16_uid428_b;
    wire [48:0] rightShiftStage2Idx1Rng16_uid429_prodPostRightShift_uid178_i_div_if_loop_328_b;
    wire [64:0] rightShiftStage2Idx1_uid430_prodPostRightShift_uid178_i_div_if_loop_328_q;
    wire [31:0] seMsb_to32_uid431_in;
    wire [31:0] seMsb_to32_uid431_b;
    wire [32:0] rightShiftStage2Idx2Rng32_uid432_prodPostRightShift_uid178_i_div_if_loop_328_b;
    wire [64:0] rightShiftStage2Idx2_uid433_prodPostRightShift_uid178_i_div_if_loop_328_q;
    wire [47:0] seMsb_to48_uid434_in;
    wire [47:0] seMsb_to48_uid434_b;
    wire [16:0] rightShiftStage2Idx3Rng48_uid435_prodPostRightShift_uid178_i_div_if_loop_328_b;
    wire [64:0] rightShiftStage2Idx3_uid436_prodPostRightShift_uid178_i_div_if_loop_328_q;
    wire [1:0] rightShiftStage2_uid438_prodPostRightShift_uid178_i_div_if_loop_328_s;
    reg [64:0] rightShiftStage2_uid438_prodPostRightShift_uid178_i_div_if_loop_328_q;
    wire [63:0] seMsb_to64_uid439_in;
    wire [63:0] seMsb_to64_uid439_b;
    wire [0:0] rightShiftStage3Idx1Rng64_uid440_prodPostRightShift_uid178_i_div_if_loop_328_b;
    wire [64:0] rightShiftStage3Idx1_uid441_prodPostRightShift_uid178_i_div_if_loop_328_q;
    wire [0:0] rightShiftStage3_uid443_prodPostRightShift_uid178_i_div_if_loop_328_s;
    reg [64:0] rightShiftStage3_uid443_prodPostRightShift_uid178_i_div_if_loop_328_q;
    wire [13:0] prodResY_uid188_i_div_if_loop_328_bs1_b;
    wire [13:0] prodResY_uid188_i_div_if_loop_328_bs2_b;
    wire [17:0] prodResY_uid188_i_div_if_loop_328_bs4_in;
    wire [17:0] prodResY_uid188_i_div_if_loop_328_bs4_b;
    wire [17:0] prodResY_uid188_i_div_if_loop_328_bs7_in;
    wire [17:0] prodResY_uid188_i_div_if_loop_328_bs7_b;
    wire [63:0] prodResY_uid188_i_div_if_loop_328_sums_join_0_q;
    wire [50:0] prodResY_uid188_i_div_if_loop_328_sums_align_1_q;
    wire [50:0] prodResY_uid188_i_div_if_loop_328_sums_align_1_qint;
    wire [64:0] prodResY_uid188_i_div_if_loop_328_sums_result_add_0_0_a;
    wire [64:0] prodResY_uid188_i_div_if_loop_328_sums_result_add_0_0_b;
    logic [64:0] prodResY_uid188_i_div_if_loop_328_sums_result_add_0_0_o;
    wire [64:0] prodResY_uid188_i_div_if_loop_328_sums_result_add_0_0_q;
    wire memoryC0_uid255_invTabGen_lutmem_reset0;
    wire [37:0] memoryC0_uid255_invTabGen_lutmem_ia;
    wire [7:0] memoryC0_uid255_invTabGen_lutmem_aa;
    wire [7:0] memoryC0_uid255_invTabGen_lutmem_ab;
    wire [37:0] memoryC0_uid255_invTabGen_lutmem_ir;
    wire [37:0] memoryC0_uid255_invTabGen_lutmem_r;
    wire memoryC1_uid258_invTabGen_lutmem_reset0;
    wire [28:0] memoryC1_uid258_invTabGen_lutmem_ia;
    wire [7:0] memoryC1_uid258_invTabGen_lutmem_aa;
    wire [7:0] memoryC1_uid258_invTabGen_lutmem_ab;
    wire [28:0] memoryC1_uid258_invTabGen_lutmem_ir;
    wire [28:0] memoryC1_uid258_invTabGen_lutmem_r;
    wire memoryC2_uid261_invTabGen_lutmem_reset0;
    wire [20:0] memoryC2_uid261_invTabGen_lutmem_ia;
    wire [7:0] memoryC2_uid261_invTabGen_lutmem_aa;
    wire [7:0] memoryC2_uid261_invTabGen_lutmem_ab;
    wire [20:0] memoryC2_uid261_invTabGen_lutmem_ir;
    wire [20:0] memoryC2_uid261_invTabGen_lutmem_r;
    wire memoryC3_uid264_invTabGen_lutmem_reset0;
    wire [13:0] memoryC3_uid264_invTabGen_lutmem_ia;
    wire [7:0] memoryC3_uid264_invTabGen_lutmem_aa;
    wire [7:0] memoryC3_uid264_invTabGen_lutmem_ab;
    wire [13:0] memoryC3_uid264_invTabGen_lutmem_ir;
    wire [13:0] memoryC3_uid264_invTabGen_lutmem_r;
    wire prodXY_uid290_pT1_uid272_invPolyEval_cma_reset;
    wire [13:0] prodXY_uid290_pT1_uid272_invPolyEval_cma_a0;
    wire [13:0] prodXY_uid290_pT1_uid272_invPolyEval_cma_c0;
    wire [27:0] prodXY_uid290_pT1_uid272_invPolyEval_cma_s0;
    wire [27:0] prodXY_uid290_pT1_uid272_invPolyEval_cma_qq;
    wire [27:0] prodXY_uid290_pT1_uid272_invPolyEval_cma_q;
    wire prodXY_uid290_pT1_uid272_invPolyEval_cma_ena0;
    wire prodXY_uid290_pT1_uid272_invPolyEval_cma_ena1;
    wire prodXY_uid290_pT1_uid272_invPolyEval_cma_ena2;
    wire prodXY_uid293_pT2_uid278_invPolyEval_cma_reset;
    wire [20:0] prodXY_uid293_pT2_uid278_invPolyEval_cma_a0;
    wire [22:0] prodXY_uid293_pT2_uid278_invPolyEval_cma_c0;
    wire [43:0] prodXY_uid293_pT2_uid278_invPolyEval_cma_s0;
    wire [43:0] prodXY_uid293_pT2_uid278_invPolyEval_cma_qq;
    wire [43:0] prodXY_uid293_pT2_uid278_invPolyEval_cma_q;
    wire prodXY_uid293_pT2_uid278_invPolyEval_cma_ena0;
    wire prodXY_uid293_pT2_uid278_invPolyEval_cma_ena1;
    wire prodXY_uid293_pT2_uid278_invPolyEval_cma_ena2;
    wire sm0_uid322_pT3_uid284_invPolyEval_cma_reset;
    wire [17:0] sm0_uid322_pT3_uid284_invPolyEval_cma_a0;
    wire [17:0] sm0_uid322_pT3_uid284_invPolyEval_cma_c0;
    wire [35:0] sm0_uid322_pT3_uid284_invPolyEval_cma_s0;
    wire [35:0] sm0_uid322_pT3_uid284_invPolyEval_cma_qq;
    wire [35:0] sm0_uid322_pT3_uid284_invPolyEval_cma_q;
    wire sm0_uid322_pT3_uid284_invPolyEval_cma_ena0;
    wire sm0_uid322_pT3_uid284_invPolyEval_cma_ena1;
    wire sm0_uid322_pT3_uid284_invPolyEval_cma_ena2;
    wire prodXInvY_uid176_i_div_if_loop_328_im0_cma_reset;
    wire [14:0] prodXInvY_uid176_i_div_if_loop_328_im0_cma_a0;
    wire [14:0] prodXInvY_uid176_i_div_if_loop_328_im0_cma_c0;
    wire [29:0] prodXInvY_uid176_i_div_if_loop_328_im0_cma_s0;
    wire [29:0] prodXInvY_uid176_i_div_if_loop_328_im0_cma_qq;
    wire [29:0] prodXInvY_uid176_i_div_if_loop_328_im0_cma_q;
    wire prodXInvY_uid176_i_div_if_loop_328_im0_cma_ena0;
    wire prodXInvY_uid176_i_div_if_loop_328_im0_cma_ena1;
    wire prodXInvY_uid176_i_div_if_loop_328_im0_cma_ena2;
    wire prodXInvY_uid176_i_div_if_loop_328_im9_cma_reset;
    wire [17:0] prodXInvY_uid176_i_div_if_loop_328_im9_cma_a0;
    wire [17:0] prodXInvY_uid176_i_div_if_loop_328_im9_cma_c0;
    wire [35:0] prodXInvY_uid176_i_div_if_loop_328_im9_cma_s0;
    wire [35:0] prodXInvY_uid176_i_div_if_loop_328_im9_cma_qq;
    wire [35:0] prodXInvY_uid176_i_div_if_loop_328_im9_cma_q;
    wire prodXInvY_uid176_i_div_if_loop_328_im9_cma_ena0;
    wire prodXInvY_uid176_i_div_if_loop_328_im9_cma_ena1;
    wire prodXInvY_uid176_i_div_if_loop_328_im9_cma_ena2;
    wire prodResY_uid188_i_div_if_loop_328_im0_cma_reset;
    wire [13:0] prodResY_uid188_i_div_if_loop_328_im0_cma_a0;
    wire [13:0] prodResY_uid188_i_div_if_loop_328_im0_cma_c0;
    wire [27:0] prodResY_uid188_i_div_if_loop_328_im0_cma_s0;
    wire [27:0] prodResY_uid188_i_div_if_loop_328_im0_cma_qq;
    wire [27:0] prodResY_uid188_i_div_if_loop_328_im0_cma_q;
    wire prodResY_uid188_i_div_if_loop_328_im0_cma_ena0;
    wire prodResY_uid188_i_div_if_loop_328_im0_cma_ena1;
    wire prodResY_uid188_i_div_if_loop_328_im0_cma_ena2;
    wire prodResY_uid188_i_div_if_loop_328_im8_cma_reset;
    wire [17:0] prodResY_uid188_i_div_if_loop_328_im8_cma_a0;
    wire [17:0] prodResY_uid188_i_div_if_loop_328_im8_cma_c0;
    wire [35:0] prodResY_uid188_i_div_if_loop_328_im8_cma_s0;
    wire [35:0] prodResY_uid188_i_div_if_loop_328_im8_cma_qq;
    wire [35:0] prodResY_uid188_i_div_if_loop_328_im8_cma_q;
    wire prodResY_uid188_i_div_if_loop_328_im8_cma_ena0;
    wire prodResY_uid188_i_div_if_loop_328_im8_cma_ena1;
    wire prodResY_uid188_i_div_if_loop_328_im8_cma_ena2;
    wire multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_reset;
    wire [17:0] multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_a0;
    wire [17:0] multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_c0;
    wire [17:0] multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_a1;
    wire [17:0] multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_c1;
    wire [36:0] multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_s0;
    wire [36:0] multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_qq;
    wire [36:0] multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_q;
    wire multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_ena0;
    wire multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_ena1;
    wire multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_ena2;
    wire prodXInvY_uid176_i_div_if_loop_328_ma3_cma_reset;
    wire [15:0] prodXInvY_uid176_i_div_if_loop_328_ma3_cma_a0;
    wire [17:0] prodXInvY_uid176_i_div_if_loop_328_ma3_cma_c0;
    wire [15:0] prodXInvY_uid176_i_div_if_loop_328_ma3_cma_a1;
    wire [17:0] prodXInvY_uid176_i_div_if_loop_328_ma3_cma_c1;
    wire [34:0] prodXInvY_uid176_i_div_if_loop_328_ma3_cma_s0;
    wire [34:0] prodXInvY_uid176_i_div_if_loop_328_ma3_cma_qq;
    wire [34:0] prodXInvY_uid176_i_div_if_loop_328_ma3_cma_q;
    wire prodXInvY_uid176_i_div_if_loop_328_ma3_cma_ena0;
    wire prodXInvY_uid176_i_div_if_loop_328_ma3_cma_ena1;
    wire prodXInvY_uid176_i_div_if_loop_328_ma3_cma_ena2;
    wire prodResY_uid188_i_div_if_loop_328_ma3_cma_reset;
    wire [13:0] prodResY_uid188_i_div_if_loop_328_ma3_cma_a0;
    wire [17:0] prodResY_uid188_i_div_if_loop_328_ma3_cma_c0;
    wire [13:0] prodResY_uid188_i_div_if_loop_328_ma3_cma_a1;
    wire [17:0] prodResY_uid188_i_div_if_loop_328_ma3_cma_c1;
    wire [32:0] prodResY_uid188_i_div_if_loop_328_ma3_cma_s0;
    wire [32:0] prodResY_uid188_i_div_if_loop_328_ma3_cma_qq;
    wire [32:0] prodResY_uid188_i_div_if_loop_328_ma3_cma_q;
    wire prodResY_uid188_i_div_if_loop_328_ma3_cma_ena0;
    wire prodResY_uid188_i_div_if_loop_328_ma3_cma_ena1;
    wire prodResY_uid188_i_div_if_loop_328_ma3_cma_ena2;
    wire [54:0] i_arrayidx1_if_loop_30_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx1_if_loop_30_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx42_if_loop_30_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx42_if_loop_30_upper_bits_x_merged_bit_select_c;
    wire [7:0] yAddr_uid163_i_div_if_loop_328_merged_bit_select_b;
    wire [22:0] yAddr_uid163_i_div_if_loop_328_merged_bit_select_c;
    wire [14:0] prodXInvY_uid176_i_div_if_loop_328_bs2_merged_bit_select_b;
    wire [17:0] prodXInvY_uid176_i_div_if_loop_328_bs2_merged_bit_select_c;
    wire [1:0] rightShiftStageSel0Dto0_uid415_prodPostRightShift_uid178_i_div_if_loop_328_merged_bit_select_b;
    wire [1:0] rightShiftStageSel0Dto0_uid415_prodPostRightShift_uid178_i_div_if_loop_328_merged_bit_select_c;
    wire [1:0] rightShiftStageSel0Dto0_uid415_prodPostRightShift_uid178_i_div_if_loop_328_merged_bit_select_d;
    wire [0:0] rightShiftStageSel0Dto0_uid415_prodPostRightShift_uid178_i_div_if_loop_328_merged_bit_select_e;
    wire [14:0] prodXInvY_uid176_i_div_if_loop_328_bs1_merged_bit_select_b;
    wire [17:0] prodXInvY_uid176_i_div_if_loop_328_bs1_merged_bit_select_c;
    wire [15:0] rVStage_uid227_zCount_uid153_i_div_if_loop_328_merged_bit_select_b;
    wire [15:0] rVStage_uid227_zCount_uid153_i_div_if_loop_328_merged_bit_select_c;
    wire [7:0] rVStage_uid233_zCount_uid153_i_div_if_loop_328_merged_bit_select_b;
    wire [7:0] rVStage_uid233_zCount_uid153_i_div_if_loop_328_merged_bit_select_c;
    wire [3:0] rVStage_uid239_zCount_uid153_i_div_if_loop_328_merged_bit_select_b;
    wire [3:0] rVStage_uid239_zCount_uid153_i_div_if_loop_328_merged_bit_select_c;
    wire [1:0] rVStage_uid245_zCount_uid153_i_div_if_loop_328_merged_bit_select_b;
    wire [1:0] rVStage_uid245_zCount_uid153_i_div_if_loop_328_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto4_uid364_normY_uid154_i_div_if_loop_328_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto4_uid364_normY_uid154_i_div_if_loop_328_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto4_uid364_normY_uid154_i_div_if_loop_328_merged_bit_select_d;
    wire [17:0] topRangeY_uid311_pT3_uid284_invPolyEval_merged_bit_select_b;
    wire [12:0] topRangeY_uid311_pT3_uid284_invPolyEval_merged_bit_select_c;
    wire [17:0] topRangeX_uid310_pT3_uid284_invPolyEval_merged_bit_select_b;
    wire [5:0] topRangeX_uid310_pT3_uid284_invPolyEval_merged_bit_select_c;
    reg [7:0] redist0_rVStage_uid233_zCount_uid153_i_div_if_loop_328_merged_bit_select_b_1_q;
    reg [7:0] redist1_rVStage_uid233_zCount_uid153_i_div_if_loop_328_merged_bit_select_c_1_q;
    reg [7:0] redist2_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_3_q;
    reg [7:0] redist2_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_3_delay_0;
    reg [7:0] redist2_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_3_delay_1;
    reg [7:0] redist3_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_7_q;
    reg [7:0] redist3_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_7_delay_0;
    reg [7:0] redist3_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_7_delay_1;
    reg [7:0] redist3_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_7_delay_2;
    reg [22:0] redist5_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_2_q;
    reg [22:0] redist5_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_2_delay_0;
    reg [29:0] redist8_highBBits_uid286_invPolyEval_b_1_q;
    reg [1:0] redist9_lowRangeB_uid285_invPolyEval_b_1_q;
    reg [0:0] redist10_lowRangeB_uid279_invPolyEval_b_1_q;
    reg [0:0] redist11_lowRangeB_uid273_invPolyEval_b_1_q;
    reg [0:0] redist13_rVStage_uid251_zCount_uid153_i_div_if_loop_328_b_1_q;
    reg [0:0] redist14_vCount_uid246_zCount_uid153_i_div_if_loop_328_q_1_q;
    reg [0:0] redist15_vCount_uid240_zCount_uid153_i_div_if_loop_328_q_1_q;
    reg [0:0] redist16_vCount_uid234_zCount_uid153_i_div_if_loop_328_q_2_q;
    reg [0:0] redist17_vCount_uid228_zCount_uid153_i_div_if_loop_328_q_2_q;
    reg [0:0] redist17_vCount_uid228_zCount_uid153_i_div_if_loop_328_q_2_delay_0;
    reg [0:0] redist18_vCount_uid222_zCount_uid153_i_div_if_loop_328_q_3_q;
    reg [0:0] redist18_vCount_uid222_zCount_uid153_i_div_if_loop_328_q_3_delay_0;
    reg [31:0] redist19_resFinal_uid187_i_div_if_loop_328_q_3_q;
    reg [31:0] redist19_resFinal_uid187_i_div_if_loop_328_q_3_delay_0;
    reg [0:0] redist20_signX_uid185_i_div_if_loop_328_b_2_q;
    reg [0:0] redist20_signX_uid185_i_div_if_loop_328_b_2_delay_0;
    reg [0:0] redist21_signX_uid185_i_div_if_loop_328_b_3_q;
    reg [0:0] redist22_normYIsOne_uid160_i_div_if_loop_328_q_13_q;
    reg [0:0] redist23_normYIsOneC2_uid159_i_div_if_loop_328_b_1_q;
    reg [31:0] redist24_yPS_uid152_i_div_if_loop_328_b_1_q;
    reg [31:0] redist25_yPS_uid152_i_div_if_loop_328_b_3_q;
    reg [31:0] redist25_yPS_uid152_i_div_if_loop_328_b_3_delay_0;
    reg [0:0] redist26_xMSB_uid147_i_div_if_loop_328_b_18_q;
    reg [0:0] redist27_xMSB_uid147_i_div_if_loop_328_b_23_q;
    reg [0:0] redist27_xMSB_uid147_i_div_if_loop_328_b_23_delay_0;
    reg [0:0] redist27_xMSB_uid147_i_div_if_loop_328_b_23_delay_1;
    reg [0:0] redist27_xMSB_uid147_i_div_if_loop_328_b_23_delay_2;
    reg [0:0] redist27_xMSB_uid147_i_div_if_loop_328_b_23_delay_3;
    reg [0:0] redist28_xMSB_uid147_i_div_if_loop_328_b_24_q;
    reg [0:0] redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_q;
    reg [0:0] redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_delay_0;
    reg [0:0] redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_delay_1;
    reg [0:0] redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_delay_2;
    reg [0:0] redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_delay_3;
    reg [0:0] redist30_sync_together94_aunroll_x_in_c0_eni1_1_tpl_28_q;
    reg [0:0] redist31_sync_together94_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist31_sync_together94_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist31_sync_together94_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist31_sync_together94_aunroll_x_in_i_valid_4_delay_2;
    reg [0:0] redist32_sync_together94_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist33_sync_together94_aunroll_x_in_i_valid_27_q;
    reg [0:0] redist34_sync_together94_aunroll_x_in_i_valid_33_q;
    reg [31:0] redist35_bgTrunc_i_sub_if_loop_324_sel_x_b_1_q;
    reg [0:0] redist37_i_masked_if_loop_345_q_29_q;
    reg [31:0] redist38_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_3_q;
    reg [31:0] redist38_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_3_delay_0;
    reg [31:0] redist39_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_6_q;
    reg [31:0] redist39_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_6_delay_0;
    reg [0:0] redist40_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_29_q;
    reg [0:0] redist41_i_first_cleanup_xor_if_loop_34_q_29_q;
    reg [0:0] redist42_i_cmp5_if_loop_325_c_3_q;
    reg [0:0] redist42_i_cmp5_if_loop_325_c_3_delay_0;
    wire redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_reset0;
    wire [7:0] redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_ia;
    wire [1:0] redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_aa;
    wire [1:0] redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_ab;
    wire [7:0] redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_iq;
    wire [7:0] redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_q;
    wire [1:0] redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_rdcnt_q;
    (* preserve *) reg [1:0] redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_rdcnt_i;
    reg [1:0] redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_wraddr_q;
    wire [2:0] redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_last_q;
    wire [2:0] redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_cmp_b;
    wire [0:0] redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_cmp_q;
    (* dont_merge *) reg [0:0] redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_cmpReg_q;
    wire [0:0] redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_notEnable_q;
    wire [0:0] redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_nor_q;
    (* dont_merge *) reg [0:0] redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_sticky_ena_q;
    wire [0:0] redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_enaAnd_q;
    wire redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_reset0;
    wire [22:0] redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_ia;
    wire [1:0] redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_aa;
    wire [1:0] redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_ab;
    wire [22:0] redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_iq;
    wire [22:0] redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_q;
    wire [1:0] redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_rdcnt_q;
    (* preserve *) reg [1:0] redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_rdcnt_i;
    (* preserve *) reg redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_rdcnt_eq;
    reg [1:0] redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_wraddr_q;
    wire [1:0] redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_last_q;
    wire [0:0] redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_cmp_q;
    (* dont_merge *) reg [0:0] redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_cmpReg_q;
    wire [0:0] redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_notEnable_q;
    wire [0:0] redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_nor_q;
    (* dont_merge *) reg [0:0] redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_sticky_ena_q;
    wire [0:0] redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_enaAnd_q;
    wire redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_reset0;
    wire [22:0] redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_ia;
    wire [1:0] redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_aa;
    wire [1:0] redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_ab;
    wire [22:0] redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_iq;
    wire [22:0] redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_q;
    wire [1:0] redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_q;
    (* preserve *) reg [1:0] redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_i;
    (* preserve *) reg redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_eq;
    reg [1:0] redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_wraddr_q;
    wire [1:0] redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_last_q;
    wire [0:0] redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_cmp_q;
    (* dont_merge *) reg [0:0] redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_cmpReg_q;
    wire [0:0] redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_notEnable_q;
    wire [0:0] redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_nor_q;
    (* dont_merge *) reg [0:0] redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_sticky_ena_q;
    wire [0:0] redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_enaAnd_q;
    reg [5:0] redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_outputreg0_q;
    wire redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_reset0;
    wire [5:0] redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_ia;
    wire [3:0] redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_aa;
    wire [3:0] redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_ab;
    wire [5:0] redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_iq;
    wire [5:0] redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_q;
    wire [3:0] redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_rdcnt_q;
    (* preserve *) reg [3:0] redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_rdcnt_i;
    reg [3:0] redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_wraddr_q;
    wire [4:0] redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_last_q;
    wire [4:0] redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_cmp_b;
    wire [0:0] redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_cmp_q;
    (* dont_merge *) reg [0:0] redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_cmpReg_q;
    wire [0:0] redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_notEnable_q;
    wire [0:0] redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_nor_q;
    (* dont_merge *) reg [0:0] redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_sticky_ena_q;
    wire [0:0] redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_enaAnd_q;
    reg [31:0] redist19_resFinal_uid187_i_div_if_loop_328_q_3_inputreg0_q;
    reg [31:0] redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_inputreg0_q;
    reg [31:0] redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_outputreg0_q;
    wire redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_reset0;
    wire [31:0] redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_ia;
    wire [4:0] redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_aa;
    wire [4:0] redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_ab;
    wire [31:0] redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_iq;
    wire [31:0] redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_q;
    wire [4:0] redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_rdcnt_q;
    (* preserve *) reg [4:0] redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_rdcnt_i;
    (* preserve *) reg redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_rdcnt_eq;
    reg [4:0] redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_wraddr_q;
    wire [5:0] redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_last_q;
    wire [5:0] redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_cmp_b;
    wire [0:0] redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_cmp_q;
    (* dont_merge *) reg [0:0] redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_cmpReg_q;
    wire [0:0] redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_notEnable_q;
    wire [0:0] redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_nor_q;
    (* dont_merge *) reg [0:0] redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_sticky_ena_q;
    wire [0:0] redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_enaAnd_q;
    reg [31:0] redist38_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_3_inputreg0_q;
    reg [31:0] redist39_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_6_outputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist31_sync_together94_aunroll_x_in_i_valid_4(DELAY,517)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together94_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist31_sync_together94_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist31_sync_together94_aunroll_x_in_i_valid_4_delay_2 <= '0;
            redist31_sync_together94_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist31_sync_together94_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(in_i_valid);
            redist31_sync_together94_aunroll_x_in_i_valid_4_delay_1 <= redist31_sync_together94_aunroll_x_in_i_valid_4_delay_0;
            redist31_sync_together94_aunroll_x_in_i_valid_4_delay_2 <= redist31_sync_together94_aunroll_x_in_i_valid_4_delay_1;
            redist31_sync_together94_aunroll_x_in_i_valid_4_q <= redist31_sync_together94_aunroll_x_in_i_valid_4_delay_2;
        end
    end

    // redist32_sync_together94_aunroll_x_in_i_valid_5(DELAY,518)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together94_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist32_sync_together94_aunroll_x_in_i_valid_5_q <= $unsigned(redist31_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // leftShiftStage0Idx1Rng1_uid344_i_cleanups_shl_if_loop_30_shift_x(BITSELECT,343)@6
    assign leftShiftStage0Idx1Rng1_uid344_i_cleanups_shl_if_loop_30_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid344_i_cleanups_shl_if_loop_30_shift_x_b = leftShiftStage0Idx1Rng1_uid344_i_cleanups_shl_if_loop_30_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid345_i_cleanups_shl_if_loop_30_shift_x(BITJOIN,344)@6
    assign leftShiftStage0Idx1_uid345_i_cleanups_shl_if_loop_30_shift_x_q = {leftShiftStage0Idx1Rng1_uid344_i_cleanups_shl_if_loop_30_shift_x_b, GND_q};

    // leftShiftStage0_uid347_i_cleanups_shl_if_loop_30_shift_x(MUX,346)@6
    assign leftShiftStage0_uid347_i_cleanups_shl_if_loop_30_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid347_i_cleanups_shl_if_loop_30_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out or leftShiftStage0Idx1_uid345_i_cleanups_shl_if_loop_30_shift_x_q)
    begin
        unique case (leftShiftStage0_uid347_i_cleanups_shl_if_loop_30_shift_x_s)
            1'b0 : leftShiftStage0_uid347_i_cleanups_shl_if_loop_30_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out;
            1'b1 : leftShiftStage0_uid347_i_cleanups_shl_if_loop_30_shift_x_q = leftShiftStage0Idx1_uid345_i_cleanups_shl_if_loop_30_shift_x_q;
            default : leftShiftStage0_uid347_i_cleanups_shl_if_loop_30_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_if_loop_35_vt_select_3(BITSELECT,45)@6
    assign i_cleanups_shl_if_loop_35_vt_select_3_b = leftShiftStage0_uid347_i_cleanups_shl_if_loop_30_shift_x_q[3:1];

    // i_cleanups_shl_if_loop_35_vt_join(BITJOIN,44)@6
    assign i_cleanups_shl_if_loop_35_vt_join_q = {i_cleanups_shl_if_loop_35_vt_select_3_b, GND_q};

    // i_first_cleanup_xor_if_loop_34(LOGICAL,51)@6
    assign i_first_cleanup_xor_if_loop_34_q = i_first_cleanup_if_loop_33_sel_x_b ^ VCC_q;

    // i_notcmp_if_loop_339(LOGICAL,85)@6
    assign i_notcmp_if_loop_339_q = i_unnamed_if_loop_338_q ^ VCC_q;

    // i_or_if_loop_341(LOGICAL,86)@6
    assign i_or_if_loop_341_q = i_notcmp_if_loop_339_q | i_first_cleanup_xor_if_loop_34_q;

    // i_next_cleanups_if_loop_342(MUX,81)@6
    assign i_next_cleanups_if_loop_342_s = i_or_if_loop_341_q;
    always @(i_next_cleanups_if_loop_342_s or i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out or i_cleanups_shl_if_loop_35_vt_join_q)
    begin
        unique case (i_next_cleanups_if_loop_342_s)
            1'b0 : i_next_cleanups_if_loop_342_q = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out;
            1'b1 : i_next_cleanups_if_loop_342_q = i_cleanups_shl_if_loop_35_vt_join_q;
            default : i_next_cleanups_if_loop_342_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push10_if_loop_343(BLACKBOX,78)@6
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    if_loop_3_i_llvm_fpga_push_i4_cleanups_push10_0 thei_llvm_fpga_push_i4_cleanups_push10_if_loop_343 (
        .in_data_in(i_next_cleanups_if_loop_342_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_feedback_stall_out_10),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist32_sync_together94_aunroll_x_in_i_valid_5_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_343_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_343_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_766(CONSTANT,31)
    assign c_i4_766_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32(BLACKBOX,71)@6
    // out out_feedback_stall_out_10@20000000
    if_loop_3_i_llvm_fpga_pop_i4_cleanups_pop10_0 thei_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32 (
        .in_data_in(c_i4_766_q),
        .in_dir(redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_q),
        .in_feedback_in_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_343_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_343_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist32_sync_together94_aunroll_x_in_i_valid_5_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_if_loop_33_sel_x(BITSELECT,137)@6
    assign i_first_cleanup_if_loop_33_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_35_if_loop_312(BLACKBOX,63)@6
    if_loop_3_i_llvm_fpga_ffwd_dest_i33_unnamed_5_if_loop_30 thei_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_35_if_loop_312 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist32_sync_together94_aunroll_x_in_i_valid_5_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_35_if_loop_312_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_175(CONSTANT,28)
    assign c_i33_175_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_if_loop_335(ADD,53)@6
    assign i_fpga_indvars_iv_next_if_loop_335_a = {1'b0, i_fpga_indvars_iv_replace_phi_if_loop_314_q};
    assign i_fpga_indvars_iv_next_if_loop_335_b = {1'b0, c_i33_175_q};
    assign i_fpga_indvars_iv_next_if_loop_335_o = $unsigned(i_fpga_indvars_iv_next_if_loop_335_a) + $unsigned(i_fpga_indvars_iv_next_if_loop_335_b);
    assign i_fpga_indvars_iv_next_if_loop_335_q = i_fpga_indvars_iv_next_if_loop_335_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_if_loop_335_sel_x(BITSELECT,101)@6
    assign bgTrunc_i_fpga_indvars_iv_next_if_loop_335_sel_x_b = i_fpga_indvars_iv_next_if_loop_335_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_336(BLACKBOX,77)@6
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    if_loop_3_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_336 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_if_loop_335_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_feedback_stall_out_6),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist32_sync_together94_aunroll_x_in_i_valid_5_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_336_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_336_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef69(CONSTANT,29)
    assign c_i33_undef69_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313(BLACKBOX,70)@6
    // out out_feedback_stall_out_6@20000000
    if_loop_3_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313 (
        .in_data_in(c_i33_undef69_q),
        .in_dir(redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_q),
        .in_feedback_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_336_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_336_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist32_sync_together94_aunroll_x_in_i_valid_5_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_replace_phi_if_loop_314(MUX,54)@6
    assign i_fpga_indvars_iv_replace_phi_if_loop_314_s = redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_q;
    always @(i_fpga_indvars_iv_replace_phi_if_loop_314_s or i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_35_if_loop_312_out_dest_data_out_1_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_if_loop_314_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_if_loop_314_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_if_loop_314_q = i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_35_if_loop_312_out_dest_data_out_1_0;
            default : i_fpga_indvars_iv_replace_phi_if_loop_314_q = 33'b0;
        endcase
    end

    // i_exitcond_if_loop_333_cmp_nsign(LOGICAL,339)@6
    assign i_exitcond_if_loop_333_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_if_loop_314_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_337(BLACKBOX,61)@6
    if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp94_0 thei_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_337 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist32_sync_together94_aunroll_x_in_i_valid_5_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_337_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_338(LOGICAL,89)@6
    assign i_unnamed_if_loop_338_q = i_llvm_fpga_ffwd_dest_i1_cmp94_if_loop_337_out_dest_data_out_0_0 & i_exitcond_if_loop_333_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_if_loop_340(BLACKBOX,74)@6
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    if_loop_3_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_if_loop_340 (
        .in_data_in(i_unnamed_if_loop_338_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_if_loop_33_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist32_sync_together94_aunroll_x_in_i_valid_5_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_340_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_340_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,210)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist31_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid351_i_next_initerations_if_loop_30_shift_x(BITSELECT,350)@6
    assign rightShiftStage0Idx1Rng1_uid351_i_next_initerations_if_loop_30_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_data_out[3:1];

    // rightShiftStage0Idx1_uid353_i_next_initerations_if_loop_30_shift_x(BITJOIN,352)@6
    assign rightShiftStage0Idx1_uid353_i_next_initerations_if_loop_30_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid351_i_next_initerations_if_loop_30_shift_x_b};

    // valid_fanout_reg1(REG,208)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist31_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg2(REG,209)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist31_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i4_initerations_push9_if_loop_39(BLACKBOX,79)@6
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    if_loop_3_i_llvm_fpga_push_i4_initerations_push9_0 thei_llvm_fpga_push_i4_initerations_push9_if_loop_39 (
        .in_data_in(i_next_initerations_if_loop_38_vt_join_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_feedback_stall_out_9),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i4_initerations_push9_if_loop_39_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i4_initerations_push9_if_loop_39_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37(BLACKBOX,72)@6
    // out out_feedback_stall_out_9@20000000
    if_loop_3_i_llvm_fpga_pop_i4_initerations_pop9_0 thei_llvm_fpga_pop_i4_initerations_pop9_if_loop_37 (
        .in_data_in(c_i4_766_q),
        .in_dir(redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_q),
        .in_feedback_in_9(i_llvm_fpga_push_i4_initerations_push9_if_loop_39_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i4_initerations_push9_if_loop_39_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid355_i_next_initerations_if_loop_30_shift_x(MUX,354)@6
    assign rightShiftStage0_uid355_i_next_initerations_if_loop_30_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid355_i_next_initerations_if_loop_30_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_data_out or rightShiftStage0Idx1_uid353_i_next_initerations_if_loop_30_shift_x_q)
    begin
        unique case (rightShiftStage0_uid355_i_next_initerations_if_loop_30_shift_x_s)
            1'b0 : rightShiftStage0_uid355_i_next_initerations_if_loop_30_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_data_out;
            1'b1 : rightShiftStage0_uid355_i_next_initerations_if_loop_30_shift_x_q = rightShiftStage0Idx1_uid353_i_next_initerations_if_loop_30_shift_x_q;
            default : rightShiftStage0_uid355_i_next_initerations_if_loop_30_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_if_loop_38_vt_select_2(BITSELECT,84)@6
    assign i_next_initerations_if_loop_38_vt_select_2_b = rightShiftStage0_uid355_i_next_initerations_if_loop_30_shift_x_q[2:0];

    // i_next_initerations_if_loop_38_vt_join(BITJOIN,83)@6
    assign i_next_initerations_if_loop_38_vt_join_q = {GND_q, i_next_initerations_if_loop_38_vt_select_2_b};

    // i_last_initeration_if_loop_310_sel_x(BITSELECT,139)@6
    assign i_last_initeration_if_loop_310_sel_x_b = i_next_initerations_if_loop_38_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_if_loop_311(BLACKBOX,73)@6
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    if_loop_3_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_if_loop_311 (
        .in_data_in(i_last_initeration_if_loop_310_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_initeration_stall_out),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_if_loop_311_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_if_loop_311_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5(DELAY,515)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_delay_0 <= '0;
            redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_delay_1 <= '0;
            redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_delay_2 <= '0;
            redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_delay_3 <= '0;
            redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_q <= '0;
        end
        else
        begin
            redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_delay_0 <= $unsigned(in_c0_eni1_1_tpl);
            redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_delay_1 <= redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_delay_0;
            redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_delay_2 <= redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_delay_1;
            redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_delay_3 <= redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_delay_2;
            redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_q <= redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_if_loop_36(BLACKBOX,67)@6
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    if_loop_3_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_if_loop_36 (
        .in_data_in(redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_if_loop_311_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_if_loop_311_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_if_loop_340_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_if_loop_340_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist32_sync_together94_aunroll_x_in_i_valid_5_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,35)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_if_loop_36_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_if_loop_36_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,94)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_valid_out;

    // redist33_sync_together94_aunroll_x_in_i_valid_27(DELAY,519)
    dspba_delay_ver #( .width(1), .depth(22), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist33_sync_together94_aunroll_x_in_i_valid_27 ( .xin(redist32_sync_together94_aunroll_x_in_i_valid_5_q), .xout(redist33_sync_together94_aunroll_x_in_i_valid_27_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist34_sync_together94_aunroll_x_in_i_valid_33(DELAY,520)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist34_sync_together94_aunroll_x_in_i_valid_33 ( .xin(redist33_sync_together94_aunroll_x_in_i_valid_27_q), .xout(redist34_sync_together94_aunroll_x_in_i_valid_33_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg11(REG,218)@34 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist34_sync_together94_aunroll_x_in_i_valid_33_q);
        end
    end

    // valid_fanout_reg7(REG,214)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist31_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg4(REG,211)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist31_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp95_if_loop_315(BLACKBOX,62)@6
    if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp95_0 thei_llvm_fpga_ffwd_dest_i1_cmp95_if_loop_315 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp95_if_loop_315_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_316(LOGICAL,88)@6
    assign i_unnamed_if_loop_316_q = i_llvm_fpga_ffwd_dest_i1_cmp95_if_loop_315_out_dest_data_out_0_0 ^ VCC_q;

    // i_first_cleanup_xor_or_if_loop_320(LOGICAL,52)@6
    assign i_first_cleanup_xor_or_if_loop_320_q = i_unnamed_if_loop_316_q | i_first_cleanup_xor_if_loop_34_q;

    // c_if_loop_3_b_local_pmem(CONSTANT,33)
    assign c_if_loop_3_b_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx42_if_loop_30_upper_bits_x_merged_bit_select(BITSELECT,474)@6
    assign i_arrayidx42_if_loop_30_upper_bits_x_merged_bit_select_b = c_if_loop_3_b_local_pmem_q[63:9];
    assign i_arrayidx42_if_loop_30_upper_bits_x_merged_bit_select_c = c_if_loop_3_b_local_pmem_q[8:0];

    // c_i32_070(CONSTANT,25)
    assign c_i32_070_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg5(REG,212)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist31_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg10(REG,217)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist31_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // c_i32_173(CONSTANT,27)
    assign c_i32_173_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_if_loop_331(ADD,59)@6
    assign i_inc_if_loop_331_a = {1'b0, i_llvm_fpga_pop_i32_i_010_pop8_if_loop_317_out_data_out};
    assign i_inc_if_loop_331_b = {1'b0, c_i32_173_q};
    assign i_inc_if_loop_331_o = $unsigned(i_inc_if_loop_331_a) + $unsigned(i_inc_if_loop_331_b);
    assign i_inc_if_loop_331_q = i_inc_if_loop_331_o[32:0];

    // bgTrunc_i_inc_if_loop_331_sel_x(BITSELECT,102)@6
    assign bgTrunc_i_inc_if_loop_331_sel_x_b = i_inc_if_loop_331_q[31:0];

    // i_llvm_fpga_push_i32_i_010_push8_if_loop_332(BLACKBOX,75)@6
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    if_loop_3_i_llvm_fpga_push_i32_i_010_push8_0 thei_llvm_fpga_push_i32_i_010_push8_if_loop_332 (
        .in_data_in(bgTrunc_i_inc_if_loop_331_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i32_i_010_pop8_if_loop_317_out_feedback_stall_out_8),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i32_i_010_push8_if_loop_332_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i32_i_010_push8_if_loop_332_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_010_pop8_if_loop_317(BLACKBOX,68)@6
    // out out_feedback_stall_out_8@20000000
    if_loop_3_i_llvm_fpga_pop_i32_i_010_pop8_0 thei_llvm_fpga_pop_i32_i_010_pop8_if_loop_317 (
        .in_data_in(c_i32_070_q),
        .in_dir(redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_q),
        .in_feedback_in_8(i_llvm_fpga_push_i32_i_010_push8_if_loop_332_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i32_i_010_push8_if_loop_332_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_010_pop8_if_loop_317_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i32_i_010_pop8_if_loop_317_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_if_loop_318_sel_x(BITSELECT,138)@6
    assign i_idxprom_if_loop_318_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_010_pop8_if_loop_317_out_data_out[31:0]};

    // i_idxprom_if_loop_318_vt_select_31(BITSELECT,58)@6
    assign i_idxprom_if_loop_318_vt_select_31_b = i_idxprom_if_loop_318_sel_x_b[31:0];

    // i_idxprom_if_loop_318_vt_join(BITJOIN,57)@6
    assign i_idxprom_if_loop_318_vt_join_q = {c_i32_070_q, i_idxprom_if_loop_318_vt_select_31_b};

    // i_arrayidx1_if_loop_30_dupName_0_trunc_sel_x(BITSELECT,119)@6
    assign i_arrayidx1_if_loop_30_dupName_0_trunc_sel_x_b = i_idxprom_if_loop_318_vt_join_q[8:0];

    // i_arrayidx1_if_loop_30_narrow_x(BITSELECT,112)@6
    assign i_arrayidx1_if_loop_30_narrow_x_b = i_arrayidx1_if_loop_30_dupName_0_trunc_sel_x_b[6:0];

    // i_arrayidx1_if_loop_30_shift_join_x(BITJOIN,113)@6
    assign i_arrayidx1_if_loop_30_shift_join_x_q = {i_arrayidx1_if_loop_30_narrow_x_b, i_arrayidx1_if_loop_319_vt_const_1_q};

    // i_arrayidx42_if_loop_30_add_x(ADD,121)@6
    assign i_arrayidx42_if_loop_30_add_x_a = {1'b0, i_arrayidx42_if_loop_30_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx42_if_loop_30_add_x_b = {1'b0, i_arrayidx1_if_loop_30_shift_join_x_q};
    assign i_arrayidx42_if_loop_30_add_x_o = $unsigned(i_arrayidx42_if_loop_30_add_x_a) + $unsigned(i_arrayidx42_if_loop_30_add_x_b);
    assign i_arrayidx42_if_loop_30_add_x_q = i_arrayidx42_if_loop_30_add_x_o[9:0];

    // i_arrayidx42_if_loop_30_dupName_2_trunc_sel_x(BITSELECT,132)@6
    assign i_arrayidx42_if_loop_30_dupName_2_trunc_sel_x_b = i_arrayidx42_if_loop_30_add_x_q[8:0];

    // i_arrayidx42_if_loop_30_append_upper_bits_x(BITJOIN,122)@6
    assign i_arrayidx42_if_loop_30_append_upper_bits_x_q = {i_arrayidx42_if_loop_30_upper_bits_x_merged_bit_select_b, i_arrayidx42_if_loop_30_dupName_2_trunc_sel_x_b};

    // i_arrayidx42_if_loop_322_vt_select_63(BITSELECT,42)@6
    assign i_arrayidx42_if_loop_322_vt_select_63_b = i_arrayidx42_if_loop_30_append_upper_bits_x_q[63:2];

    // i_arrayidx1_if_loop_319_vt_const_1(CONSTANT,37)
    assign i_arrayidx1_if_loop_319_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx42_if_loop_322_vt_join(BITJOIN,41)@6
    assign i_arrayidx42_if_loop_322_vt_join_q = {i_arrayidx42_if_loop_322_vt_select_63_b, i_arrayidx1_if_loop_319_vt_const_1_q};

    // i_llvm_fpga_mem_lm42_if_loop_323(BLACKBOX,66)@6
    // in in_i_stall@20000000
    // out out_lm42_if_loop_3_avm_address@20000000
    // out out_lm42_if_loop_3_avm_burstcount@20000000
    // out out_lm42_if_loop_3_avm_byteenable@20000000
    // out out_lm42_if_loop_3_avm_enable@20000000
    // out out_lm42_if_loop_3_avm_read@20000000
    // out out_lm42_if_loop_3_avm_write@20000000
    // out out_lm42_if_loop_3_avm_writedata@20000000
    // out out_o_readdata@10
    // out out_o_stall@9
    // out out_o_valid@10
    if_loop_3_i_llvm_fpga_mem_lm42_0 thei_llvm_fpga_mem_lm42_if_loop_323 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx42_if_loop_322_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor_or_if_loop_320_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_lm42_if_loop_3_avm_readdata(in_lm42_if_loop_3_avm_readdata),
        .in_lm42_if_loop_3_avm_readdatavalid(in_lm42_if_loop_3_avm_readdatavalid),
        .in_lm42_if_loop_3_avm_waitrequest(in_lm42_if_loop_3_avm_waitrequest),
        .in_lm42_if_loop_3_avm_writeack(in_lm42_if_loop_3_avm_writeack),
        .out_lm42_if_loop_3_avm_address(i_llvm_fpga_mem_lm42_if_loop_323_out_lm42_if_loop_3_avm_address),
        .out_lm42_if_loop_3_avm_burstcount(i_llvm_fpga_mem_lm42_if_loop_323_out_lm42_if_loop_3_avm_burstcount),
        .out_lm42_if_loop_3_avm_byteenable(i_llvm_fpga_mem_lm42_if_loop_323_out_lm42_if_loop_3_avm_byteenable),
        .out_lm42_if_loop_3_avm_enable(i_llvm_fpga_mem_lm42_if_loop_323_out_lm42_if_loop_3_avm_enable),
        .out_lm42_if_loop_3_avm_read(i_llvm_fpga_mem_lm42_if_loop_323_out_lm42_if_loop_3_avm_read),
        .out_lm42_if_loop_3_avm_write(i_llvm_fpga_mem_lm42_if_loop_323_out_lm42_if_loop_3_avm_write),
        .out_lm42_if_loop_3_avm_writedata(i_llvm_fpga_mem_lm42_if_loop_323_out_lm42_if_loop_3_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm42_if_loop_323_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg6(REG,213)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist31_sync_together94_aunroll_x_in_i_valid_4_q);
        end
    end

    // c_if_loop_3_a_local_pmem(CONSTANT,32)
    assign c_if_loop_3_a_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx1_if_loop_30_upper_bits_x_merged_bit_select(BITSELECT,473)@6
    assign i_arrayidx1_if_loop_30_upper_bits_x_merged_bit_select_b = c_if_loop_3_a_local_pmem_q[63:9];
    assign i_arrayidx1_if_loop_30_upper_bits_x_merged_bit_select_c = c_if_loop_3_a_local_pmem_q[8:0];

    // i_arrayidx1_if_loop_30_add_x(ADD,109)@6
    assign i_arrayidx1_if_loop_30_add_x_a = {1'b0, i_arrayidx1_if_loop_30_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx1_if_loop_30_add_x_b = {1'b0, i_arrayidx1_if_loop_30_shift_join_x_q};
    assign i_arrayidx1_if_loop_30_add_x_o = $unsigned(i_arrayidx1_if_loop_30_add_x_a) + $unsigned(i_arrayidx1_if_loop_30_add_x_b);
    assign i_arrayidx1_if_loop_30_add_x_q = i_arrayidx1_if_loop_30_add_x_o[9:0];

    // i_arrayidx1_if_loop_30_dupName_2_trunc_sel_x(BITSELECT,120)@6
    assign i_arrayidx1_if_loop_30_dupName_2_trunc_sel_x_b = i_arrayidx1_if_loop_30_add_x_q[8:0];

    // i_arrayidx1_if_loop_30_append_upper_bits_x(BITJOIN,110)@6
    assign i_arrayidx1_if_loop_30_append_upper_bits_x_q = {i_arrayidx1_if_loop_30_upper_bits_x_merged_bit_select_b, i_arrayidx1_if_loop_30_dupName_2_trunc_sel_x_b};

    // i_arrayidx1_if_loop_319_vt_select_63(BITSELECT,39)@6
    assign i_arrayidx1_if_loop_319_vt_select_63_b = i_arrayidx1_if_loop_30_append_upper_bits_x_q[63:2];

    // i_arrayidx1_if_loop_319_vt_join(BITJOIN,38)@6
    assign i_arrayidx1_if_loop_319_vt_join_q = {i_arrayidx1_if_loop_319_vt_select_63_b, i_arrayidx1_if_loop_319_vt_const_1_q};

    // i_llvm_fpga_mem_lm1_if_loop_321(BLACKBOX,65)@6
    // in in_i_stall@20000000
    // out out_lm1_if_loop_3_avm_address@20000000
    // out out_lm1_if_loop_3_avm_burstcount@20000000
    // out out_lm1_if_loop_3_avm_byteenable@20000000
    // out out_lm1_if_loop_3_avm_enable@20000000
    // out out_lm1_if_loop_3_avm_read@20000000
    // out out_lm1_if_loop_3_avm_write@20000000
    // out out_lm1_if_loop_3_avm_writedata@20000000
    // out out_o_readdata@10
    // out out_o_stall@9
    // out out_o_valid@10
    if_loop_3_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_if_loop_321 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_if_loop_319_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor_or_if_loop_320_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_lm1_if_loop_3_avm_readdata(in_lm1_if_loop_3_avm_readdata),
        .in_lm1_if_loop_3_avm_readdatavalid(in_lm1_if_loop_3_avm_readdatavalid),
        .in_lm1_if_loop_3_avm_waitrequest(in_lm1_if_loop_3_avm_waitrequest),
        .in_lm1_if_loop_3_avm_writeack(in_lm1_if_loop_3_avm_writeack),
        .out_lm1_if_loop_3_avm_address(i_llvm_fpga_mem_lm1_if_loop_321_out_lm1_if_loop_3_avm_address),
        .out_lm1_if_loop_3_avm_burstcount(i_llvm_fpga_mem_lm1_if_loop_321_out_lm1_if_loop_3_avm_burstcount),
        .out_lm1_if_loop_3_avm_byteenable(i_llvm_fpga_mem_lm1_if_loop_321_out_lm1_if_loop_3_avm_byteenable),
        .out_lm1_if_loop_3_avm_enable(i_llvm_fpga_mem_lm1_if_loop_321_out_lm1_if_loop_3_avm_enable),
        .out_lm1_if_loop_3_avm_read(i_llvm_fpga_mem_lm1_if_loop_321_out_lm1_if_loop_3_avm_read),
        .out_lm1_if_loop_3_avm_write(i_llvm_fpga_mem_lm1_if_loop_321_out_lm1_if_loop_3_avm_write),
        .out_lm1_if_loop_3_avm_writedata(i_llvm_fpga_mem_lm1_if_loop_321_out_lm1_if_loop_3_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_if_loop_321_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sub_if_loop_324(SUB,87)@10
    assign i_sub_if_loop_324_a = {1'b0, i_llvm_fpga_mem_lm1_if_loop_321_out_o_readdata};
    assign i_sub_if_loop_324_b = {1'b0, i_llvm_fpga_mem_lm42_if_loop_323_out_o_readdata};
    assign i_sub_if_loop_324_o = $unsigned(i_sub_if_loop_324_a) - $unsigned(i_sub_if_loop_324_b);
    assign i_sub_if_loop_324_q = i_sub_if_loop_324_o[32:0];

    // bgTrunc_i_sub_if_loop_324_sel_x(BITSELECT,103)@10
    assign bgTrunc_i_sub_if_loop_324_sel_x_b = $unsigned(i_sub_if_loop_324_q[31:0]);

    // redist35_bgTrunc_i_sub_if_loop_324_sel_x_b_1(DELAY,521)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_bgTrunc_i_sub_if_loop_324_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist35_bgTrunc_i_sub_if_loop_324_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub_if_loop_324_sel_x_b);
        end
    end

    // xMSB_uid147_i_div_if_loop_328(BITSELECT,146)@11
    assign xMSB_uid147_i_div_if_loop_328_b = $unsigned(redist35_bgTrunc_i_sub_if_loop_324_sel_x_b_1_q[31:31]);

    // redist26_xMSB_uid147_i_div_if_loop_328_b_18(DELAY,512)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist26_xMSB_uid147_i_div_if_loop_328_b_18 ( .xin(xMSB_uid147_i_div_if_loop_328_b), .xout(redist26_xMSB_uid147_i_div_if_loop_328_b_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist27_xMSB_uid147_i_div_if_loop_328_b_23(DELAY,513)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_xMSB_uid147_i_div_if_loop_328_b_23_delay_0 <= '0;
            redist27_xMSB_uid147_i_div_if_loop_328_b_23_delay_1 <= '0;
            redist27_xMSB_uid147_i_div_if_loop_328_b_23_delay_2 <= '0;
            redist27_xMSB_uid147_i_div_if_loop_328_b_23_delay_3 <= '0;
            redist27_xMSB_uid147_i_div_if_loop_328_b_23_q <= '0;
        end
        else
        begin
            redist27_xMSB_uid147_i_div_if_loop_328_b_23_delay_0 <= $unsigned(redist26_xMSB_uid147_i_div_if_loop_328_b_18_q);
            redist27_xMSB_uid147_i_div_if_loop_328_b_23_delay_1 <= redist27_xMSB_uid147_i_div_if_loop_328_b_23_delay_0;
            redist27_xMSB_uid147_i_div_if_loop_328_b_23_delay_2 <= redist27_xMSB_uid147_i_div_if_loop_328_b_23_delay_1;
            redist27_xMSB_uid147_i_div_if_loop_328_b_23_delay_3 <= redist27_xMSB_uid147_i_div_if_loop_328_b_23_delay_2;
            redist27_xMSB_uid147_i_div_if_loop_328_b_23_q <= redist27_xMSB_uid147_i_div_if_loop_328_b_23_delay_3;
        end
    end

    // valid_fanout_reg8(REG,215)@28 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist33_sync_together94_aunroll_x_in_i_valid_27_q);
        end
    end

    // valid_fanout_reg9(REG,216)@34 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist34_sync_together94_aunroll_x_in_i_valid_33_q);
        end
    end

    // redist40_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_29(DELAY,526)
    dspba_delay_ver #( .width(1), .depth(29), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist40_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_29 ( .xin(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out), .xout(redist40_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_29_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i32_sum_011_push7_if_loop_330(BLACKBOX,76)@35
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    if_loop_3_i_llvm_fpga_push_i32_sum_011_push7_0 thei_llvm_fpga_push_i32_sum_011_push7_if_loop_330 (
        .in_data_in(i_acl_if_loop_329_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_feedback_stall_out_7),
        .in_keep_going(redist40_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_29_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i32_sum_011_push7_if_loop_330_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i32_sum_011_push7_if_loop_330_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_sync_together94_aunroll_x_in_c0_eni1_1_tpl_28(DELAY,516)
    dspba_delay_ver #( .width(1), .depth(23), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist30_sync_together94_aunroll_x_in_c0_eni1_1_tpl_28 ( .xin(redist29_sync_together94_aunroll_x_in_c0_eni1_1_tpl_5_q), .xout(redist30_sync_together94_aunroll_x_in_c0_eni1_1_tpl_28_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_100072(CONSTANT,26)
    assign c_i32_100072_q = $unsigned(32'b00000000000000000000001111101000);

    // i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327(BLACKBOX,69)@29
    // out out_feedback_stall_out_7@20000000
    if_loop_3_i_llvm_fpga_pop_i32_sum_011_pop7_0 thei_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327 (
        .in_data_in(c_i32_100072_q),
        .in_dir(redist30_sync_together94_aunroll_x_in_c0_eni1_1_tpl_28_q),
        .in_feedback_in_7(i_llvm_fpga_push_i32_sum_011_push7_if_loop_330_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i32_sum_011_push7_if_loop_330_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist38_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_3_inputreg0(DELAY,583)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_3_inputreg0_q <= '0;
        end
        else
        begin
            redist38_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_3_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out);
        end
    end

    // redist38_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_3(DELAY,524)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_3_delay_0 <= '0;
            redist38_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_3_q <= '0;
        end
        else
        begin
            redist38_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_3_delay_0 <= $unsigned(redist38_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_3_inputreg0_q);
            redist38_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_3_q <= redist38_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_3_delay_0;
        end
    end

    // signX_uid185_i_div_if_loop_328(BITSELECT,184)@32
    assign signX_uid185_i_div_if_loop_328_b = $unsigned(redist38_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_3_q[31:31]);

    // redist20_signX_uid185_i_div_if_loop_328_b_2(DELAY,506)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_signX_uid185_i_div_if_loop_328_b_2_delay_0 <= '0;
            redist20_signX_uid185_i_div_if_loop_328_b_2_q <= '0;
        end
        else
        begin
            redist20_signX_uid185_i_div_if_loop_328_b_2_delay_0 <= $unsigned(signX_uid185_i_div_if_loop_328_b);
            redist20_signX_uid185_i_div_if_loop_328_b_2_q <= redist20_signX_uid185_i_div_if_loop_328_b_2_delay_0;
        end
    end

    // resultSign_uid195_i_div_if_loop_328(LOGICAL,194)@34 + 1
    assign resultSign_uid195_i_div_if_loop_328_qi = redist20_signX_uid185_i_div_if_loop_328_b_2_q ^ redist27_xMSB_uid147_i_div_if_loop_328_b_23_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    resultSign_uid195_i_div_if_loop_328_delay ( .xin(resultSign_uid195_i_div_if_loop_328_qi), .xout(resultSign_uid195_i_div_if_loop_328_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstSubFinal_uid203_i_div_if_loop_328(BITJOIN,202)@35
    assign cstSubFinal_uid203_i_div_if_loop_328_q = {resultSign_uid195_i_div_if_loop_328_q, VCC_q};

    // resFinalMP1_uid204_i_div_if_loop_328(SUB,203)@35
    assign resFinalMP1_uid204_i_div_if_loop_328_a = $unsigned({{1{redist19_resFinal_uid187_i_div_if_loop_328_q_3_q[31]}}, redist19_resFinal_uid187_i_div_if_loop_328_q_3_q});
    assign resFinalMP1_uid204_i_div_if_loop_328_b = $unsigned({{31{cstSubFinal_uid203_i_div_if_loop_328_q[1]}}, cstSubFinal_uid203_i_div_if_loop_328_q});
    assign resFinalMP1_uid204_i_div_if_loop_328_o = $unsigned($signed(resFinalMP1_uid204_i_div_if_loop_328_a) - $signed(resFinalMP1_uid204_i_div_if_loop_328_b));
    assign resFinalMP1_uid204_i_div_if_loop_328_q = resFinalMP1_uid204_i_div_if_loop_328_o[32:0];

    // resFinalPostMux_uid205_i_div_if_loop_328(BITSELECT,204)@35
    assign resFinalPostMux_uid205_i_div_if_loop_328_in = $unsigned(resFinalMP1_uid204_i_div_if_loop_328_q[31:0]);
    assign resFinalPostMux_uid205_i_div_if_loop_328_b = $unsigned(resFinalPostMux_uid205_i_div_if_loop_328_in[31:0]);

    // cstValOvfneg_uid184_i_div_if_loop_328(CONSTANT,183)
    assign cstValOvfneg_uid184_i_div_if_loop_328_q = $unsigned(32'b10000000000000000000000000000000);

    // cstValOvfPos_uid183_i_div_if_loop_328(CONSTANT,182)
    assign cstValOvfPos_uid183_i_div_if_loop_328_q = $unsigned(32'b01111111111111111111111111111111);

    // cstOvf_uid186_i_div_if_loop_328(MUX,185)@32
    assign cstOvf_uid186_i_div_if_loop_328_s = signX_uid185_i_div_if_loop_328_b;
    always @(cstOvf_uid186_i_div_if_loop_328_s or cstValOvfPos_uid183_i_div_if_loop_328_q or cstValOvfneg_uid184_i_div_if_loop_328_q)
    begin
        unique case (cstOvf_uid186_i_div_if_loop_328_s)
            1'b0 : cstOvf_uid186_i_div_if_loop_328_q = cstValOvfPos_uid183_i_div_if_loop_328_q;
            1'b1 : cstOvf_uid186_i_div_if_loop_328_q = cstValOvfneg_uid184_i_div_if_loop_328_q;
            default : cstOvf_uid186_i_div_if_loop_328_q = 32'b0;
        endcase
    end

    // prodXInvY_uid176_i_div_if_loop_328_bjB6(BITJOIN,394)@29
    assign prodXInvY_uid176_i_div_if_loop_328_bjB6_q = {GND_q, prodXInvY_uid176_i_div_if_loop_328_bs2_merged_bit_select_b};

    // oneInvRes_uid167_i_div_if_loop_328(CONSTANT,166)
    assign oneInvRes_uid167_i_div_if_loop_328_q = $unsigned(33'b100000000000000000000000000000000);

    // redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_notEnable(LOGICAL,555)
    assign redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_nor(LOGICAL,556)
    assign redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_nor_q = ~ (redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_notEnable_q | redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_sticky_ena_q);

    // redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_last(CONSTANT,552)
    assign redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_last_q = $unsigned(2'b01);

    // redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_cmp(LOGICAL,553)
    assign redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_cmp_q = $unsigned(redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_last_q == redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_q ? 1'b1 : 1'b0);

    // redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_cmpReg(REG,554)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_cmpReg_q <= $unsigned(redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_cmp_q);
        end
    end

    // redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_sticky_ena(REG,557)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_nor_q == 1'b1)
        begin
            redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_sticky_ena_q <= $unsigned(redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_cmpReg_q);
        end
    end

    // redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_enaAnd(LOGICAL,558)
    assign redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_enaAnd_q = redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_sticky_ena_q & VCC_q;

    // redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_rdcnt(COUNTER,550)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_i <= 2'd0;
            redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_i == 2'd1)
            begin
                redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_eq <= 1'b0;
            end
            if (redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_eq == 1'b1)
            begin
                redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_i <= $unsigned(redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_i <= $unsigned(redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_q = redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_i[1:0];

    // redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_notEnable(LOGICAL,545)
    assign redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_nor(LOGICAL,546)
    assign redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_nor_q = ~ (redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_notEnable_q | redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_sticky_ena_q);

    // redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_last(CONSTANT,542)
    assign redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_last_q = $unsigned(2'b01);

    // redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_cmp(LOGICAL,543)
    assign redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_cmp_q = $unsigned(redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_last_q == redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_cmpReg(REG,544)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_cmpReg_q <= $unsigned(redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_cmp_q);
        end
    end

    // redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_sticky_ena(REG,547)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_nor_q == 1'b1)
        begin
            redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_sticky_ena_q <= $unsigned(redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_cmpReg_q);
        end
    end

    // redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_enaAnd(LOGICAL,548)
    assign redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_enaAnd_q = redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_sticky_ena_q & VCC_q;

    // redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_rdcnt(COUNTER,540)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_rdcnt_i <= 2'd0;
            redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_rdcnt_i == 2'd1)
            begin
                redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_rdcnt_eq <= 1'b0;
            end
            if (redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_rdcnt_eq == 1'b1)
            begin
                redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_rdcnt_i <= $unsigned(redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_rdcnt_i <= $unsigned(redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_rdcnt_q = redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_rdcnt_i[1:0];

    // leftShiftStage2Idx3Rng3_uid384_normY_uid154_i_div_if_loop_328(BITSELECT,383)@14
    assign leftShiftStage2Idx3Rng3_uid384_normY_uid154_i_div_if_loop_328_in = leftShiftStage1_uid376_normY_uid154_i_div_if_loop_328_q[28:0];
    assign leftShiftStage2Idx3Rng3_uid384_normY_uid154_i_div_if_loop_328_b = leftShiftStage2Idx3Rng3_uid384_normY_uid154_i_div_if_loop_328_in[28:0];

    // leftShiftStage2Idx3Pad3_uid383_normY_uid154_i_div_if_loop_328(CONSTANT,382)
    assign leftShiftStage2Idx3Pad3_uid383_normY_uid154_i_div_if_loop_328_q = $unsigned(3'b000);

    // leftShiftStage2Idx3_uid385_normY_uid154_i_div_if_loop_328(BITJOIN,384)@14
    assign leftShiftStage2Idx3_uid385_normY_uid154_i_div_if_loop_328_q = {leftShiftStage2Idx3Rng3_uid384_normY_uid154_i_div_if_loop_328_b, leftShiftStage2Idx3Pad3_uid383_normY_uid154_i_div_if_loop_328_q};

    // leftShiftStage2Idx2Rng2_uid381_normY_uid154_i_div_if_loop_328(BITSELECT,380)@14
    assign leftShiftStage2Idx2Rng2_uid381_normY_uid154_i_div_if_loop_328_in = leftShiftStage1_uid376_normY_uid154_i_div_if_loop_328_q[29:0];
    assign leftShiftStage2Idx2Rng2_uid381_normY_uid154_i_div_if_loop_328_b = leftShiftStage2Idx2Rng2_uid381_normY_uid154_i_div_if_loop_328_in[29:0];

    // leftShiftStage2Idx2_uid382_normY_uid154_i_div_if_loop_328(BITJOIN,381)@14
    assign leftShiftStage2Idx2_uid382_normY_uid154_i_div_if_loop_328_q = {leftShiftStage2Idx2Rng2_uid381_normY_uid154_i_div_if_loop_328_b, i_arrayidx1_if_loop_319_vt_const_1_q};

    // leftShiftStage2Idx1Rng1_uid378_normY_uid154_i_div_if_loop_328(BITSELECT,377)@14
    assign leftShiftStage2Idx1Rng1_uid378_normY_uid154_i_div_if_loop_328_in = leftShiftStage1_uid376_normY_uid154_i_div_if_loop_328_q[30:0];
    assign leftShiftStage2Idx1Rng1_uid378_normY_uid154_i_div_if_loop_328_b = leftShiftStage2Idx1Rng1_uid378_normY_uid154_i_div_if_loop_328_in[30:0];

    // leftShiftStage2Idx1_uid379_normY_uid154_i_div_if_loop_328(BITJOIN,378)@14
    assign leftShiftStage2Idx1_uid379_normY_uid154_i_div_if_loop_328_q = {leftShiftStage2Idx1Rng1_uid378_normY_uid154_i_div_if_loop_328_b, GND_q};

    // leftShiftStage1Idx3Rng12_uid373_normY_uid154_i_div_if_loop_328(BITSELECT,372)@14
    assign leftShiftStage1Idx3Rng12_uid373_normY_uid154_i_div_if_loop_328_in = leftShiftStage0_uid365_normY_uid154_i_div_if_loop_328_q[19:0];
    assign leftShiftStage1Idx3Rng12_uid373_normY_uid154_i_div_if_loop_328_b = leftShiftStage1Idx3Rng12_uid373_normY_uid154_i_div_if_loop_328_in[19:0];

    // rightBottomX_bottomExtension_uid317_pT3_uid284_invPolyEval(CONSTANT,316)
    assign rightBottomX_bottomExtension_uid317_pT3_uid284_invPolyEval_q = $unsigned(12'b000000000000);

    // leftShiftStage1Idx3_uid374_normY_uid154_i_div_if_loop_328(BITJOIN,373)@14
    assign leftShiftStage1Idx3_uid374_normY_uid154_i_div_if_loop_328_q = {leftShiftStage1Idx3Rng12_uid373_normY_uid154_i_div_if_loop_328_b, rightBottomX_bottomExtension_uid317_pT3_uid284_invPolyEval_q};

    // leftShiftStage1Idx2Rng8_uid370_normY_uid154_i_div_if_loop_328(BITSELECT,369)@14
    assign leftShiftStage1Idx2Rng8_uid370_normY_uid154_i_div_if_loop_328_in = leftShiftStage0_uid365_normY_uid154_i_div_if_loop_328_q[23:0];
    assign leftShiftStage1Idx2Rng8_uid370_normY_uid154_i_div_if_loop_328_b = leftShiftStage1Idx2Rng8_uid370_normY_uid154_i_div_if_loop_328_in[23:0];

    // zs_uid232_zCount_uid153_i_div_if_loop_328(CONSTANT,231)
    assign zs_uid232_zCount_uid153_i_div_if_loop_328_q = $unsigned(8'b00000000);

    // leftShiftStage1Idx2_uid371_normY_uid154_i_div_if_loop_328(BITJOIN,370)@14
    assign leftShiftStage1Idx2_uid371_normY_uid154_i_div_if_loop_328_q = {leftShiftStage1Idx2Rng8_uid370_normY_uid154_i_div_if_loop_328_b, zs_uid232_zCount_uid153_i_div_if_loop_328_q};

    // leftShiftStage1Idx1Rng4_uid367_normY_uid154_i_div_if_loop_328(BITSELECT,366)@14
    assign leftShiftStage1Idx1Rng4_uid367_normY_uid154_i_div_if_loop_328_in = leftShiftStage0_uid365_normY_uid154_i_div_if_loop_328_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid367_normY_uid154_i_div_if_loop_328_b = leftShiftStage1Idx1Rng4_uid367_normY_uid154_i_div_if_loop_328_in[27:0];

    // zs_uid238_zCount_uid153_i_div_if_loop_328(CONSTANT,237)
    assign zs_uid238_zCount_uid153_i_div_if_loop_328_q = $unsigned(4'b0000);

    // leftShiftStage1Idx1_uid368_normY_uid154_i_div_if_loop_328(BITJOIN,367)@14
    assign leftShiftStage1Idx1_uid368_normY_uid154_i_div_if_loop_328_q = {leftShiftStage1Idx1Rng4_uid367_normY_uid154_i_div_if_loop_328_b, zs_uid238_zCount_uid153_i_div_if_loop_328_q};

    // leftShiftStage0Idx1Rng16_uid360_normY_uid154_i_div_if_loop_328(BITSELECT,359)@14
    assign leftShiftStage0Idx1Rng16_uid360_normY_uid154_i_div_if_loop_328_in = redist25_yPS_uid152_i_div_if_loop_328_b_3_q[15:0];
    assign leftShiftStage0Idx1Rng16_uid360_normY_uid154_i_div_if_loop_328_b = leftShiftStage0Idx1Rng16_uid360_normY_uid154_i_div_if_loop_328_in[15:0];

    // zs_uid226_zCount_uid153_i_div_if_loop_328(CONSTANT,225)
    assign zs_uid226_zCount_uid153_i_div_if_loop_328_q = $unsigned(16'b0000000000000000);

    // leftShiftStage0Idx1_uid361_normY_uid154_i_div_if_loop_328(BITJOIN,360)@14
    assign leftShiftStage0Idx1_uid361_normY_uid154_i_div_if_loop_328_q = {leftShiftStage0Idx1Rng16_uid360_normY_uid154_i_div_if_loop_328_b, zs_uid226_zCount_uid153_i_div_if_loop_328_q};

    // yPSE_uid149_i_div_if_loop_328(LOGICAL,148)@11
    assign yPSE_uid149_i_div_if_loop_328_b = $unsigned({{31{xMSB_uid147_i_div_if_loop_328_b[0]}}, xMSB_uid147_i_div_if_loop_328_b});
    assign yPSE_uid149_i_div_if_loop_328_q = redist35_bgTrunc_i_sub_if_loop_324_sel_x_b_1_q ^ yPSE_uid149_i_div_if_loop_328_b;

    // yPSEA_uid151_i_div_if_loop_328(ADD,150)@11
    assign yPSEA_uid151_i_div_if_loop_328_a = {1'b0, yPSE_uid149_i_div_if_loop_328_q};
    assign yPSEA_uid151_i_div_if_loop_328_b = {32'b00000000000000000000000000000000, xMSB_uid147_i_div_if_loop_328_b};
    assign yPSEA_uid151_i_div_if_loop_328_o = $unsigned(yPSEA_uid151_i_div_if_loop_328_a) + $unsigned(yPSEA_uid151_i_div_if_loop_328_b);
    assign yPSEA_uid151_i_div_if_loop_328_q = yPSEA_uid151_i_div_if_loop_328_o[32:0];

    // yPS_uid152_i_div_if_loop_328(BITSELECT,151)@11
    assign yPS_uid152_i_div_if_loop_328_in = $unsigned(yPSEA_uid151_i_div_if_loop_328_q[31:0]);
    assign yPS_uid152_i_div_if_loop_328_b = $unsigned(yPS_uid152_i_div_if_loop_328_in[31:0]);

    // redist24_yPS_uid152_i_div_if_loop_328_b_1(DELAY,510)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_yPS_uid152_i_div_if_loop_328_b_1_q <= '0;
        end
        else
        begin
            redist24_yPS_uid152_i_div_if_loop_328_b_1_q <= $unsigned(yPS_uid152_i_div_if_loop_328_b);
        end
    end

    // redist25_yPS_uid152_i_div_if_loop_328_b_3(DELAY,511)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_yPS_uid152_i_div_if_loop_328_b_3_delay_0 <= '0;
            redist25_yPS_uid152_i_div_if_loop_328_b_3_q <= '0;
        end
        else
        begin
            redist25_yPS_uid152_i_div_if_loop_328_b_3_delay_0 <= $unsigned(redist24_yPS_uid152_i_div_if_loop_328_b_1_q);
            redist25_yPS_uid152_i_div_if_loop_328_b_3_q <= redist25_yPS_uid152_i_div_if_loop_328_b_3_delay_0;
        end
    end

    // leftShiftStage0_uid365_normY_uid154_i_div_if_loop_328(MUX,364)@14
    assign leftShiftStage0_uid365_normY_uid154_i_div_if_loop_328_s = leftShiftStageSel0Dto4_uid364_normY_uid154_i_div_if_loop_328_merged_bit_select_b;
    always @(leftShiftStage0_uid365_normY_uid154_i_div_if_loop_328_s or redist25_yPS_uid152_i_div_if_loop_328_b_3_q or leftShiftStage0Idx1_uid361_normY_uid154_i_div_if_loop_328_q or c_i32_070_q)
    begin
        unique case (leftShiftStage0_uid365_normY_uid154_i_div_if_loop_328_s)
            2'b00 : leftShiftStage0_uid365_normY_uid154_i_div_if_loop_328_q = redist25_yPS_uid152_i_div_if_loop_328_b_3_q;
            2'b01 : leftShiftStage0_uid365_normY_uid154_i_div_if_loop_328_q = leftShiftStage0Idx1_uid361_normY_uid154_i_div_if_loop_328_q;
            2'b10 : leftShiftStage0_uid365_normY_uid154_i_div_if_loop_328_q = c_i32_070_q;
            2'b11 : leftShiftStage0_uid365_normY_uid154_i_div_if_loop_328_q = c_i32_070_q;
            default : leftShiftStage0_uid365_normY_uid154_i_div_if_loop_328_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid376_normY_uid154_i_div_if_loop_328(MUX,375)@14
    assign leftShiftStage1_uid376_normY_uid154_i_div_if_loop_328_s = leftShiftStageSel0Dto4_uid364_normY_uid154_i_div_if_loop_328_merged_bit_select_c;
    always @(leftShiftStage1_uid376_normY_uid154_i_div_if_loop_328_s or leftShiftStage0_uid365_normY_uid154_i_div_if_loop_328_q or leftShiftStage1Idx1_uid368_normY_uid154_i_div_if_loop_328_q or leftShiftStage1Idx2_uid371_normY_uid154_i_div_if_loop_328_q or leftShiftStage1Idx3_uid374_normY_uid154_i_div_if_loop_328_q)
    begin
        unique case (leftShiftStage1_uid376_normY_uid154_i_div_if_loop_328_s)
            2'b00 : leftShiftStage1_uid376_normY_uid154_i_div_if_loop_328_q = leftShiftStage0_uid365_normY_uid154_i_div_if_loop_328_q;
            2'b01 : leftShiftStage1_uid376_normY_uid154_i_div_if_loop_328_q = leftShiftStage1Idx1_uid368_normY_uid154_i_div_if_loop_328_q;
            2'b10 : leftShiftStage1_uid376_normY_uid154_i_div_if_loop_328_q = leftShiftStage1Idx2_uid371_normY_uid154_i_div_if_loop_328_q;
            2'b11 : leftShiftStage1_uid376_normY_uid154_i_div_if_loop_328_q = leftShiftStage1Idx3_uid374_normY_uid154_i_div_if_loop_328_q;
            default : leftShiftStage1_uid376_normY_uid154_i_div_if_loop_328_q = 32'b0;
        endcase
    end

    // vCount_uid222_zCount_uid153_i_div_if_loop_328(LOGICAL,221)@11 + 1
    assign vCount_uid222_zCount_uid153_i_div_if_loop_328_qi = $unsigned(yPS_uid152_i_div_if_loop_328_b == c_i32_070_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid222_zCount_uid153_i_div_if_loop_328_delay ( .xin(vCount_uid222_zCount_uid153_i_div_if_loop_328_qi), .xout(vCount_uid222_zCount_uid153_i_div_if_loop_328_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_vCount_uid222_zCount_uid153_i_div_if_loop_328_q_3(DELAY,504)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_vCount_uid222_zCount_uid153_i_div_if_loop_328_q_3_delay_0 <= '0;
            redist18_vCount_uid222_zCount_uid153_i_div_if_loop_328_q_3_q <= '0;
        end
        else
        begin
            redist18_vCount_uid222_zCount_uid153_i_div_if_loop_328_q_3_delay_0 <= $unsigned(vCount_uid222_zCount_uid153_i_div_if_loop_328_q);
            redist18_vCount_uid222_zCount_uid153_i_div_if_loop_328_q_3_q <= redist18_vCount_uid222_zCount_uid153_i_div_if_loop_328_q_3_delay_0;
        end
    end

    // c_i32_171_recast_x(CONSTANT,104)
    assign c_i32_171_recast_x_q = $unsigned(32'b11111111111111111111111111111111);

    // vStagei_uid225_zCount_uid153_i_div_if_loop_328(MUX,224)@12
    assign vStagei_uid225_zCount_uid153_i_div_if_loop_328_s = vCount_uid222_zCount_uid153_i_div_if_loop_328_q;
    always @(vStagei_uid225_zCount_uid153_i_div_if_loop_328_s or redist24_yPS_uid152_i_div_if_loop_328_b_1_q or c_i32_171_recast_x_q)
    begin
        unique case (vStagei_uid225_zCount_uid153_i_div_if_loop_328_s)
            1'b0 : vStagei_uid225_zCount_uid153_i_div_if_loop_328_q = redist24_yPS_uid152_i_div_if_loop_328_b_1_q;
            1'b1 : vStagei_uid225_zCount_uid153_i_div_if_loop_328_q = c_i32_171_recast_x_q;
            default : vStagei_uid225_zCount_uid153_i_div_if_loop_328_q = 32'b0;
        endcase
    end

    // rVStage_uid227_zCount_uid153_i_div_if_loop_328_merged_bit_select(BITSELECT,479)@12
    assign rVStage_uid227_zCount_uid153_i_div_if_loop_328_merged_bit_select_b = vStagei_uid225_zCount_uid153_i_div_if_loop_328_q[31:16];
    assign rVStage_uid227_zCount_uid153_i_div_if_loop_328_merged_bit_select_c = vStagei_uid225_zCount_uid153_i_div_if_loop_328_q[15:0];

    // vCount_uid228_zCount_uid153_i_div_if_loop_328(LOGICAL,227)@12
    assign vCount_uid228_zCount_uid153_i_div_if_loop_328_q = $unsigned(rVStage_uid227_zCount_uid153_i_div_if_loop_328_merged_bit_select_b == zs_uid226_zCount_uid153_i_div_if_loop_328_q ? 1'b1 : 1'b0);

    // redist17_vCount_uid228_zCount_uid153_i_div_if_loop_328_q_2(DELAY,503)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_vCount_uid228_zCount_uid153_i_div_if_loop_328_q_2_delay_0 <= '0;
            redist17_vCount_uid228_zCount_uid153_i_div_if_loop_328_q_2_q <= '0;
        end
        else
        begin
            redist17_vCount_uid228_zCount_uid153_i_div_if_loop_328_q_2_delay_0 <= $unsigned(vCount_uid228_zCount_uid153_i_div_if_loop_328_q);
            redist17_vCount_uid228_zCount_uid153_i_div_if_loop_328_q_2_q <= redist17_vCount_uid228_zCount_uid153_i_div_if_loop_328_q_2_delay_0;
        end
    end

    // vStagei_uid231_zCount_uid153_i_div_if_loop_328(MUX,230)@12
    assign vStagei_uid231_zCount_uid153_i_div_if_loop_328_s = vCount_uid228_zCount_uid153_i_div_if_loop_328_q;
    always @(vStagei_uid231_zCount_uid153_i_div_if_loop_328_s or rVStage_uid227_zCount_uid153_i_div_if_loop_328_merged_bit_select_b or rVStage_uid227_zCount_uid153_i_div_if_loop_328_merged_bit_select_c)
    begin
        unique case (vStagei_uid231_zCount_uid153_i_div_if_loop_328_s)
            1'b0 : vStagei_uid231_zCount_uid153_i_div_if_loop_328_q = rVStage_uid227_zCount_uid153_i_div_if_loop_328_merged_bit_select_b;
            1'b1 : vStagei_uid231_zCount_uid153_i_div_if_loop_328_q = rVStage_uid227_zCount_uid153_i_div_if_loop_328_merged_bit_select_c;
            default : vStagei_uid231_zCount_uid153_i_div_if_loop_328_q = 16'b0;
        endcase
    end

    // rVStage_uid233_zCount_uid153_i_div_if_loop_328_merged_bit_select(BITSELECT,480)@12
    assign rVStage_uid233_zCount_uid153_i_div_if_loop_328_merged_bit_select_b = vStagei_uid231_zCount_uid153_i_div_if_loop_328_q[15:8];
    assign rVStage_uid233_zCount_uid153_i_div_if_loop_328_merged_bit_select_c = vStagei_uid231_zCount_uid153_i_div_if_loop_328_q[7:0];

    // vCount_uid234_zCount_uid153_i_div_if_loop_328(LOGICAL,233)@12 + 1
    assign vCount_uid234_zCount_uid153_i_div_if_loop_328_qi = $unsigned(rVStage_uid233_zCount_uid153_i_div_if_loop_328_merged_bit_select_b == zs_uid232_zCount_uid153_i_div_if_loop_328_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid234_zCount_uid153_i_div_if_loop_328_delay ( .xin(vCount_uid234_zCount_uid153_i_div_if_loop_328_qi), .xout(vCount_uid234_zCount_uid153_i_div_if_loop_328_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist16_vCount_uid234_zCount_uid153_i_div_if_loop_328_q_2(DELAY,502)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_vCount_uid234_zCount_uid153_i_div_if_loop_328_q_2_q <= '0;
        end
        else
        begin
            redist16_vCount_uid234_zCount_uid153_i_div_if_loop_328_q_2_q <= $unsigned(vCount_uid234_zCount_uid153_i_div_if_loop_328_q);
        end
    end

    // redist1_rVStage_uid233_zCount_uid153_i_div_if_loop_328_merged_bit_select_c_1(DELAY,487)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_rVStage_uid233_zCount_uid153_i_div_if_loop_328_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist1_rVStage_uid233_zCount_uid153_i_div_if_loop_328_merged_bit_select_c_1_q <= $unsigned(rVStage_uid233_zCount_uid153_i_div_if_loop_328_merged_bit_select_c);
        end
    end

    // redist0_rVStage_uid233_zCount_uid153_i_div_if_loop_328_merged_bit_select_b_1(DELAY,486)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_rVStage_uid233_zCount_uid153_i_div_if_loop_328_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist0_rVStage_uid233_zCount_uid153_i_div_if_loop_328_merged_bit_select_b_1_q <= $unsigned(rVStage_uid233_zCount_uid153_i_div_if_loop_328_merged_bit_select_b);
        end
    end

    // vStagei_uid237_zCount_uid153_i_div_if_loop_328(MUX,236)@13
    assign vStagei_uid237_zCount_uid153_i_div_if_loop_328_s = vCount_uid234_zCount_uid153_i_div_if_loop_328_q;
    always @(vStagei_uid237_zCount_uid153_i_div_if_loop_328_s or redist0_rVStage_uid233_zCount_uid153_i_div_if_loop_328_merged_bit_select_b_1_q or redist1_rVStage_uid233_zCount_uid153_i_div_if_loop_328_merged_bit_select_c_1_q)
    begin
        unique case (vStagei_uid237_zCount_uid153_i_div_if_loop_328_s)
            1'b0 : vStagei_uid237_zCount_uid153_i_div_if_loop_328_q = redist0_rVStage_uid233_zCount_uid153_i_div_if_loop_328_merged_bit_select_b_1_q;
            1'b1 : vStagei_uid237_zCount_uid153_i_div_if_loop_328_q = redist1_rVStage_uid233_zCount_uid153_i_div_if_loop_328_merged_bit_select_c_1_q;
            default : vStagei_uid237_zCount_uid153_i_div_if_loop_328_q = 8'b0;
        endcase
    end

    // rVStage_uid239_zCount_uid153_i_div_if_loop_328_merged_bit_select(BITSELECT,481)@13
    assign rVStage_uid239_zCount_uid153_i_div_if_loop_328_merged_bit_select_b = vStagei_uid237_zCount_uid153_i_div_if_loop_328_q[7:4];
    assign rVStage_uid239_zCount_uid153_i_div_if_loop_328_merged_bit_select_c = vStagei_uid237_zCount_uid153_i_div_if_loop_328_q[3:0];

    // vCount_uid240_zCount_uid153_i_div_if_loop_328(LOGICAL,239)@13
    assign vCount_uid240_zCount_uid153_i_div_if_loop_328_q = $unsigned(rVStage_uid239_zCount_uid153_i_div_if_loop_328_merged_bit_select_b == zs_uid238_zCount_uid153_i_div_if_loop_328_q ? 1'b1 : 1'b0);

    // redist15_vCount_uid240_zCount_uid153_i_div_if_loop_328_q_1(DELAY,501)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_vCount_uid240_zCount_uid153_i_div_if_loop_328_q_1_q <= '0;
        end
        else
        begin
            redist15_vCount_uid240_zCount_uid153_i_div_if_loop_328_q_1_q <= $unsigned(vCount_uid240_zCount_uid153_i_div_if_loop_328_q);
        end
    end

    // vStagei_uid243_zCount_uid153_i_div_if_loop_328(MUX,242)@13
    assign vStagei_uid243_zCount_uid153_i_div_if_loop_328_s = vCount_uid240_zCount_uid153_i_div_if_loop_328_q;
    always @(vStagei_uid243_zCount_uid153_i_div_if_loop_328_s or rVStage_uid239_zCount_uid153_i_div_if_loop_328_merged_bit_select_b or rVStage_uid239_zCount_uid153_i_div_if_loop_328_merged_bit_select_c)
    begin
        unique case (vStagei_uid243_zCount_uid153_i_div_if_loop_328_s)
            1'b0 : vStagei_uid243_zCount_uid153_i_div_if_loop_328_q = rVStage_uid239_zCount_uid153_i_div_if_loop_328_merged_bit_select_b;
            1'b1 : vStagei_uid243_zCount_uid153_i_div_if_loop_328_q = rVStage_uid239_zCount_uid153_i_div_if_loop_328_merged_bit_select_c;
            default : vStagei_uid243_zCount_uid153_i_div_if_loop_328_q = 4'b0;
        endcase
    end

    // rVStage_uid245_zCount_uid153_i_div_if_loop_328_merged_bit_select(BITSELECT,482)@13
    assign rVStage_uid245_zCount_uid153_i_div_if_loop_328_merged_bit_select_b = vStagei_uid243_zCount_uid153_i_div_if_loop_328_q[3:2];
    assign rVStage_uid245_zCount_uid153_i_div_if_loop_328_merged_bit_select_c = vStagei_uid243_zCount_uid153_i_div_if_loop_328_q[1:0];

    // vCount_uid246_zCount_uid153_i_div_if_loop_328(LOGICAL,245)@13
    assign vCount_uid246_zCount_uid153_i_div_if_loop_328_q = $unsigned(rVStage_uid245_zCount_uid153_i_div_if_loop_328_merged_bit_select_b == i_arrayidx1_if_loop_319_vt_const_1_q ? 1'b1 : 1'b0);

    // redist14_vCount_uid246_zCount_uid153_i_div_if_loop_328_q_1(DELAY,500)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_vCount_uid246_zCount_uid153_i_div_if_loop_328_q_1_q <= '0;
        end
        else
        begin
            redist14_vCount_uid246_zCount_uid153_i_div_if_loop_328_q_1_q <= $unsigned(vCount_uid246_zCount_uid153_i_div_if_loop_328_q);
        end
    end

    // vStagei_uid249_zCount_uid153_i_div_if_loop_328(MUX,248)@13
    assign vStagei_uid249_zCount_uid153_i_div_if_loop_328_s = vCount_uid246_zCount_uid153_i_div_if_loop_328_q;
    always @(vStagei_uid249_zCount_uid153_i_div_if_loop_328_s or rVStage_uid245_zCount_uid153_i_div_if_loop_328_merged_bit_select_b or rVStage_uid245_zCount_uid153_i_div_if_loop_328_merged_bit_select_c)
    begin
        unique case (vStagei_uid249_zCount_uid153_i_div_if_loop_328_s)
            1'b0 : vStagei_uid249_zCount_uid153_i_div_if_loop_328_q = rVStage_uid245_zCount_uid153_i_div_if_loop_328_merged_bit_select_b;
            1'b1 : vStagei_uid249_zCount_uid153_i_div_if_loop_328_q = rVStage_uid245_zCount_uid153_i_div_if_loop_328_merged_bit_select_c;
            default : vStagei_uid249_zCount_uid153_i_div_if_loop_328_q = 2'b0;
        endcase
    end

    // rVStage_uid251_zCount_uid153_i_div_if_loop_328(BITSELECT,250)@13
    assign rVStage_uid251_zCount_uid153_i_div_if_loop_328_b = vStagei_uid249_zCount_uid153_i_div_if_loop_328_q[1:1];

    // redist13_rVStage_uid251_zCount_uid153_i_div_if_loop_328_b_1(DELAY,499)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_rVStage_uid251_zCount_uid153_i_div_if_loop_328_b_1_q <= '0;
        end
        else
        begin
            redist13_rVStage_uid251_zCount_uid153_i_div_if_loop_328_b_1_q <= $unsigned(rVStage_uid251_zCount_uid153_i_div_if_loop_328_b);
        end
    end

    // vCount_uid252_zCount_uid153_i_div_if_loop_328(LOGICAL,251)@14
    assign vCount_uid252_zCount_uid153_i_div_if_loop_328_q = $unsigned(redist13_rVStage_uid251_zCount_uid153_i_div_if_loop_328_b_1_q == GND_q ? 1'b1 : 1'b0);

    // r_uid253_zCount_uid153_i_div_if_loop_328(BITJOIN,252)@14
    assign r_uid253_zCount_uid153_i_div_if_loop_328_q = {redist18_vCount_uid222_zCount_uid153_i_div_if_loop_328_q_3_q, redist17_vCount_uid228_zCount_uid153_i_div_if_loop_328_q_2_q, redist16_vCount_uid234_zCount_uid153_i_div_if_loop_328_q_2_q, redist15_vCount_uid240_zCount_uid153_i_div_if_loop_328_q_1_q, redist14_vCount_uid246_zCount_uid153_i_div_if_loop_328_q_1_q, vCount_uid252_zCount_uid153_i_div_if_loop_328_q};

    // leftShiftStageSel0Dto4_uid364_normY_uid154_i_div_if_loop_328_merged_bit_select(BITSELECT,483)@14
    assign leftShiftStageSel0Dto4_uid364_normY_uid154_i_div_if_loop_328_merged_bit_select_b = r_uid253_zCount_uid153_i_div_if_loop_328_q[5:4];
    assign leftShiftStageSel0Dto4_uid364_normY_uid154_i_div_if_loop_328_merged_bit_select_c = r_uid253_zCount_uid153_i_div_if_loop_328_q[3:2];
    assign leftShiftStageSel0Dto4_uid364_normY_uid154_i_div_if_loop_328_merged_bit_select_d = r_uid253_zCount_uid153_i_div_if_loop_328_q[1:0];

    // leftShiftStage2_uid387_normY_uid154_i_div_if_loop_328(MUX,386)@14
    assign leftShiftStage2_uid387_normY_uid154_i_div_if_loop_328_s = leftShiftStageSel0Dto4_uid364_normY_uid154_i_div_if_loop_328_merged_bit_select_d;
    always @(leftShiftStage2_uid387_normY_uid154_i_div_if_loop_328_s or leftShiftStage1_uid376_normY_uid154_i_div_if_loop_328_q or leftShiftStage2Idx1_uid379_normY_uid154_i_div_if_loop_328_q or leftShiftStage2Idx2_uid382_normY_uid154_i_div_if_loop_328_q or leftShiftStage2Idx3_uid385_normY_uid154_i_div_if_loop_328_q)
    begin
        unique case (leftShiftStage2_uid387_normY_uid154_i_div_if_loop_328_s)
            2'b00 : leftShiftStage2_uid387_normY_uid154_i_div_if_loop_328_q = leftShiftStage1_uid376_normY_uid154_i_div_if_loop_328_q;
            2'b01 : leftShiftStage2_uid387_normY_uid154_i_div_if_loop_328_q = leftShiftStage2Idx1_uid379_normY_uid154_i_div_if_loop_328_q;
            2'b10 : leftShiftStage2_uid387_normY_uid154_i_div_if_loop_328_q = leftShiftStage2Idx2_uid382_normY_uid154_i_div_if_loop_328_q;
            2'b11 : leftShiftStage2_uid387_normY_uid154_i_div_if_loop_328_q = leftShiftStage2Idx3_uid385_normY_uid154_i_div_if_loop_328_q;
            default : leftShiftStage2_uid387_normY_uid154_i_div_if_loop_328_q = 32'b0;
        endcase
    end

    // normYNoLeadOne_uid155_i_div_if_loop_328(BITSELECT,154)@14
    assign normYNoLeadOne_uid155_i_div_if_loop_328_in = leftShiftStage2_uid387_normY_uid154_i_div_if_loop_328_q[30:0];
    assign normYNoLeadOne_uid155_i_div_if_loop_328_b = normYNoLeadOne_uid155_i_div_if_loop_328_in[30:0];

    // yAddr_uid163_i_div_if_loop_328_merged_bit_select(BITSELECT,475)@14
    assign yAddr_uid163_i_div_if_loop_328_merged_bit_select_b = normYNoLeadOne_uid155_i_div_if_loop_328_b[30:23];
    assign yAddr_uid163_i_div_if_loop_328_merged_bit_select_c = normYNoLeadOne_uid155_i_div_if_loop_328_b[22:0];

    // redist5_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_2(DELAY,491)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_2_delay_0 <= '0;
            redist5_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_2_q <= '0;
        end
        else
        begin
            redist5_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_2_delay_0 <= $unsigned(yAddr_uid163_i_div_if_loop_328_merged_bit_select_c);
            redist5_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_2_q <= redist5_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_2_delay_0;
        end
    end

    // redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_wraddr(REG,541)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_wraddr_q <= $unsigned(redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_rdcnt_q);
        end
    end

    // redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem(DUALMEM,539)
    assign redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_ia = $unsigned(redist5_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_2_q);
    assign redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_aa = redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_wraddr_q;
    assign redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_ab = redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_rdcnt_q;
    assign redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(23),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(23),
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
    ) redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_dmem (
        .clocken1(redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_reset0),
        .clock1(clock),
        .address_a(redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_aa),
        .data_a(redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_ab),
        .q_b(redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_iq),
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
    assign redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_q = redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_iq[22:0];

    // redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_wraddr(REG,551)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_wraddr_q <= $unsigned(redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_q);
        end
    end

    // redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem(DUALMEM,549)
    assign redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_ia = $unsigned(redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_q);
    assign redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_aa = redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_wraddr_q;
    assign redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_ab = redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_rdcnt_q;
    assign redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(23),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(23),
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
    ) redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_dmem (
        .clocken1(redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_reset0),
        .clock1(clock),
        .address_a(redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_aa),
        .data_a(redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_ab),
        .q_b(redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_iq),
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
    assign redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_q = redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_iq[22:0];

    // nx_mergedSignalTM_uid308_pT3_uid284_invPolyEval(BITJOIN,307)@24
    assign nx_mergedSignalTM_uid308_pT3_uid284_invPolyEval_q = {GND_q, redist7_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_10_mem_q};

    // topRangeX_uid310_pT3_uid284_invPolyEval_merged_bit_select(BITSELECT,485)@24
    assign topRangeX_uid310_pT3_uid284_invPolyEval_merged_bit_select_b = $unsigned(nx_mergedSignalTM_uid308_pT3_uid284_invPolyEval_q[23:6]);
    assign topRangeX_uid310_pT3_uid284_invPolyEval_merged_bit_select_c = $unsigned(nx_mergedSignalTM_uid308_pT3_uid284_invPolyEval_q[5:0]);

    // aboveLeftY_bottomExtension_uid313_pT3_uid284_invPolyEval(CONSTANT,312)
    assign aboveLeftY_bottomExtension_uid313_pT3_uid284_invPolyEval_q = $unsigned(5'b00000);

    // aboveLeftY_mergedSignalTM_uid315_pT3_uid284_invPolyEval(BITJOIN,314)@24
    assign aboveLeftY_mergedSignalTM_uid315_pT3_uid284_invPolyEval_q = {topRangeY_uid311_pT3_uid284_invPolyEval_merged_bit_select_c, aboveLeftY_bottomExtension_uid313_pT3_uid284_invPolyEval_q};

    // memoryC3_uid264_invTabGen_lutmem(DUALMEM,462)@14 + 2
    // in j@20000000
    assign memoryC3_uid264_invTabGen_lutmem_aa = yAddr_uid163_i_div_if_loop_328_merged_bit_select_b;
    assign memoryC3_uid264_invTabGen_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(14),
        .widthad_a(8),
        .numwords_a(256),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000264_invTabGen_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC3_uid264_invTabGen_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC3_uid264_invTabGen_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC3_uid264_invTabGen_lutmem_aa),
        .q_a(memoryC3_uid264_invTabGen_lutmem_ir),
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
    assign memoryC3_uid264_invTabGen_lutmem_r = memoryC3_uid264_invTabGen_lutmem_ir[13:0];

    // yT1_uid271_invPolyEval(BITSELECT,270)@16
    assign yT1_uid271_invPolyEval_b = redist5_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_2_q[22:9];

    // prodXY_uid290_pT1_uid272_invPolyEval_cma(CHAINMULTADD,463)@16 + 3
    assign prodXY_uid290_pT1_uid272_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid290_pT1_uid272_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid290_pT1_uid272_invPolyEval_cma_ena1 = prodXY_uid290_pT1_uid272_invPolyEval_cma_ena0;
    assign prodXY_uid290_pT1_uid272_invPolyEval_cma_ena2 = prodXY_uid290_pT1_uid272_invPolyEval_cma_ena0;

    assign prodXY_uid290_pT1_uid272_invPolyEval_cma_a0 = yT1_uid271_invPolyEval_b;
    assign prodXY_uid290_pT1_uid272_invPolyEval_cma_c0 = $unsigned(memoryC3_uid264_invTabGen_lutmem_r);
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) prodXY_uid290_pT1_uid272_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXY_uid290_pT1_uid272_invPolyEval_cma_ena2, prodXY_uid290_pT1_uid272_invPolyEval_cma_ena1, prodXY_uid290_pT1_uid272_invPolyEval_cma_ena0 }),
        .aclr({ prodXY_uid290_pT1_uid272_invPolyEval_cma_reset, prodXY_uid290_pT1_uid272_invPolyEval_cma_reset }),
        .ay(prodXY_uid290_pT1_uid272_invPolyEval_cma_a0),
        .ax(prodXY_uid290_pT1_uid272_invPolyEval_cma_c0),
        .resulta(prodXY_uid290_pT1_uid272_invPolyEval_cma_s0),
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
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid290_pT1_uid272_invPolyEval_cma_delay ( .xin(prodXY_uid290_pT1_uid272_invPolyEval_cma_s0), .xout(prodXY_uid290_pT1_uid272_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid290_pT1_uid272_invPolyEval_cma_q = $unsigned(prodXY_uid290_pT1_uid272_invPolyEval_cma_qq[27:0]);

    // osig_uid291_pT1_uid272_invPolyEval(BITSELECT,290)@19
    assign osig_uid291_pT1_uid272_invPolyEval_b = $unsigned(prodXY_uid290_pT1_uid272_invPolyEval_cma_q[27:14]);

    // highBBits_uid274_invPolyEval(BITSELECT,273)@19
    assign highBBits_uid274_invPolyEval_b = $unsigned(osig_uid291_pT1_uid272_invPolyEval_b[13:1]);

    // redist2_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_3(DELAY,488)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_3_delay_0 <= '0;
            redist2_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_3_delay_1 <= '0;
            redist2_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_3_q <= '0;
        end
        else
        begin
            redist2_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_3_delay_0 <= $unsigned(yAddr_uid163_i_div_if_loop_328_merged_bit_select_b);
            redist2_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_3_delay_1 <= redist2_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_3_delay_0;
            redist2_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_3_q <= redist2_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_3_delay_1;
        end
    end

    // memoryC2_uid261_invTabGen_lutmem(DUALMEM,461)@17 + 2
    // in j@20000000
    assign memoryC2_uid261_invTabGen_lutmem_aa = redist2_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_3_q;
    assign memoryC2_uid261_invTabGen_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(21),
        .widthad_a(8),
        .numwords_a(256),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000261_invTabGen_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC2_uid261_invTabGen_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC2_uid261_invTabGen_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC2_uid261_invTabGen_lutmem_aa),
        .q_a(memoryC2_uid261_invTabGen_lutmem_ir),
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
    assign memoryC2_uid261_invTabGen_lutmem_r = memoryC2_uid261_invTabGen_lutmem_ir[20:0];

    // s1sumAHighB_uid275_invPolyEval(ADD,274)@19 + 1
    assign s1sumAHighB_uid275_invPolyEval_a = $unsigned({{1{memoryC2_uid261_invTabGen_lutmem_r[20]}}, memoryC2_uid261_invTabGen_lutmem_r});
    assign s1sumAHighB_uid275_invPolyEval_b = $unsigned({{9{highBBits_uid274_invPolyEval_b[12]}}, highBBits_uid274_invPolyEval_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            s1sumAHighB_uid275_invPolyEval_o <= 22'b0;
        end
        else
        begin
            s1sumAHighB_uid275_invPolyEval_o <= $unsigned($signed(s1sumAHighB_uid275_invPolyEval_a) + $signed(s1sumAHighB_uid275_invPolyEval_b));
        end
    end
    assign s1sumAHighB_uid275_invPolyEval_q = s1sumAHighB_uid275_invPolyEval_o[21:0];

    // lowRangeB_uid273_invPolyEval(BITSELECT,272)@19
    assign lowRangeB_uid273_invPolyEval_in = osig_uid291_pT1_uid272_invPolyEval_b[0:0];
    assign lowRangeB_uid273_invPolyEval_b = lowRangeB_uid273_invPolyEval_in[0:0];

    // redist11_lowRangeB_uid273_invPolyEval_b_1(DELAY,497)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_lowRangeB_uid273_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist11_lowRangeB_uid273_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid273_invPolyEval_b);
        end
    end

    // s1_uid276_invPolyEval(BITJOIN,275)@20
    assign s1_uid276_invPolyEval_q = {s1sumAHighB_uid275_invPolyEval_q, redist11_lowRangeB_uid273_invPolyEval_b_1_q};

    // yT2_uid277_invPolyEval(BITSELECT,276)@20
    assign yT2_uid277_invPolyEval_b = redist6_yAddr_uid163_i_div_if_loop_328_merged_bit_select_c_6_mem_q[22:2];

    // prodXY_uid293_pT2_uid278_invPolyEval_cma(CHAINMULTADD,464)@20 + 3
    assign prodXY_uid293_pT2_uid278_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid293_pT2_uid278_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid293_pT2_uid278_invPolyEval_cma_ena1 = prodXY_uid293_pT2_uid278_invPolyEval_cma_ena0;
    assign prodXY_uid293_pT2_uid278_invPolyEval_cma_ena2 = prodXY_uid293_pT2_uid278_invPolyEval_cma_ena0;

    assign prodXY_uid293_pT2_uid278_invPolyEval_cma_a0 = yT2_uid277_invPolyEval_b;
    assign prodXY_uid293_pT2_uid278_invPolyEval_cma_c0 = $unsigned(s1_uid276_invPolyEval_q);
    twentynm_mac #(
        .operation_mode("m27x27"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(21),
        .ax_clock("0"),
        .ax_width(23),
        .signed_may("false"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(44)
    ) prodXY_uid293_pT2_uid278_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXY_uid293_pT2_uid278_invPolyEval_cma_ena2, prodXY_uid293_pT2_uid278_invPolyEval_cma_ena1, prodXY_uid293_pT2_uid278_invPolyEval_cma_ena0 }),
        .aclr({ prodXY_uid293_pT2_uid278_invPolyEval_cma_reset, prodXY_uid293_pT2_uid278_invPolyEval_cma_reset }),
        .ay(prodXY_uid293_pT2_uid278_invPolyEval_cma_a0),
        .ax(prodXY_uid293_pT2_uid278_invPolyEval_cma_c0),
        .resulta(prodXY_uid293_pT2_uid278_invPolyEval_cma_s0),
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
        .dftout()
    );
    dspba_delay_ver #( .width(44), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid293_pT2_uid278_invPolyEval_cma_delay ( .xin(prodXY_uid293_pT2_uid278_invPolyEval_cma_s0), .xout(prodXY_uid293_pT2_uid278_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid293_pT2_uid278_invPolyEval_cma_q = $unsigned(prodXY_uid293_pT2_uid278_invPolyEval_cma_qq[43:0]);

    // osig_uid294_pT2_uid278_invPolyEval(BITSELECT,293)@23
    assign osig_uid294_pT2_uid278_invPolyEval_b = $unsigned(prodXY_uid293_pT2_uid278_invPolyEval_cma_q[43:21]);

    // highBBits_uid280_invPolyEval(BITSELECT,279)@23
    assign highBBits_uid280_invPolyEval_b = $unsigned(osig_uid294_pT2_uid278_invPolyEval_b[22:1]);

    // redist3_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_7(DELAY,489)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_7_delay_0 <= '0;
            redist3_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_7_delay_1 <= '0;
            redist3_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_7_delay_2 <= '0;
            redist3_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_7_q <= '0;
        end
        else
        begin
            redist3_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_7_delay_0 <= $unsigned(redist2_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_3_q);
            redist3_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_7_delay_1 <= redist3_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_7_delay_0;
            redist3_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_7_delay_2 <= redist3_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_7_delay_1;
            redist3_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_7_q <= redist3_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_7_delay_2;
        end
    end

    // memoryC1_uid258_invTabGen_lutmem(DUALMEM,460)@21 + 2
    // in j@20000000
    assign memoryC1_uid258_invTabGen_lutmem_aa = redist3_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_7_q;
    assign memoryC1_uid258_invTabGen_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(29),
        .widthad_a(8),
        .numwords_a(256),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000258_invTabGen_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC1_uid258_invTabGen_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC1_uid258_invTabGen_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC1_uid258_invTabGen_lutmem_aa),
        .q_a(memoryC1_uid258_invTabGen_lutmem_ir),
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
    assign memoryC1_uid258_invTabGen_lutmem_r = memoryC1_uid258_invTabGen_lutmem_ir[28:0];

    // s2sumAHighB_uid281_invPolyEval(ADD,280)@23 + 1
    assign s2sumAHighB_uid281_invPolyEval_a = $unsigned({{1{memoryC1_uid258_invTabGen_lutmem_r[28]}}, memoryC1_uid258_invTabGen_lutmem_r});
    assign s2sumAHighB_uid281_invPolyEval_b = $unsigned({{8{highBBits_uid280_invPolyEval_b[21]}}, highBBits_uid280_invPolyEval_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            s2sumAHighB_uid281_invPolyEval_o <= 30'b0;
        end
        else
        begin
            s2sumAHighB_uid281_invPolyEval_o <= $unsigned($signed(s2sumAHighB_uid281_invPolyEval_a) + $signed(s2sumAHighB_uid281_invPolyEval_b));
        end
    end
    assign s2sumAHighB_uid281_invPolyEval_q = s2sumAHighB_uid281_invPolyEval_o[29:0];

    // lowRangeB_uid279_invPolyEval(BITSELECT,278)@23
    assign lowRangeB_uid279_invPolyEval_in = osig_uid294_pT2_uid278_invPolyEval_b[0:0];
    assign lowRangeB_uid279_invPolyEval_b = lowRangeB_uid279_invPolyEval_in[0:0];

    // redist10_lowRangeB_uid279_invPolyEval_b_1(DELAY,496)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_lowRangeB_uid279_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist10_lowRangeB_uid279_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid279_invPolyEval_b);
        end
    end

    // s2_uid282_invPolyEval(BITJOIN,281)@24
    assign s2_uid282_invPolyEval_q = {s2sumAHighB_uid281_invPolyEval_q, redist10_lowRangeB_uid279_invPolyEval_b_1_q};

    // topRangeY_uid311_pT3_uid284_invPolyEval_merged_bit_select(BITSELECT,484)@24
    assign topRangeY_uid311_pT3_uid284_invPolyEval_merged_bit_select_b = $unsigned(s2_uid282_invPolyEval_q[30:13]);
    assign topRangeY_uid311_pT3_uid284_invPolyEval_merged_bit_select_c = $unsigned(s2_uid282_invPolyEval_q[12:0]);

    // rightBottomX_mergedSignalTM_uid319_pT3_uid284_invPolyEval(BITJOIN,318)@24
    assign rightBottomX_mergedSignalTM_uid319_pT3_uid284_invPolyEval_q = {topRangeX_uid310_pT3_uid284_invPolyEval_merged_bit_select_c, rightBottomX_bottomExtension_uid317_pT3_uid284_invPolyEval_q};

    // multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma(CHAINMULTADD,470)@24 + 3
    assign multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_reset = ~ (resetn);
    assign multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_ena0 = 1'b1;
    assign multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_ena1 = multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_ena0;
    assign multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_ena2 = multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_ena0;

    assign multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_a0 = rightBottomX_mergedSignalTM_uid319_pT3_uid284_invPolyEval_q;
    assign multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_c0 = $unsigned(topRangeY_uid311_pT3_uid284_invPolyEval_merged_bit_select_b);
    assign multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_a1 = aboveLeftY_mergedSignalTM_uid315_pT3_uid284_invPolyEval_q;
    assign multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_c1 = $unsigned(topRangeX_uid310_pT3_uid284_invPolyEval_merged_bit_select_b);
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
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
        .output_clock("1"),
        .result_a_width(37)
    ) multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_ena2, multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_ena1, multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_ena0 }),
        .aclr({ multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_reset, multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_reset }),
        .ay(multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_a1),
        .by(multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_a0),
        .ax(multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_c1),
        .bx(multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_c0),
        .resulta(multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_s0),
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
        .dftout()
    );
    dspba_delay_ver #( .width(37), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_delay ( .xin(multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_s0), .xout(multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_q = $unsigned(multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_qq[36:0]);

    // highBBits_uid326_pT3_uid284_invPolyEval(BITSELECT,325)@27
    assign highBBits_uid326_pT3_uid284_invPolyEval_b = $unsigned(multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_q[36:18]);

    // sm0_uid322_pT3_uid284_invPolyEval_cma(CHAINMULTADD,465)@24 + 3
    assign sm0_uid322_pT3_uid284_invPolyEval_cma_reset = ~ (resetn);
    assign sm0_uid322_pT3_uid284_invPolyEval_cma_ena0 = 1'b1;
    assign sm0_uid322_pT3_uid284_invPolyEval_cma_ena1 = sm0_uid322_pT3_uid284_invPolyEval_cma_ena0;
    assign sm0_uid322_pT3_uid284_invPolyEval_cma_ena2 = sm0_uid322_pT3_uid284_invPolyEval_cma_ena0;

    assign sm0_uid322_pT3_uid284_invPolyEval_cma_a0 = $unsigned(topRangeX_uid310_pT3_uid284_invPolyEval_merged_bit_select_b);
    assign sm0_uid322_pT3_uid284_invPolyEval_cma_c0 = $unsigned(topRangeY_uid311_pT3_uid284_invPolyEval_merged_bit_select_b);
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("true"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) sm0_uid322_pT3_uid284_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ sm0_uid322_pT3_uid284_invPolyEval_cma_ena2, sm0_uid322_pT3_uid284_invPolyEval_cma_ena1, sm0_uid322_pT3_uid284_invPolyEval_cma_ena0 }),
        .aclr({ sm0_uid322_pT3_uid284_invPolyEval_cma_reset, sm0_uid322_pT3_uid284_invPolyEval_cma_reset }),
        .ay(sm0_uid322_pT3_uid284_invPolyEval_cma_a0),
        .ax(sm0_uid322_pT3_uid284_invPolyEval_cma_c0),
        .resulta(sm0_uid322_pT3_uid284_invPolyEval_cma_s0),
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
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sm0_uid322_pT3_uid284_invPolyEval_cma_delay ( .xin(sm0_uid322_pT3_uid284_invPolyEval_cma_s0), .xout(sm0_uid322_pT3_uid284_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign sm0_uid322_pT3_uid284_invPolyEval_cma_q = $unsigned(sm0_uid322_pT3_uid284_invPolyEval_cma_qq[35:0]);

    // lev1_a0sumAHighB_uid327_pT3_uid284_invPolyEval(ADD,326)@27
    assign lev1_a0sumAHighB_uid327_pT3_uid284_invPolyEval_a = $unsigned({{1{sm0_uid322_pT3_uid284_invPolyEval_cma_q[35]}}, sm0_uid322_pT3_uid284_invPolyEval_cma_q});
    assign lev1_a0sumAHighB_uid327_pT3_uid284_invPolyEval_b = $unsigned({{18{highBBits_uid326_pT3_uid284_invPolyEval_b[18]}}, highBBits_uid326_pT3_uid284_invPolyEval_b});
    assign lev1_a0sumAHighB_uid327_pT3_uid284_invPolyEval_o = $unsigned($signed(lev1_a0sumAHighB_uid327_pT3_uid284_invPolyEval_a) + $signed(lev1_a0sumAHighB_uid327_pT3_uid284_invPolyEval_b));
    assign lev1_a0sumAHighB_uid327_pT3_uid284_invPolyEval_q = lev1_a0sumAHighB_uid327_pT3_uid284_invPolyEval_o[36:0];

    // lowRangeB_uid325_pT3_uid284_invPolyEval(BITSELECT,324)@27
    assign lowRangeB_uid325_pT3_uid284_invPolyEval_in = multSumOfTwoTS_uid323_pT3_uid284_invPolyEval_cma_q[17:0];
    assign lowRangeB_uid325_pT3_uid284_invPolyEval_b = lowRangeB_uid325_pT3_uid284_invPolyEval_in[17:0];

    // lev1_a0_uid328_pT3_uid284_invPolyEval(BITJOIN,327)@27
    assign lev1_a0_uid328_pT3_uid284_invPolyEval_q = {lev1_a0sumAHighB_uid327_pT3_uid284_invPolyEval_q, lowRangeB_uid325_pT3_uid284_invPolyEval_b};

    // os_uid329_pT3_uid284_invPolyEval(BITSELECT,328)@27
    assign os_uid329_pT3_uid284_invPolyEval_in = $unsigned(lev1_a0_uid328_pT3_uid284_invPolyEval_q[52:0]);
    assign os_uid329_pT3_uid284_invPolyEval_b = $unsigned(os_uid329_pT3_uid284_invPolyEval_in[52:21]);

    // highBBits_uid286_invPolyEval(BITSELECT,285)@27
    assign highBBits_uid286_invPolyEval_b = $unsigned(os_uid329_pT3_uid284_invPolyEval_b[31:2]);

    // redist8_highBBits_uid286_invPolyEval_b_1(DELAY,494)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_highBBits_uid286_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist8_highBBits_uid286_invPolyEval_b_1_q <= $unsigned(highBBits_uid286_invPolyEval_b);
        end
    end

    // redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_notEnable(LOGICAL,535)
    assign redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_nor(LOGICAL,536)
    assign redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_nor_q = ~ (redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_notEnable_q | redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_sticky_ena_q);

    // redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_last(CONSTANT,532)
    assign redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_last_q = $unsigned(3'b010);

    // redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_cmp(LOGICAL,533)
    assign redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_cmp_b = {1'b0, redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_rdcnt_q};
    assign redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_cmp_q = $unsigned(redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_last_q == redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_cmp_b ? 1'b1 : 1'b0);

    // redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_cmpReg(REG,534)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_cmpReg_q <= $unsigned(redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_cmp_q);
        end
    end

    // redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_sticky_ena(REG,537)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_nor_q == 1'b1)
        begin
            redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_sticky_ena_q <= $unsigned(redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_cmpReg_q);
        end
    end

    // redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_enaAnd(LOGICAL,538)
    assign redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_enaAnd_q = redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_sticky_ena_q & VCC_q;

    // redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_rdcnt(COUNTER,530)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_rdcnt_i <= $unsigned(redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_rdcnt_q = redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_rdcnt_i[1:0];

    // redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_wraddr(REG,531)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_wraddr_q <= $unsigned(redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_rdcnt_q);
        end
    end

    // redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem(DUALMEM,529)
    assign redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_ia = $unsigned(redist3_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_7_q);
    assign redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_aa = redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_wraddr_q;
    assign redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_ab = redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_rdcnt_q;
    assign redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(8),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_dmem (
        .clocken1(redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_reset0),
        .clock1(clock),
        .address_a(redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_aa),
        .data_a(redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_ab),
        .q_b(redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_iq),
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
    assign redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_q = redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_iq[7:0];

    // memoryC0_uid255_invTabGen_lutmem(DUALMEM,459)@26 + 2
    // in j@20000000
    assign memoryC0_uid255_invTabGen_lutmem_aa = redist4_yAddr_uid163_i_div_if_loop_328_merged_bit_select_b_12_mem_q;
    assign memoryC0_uid255_invTabGen_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M20K"),
        .operation_mode("ROM"),
        .width_a(38),
        .widthad_a(8),
        .numwords_a(256),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000255_invTabGen_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Arria 10")
    ) memoryC0_uid255_invTabGen_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC0_uid255_invTabGen_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC0_uid255_invTabGen_lutmem_aa),
        .q_a(memoryC0_uid255_invTabGen_lutmem_ir),
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
    assign memoryC0_uid255_invTabGen_lutmem_r = memoryC0_uid255_invTabGen_lutmem_ir[37:0];

    // s3sumAHighB_uid287_invPolyEval(ADD,286)@28
    assign s3sumAHighB_uid287_invPolyEval_a = $unsigned({{1{memoryC0_uid255_invTabGen_lutmem_r[37]}}, memoryC0_uid255_invTabGen_lutmem_r});
    assign s3sumAHighB_uid287_invPolyEval_b = $unsigned({{9{redist8_highBBits_uid286_invPolyEval_b_1_q[29]}}, redist8_highBBits_uid286_invPolyEval_b_1_q});
    assign s3sumAHighB_uid287_invPolyEval_o = $unsigned($signed(s3sumAHighB_uid287_invPolyEval_a) + $signed(s3sumAHighB_uid287_invPolyEval_b));
    assign s3sumAHighB_uid287_invPolyEval_q = s3sumAHighB_uid287_invPolyEval_o[38:0];

    // lowRangeB_uid285_invPolyEval(BITSELECT,284)@27
    assign lowRangeB_uid285_invPolyEval_in = os_uid329_pT3_uid284_invPolyEval_b[1:0];
    assign lowRangeB_uid285_invPolyEval_b = lowRangeB_uid285_invPolyEval_in[1:0];

    // redist9_lowRangeB_uid285_invPolyEval_b_1(DELAY,495)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_lowRangeB_uid285_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist9_lowRangeB_uid285_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid285_invPolyEval_b);
        end
    end

    // s3_uid288_invPolyEval(BITJOIN,287)@28
    assign s3_uid288_invPolyEval_q = {s3sumAHighB_uid287_invPolyEval_q, redist9_lowRangeB_uid285_invPolyEval_b_1_q};

    // fxpInverseRes_uid166_i_div_if_loop_328(BITSELECT,165)@28
    assign fxpInverseRes_uid166_i_div_if_loop_328_in = s3_uid288_invPolyEval_q[38:0];
    assign fxpInverseRes_uid166_i_div_if_loop_328_b = fxpInverseRes_uid166_i_div_if_loop_328_in[38:6];

    // paddingY_uid156_i_div_if_loop_328(CONSTANT,155)
    assign paddingY_uid156_i_div_if_loop_328_q = $unsigned(31'b0000000000000000000000000000000);

    // updatedY_uid157_i_div_if_loop_328(BITJOIN,156)@14
    assign updatedY_uid157_i_div_if_loop_328_q = {GND_q, paddingY_uid156_i_div_if_loop_328_q};

    // normYIsOneC2_uid156_i_div_if_loop_328(LOGICAL,157)@14 + 1
    assign normYIsOneC2_uid156_i_div_if_loop_328_a = {1'b0, normYNoLeadOne_uid155_i_div_if_loop_328_b};
    assign normYIsOneC2_uid156_i_div_if_loop_328_qi = $unsigned(normYIsOneC2_uid156_i_div_if_loop_328_a == updatedY_uid157_i_div_if_loop_328_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    normYIsOneC2_uid156_i_div_if_loop_328_delay ( .xin(normYIsOneC2_uid156_i_div_if_loop_328_qi), .xout(normYIsOneC2_uid156_i_div_if_loop_328_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // normYIsOneC2_uid159_i_div_if_loop_328(BITSELECT,158)@14
    assign normYIsOneC2_uid159_i_div_if_loop_328_b = $unsigned(leftShiftStage2_uid387_normY_uid154_i_div_if_loop_328_q[31:31]);

    // redist23_normYIsOneC2_uid159_i_div_if_loop_328_b_1(DELAY,509)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_normYIsOneC2_uid159_i_div_if_loop_328_b_1_q <= '0;
        end
        else
        begin
            redist23_normYIsOneC2_uid159_i_div_if_loop_328_b_1_q <= $unsigned(normYIsOneC2_uid159_i_div_if_loop_328_b);
        end
    end

    // normYIsOne_uid160_i_div_if_loop_328(LOGICAL,159)@15 + 1
    assign normYIsOne_uid160_i_div_if_loop_328_qi = redist23_normYIsOneC2_uid159_i_div_if_loop_328_b_1_q & normYIsOneC2_uid156_i_div_if_loop_328_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    normYIsOne_uid160_i_div_if_loop_328_delay ( .xin(normYIsOne_uid160_i_div_if_loop_328_qi), .xout(normYIsOne_uid160_i_div_if_loop_328_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_normYIsOne_uid160_i_div_if_loop_328_q_13(DELAY,508)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist22_normYIsOne_uid160_i_div_if_loop_328_q_13 ( .xin(normYIsOne_uid160_i_div_if_loop_328_q), .xout(redist22_normYIsOne_uid160_i_div_if_loop_328_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invResPostOneHandling2_uid168_i_div_if_loop_328(MUX,167)@28 + 1
    assign invResPostOneHandling2_uid168_i_div_if_loop_328_s = redist22_normYIsOne_uid160_i_div_if_loop_328_q_13_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            invResPostOneHandling2_uid168_i_div_if_loop_328_q <= 33'b0;
        end
        else
        begin
            unique case (invResPostOneHandling2_uid168_i_div_if_loop_328_s)
                1'b0 : invResPostOneHandling2_uid168_i_div_if_loop_328_q <= fxpInverseRes_uid166_i_div_if_loop_328_b;
                1'b1 : invResPostOneHandling2_uid168_i_div_if_loop_328_q <= oneInvRes_uid167_i_div_if_loop_328_q;
                default : invResPostOneHandling2_uid168_i_div_if_loop_328_q <= 33'b0;
            endcase
        end
    end

    // prodXInvY_uid176_i_div_if_loop_328_bs2_merged_bit_select(BITSELECT,476)@29
    assign prodXInvY_uid176_i_div_if_loop_328_bs2_merged_bit_select_b = invResPostOneHandling2_uid168_i_div_if_loop_328_q[32:18];
    assign prodXInvY_uid176_i_div_if_loop_328_bs2_merged_bit_select_c = invResPostOneHandling2_uid168_i_div_if_loop_328_q[17:0];

    // zMsbY0_uid173_i_div_if_loop_328(BITJOIN,172)@29
    assign zMsbY0_uid173_i_div_if_loop_328_q = {GND_q, redist26_xMSB_uid147_i_div_if_loop_328_b_18_q};

    // xPSX_uid171_i_div_if_loop_328(LOGICAL,170)@29
    assign xPSX_uid171_i_div_if_loop_328_b = $unsigned({{31{redist26_xMSB_uid147_i_div_if_loop_328_b_18_q[0]}}, redist26_xMSB_uid147_i_div_if_loop_328_b_18_q});
    assign xPSX_uid171_i_div_if_loop_328_q = i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out ^ xPSX_uid171_i_div_if_loop_328_b;

    // xPSXE_uid174_i_div_if_loop_328(ADD,173)@29
    assign xPSXE_uid174_i_div_if_loop_328_a = $unsigned({{1{xPSX_uid171_i_div_if_loop_328_q[31]}}, xPSX_uid171_i_div_if_loop_328_q});
    assign xPSXE_uid174_i_div_if_loop_328_b = $unsigned({{31{zMsbY0_uid173_i_div_if_loop_328_q[1]}}, zMsbY0_uid173_i_div_if_loop_328_q});
    assign xPSXE_uid174_i_div_if_loop_328_o = $unsigned($signed(xPSXE_uid174_i_div_if_loop_328_a) + $signed(xPSXE_uid174_i_div_if_loop_328_b));
    assign xPSXE_uid174_i_div_if_loop_328_q = xPSXE_uid174_i_div_if_loop_328_o[32:0];

    // prodXInvY_uid176_i_div_if_loop_328_bs1_merged_bit_select(BITSELECT,478)@29
    assign prodXInvY_uid176_i_div_if_loop_328_bs1_merged_bit_select_b = $unsigned(xPSXE_uid174_i_div_if_loop_328_q[32:18]);
    assign prodXInvY_uid176_i_div_if_loop_328_bs1_merged_bit_select_c = $unsigned(xPSXE_uid174_i_div_if_loop_328_q[17:0]);

    // prodXInvY_uid176_i_div_if_loop_328_ma3_cma(CHAINMULTADD,471)@29 + 3
    assign prodXInvY_uid176_i_div_if_loop_328_ma3_cma_reset = ~ (resetn);
    assign prodXInvY_uid176_i_div_if_loop_328_ma3_cma_ena0 = 1'b1;
    assign prodXInvY_uid176_i_div_if_loop_328_ma3_cma_ena1 = prodXInvY_uid176_i_div_if_loop_328_ma3_cma_ena0;
    assign prodXInvY_uid176_i_div_if_loop_328_ma3_cma_ena2 = prodXInvY_uid176_i_div_if_loop_328_ma3_cma_ena0;

    assign prodXInvY_uid176_i_div_if_loop_328_ma3_cma_a0 = $unsigned({{1{prodXInvY_uid176_i_div_if_loop_328_bs1_merged_bit_select_b[14]}}, prodXInvY_uid176_i_div_if_loop_328_bs1_merged_bit_select_b[14:0]});
    assign prodXInvY_uid176_i_div_if_loop_328_ma3_cma_c0 = prodXInvY_uid176_i_div_if_loop_328_bs2_merged_bit_select_c;
    assign prodXInvY_uid176_i_div_if_loop_328_ma3_cma_a1 = $unsigned(prodXInvY_uid176_i_div_if_loop_328_bjB6_q);
    assign prodXInvY_uid176_i_div_if_loop_328_ma3_cma_c1 = prodXInvY_uid176_i_div_if_loop_328_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
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
        .output_clock("1"),
        .result_a_width(35)
    ) prodXInvY_uid176_i_div_if_loop_328_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXInvY_uid176_i_div_if_loop_328_ma3_cma_ena2, prodXInvY_uid176_i_div_if_loop_328_ma3_cma_ena1, prodXInvY_uid176_i_div_if_loop_328_ma3_cma_ena0 }),
        .aclr({ prodXInvY_uid176_i_div_if_loop_328_ma3_cma_reset, prodXInvY_uid176_i_div_if_loop_328_ma3_cma_reset }),
        .ay(prodXInvY_uid176_i_div_if_loop_328_ma3_cma_a1),
        .by(prodXInvY_uid176_i_div_if_loop_328_ma3_cma_a0),
        .ax(prodXInvY_uid176_i_div_if_loop_328_ma3_cma_c1),
        .bx(prodXInvY_uid176_i_div_if_loop_328_ma3_cma_c0),
        .resulta(prodXInvY_uid176_i_div_if_loop_328_ma3_cma_s0),
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
        .dftout()
    );
    dspba_delay_ver #( .width(35), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXInvY_uid176_i_div_if_loop_328_ma3_cma_delay ( .xin(prodXInvY_uid176_i_div_if_loop_328_ma3_cma_s0), .xout(prodXInvY_uid176_i_div_if_loop_328_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXInvY_uid176_i_div_if_loop_328_ma3_cma_q = $unsigned(prodXInvY_uid176_i_div_if_loop_328_ma3_cma_qq[34:0]);

    // prodXInvY_uid176_i_div_if_loop_328_sums_align_1(BITSHIFT,401)@32
    assign prodXInvY_uid176_i_div_if_loop_328_sums_align_1_qint = { prodXInvY_uid176_i_div_if_loop_328_ma3_cma_q, 18'b000000000000000000 };
    assign prodXInvY_uid176_i_div_if_loop_328_sums_align_1_q = prodXInvY_uid176_i_div_if_loop_328_sums_align_1_qint[52:0];

    // prodXInvY_uid176_i_div_if_loop_328_im0_cma(CHAINMULTADD,466)@29 + 3
    assign prodXInvY_uid176_i_div_if_loop_328_im0_cma_reset = ~ (resetn);
    assign prodXInvY_uid176_i_div_if_loop_328_im0_cma_ena0 = 1'b1;
    assign prodXInvY_uid176_i_div_if_loop_328_im0_cma_ena1 = prodXInvY_uid176_i_div_if_loop_328_im0_cma_ena0;
    assign prodXInvY_uid176_i_div_if_loop_328_im0_cma_ena2 = prodXInvY_uid176_i_div_if_loop_328_im0_cma_ena0;

    assign prodXInvY_uid176_i_div_if_loop_328_im0_cma_a0 = prodXInvY_uid176_i_div_if_loop_328_bs2_merged_bit_select_b;
    assign prodXInvY_uid176_i_div_if_loop_328_im0_cma_c0 = $unsigned(prodXInvY_uid176_i_div_if_loop_328_bs1_merged_bit_select_b);
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(15),
        .ax_clock("0"),
        .ax_width(15),
        .signed_may("false"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(30)
    ) prodXInvY_uid176_i_div_if_loop_328_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXInvY_uid176_i_div_if_loop_328_im0_cma_ena2, prodXInvY_uid176_i_div_if_loop_328_im0_cma_ena1, prodXInvY_uid176_i_div_if_loop_328_im0_cma_ena0 }),
        .aclr({ prodXInvY_uid176_i_div_if_loop_328_im0_cma_reset, prodXInvY_uid176_i_div_if_loop_328_im0_cma_reset }),
        .ay(prodXInvY_uid176_i_div_if_loop_328_im0_cma_a0),
        .ax(prodXInvY_uid176_i_div_if_loop_328_im0_cma_c0),
        .resulta(prodXInvY_uid176_i_div_if_loop_328_im0_cma_s0),
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
        .dftout()
    );
    dspba_delay_ver #( .width(30), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXInvY_uid176_i_div_if_loop_328_im0_cma_delay ( .xin(prodXInvY_uid176_i_div_if_loop_328_im0_cma_s0), .xout(prodXInvY_uid176_i_div_if_loop_328_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXInvY_uid176_i_div_if_loop_328_im0_cma_q = $unsigned(prodXInvY_uid176_i_div_if_loop_328_im0_cma_qq[29:0]);

    // prodXInvY_uid176_i_div_if_loop_328_im9_cma(CHAINMULTADD,467)@29 + 3
    assign prodXInvY_uid176_i_div_if_loop_328_im9_cma_reset = ~ (resetn);
    assign prodXInvY_uid176_i_div_if_loop_328_im9_cma_ena0 = 1'b1;
    assign prodXInvY_uid176_i_div_if_loop_328_im9_cma_ena1 = prodXInvY_uid176_i_div_if_loop_328_im9_cma_ena0;
    assign prodXInvY_uid176_i_div_if_loop_328_im9_cma_ena2 = prodXInvY_uid176_i_div_if_loop_328_im9_cma_ena0;

    assign prodXInvY_uid176_i_div_if_loop_328_im9_cma_a0 = prodXInvY_uid176_i_div_if_loop_328_bs1_merged_bit_select_c;
    assign prodXInvY_uid176_i_div_if_loop_328_im9_cma_c0 = prodXInvY_uid176_i_div_if_loop_328_bs2_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) prodXInvY_uid176_i_div_if_loop_328_im9_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXInvY_uid176_i_div_if_loop_328_im9_cma_ena2, prodXInvY_uid176_i_div_if_loop_328_im9_cma_ena1, prodXInvY_uid176_i_div_if_loop_328_im9_cma_ena0 }),
        .aclr({ prodXInvY_uid176_i_div_if_loop_328_im9_cma_reset, prodXInvY_uid176_i_div_if_loop_328_im9_cma_reset }),
        .ay(prodXInvY_uid176_i_div_if_loop_328_im9_cma_a0),
        .ax(prodXInvY_uid176_i_div_if_loop_328_im9_cma_c0),
        .resulta(prodXInvY_uid176_i_div_if_loop_328_im9_cma_s0),
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
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXInvY_uid176_i_div_if_loop_328_im9_cma_delay ( .xin(prodXInvY_uid176_i_div_if_loop_328_im9_cma_s0), .xout(prodXInvY_uid176_i_div_if_loop_328_im9_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXInvY_uid176_i_div_if_loop_328_im9_cma_q = $unsigned(prodXInvY_uid176_i_div_if_loop_328_im9_cma_qq[35:0]);

    // prodXInvY_uid176_i_div_if_loop_328_sums_join_0(BITJOIN,400)@32
    assign prodXInvY_uid176_i_div_if_loop_328_sums_join_0_q = {prodXInvY_uid176_i_div_if_loop_328_im0_cma_q, prodXInvY_uid176_i_div_if_loop_328_im9_cma_q};

    // prodXInvY_uid176_i_div_if_loop_328_sums_result_add_0_0(ADD,403)@32
    assign prodXInvY_uid176_i_div_if_loop_328_sums_result_add_0_0_a = $unsigned({{1{prodXInvY_uid176_i_div_if_loop_328_sums_join_0_q[65]}}, prodXInvY_uid176_i_div_if_loop_328_sums_join_0_q});
    assign prodXInvY_uid176_i_div_if_loop_328_sums_result_add_0_0_b = $unsigned({{14{prodXInvY_uid176_i_div_if_loop_328_sums_align_1_q[52]}}, prodXInvY_uid176_i_div_if_loop_328_sums_align_1_q});
    assign prodXInvY_uid176_i_div_if_loop_328_sums_result_add_0_0_o = $unsigned($signed(prodXInvY_uid176_i_div_if_loop_328_sums_result_add_0_0_a) + $signed(prodXInvY_uid176_i_div_if_loop_328_sums_result_add_0_0_b));
    assign prodXInvY_uid176_i_div_if_loop_328_sums_result_add_0_0_q = prodXInvY_uid176_i_div_if_loop_328_sums_result_add_0_0_o[66:0];

    // rightShiftInput_uid177_i_div_if_loop_328(BITSELECT,176)@32
    assign rightShiftInput_uid177_i_div_if_loop_328_in = $unsigned(prodXInvY_uid176_i_div_if_loop_328_sums_result_add_0_0_q[64:0]);
    assign rightShiftInput_uid177_i_div_if_loop_328_b = $unsigned(rightShiftInput_uid177_i_div_if_loop_328_in[64:0]);

    // xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328(BITSELECT,404)@32
    assign xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328_b = $unsigned(rightShiftInput_uid177_i_div_if_loop_328_b[64:64]);

    // seMsb_to64_uid439(BITSELECT,438)@32
    assign seMsb_to64_uid439_in = $unsigned({{63{xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328_b[0]}}, xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328_b});
    assign seMsb_to64_uid439_b = $unsigned(seMsb_to64_uid439_in[63:0]);

    // rightShiftStage3Idx1Rng64_uid440_prodPostRightShift_uid178_i_div_if_loop_328(BITSELECT,439)@32
    assign rightShiftStage3Idx1Rng64_uid440_prodPostRightShift_uid178_i_div_if_loop_328_b = $unsigned(rightShiftStage2_uid438_prodPostRightShift_uid178_i_div_if_loop_328_q[64:64]);

    // rightShiftStage3Idx1_uid441_prodPostRightShift_uid178_i_div_if_loop_328(BITJOIN,440)@32
    assign rightShiftStage3Idx1_uid441_prodPostRightShift_uid178_i_div_if_loop_328_q = {seMsb_to64_uid439_b, rightShiftStage3Idx1Rng64_uid440_prodPostRightShift_uid178_i_div_if_loop_328_b};

    // seMsb_to48_uid434(BITSELECT,433)@32
    assign seMsb_to48_uid434_in = $unsigned({{47{xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328_b[0]}}, xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328_b});
    assign seMsb_to48_uid434_b = $unsigned(seMsb_to48_uid434_in[47:0]);

    // rightShiftStage2Idx3Rng48_uid435_prodPostRightShift_uid178_i_div_if_loop_328(BITSELECT,434)@32
    assign rightShiftStage2Idx3Rng48_uid435_prodPostRightShift_uid178_i_div_if_loop_328_b = $unsigned(rightShiftStage1_uid427_prodPostRightShift_uid178_i_div_if_loop_328_q[64:48]);

    // rightShiftStage2Idx3_uid436_prodPostRightShift_uid178_i_div_if_loop_328(BITJOIN,435)@32
    assign rightShiftStage2Idx3_uid436_prodPostRightShift_uid178_i_div_if_loop_328_q = {seMsb_to48_uid434_b, rightShiftStage2Idx3Rng48_uid435_prodPostRightShift_uid178_i_div_if_loop_328_b};

    // seMsb_to32_uid431(BITSELECT,430)@32
    assign seMsb_to32_uid431_in = $unsigned({{31{xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328_b[0]}}, xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328_b});
    assign seMsb_to32_uid431_b = $unsigned(seMsb_to32_uid431_in[31:0]);

    // rightShiftStage2Idx2Rng32_uid432_prodPostRightShift_uid178_i_div_if_loop_328(BITSELECT,431)@32
    assign rightShiftStage2Idx2Rng32_uid432_prodPostRightShift_uid178_i_div_if_loop_328_b = $unsigned(rightShiftStage1_uid427_prodPostRightShift_uid178_i_div_if_loop_328_q[64:32]);

    // rightShiftStage2Idx2_uid433_prodPostRightShift_uid178_i_div_if_loop_328(BITJOIN,432)@32
    assign rightShiftStage2Idx2_uid433_prodPostRightShift_uid178_i_div_if_loop_328_q = {seMsb_to32_uid431_b, rightShiftStage2Idx2Rng32_uid432_prodPostRightShift_uid178_i_div_if_loop_328_b};

    // seMsb_to16_uid428(BITSELECT,427)@32
    assign seMsb_to16_uid428_in = $unsigned({{15{xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328_b[0]}}, xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328_b});
    assign seMsb_to16_uid428_b = $unsigned(seMsb_to16_uid428_in[15:0]);

    // rightShiftStage2Idx1Rng16_uid429_prodPostRightShift_uid178_i_div_if_loop_328(BITSELECT,428)@32
    assign rightShiftStage2Idx1Rng16_uid429_prodPostRightShift_uid178_i_div_if_loop_328_b = $unsigned(rightShiftStage1_uid427_prodPostRightShift_uid178_i_div_if_loop_328_q[64:16]);

    // rightShiftStage2Idx1_uid430_prodPostRightShift_uid178_i_div_if_loop_328(BITJOIN,429)@32
    assign rightShiftStage2Idx1_uid430_prodPostRightShift_uid178_i_div_if_loop_328_q = {seMsb_to16_uid428_b, rightShiftStage2Idx1Rng16_uid429_prodPostRightShift_uid178_i_div_if_loop_328_b};

    // seMsb_to12_uid423(BITSELECT,422)@32
    assign seMsb_to12_uid423_in = $unsigned({{11{xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328_b[0]}}, xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328_b});
    assign seMsb_to12_uid423_b = $unsigned(seMsb_to12_uid423_in[11:0]);

    // rightShiftStage1Idx3Rng12_uid424_prodPostRightShift_uid178_i_div_if_loop_328(BITSELECT,423)@32
    assign rightShiftStage1Idx3Rng12_uid424_prodPostRightShift_uid178_i_div_if_loop_328_b = $unsigned(rightShiftStage0_uid416_prodPostRightShift_uid178_i_div_if_loop_328_q[64:12]);

    // rightShiftStage1Idx3_uid425_prodPostRightShift_uid178_i_div_if_loop_328(BITJOIN,424)@32
    assign rightShiftStage1Idx3_uid425_prodPostRightShift_uid178_i_div_if_loop_328_q = {seMsb_to12_uid423_b, rightShiftStage1Idx3Rng12_uid424_prodPostRightShift_uid178_i_div_if_loop_328_b};

    // seMsb_to8_uid420(BITSELECT,419)@32
    assign seMsb_to8_uid420_in = $unsigned({{7{xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328_b[0]}}, xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328_b});
    assign seMsb_to8_uid420_b = $unsigned(seMsb_to8_uid420_in[7:0]);

    // rightShiftStage1Idx2Rng8_uid421_prodPostRightShift_uid178_i_div_if_loop_328(BITSELECT,420)@32
    assign rightShiftStage1Idx2Rng8_uid421_prodPostRightShift_uid178_i_div_if_loop_328_b = $unsigned(rightShiftStage0_uid416_prodPostRightShift_uid178_i_div_if_loop_328_q[64:8]);

    // rightShiftStage1Idx2_uid422_prodPostRightShift_uid178_i_div_if_loop_328(BITJOIN,421)@32
    assign rightShiftStage1Idx2_uid422_prodPostRightShift_uid178_i_div_if_loop_328_q = {seMsb_to8_uid420_b, rightShiftStage1Idx2Rng8_uid421_prodPostRightShift_uid178_i_div_if_loop_328_b};

    // seMsb_to4_uid417(BITSELECT,416)@32
    assign seMsb_to4_uid417_in = $unsigned({{3{xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328_b[0]}}, xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328_b});
    assign seMsb_to4_uid417_b = $unsigned(seMsb_to4_uid417_in[3:0]);

    // rightShiftStage1Idx1Rng4_uid418_prodPostRightShift_uid178_i_div_if_loop_328(BITSELECT,417)@32
    assign rightShiftStage1Idx1Rng4_uid418_prodPostRightShift_uid178_i_div_if_loop_328_b = $unsigned(rightShiftStage0_uid416_prodPostRightShift_uid178_i_div_if_loop_328_q[64:4]);

    // rightShiftStage1Idx1_uid419_prodPostRightShift_uid178_i_div_if_loop_328(BITJOIN,418)@32
    assign rightShiftStage1Idx1_uid419_prodPostRightShift_uid178_i_div_if_loop_328_q = {seMsb_to4_uid417_b, rightShiftStage1Idx1Rng4_uid418_prodPostRightShift_uid178_i_div_if_loop_328_b};

    // seMsb_to3_uid412(BITSELECT,411)@32
    assign seMsb_to3_uid412_in = $unsigned({{2{xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328_b[0]}}, xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328_b});
    assign seMsb_to3_uid412_b = $unsigned(seMsb_to3_uid412_in[2:0]);

    // rightShiftStage0Idx3Rng3_uid413_prodPostRightShift_uid178_i_div_if_loop_328(BITSELECT,412)@32
    assign rightShiftStage0Idx3Rng3_uid413_prodPostRightShift_uid178_i_div_if_loop_328_b = $unsigned(rightShiftInput_uid177_i_div_if_loop_328_b[64:3]);

    // rightShiftStage0Idx3_uid414_prodPostRightShift_uid178_i_div_if_loop_328(BITJOIN,413)@32
    assign rightShiftStage0Idx3_uid414_prodPostRightShift_uid178_i_div_if_loop_328_q = {seMsb_to3_uid412_b, rightShiftStage0Idx3Rng3_uid413_prodPostRightShift_uid178_i_div_if_loop_328_b};

    // seMsb_to2_uid409(BITSELECT,408)@32
    assign seMsb_to2_uid409_in = $unsigned({{1{xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328_b[0]}}, xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328_b});
    assign seMsb_to2_uid409_b = $unsigned(seMsb_to2_uid409_in[1:0]);

    // rightShiftStage0Idx2Rng2_uid410_prodPostRightShift_uid178_i_div_if_loop_328(BITSELECT,409)@32
    assign rightShiftStage0Idx2Rng2_uid410_prodPostRightShift_uid178_i_div_if_loop_328_b = $unsigned(rightShiftInput_uid177_i_div_if_loop_328_b[64:2]);

    // rightShiftStage0Idx2_uid411_prodPostRightShift_uid178_i_div_if_loop_328(BITJOIN,410)@32
    assign rightShiftStage0Idx2_uid411_prodPostRightShift_uid178_i_div_if_loop_328_q = {seMsb_to2_uid409_b, rightShiftStage0Idx2Rng2_uid410_prodPostRightShift_uid178_i_div_if_loop_328_b};

    // rightShiftStage0Idx1Rng1_uid407_prodPostRightShift_uid178_i_div_if_loop_328(BITSELECT,406)@32
    assign rightShiftStage0Idx1Rng1_uid407_prodPostRightShift_uid178_i_div_if_loop_328_b = $unsigned(rightShiftInput_uid177_i_div_if_loop_328_b[64:1]);

    // rightShiftStage0Idx1_uid408_prodPostRightShift_uid178_i_div_if_loop_328(BITJOIN,407)@32
    assign rightShiftStage0Idx1_uid408_prodPostRightShift_uid178_i_div_if_loop_328_q = {xMSB_uid405_prodPostRightShift_uid178_i_div_if_loop_328_b, rightShiftStage0Idx1Rng1_uid407_prodPostRightShift_uid178_i_div_if_loop_328_b};

    // rightShiftStage0_uid416_prodPostRightShift_uid178_i_div_if_loop_328(MUX,415)@32
    assign rightShiftStage0_uid416_prodPostRightShift_uid178_i_div_if_loop_328_s = rightShiftStageSel0Dto0_uid415_prodPostRightShift_uid178_i_div_if_loop_328_merged_bit_select_b;
    always @(rightShiftStage0_uid416_prodPostRightShift_uid178_i_div_if_loop_328_s or rightShiftInput_uid177_i_div_if_loop_328_b or rightShiftStage0Idx1_uid408_prodPostRightShift_uid178_i_div_if_loop_328_q or rightShiftStage0Idx2_uid411_prodPostRightShift_uid178_i_div_if_loop_328_q or rightShiftStage0Idx3_uid414_prodPostRightShift_uid178_i_div_if_loop_328_q)
    begin
        unique case (rightShiftStage0_uid416_prodPostRightShift_uid178_i_div_if_loop_328_s)
            2'b00 : rightShiftStage0_uid416_prodPostRightShift_uid178_i_div_if_loop_328_q = rightShiftInput_uid177_i_div_if_loop_328_b;
            2'b01 : rightShiftStage0_uid416_prodPostRightShift_uid178_i_div_if_loop_328_q = rightShiftStage0Idx1_uid408_prodPostRightShift_uid178_i_div_if_loop_328_q;
            2'b10 : rightShiftStage0_uid416_prodPostRightShift_uid178_i_div_if_loop_328_q = rightShiftStage0Idx2_uid411_prodPostRightShift_uid178_i_div_if_loop_328_q;
            2'b11 : rightShiftStage0_uid416_prodPostRightShift_uid178_i_div_if_loop_328_q = rightShiftStage0Idx3_uid414_prodPostRightShift_uid178_i_div_if_loop_328_q;
            default : rightShiftStage0_uid416_prodPostRightShift_uid178_i_div_if_loop_328_q = 65'b0;
        endcase
    end

    // rightShiftStage1_uid427_prodPostRightShift_uid178_i_div_if_loop_328(MUX,426)@32
    assign rightShiftStage1_uid427_prodPostRightShift_uid178_i_div_if_loop_328_s = rightShiftStageSel0Dto0_uid415_prodPostRightShift_uid178_i_div_if_loop_328_merged_bit_select_c;
    always @(rightShiftStage1_uid427_prodPostRightShift_uid178_i_div_if_loop_328_s or rightShiftStage0_uid416_prodPostRightShift_uid178_i_div_if_loop_328_q or rightShiftStage1Idx1_uid419_prodPostRightShift_uid178_i_div_if_loop_328_q or rightShiftStage1Idx2_uid422_prodPostRightShift_uid178_i_div_if_loop_328_q or rightShiftStage1Idx3_uid425_prodPostRightShift_uid178_i_div_if_loop_328_q)
    begin
        unique case (rightShiftStage1_uid427_prodPostRightShift_uid178_i_div_if_loop_328_s)
            2'b00 : rightShiftStage1_uid427_prodPostRightShift_uid178_i_div_if_loop_328_q = rightShiftStage0_uid416_prodPostRightShift_uid178_i_div_if_loop_328_q;
            2'b01 : rightShiftStage1_uid427_prodPostRightShift_uid178_i_div_if_loop_328_q = rightShiftStage1Idx1_uid419_prodPostRightShift_uid178_i_div_if_loop_328_q;
            2'b10 : rightShiftStage1_uid427_prodPostRightShift_uid178_i_div_if_loop_328_q = rightShiftStage1Idx2_uid422_prodPostRightShift_uid178_i_div_if_loop_328_q;
            2'b11 : rightShiftStage1_uid427_prodPostRightShift_uid178_i_div_if_loop_328_q = rightShiftStage1Idx3_uid425_prodPostRightShift_uid178_i_div_if_loop_328_q;
            default : rightShiftStage1_uid427_prodPostRightShift_uid178_i_div_if_loop_328_q = 65'b0;
        endcase
    end

    // rightShiftStage2_uid438_prodPostRightShift_uid178_i_div_if_loop_328(MUX,437)@32
    assign rightShiftStage2_uid438_prodPostRightShift_uid178_i_div_if_loop_328_s = rightShiftStageSel0Dto0_uid415_prodPostRightShift_uid178_i_div_if_loop_328_merged_bit_select_d;
    always @(rightShiftStage2_uid438_prodPostRightShift_uid178_i_div_if_loop_328_s or rightShiftStage1_uid427_prodPostRightShift_uid178_i_div_if_loop_328_q or rightShiftStage2Idx1_uid430_prodPostRightShift_uid178_i_div_if_loop_328_q or rightShiftStage2Idx2_uid433_prodPostRightShift_uid178_i_div_if_loop_328_q or rightShiftStage2Idx3_uid436_prodPostRightShift_uid178_i_div_if_loop_328_q)
    begin
        unique case (rightShiftStage2_uid438_prodPostRightShift_uid178_i_div_if_loop_328_s)
            2'b00 : rightShiftStage2_uid438_prodPostRightShift_uid178_i_div_if_loop_328_q = rightShiftStage1_uid427_prodPostRightShift_uid178_i_div_if_loop_328_q;
            2'b01 : rightShiftStage2_uid438_prodPostRightShift_uid178_i_div_if_loop_328_q = rightShiftStage2Idx1_uid430_prodPostRightShift_uid178_i_div_if_loop_328_q;
            2'b10 : rightShiftStage2_uid438_prodPostRightShift_uid178_i_div_if_loop_328_q = rightShiftStage2Idx2_uid433_prodPostRightShift_uid178_i_div_if_loop_328_q;
            2'b11 : rightShiftStage2_uid438_prodPostRightShift_uid178_i_div_if_loop_328_q = rightShiftStage2Idx3_uid436_prodPostRightShift_uid178_i_div_if_loop_328_q;
            default : rightShiftStage2_uid438_prodPostRightShift_uid178_i_div_if_loop_328_q = 65'b0;
        endcase
    end

    // redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_notEnable(LOGICAL,566)
    assign redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_nor(LOGICAL,567)
    assign redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_nor_q = ~ (redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_notEnable_q | redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_sticky_ena_q);

    // redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_last(CONSTANT,563)
    assign redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_last_q = $unsigned(5'b01110);

    // redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_cmp(LOGICAL,564)
    assign redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_cmp_b = {1'b0, redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_rdcnt_q};
    assign redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_cmp_q = $unsigned(redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_last_q == redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_cmp_b ? 1'b1 : 1'b0);

    // redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_cmpReg(REG,565)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_cmpReg_q <= $unsigned(redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_cmp_q);
        end
    end

    // redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_sticky_ena(REG,568)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_nor_q == 1'b1)
        begin
            redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_sticky_ena_q <= $unsigned(redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_cmpReg_q);
        end
    end

    // redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_enaAnd(LOGICAL,569)
    assign redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_enaAnd_q = redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_sticky_ena_q & VCC_q;

    // redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_rdcnt(COUNTER,561)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_rdcnt_i <= 4'd0;
        end
        else
        begin
            redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_rdcnt_i <= $unsigned(redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_rdcnt_i) + $unsigned(4'd1);
        end
    end
    assign redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_rdcnt_q = redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_rdcnt_i[3:0];

    // redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_wraddr(REG,562)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_wraddr_q <= $unsigned(4'b1111);
        end
        else
        begin
            redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_wraddr_q <= $unsigned(redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_rdcnt_q);
        end
    end

    // redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem(DUALMEM,560)
    assign redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_ia = $unsigned(r_uid253_zCount_uid153_i_div_if_loop_328_q);
    assign redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_aa = redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_wraddr_q;
    assign redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_ab = redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_rdcnt_q;
    assign redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(6),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(6),
        .widthad_b(4),
        .numwords_b(16),
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
    ) redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_dmem (
        .clocken1(redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_reset0),
        .clock1(clock),
        .address_a(redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_aa),
        .data_a(redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_ab),
        .q_b(redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_iq),
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
    assign redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_q = redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_iq[5:0];

    // redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_outputreg0(DELAY,559)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_outputreg0_q <= '0;
        end
        else
        begin
            redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_outputreg0_q <= $unsigned(redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_mem_q);
        end
    end

    // cWOut_uid169_i_div_if_loop_328(CONSTANT,168)
    assign cWOut_uid169_i_div_if_loop_328_q = $unsigned(6'b100000);

    // rShiftCount_uid170_i_div_if_loop_328(SUB,169)@32
    assign rShiftCount_uid170_i_div_if_loop_328_a = {1'b0, cWOut_uid169_i_div_if_loop_328_q};
    assign rShiftCount_uid170_i_div_if_loop_328_b = {1'b0, redist12_r_uid253_zCount_uid153_i_div_if_loop_328_q_18_outputreg0_q};
    assign rShiftCount_uid170_i_div_if_loop_328_o = $unsigned(rShiftCount_uid170_i_div_if_loop_328_a) - $unsigned(rShiftCount_uid170_i_div_if_loop_328_b);
    assign rShiftCount_uid170_i_div_if_loop_328_q = rShiftCount_uid170_i_div_if_loop_328_o[6:0];

    // rightShiftStageSel0Dto0_uid415_prodPostRightShift_uid178_i_div_if_loop_328_merged_bit_select(BITSELECT,477)@32
    assign rightShiftStageSel0Dto0_uid415_prodPostRightShift_uid178_i_div_if_loop_328_merged_bit_select_b = rShiftCount_uid170_i_div_if_loop_328_q[1:0];
    assign rightShiftStageSel0Dto0_uid415_prodPostRightShift_uid178_i_div_if_loop_328_merged_bit_select_c = rShiftCount_uid170_i_div_if_loop_328_q[3:2];
    assign rightShiftStageSel0Dto0_uid415_prodPostRightShift_uid178_i_div_if_loop_328_merged_bit_select_d = rShiftCount_uid170_i_div_if_loop_328_q[5:4];
    assign rightShiftStageSel0Dto0_uid415_prodPostRightShift_uid178_i_div_if_loop_328_merged_bit_select_e = rShiftCount_uid170_i_div_if_loop_328_q[6:6];

    // rightShiftStage3_uid443_prodPostRightShift_uid178_i_div_if_loop_328(MUX,442)@32
    assign rightShiftStage3_uid443_prodPostRightShift_uid178_i_div_if_loop_328_s = rightShiftStageSel0Dto0_uid415_prodPostRightShift_uid178_i_div_if_loop_328_merged_bit_select_e;
    always @(rightShiftStage3_uid443_prodPostRightShift_uid178_i_div_if_loop_328_s or rightShiftStage2_uid438_prodPostRightShift_uid178_i_div_if_loop_328_q or rightShiftStage3Idx1_uid441_prodPostRightShift_uid178_i_div_if_loop_328_q)
    begin
        unique case (rightShiftStage3_uid443_prodPostRightShift_uid178_i_div_if_loop_328_s)
            1'b0 : rightShiftStage3_uid443_prodPostRightShift_uid178_i_div_if_loop_328_q = rightShiftStage2_uid438_prodPostRightShift_uid178_i_div_if_loop_328_q;
            1'b1 : rightShiftStage3_uid443_prodPostRightShift_uid178_i_div_if_loop_328_q = rightShiftStage3Idx1_uid441_prodPostRightShift_uid178_i_div_if_loop_328_q;
            default : rightShiftStage3_uid443_prodPostRightShift_uid178_i_div_if_loop_328_q = 65'b0;
        endcase
    end

    // prodPostRightShiftPost_uid179_i_div_if_loop_328(BITSELECT,178)@32
    assign prodPostRightShiftPost_uid179_i_div_if_loop_328_in = rightShiftStage3_uid443_prodPostRightShift_uid178_i_div_if_loop_328_q[62:0];
    assign prodPostRightShiftPost_uid179_i_div_if_loop_328_b = prodPostRightShiftPost_uid179_i_div_if_loop_328_in[62:30];

    // prodPostRightShiftPostRnd_uid181_i_div_if_loop_328(ADD,180)@32
    assign prodPostRightShiftPostRnd_uid181_i_div_if_loop_328_a = {1'b0, prodPostRightShiftPost_uid179_i_div_if_loop_328_b};
    assign prodPostRightShiftPostRnd_uid181_i_div_if_loop_328_b = {33'b000000000000000000000000000000000, VCC_q};
    assign prodPostRightShiftPostRnd_uid181_i_div_if_loop_328_o = $unsigned(prodPostRightShiftPostRnd_uid181_i_div_if_loop_328_a) + $unsigned(prodPostRightShiftPostRnd_uid181_i_div_if_loop_328_b);
    assign prodPostRightShiftPostRnd_uid181_i_div_if_loop_328_q = prodPostRightShiftPostRnd_uid181_i_div_if_loop_328_o[33:0];

    // prodPostRightShiftPostRndRange_uid182_i_div_if_loop_328(BITSELECT,181)@32
    assign prodPostRightShiftPostRndRange_uid182_i_div_if_loop_328_in = prodPostRightShiftPostRnd_uid181_i_div_if_loop_328_q[32:0];
    assign prodPostRightShiftPostRndRange_uid182_i_div_if_loop_328_b = prodPostRightShiftPostRndRange_uid182_i_div_if_loop_328_in[32:1];

    // redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_notEnable(LOGICAL,579)
    assign redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_notEnable_q = $unsigned(~ (VCC_q));

    // redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_nor(LOGICAL,580)
    assign redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_nor_q = ~ (redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_notEnable_q | redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_sticky_ena_q);

    // redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_last(CONSTANT,576)
    assign redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_last_q = $unsigned(6'b010000);

    // redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_cmp(LOGICAL,577)
    assign redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_cmp_b = {1'b0, redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_rdcnt_q};
    assign redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_cmp_q = $unsigned(redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_last_q == redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_cmp_b ? 1'b1 : 1'b0);

    // redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_cmpReg(REG,578)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_cmpReg_q <= $unsigned(redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_cmp_q);
        end
    end

    // redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_sticky_ena(REG,581)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_nor_q == 1'b1)
        begin
            redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_sticky_ena_q <= $unsigned(redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_cmpReg_q);
        end
    end

    // redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_enaAnd(LOGICAL,582)
    assign redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_enaAnd_q = redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_sticky_ena_q & VCC_q;

    // redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_rdcnt(COUNTER,574)
    // low=0, high=17, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_rdcnt_i <= 5'd0;
            redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_rdcnt_i == 5'd16)
            begin
                redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_rdcnt_eq <= 1'b0;
            end
            if (redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_rdcnt_eq == 1'b1)
            begin
                redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_rdcnt_i <= $unsigned(redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_rdcnt_i) + $unsigned(5'd15);
            end
            else
            begin
                redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_rdcnt_i <= $unsigned(redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_rdcnt_q = redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_rdcnt_i[4:0];

    // redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_inputreg0(DELAY,571)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_inputreg0_q <= '0;
        end
        else
        begin
            redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_inputreg0_q <= $unsigned(redist35_bgTrunc_i_sub_if_loop_324_sel_x_b_1_q);
        end
    end

    // redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_wraddr(REG,575)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_wraddr_q <= $unsigned(5'b10001);
        end
        else
        begin
            redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_wraddr_q <= $unsigned(redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_rdcnt_q);
        end
    end

    // redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem(DUALMEM,573)
    assign redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_ia = $unsigned(redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_inputreg0_q);
    assign redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_aa = redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_wraddr_q;
    assign redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_ab = redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_rdcnt_q;
    assign redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(18),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(18),
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
    ) redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_dmem (
        .clocken1(redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_reset0),
        .clock1(clock),
        .address_a(redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_aa),
        .data_a(redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_ab),
        .q_b(redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_iq),
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
    assign redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_q = redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_iq[31:0];

    // redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_outputreg0(DELAY,572)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_outputreg0_q <= '0;
        end
        else
        begin
            redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_outputreg0_q <= $unsigned(redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_mem_q);
        end
    end

    // yIsZero_uid161_i_div_if_loop_328(LOGICAL,160)@32
    assign yIsZero_uid161_i_div_if_loop_328_b = {31'b0000000000000000000000000000000, GND_q};
    assign yIsZero_uid161_i_div_if_loop_328_q = $unsigned(redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_outputreg0_q == yIsZero_uid161_i_div_if_loop_328_b ? 1'b1 : 1'b0);

    // resFinal_uid187_i_div_if_loop_328(MUX,186)@32
    assign resFinal_uid187_i_div_if_loop_328_s = yIsZero_uid161_i_div_if_loop_328_q;
    always @(resFinal_uid187_i_div_if_loop_328_s or prodPostRightShiftPostRndRange_uid182_i_div_if_loop_328_b or cstOvf_uid186_i_div_if_loop_328_q)
    begin
        unique case (resFinal_uid187_i_div_if_loop_328_s)
            1'b0 : resFinal_uid187_i_div_if_loop_328_q = prodPostRightShiftPostRndRange_uid182_i_div_if_loop_328_b;
            1'b1 : resFinal_uid187_i_div_if_loop_328_q = cstOvf_uid186_i_div_if_loop_328_q;
            default : resFinal_uid187_i_div_if_loop_328_q = 32'b0;
        endcase
    end

    // redist19_resFinal_uid187_i_div_if_loop_328_q_3_inputreg0(DELAY,570)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_resFinal_uid187_i_div_if_loop_328_q_3_inputreg0_q <= '0;
        end
        else
        begin
            redist19_resFinal_uid187_i_div_if_loop_328_q_3_inputreg0_q <= $unsigned(resFinal_uid187_i_div_if_loop_328_q);
        end
    end

    // redist19_resFinal_uid187_i_div_if_loop_328_q_3(DELAY,505)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_resFinal_uid187_i_div_if_loop_328_q_3_delay_0 <= '0;
            redist19_resFinal_uid187_i_div_if_loop_328_q_3_q <= '0;
        end
        else
        begin
            redist19_resFinal_uid187_i_div_if_loop_328_q_3_delay_0 <= $unsigned(redist19_resFinal_uid187_i_div_if_loop_328_q_3_inputreg0_q);
            redist19_resFinal_uid187_i_div_if_loop_328_q_3_q <= redist19_resFinal_uid187_i_div_if_loop_328_q_3_delay_0;
        end
    end

    // signResFinal_uid196_i_div_if_loop_328(BITSELECT,195)@35
    assign signResFinal_uid196_i_div_if_loop_328_b = $unsigned(redist19_resFinal_uid187_i_div_if_loop_328_q_3_q[31:31]);

    // redist28_xMSB_uid147_i_div_if_loop_328_b_24(DELAY,514)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_xMSB_uid147_i_div_if_loop_328_b_24_q <= '0;
        end
        else
        begin
            redist28_xMSB_uid147_i_div_if_loop_328_b_24_q <= $unsigned(redist27_xMSB_uid147_i_div_if_loop_328_b_23_q);
        end
    end

    // redist21_signX_uid185_i_div_if_loop_328_b_3(DELAY,507)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_signX_uid185_i_div_if_loop_328_b_3_q <= '0;
        end
        else
        begin
            redist21_signX_uid185_i_div_if_loop_328_b_3_q <= $unsigned(redist20_signX_uid185_i_div_if_loop_328_b_2_q);
        end
    end

    // OverflowCond_uid197_i_div_if_loop_328(LOGICAL,196)@35
    assign OverflowCond_uid197_i_div_if_loop_328_q = redist21_signX_uid185_i_div_if_loop_328_b_3_q & redist28_xMSB_uid147_i_div_if_loop_328_b_24_q & signResFinal_uid196_i_div_if_loop_328_b;

    // prodResY_uid188_i_div_if_loop_328_bs4(BITSELECT,448)@32
    assign prodResY_uid188_i_div_if_loop_328_bs4_in = $unsigned(resFinal_uid187_i_div_if_loop_328_q[17:0]);
    assign prodResY_uid188_i_div_if_loop_328_bs4_b = $unsigned(prodResY_uid188_i_div_if_loop_328_bs4_in[17:0]);

    // prodResY_uid188_i_div_if_loop_328_bs2(BITSELECT,446)@32
    assign prodResY_uid188_i_div_if_loop_328_bs2_b = $unsigned(redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_outputreg0_q[31:18]);

    // prodResY_uid188_i_div_if_loop_328_bs7(BITSELECT,451)@32
    assign prodResY_uid188_i_div_if_loop_328_bs7_in = $unsigned(redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_outputreg0_q[17:0]);
    assign prodResY_uid188_i_div_if_loop_328_bs7_b = $unsigned(prodResY_uid188_i_div_if_loop_328_bs7_in[17:0]);

    // prodResY_uid188_i_div_if_loop_328_bs1(BITSELECT,445)@32
    assign prodResY_uid188_i_div_if_loop_328_bs1_b = $unsigned(resFinal_uid187_i_div_if_loop_328_q[31:18]);

    // prodResY_uid188_i_div_if_loop_328_ma3_cma(CHAINMULTADD,472)@32 + 3
    assign prodResY_uid188_i_div_if_loop_328_ma3_cma_reset = ~ (resetn);
    assign prodResY_uid188_i_div_if_loop_328_ma3_cma_ena0 = 1'b1;
    assign prodResY_uid188_i_div_if_loop_328_ma3_cma_ena1 = prodResY_uid188_i_div_if_loop_328_ma3_cma_ena0;
    assign prodResY_uid188_i_div_if_loop_328_ma3_cma_ena2 = prodResY_uid188_i_div_if_loop_328_ma3_cma_ena0;

    assign prodResY_uid188_i_div_if_loop_328_ma3_cma_a0 = $unsigned(prodResY_uid188_i_div_if_loop_328_bs1_b);
    assign prodResY_uid188_i_div_if_loop_328_ma3_cma_c0 = prodResY_uid188_i_div_if_loop_328_bs7_b;
    assign prodResY_uid188_i_div_if_loop_328_ma3_cma_a1 = $unsigned(prodResY_uid188_i_div_if_loop_328_bs2_b);
    assign prodResY_uid188_i_div_if_loop_328_ma3_cma_c1 = prodResY_uid188_i_div_if_loop_328_bs4_b;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
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
        .output_clock("1"),
        .result_a_width(33)
    ) prodResY_uid188_i_div_if_loop_328_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodResY_uid188_i_div_if_loop_328_ma3_cma_ena2, prodResY_uid188_i_div_if_loop_328_ma3_cma_ena1, prodResY_uid188_i_div_if_loop_328_ma3_cma_ena0 }),
        .aclr({ prodResY_uid188_i_div_if_loop_328_ma3_cma_reset, prodResY_uid188_i_div_if_loop_328_ma3_cma_reset }),
        .ay(prodResY_uid188_i_div_if_loop_328_ma3_cma_a1),
        .by(prodResY_uid188_i_div_if_loop_328_ma3_cma_a0),
        .ax(prodResY_uid188_i_div_if_loop_328_ma3_cma_c1),
        .bx(prodResY_uid188_i_div_if_loop_328_ma3_cma_c0),
        .resulta(prodResY_uid188_i_div_if_loop_328_ma3_cma_s0),
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
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodResY_uid188_i_div_if_loop_328_ma3_cma_delay ( .xin(prodResY_uid188_i_div_if_loop_328_ma3_cma_s0), .xout(prodResY_uid188_i_div_if_loop_328_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodResY_uid188_i_div_if_loop_328_ma3_cma_q = $unsigned(prodResY_uid188_i_div_if_loop_328_ma3_cma_qq[32:0]);

    // prodResY_uid188_i_div_if_loop_328_sums_align_1(BITSHIFT,456)@35
    assign prodResY_uid188_i_div_if_loop_328_sums_align_1_qint = { prodResY_uid188_i_div_if_loop_328_ma3_cma_q, 18'b000000000000000000 };
    assign prodResY_uid188_i_div_if_loop_328_sums_align_1_q = prodResY_uid188_i_div_if_loop_328_sums_align_1_qint[50:0];

    // prodResY_uid188_i_div_if_loop_328_im0_cma(CHAINMULTADD,468)@32 + 3
    assign prodResY_uid188_i_div_if_loop_328_im0_cma_reset = ~ (resetn);
    assign prodResY_uid188_i_div_if_loop_328_im0_cma_ena0 = 1'b1;
    assign prodResY_uid188_i_div_if_loop_328_im0_cma_ena1 = prodResY_uid188_i_div_if_loop_328_im0_cma_ena0;
    assign prodResY_uid188_i_div_if_loop_328_im0_cma_ena2 = prodResY_uid188_i_div_if_loop_328_im0_cma_ena0;

    assign prodResY_uid188_i_div_if_loop_328_im0_cma_a0 = $unsigned(prodResY_uid188_i_div_if_loop_328_bs1_b);
    assign prodResY_uid188_i_div_if_loop_328_im0_cma_c0 = $unsigned(prodResY_uid188_i_div_if_loop_328_bs2_b);
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("true"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) prodResY_uid188_i_div_if_loop_328_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodResY_uid188_i_div_if_loop_328_im0_cma_ena2, prodResY_uid188_i_div_if_loop_328_im0_cma_ena1, prodResY_uid188_i_div_if_loop_328_im0_cma_ena0 }),
        .aclr({ prodResY_uid188_i_div_if_loop_328_im0_cma_reset, prodResY_uid188_i_div_if_loop_328_im0_cma_reset }),
        .ay(prodResY_uid188_i_div_if_loop_328_im0_cma_a0),
        .ax(prodResY_uid188_i_div_if_loop_328_im0_cma_c0),
        .resulta(prodResY_uid188_i_div_if_loop_328_im0_cma_s0),
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
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodResY_uid188_i_div_if_loop_328_im0_cma_delay ( .xin(prodResY_uid188_i_div_if_loop_328_im0_cma_s0), .xout(prodResY_uid188_i_div_if_loop_328_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodResY_uid188_i_div_if_loop_328_im0_cma_q = $unsigned(prodResY_uid188_i_div_if_loop_328_im0_cma_qq[27:0]);

    // prodResY_uid188_i_div_if_loop_328_im8_cma(CHAINMULTADD,469)@32 + 3
    assign prodResY_uid188_i_div_if_loop_328_im8_cma_reset = ~ (resetn);
    assign prodResY_uid188_i_div_if_loop_328_im8_cma_ena0 = 1'b1;
    assign prodResY_uid188_i_div_if_loop_328_im8_cma_ena1 = prodResY_uid188_i_div_if_loop_328_im8_cma_ena0;
    assign prodResY_uid188_i_div_if_loop_328_im8_cma_ena2 = prodResY_uid188_i_div_if_loop_328_im8_cma_ena0;

    assign prodResY_uid188_i_div_if_loop_328_im8_cma_a0 = prodResY_uid188_i_div_if_loop_328_bs4_b;
    assign prodResY_uid188_i_div_if_loop_328_im8_cma_c0 = prodResY_uid188_i_div_if_loop_328_bs7_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) prodResY_uid188_i_div_if_loop_328_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodResY_uid188_i_div_if_loop_328_im8_cma_ena2, prodResY_uid188_i_div_if_loop_328_im8_cma_ena1, prodResY_uid188_i_div_if_loop_328_im8_cma_ena0 }),
        .aclr({ prodResY_uid188_i_div_if_loop_328_im8_cma_reset, prodResY_uid188_i_div_if_loop_328_im8_cma_reset }),
        .ay(prodResY_uid188_i_div_if_loop_328_im8_cma_a0),
        .ax(prodResY_uid188_i_div_if_loop_328_im8_cma_c0),
        .resulta(prodResY_uid188_i_div_if_loop_328_im8_cma_s0),
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
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodResY_uid188_i_div_if_loop_328_im8_cma_delay ( .xin(prodResY_uid188_i_div_if_loop_328_im8_cma_s0), .xout(prodResY_uid188_i_div_if_loop_328_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodResY_uid188_i_div_if_loop_328_im8_cma_q = $unsigned(prodResY_uid188_i_div_if_loop_328_im8_cma_qq[35:0]);

    // prodResY_uid188_i_div_if_loop_328_sums_join_0(BITJOIN,455)@35
    assign prodResY_uid188_i_div_if_loop_328_sums_join_0_q = {prodResY_uid188_i_div_if_loop_328_im0_cma_q, prodResY_uid188_i_div_if_loop_328_im8_cma_q};

    // prodResY_uid188_i_div_if_loop_328_sums_result_add_0_0(ADD,458)@35
    assign prodResY_uid188_i_div_if_loop_328_sums_result_add_0_0_a = $unsigned({{1{prodResY_uid188_i_div_if_loop_328_sums_join_0_q[63]}}, prodResY_uid188_i_div_if_loop_328_sums_join_0_q});
    assign prodResY_uid188_i_div_if_loop_328_sums_result_add_0_0_b = $unsigned({{14{prodResY_uid188_i_div_if_loop_328_sums_align_1_q[50]}}, prodResY_uid188_i_div_if_loop_328_sums_align_1_q});
    assign prodResY_uid188_i_div_if_loop_328_sums_result_add_0_0_o = $unsigned($signed(prodResY_uid188_i_div_if_loop_328_sums_result_add_0_0_a) + $signed(prodResY_uid188_i_div_if_loop_328_sums_result_add_0_0_b));
    assign prodResY_uid188_i_div_if_loop_328_sums_result_add_0_0_q = prodResY_uid188_i_div_if_loop_328_sums_result_add_0_0_o[64:0];

    // prod_qy_LT_x_uid190_i_div_if_loop_328(COMPARE,189)@35
    assign prod_qy_LT_x_uid190_i_div_if_loop_328_a = $unsigned({{1{prodResY_uid188_i_div_if_loop_328_sums_result_add_0_0_q[64]}}, prodResY_uid188_i_div_if_loop_328_sums_result_add_0_0_q});
    assign prod_qy_LT_x_uid190_i_div_if_loop_328_b = $unsigned({{34{redist39_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_6_outputreg0_q[31]}}, redist39_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_6_outputreg0_q});
    assign prod_qy_LT_x_uid190_i_div_if_loop_328_o = $unsigned($signed(prod_qy_LT_x_uid190_i_div_if_loop_328_a) - $signed(prod_qy_LT_x_uid190_i_div_if_loop_328_b));
    assign prod_qy_LT_x_uid190_i_div_if_loop_328_c[0] = prod_qy_LT_x_uid190_i_div_if_loop_328_o[65];

    // CondNegX_uid198_i_div_if_loop_328(LOGICAL,197)@35
    assign CondNegX_uid198_i_div_if_loop_328_q = prod_qy_LT_x_uid190_i_div_if_loop_328_c & redist21_signX_uid185_i_div_if_loop_328_b_3_q;

    // invSignX_uid199_i_div_if_loop_328(LOGICAL,198)@35
    assign invSignX_uid199_i_div_if_loop_328_q = ~ (redist21_signX_uid185_i_div_if_loop_328_b_3_q);

    // prod_qy_GT_x_uid189_i_div_if_loop_328(COMPARE,188)@35
    assign prod_qy_GT_x_uid189_i_div_if_loop_328_a = $unsigned({{34{redist39_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_6_outputreg0_q[31]}}, redist39_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_6_outputreg0_q});
    assign prod_qy_GT_x_uid189_i_div_if_loop_328_b = $unsigned({{1{prodResY_uid188_i_div_if_loop_328_sums_result_add_0_0_q[64]}}, prodResY_uid188_i_div_if_loop_328_sums_result_add_0_0_q});
    assign prod_qy_GT_x_uid189_i_div_if_loop_328_o = $unsigned($signed(prod_qy_GT_x_uid189_i_div_if_loop_328_a) - $signed(prod_qy_GT_x_uid189_i_div_if_loop_328_b));
    assign prod_qy_GT_x_uid189_i_div_if_loop_328_c[0] = prod_qy_GT_x_uid189_i_div_if_loop_328_o[65];

    // CondPosX_uid200_i_div_if_loop_328(LOGICAL,199)@35
    assign CondPosX_uid200_i_div_if_loop_328_q = prod_qy_GT_x_uid189_i_div_if_loop_328_c & invSignX_uid199_i_div_if_loop_328_q;

    // postMuxSelect_uid201_i_div_if_loop_328(LOGICAL,200)@35
    assign postMuxSelect_uid201_i_div_if_loop_328_q = CondPosX_uid200_i_div_if_loop_328_q | CondNegX_uid198_i_div_if_loop_328_q | OverflowCond_uid197_i_div_if_loop_328_q;

    // resFinalIntDiv_uid206_i_div_if_loop_328(MUX,205)@35
    assign resFinalIntDiv_uid206_i_div_if_loop_328_s = postMuxSelect_uid201_i_div_if_loop_328_q;
    always @(resFinalIntDiv_uid206_i_div_if_loop_328_s or redist19_resFinal_uid187_i_div_if_loop_328_q_3_q or resFinalPostMux_uid205_i_div_if_loop_328_b)
    begin
        unique case (resFinalIntDiv_uid206_i_div_if_loop_328_s)
            1'b0 : resFinalIntDiv_uid206_i_div_if_loop_328_q = redist19_resFinal_uid187_i_div_if_loop_328_q_3_q;
            1'b1 : resFinalIntDiv_uid206_i_div_if_loop_328_q = resFinalPostMux_uid205_i_div_if_loop_328_b;
            default : resFinalIntDiv_uid206_i_div_if_loop_328_q = 32'b0;
        endcase
    end

    // redist39_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_6(DELAY,525)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_6_delay_0 <= '0;
            redist39_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_6_q <= '0;
        end
        else
        begin
            redist39_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_6_delay_0 <= $unsigned(redist38_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_3_q);
            redist39_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_6_q <= redist39_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_6_delay_0;
        end
    end

    // redist39_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_6_outputreg0(DELAY,584)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_6_outputreg0_q <= '0;
        end
        else
        begin
            redist39_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_6_outputreg0_q <= $unsigned(redist39_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_6_q);
        end
    end

    // i_cmp5_if_loop_325(COMPARE,46)@32 + 1
    assign i_cmp5_if_loop_325_a = $unsigned({{2{c_i32_171_recast_x_q[31]}}, c_i32_171_recast_x_q});
    assign i_cmp5_if_loop_325_b = $unsigned({{2{redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_outputreg0_q[31]}}, redist36_bgTrunc_i_sub_if_loop_324_sel_x_b_22_outputreg0_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp5_if_loop_325_o <= 34'b0;
        end
        else
        begin
            i_cmp5_if_loop_325_o <= $unsigned($signed(i_cmp5_if_loop_325_a) - $signed(i_cmp5_if_loop_325_b));
        end
    end
    assign i_cmp5_if_loop_325_c[0] = i_cmp5_if_loop_325_o[33];

    // redist42_i_cmp5_if_loop_325_c_3(DELAY,528)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_cmp5_if_loop_325_c_3_delay_0 <= '0;
            redist42_i_cmp5_if_loop_325_c_3_q <= '0;
        end
        else
        begin
            redist42_i_cmp5_if_loop_325_c_3_delay_0 <= $unsigned(i_cmp5_if_loop_325_c);
            redist42_i_cmp5_if_loop_325_c_3_q <= redist42_i_cmp5_if_loop_325_c_3_delay_0;
        end
    end

    // i_acl_if_loop_329(MUX,36)@35
    assign i_acl_if_loop_329_s = redist42_i_cmp5_if_loop_325_c_3_q;
    always @(i_acl_if_loop_329_s or redist39_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_6_outputreg0_q or resFinalIntDiv_uid206_i_div_if_loop_328_q)
    begin
        unique case (i_acl_if_loop_329_s)
            1'b0 : i_acl_if_loop_329_q = redist39_i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_327_out_data_out_6_outputreg0_q;
            1'b1 : i_acl_if_loop_329_q = resFinalIntDiv_uid206_i_div_if_loop_328_q;
            default : i_acl_if_loop_329_q = 32'b0;
        endcase
    end

    // redist41_i_first_cleanup_xor_if_loop_34_q_29(DELAY,527)
    dspba_delay_ver #( .width(1), .depth(29), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist41_i_first_cleanup_xor_if_loop_34_q_29 ( .xin(i_first_cleanup_xor_if_loop_34_q), .xout(redist41_i_first_cleanup_xor_if_loop_34_q_29_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_36_if_loop_344(BLACKBOX,64)@35
    // out out_intel_reserved_ffwd_2_0@20000000
    if_loop_3_i_llvm_fpga_ffwd_source_i32_unnamed_6_if_loop_30 thei_llvm_fpga_ffwd_source_i32_unnamed_if_loop_36_if_loop_344 (
        .in_predicate_in(redist41_i_first_cleanup_xor_if_loop_34_q_29_q),
        .in_src_data_in_2_0(i_acl_if_loop_329_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_36_if_loop_344_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,98)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_36_if_loop_344_out_intel_reserved_ffwd_2_0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,107)
    assign out_lm1_if_loop_3_avm_address = i_llvm_fpga_mem_lm1_if_loop_321_out_lm1_if_loop_3_avm_address;
    assign out_lm1_if_loop_3_avm_enable = i_llvm_fpga_mem_lm1_if_loop_321_out_lm1_if_loop_3_avm_enable;
    assign out_lm1_if_loop_3_avm_read = i_llvm_fpga_mem_lm1_if_loop_321_out_lm1_if_loop_3_avm_read;
    assign out_lm1_if_loop_3_avm_write = i_llvm_fpga_mem_lm1_if_loop_321_out_lm1_if_loop_3_avm_write;
    assign out_lm1_if_loop_3_avm_writedata = i_llvm_fpga_mem_lm1_if_loop_321_out_lm1_if_loop_3_avm_writedata;
    assign out_lm1_if_loop_3_avm_byteenable = i_llvm_fpga_mem_lm1_if_loop_321_out_lm1_if_loop_3_avm_byteenable;
    assign out_lm1_if_loop_3_avm_burstcount = i_llvm_fpga_mem_lm1_if_loop_321_out_lm1_if_loop_3_avm_burstcount;

    // dupName_1_ext_sig_sync_out_x(GPOUT,108)
    assign out_lm42_if_loop_3_avm_address = i_llvm_fpga_mem_lm42_if_loop_323_out_lm42_if_loop_3_avm_address;
    assign out_lm42_if_loop_3_avm_enable = i_llvm_fpga_mem_lm42_if_loop_323_out_lm42_if_loop_3_avm_enable;
    assign out_lm42_if_loop_3_avm_read = i_llvm_fpga_mem_lm42_if_loop_323_out_lm42_if_loop_3_avm_read;
    assign out_lm42_if_loop_3_avm_write = i_llvm_fpga_mem_lm42_if_loop_323_out_lm42_if_loop_3_avm_write;
    assign out_lm42_if_loop_3_avm_writedata = i_llvm_fpga_mem_lm42_if_loop_323_out_lm42_if_loop_3_avm_writedata;
    assign out_lm42_if_loop_3_avm_byteenable = i_llvm_fpga_mem_lm42_if_loop_323_out_lm42_if_loop_3_avm_byteenable;
    assign out_lm42_if_loop_3_avm_burstcount = i_llvm_fpga_mem_lm42_if_loop_323_out_lm42_if_loop_3_avm_burstcount;

    // valid_fanout_reg0(REG,207)@34 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist34_sync_together94_aunroll_x_in_i_valid_33_q);
        end
    end

    // i_masked_if_loop_345(LOGICAL,80)@6 + 1
    assign i_masked_if_loop_345_qi = i_notcmp_if_loop_339_q & i_first_cleanup_if_loop_33_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_if_loop_345_delay ( .xin(i_masked_if_loop_345_qi), .xout(i_masked_if_loop_345_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist37_i_masked_if_loop_345_q_29(DELAY,523)
    dspba_delay_ver #( .width(1), .depth(28), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist37_i_masked_if_loop_345_q_29 ( .xin(i_masked_if_loop_345_q), .xout(redist37_i_masked_if_loop_345_q_29_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,144)@35
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist40_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_29_q;
    assign out_c0_exi2_2_tpl = redist37_i_masked_if_loop_345_q_29_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_if_loop_31 = GND_q;

endmodule
