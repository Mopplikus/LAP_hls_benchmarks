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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_30
// Created for function/kernel if_loop_3
// SystemVerilog created on Mon May  8 14:21:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_3_i_sfc_logic_s_c0_in_for_body_s_c0_enter152_if_loop_30 (
    input wire [255:0] in_lm1_if_loop_3_avm_readdata,
    input wire [0:0] in_lm1_if_loop_3_avm_writeack,
    input wire [0:0] in_lm1_if_loop_3_avm_waitrequest,
    input wire [0:0] in_lm1_if_loop_3_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    input wire [255:0] in_lm22_if_loop_3_avm_readdata,
    input wire [0:0] in_lm22_if_loop_3_avm_writeack,
    input wire [0:0] in_lm22_if_loop_3_avm_waitrequest,
    input wire [0:0] in_lm22_if_loop_3_avm_readdatavalid,
    output wire [31:0] out_lm1_if_loop_3_avm_address,
    output wire [0:0] out_lm1_if_loop_3_avm_enable,
    output wire [0:0] out_lm1_if_loop_3_avm_read,
    output wire [0:0] out_lm1_if_loop_3_avm_write,
    output wire [255:0] out_lm1_if_loop_3_avm_writedata,
    output wire [31:0] out_lm1_if_loop_3_avm_byteenable,
    output wire [0:0] out_lm1_if_loop_3_avm_burstcount,
    output wire [31:0] out_lm22_if_loop_3_avm_address,
    output wire [0:0] out_lm22_if_loop_3_avm_enable,
    output wire [0:0] out_lm22_if_loop_3_avm_read,
    output wire [0:0] out_lm22_if_loop_3_avm_write,
    output wire [255:0] out_lm22_if_loop_3_avm_writedata,
    output wire [31:0] out_lm22_if_loop_3_avm_byteenable,
    output wire [0:0] out_lm22_if_loop_3_avm_burstcount,
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
    wire [31:0] c_i32_074_q;
    wire [31:0] c_i32_100076_q;
    wire [31:0] c_i32_177_q;
    wire [32:0] c_i33_179_q;
    wire [32:0] c_i33_undef73_q;
    wire [3:0] c_i4_770_q;
    wire [0:0] i_acl_if_loop_331_s;
    reg [31:0] i_acl_if_loop_331_q;
    wire [3:0] i_cleanups_shl_if_loop_35_vt_join_q;
    wire [2:0] i_cleanups_shl_if_loop_35_vt_select_3_b;
    wire [33:0] i_cmp2_if_loop_327_a;
    wire [33:0] i_cmp2_if_loop_327_b;
    logic [33:0] i_cmp2_if_loop_327_o;
    wire [0:0] i_cmp2_if_loop_327_c;
    wire [0:0] i_first_cleanup_xor_if_loop_34_q;
    wire [0:0] i_first_cleanup_xor_or_if_loop_321_q;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_337_a;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_337_b;
    logic [33:0] i_fpga_indvars_iv_next_if_loop_337_o;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_337_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_if_loop_314_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_if_loop_314_q;
    wire [32:0] i_inc_if_loop_333_a;
    wire [32:0] i_inc_if_loop_333_b;
    logic [32:0] i_inc_if_loop_333_o;
    wire [32:0] i_inc_if_loop_333_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp214_if_loop_339_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp215_if_loop_315_out_dest_data_out_0_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_37_if_loop_312_out_dest_data_out_3_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_if_loop_319_out_dest_data_out_1_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast24277_if_loop_323_out_dest_data_out_2_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_39_if_loop_346_out_intel_reserved_ffwd_4_0;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_burstcount;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_write;
    wire [255:0] i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_322_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_burstcount;
    wire [31:0] i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_write;
    wire [255:0] i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm22_if_loop_325_out_o_readdata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_feedback_stall_out_8;
    wire [31:0] i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_feedback_stall_out_7;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_feedback_stall_out_6;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_feedback_stall_out_10;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_feedback_stall_out_9;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_if_loop_311_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_if_loop_311_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_if_loop_342_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_if_loop_342_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_i_022_push8_if_loop_334_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i32_i_022_push8_if_loop_334_out_feedback_valid_out_8;
    wire [31:0] i_llvm_fpga_push_i32_sum_023_push7_if_loop_332_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i32_sum_023_push7_if_loop_332_out_feedback_valid_out_7;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_338_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_338_out_feedback_valid_out_6;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push10_if_loop_345_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_if_loop_345_out_feedback_valid_out_10;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push9_if_loop_39_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_if_loop_39_out_feedback_valid_out_9;
    wire [0:0] i_masked_if_loop_347_qi;
    reg [0:0] i_masked_if_loop_347_q;
    wire [0:0] i_next_cleanups_if_loop_344_s;
    reg [3:0] i_next_cleanups_if_loop_344_q;
    wire [3:0] i_next_initerations_if_loop_38_vt_join_q;
    wire [2:0] i_next_initerations_if_loop_38_vt_select_2_b;
    wire [0:0] i_notcmp_if_loop_341_q;
    wire [0:0] i_or_if_loop_343_q;
    wire [32:0] i_sub_if_loop_326_a;
    wire [32:0] i_sub_if_loop_326_b;
    logic [32:0] i_sub_if_loop_326_o;
    wire [32:0] i_sub_if_loop_326_q;
    wire [0:0] i_unnamed_if_loop_316_q;
    wire [63:0] i_unnamed_if_loop_318_vt_join_q;
    wire [31:0] i_unnamed_if_loop_318_vt_select_31_b;
    wire [0:0] i_unnamed_if_loop_340_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_if_loop_337_sel_x_b;
    wire [31:0] bgTrunc_i_inc_if_loop_333_sel_x_b;
    wire [31:0] bgTrunc_i_sub_if_loop_326_sel_x_b;
    wire [31:0] c_i32_175_recast_x_q;
    wire [0:0] i_first_cleanup_if_loop_33_sel_x_b;
    wire [0:0] i_last_initeration_if_loop_310_sel_x_b;
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
    wire [63:0] i_unnamed_if_loop_318_sel_x_b;
    wire [0:0] xMSB_uid133_i_div_if_loop_330_b;
    wire [31:0] yPSE_uid135_i_div_if_loop_330_b;
    wire [31:0] yPSE_uid135_i_div_if_loop_330_q;
    wire [32:0] yPSEA_uid137_i_div_if_loop_330_a;
    wire [32:0] yPSEA_uid137_i_div_if_loop_330_b;
    logic [32:0] yPSEA_uid137_i_div_if_loop_330_o;
    wire [32:0] yPSEA_uid137_i_div_if_loop_330_q;
    wire [31:0] yPS_uid138_i_div_if_loop_330_in;
    wire [31:0] yPS_uid138_i_div_if_loop_330_b;
    wire [30:0] normYNoLeadOne_uid141_i_div_if_loop_330_in;
    wire [30:0] normYNoLeadOne_uid141_i_div_if_loop_330_b;
    wire [30:0] paddingY_uid142_i_div_if_loop_330_q;
    wire [31:0] updatedY_uid143_i_div_if_loop_330_q;
    wire [31:0] normYIsOneC2_uid142_i_div_if_loop_330_a;
    wire [0:0] normYIsOneC2_uid142_i_div_if_loop_330_qi;
    reg [0:0] normYIsOneC2_uid142_i_div_if_loop_330_q;
    wire [0:0] normYIsOneC2_uid145_i_div_if_loop_330_b;
    wire [0:0] normYIsOne_uid146_i_div_if_loop_330_qi;
    reg [0:0] normYIsOne_uid146_i_div_if_loop_330_q;
    wire [31:0] yIsZero_uid147_i_div_if_loop_330_b;
    wire [0:0] yIsZero_uid147_i_div_if_loop_330_q;
    wire [38:0] fxpInverseRes_uid152_i_div_if_loop_330_in;
    wire [32:0] fxpInverseRes_uid152_i_div_if_loop_330_b;
    wire [32:0] oneInvRes_uid153_i_div_if_loop_330_q;
    wire [0:0] invResPostOneHandling2_uid154_i_div_if_loop_330_s;
    reg [32:0] invResPostOneHandling2_uid154_i_div_if_loop_330_q;
    wire [5:0] cWOut_uid155_i_div_if_loop_330_q;
    wire [6:0] rShiftCount_uid156_i_div_if_loop_330_a;
    wire [6:0] rShiftCount_uid156_i_div_if_loop_330_b;
    logic [6:0] rShiftCount_uid156_i_div_if_loop_330_o;
    wire [6:0] rShiftCount_uid156_i_div_if_loop_330_q;
    wire [31:0] xPSX_uid157_i_div_if_loop_330_b;
    wire [31:0] xPSX_uid157_i_div_if_loop_330_q;
    wire [1:0] zMsbY0_uid159_i_div_if_loop_330_q;
    wire [32:0] xPSXE_uid160_i_div_if_loop_330_a;
    wire [32:0] xPSXE_uid160_i_div_if_loop_330_b;
    logic [32:0] xPSXE_uid160_i_div_if_loop_330_o;
    wire [32:0] xPSXE_uid160_i_div_if_loop_330_q;
    wire [64:0] rightShiftInput_uid163_i_div_if_loop_330_in;
    wire [64:0] rightShiftInput_uid163_i_div_if_loop_330_b;
    wire [62:0] prodPostRightShiftPost_uid165_i_div_if_loop_330_in;
    wire [32:0] prodPostRightShiftPost_uid165_i_div_if_loop_330_b;
    wire [33:0] prodPostRightShiftPostRnd_uid167_i_div_if_loop_330_a;
    wire [33:0] prodPostRightShiftPostRnd_uid167_i_div_if_loop_330_b;
    logic [33:0] prodPostRightShiftPostRnd_uid167_i_div_if_loop_330_o;
    wire [33:0] prodPostRightShiftPostRnd_uid167_i_div_if_loop_330_q;
    wire [32:0] prodPostRightShiftPostRndRange_uid168_i_div_if_loop_330_in;
    wire [31:0] prodPostRightShiftPostRndRange_uid168_i_div_if_loop_330_b;
    wire [31:0] cstValOvfPos_uid169_i_div_if_loop_330_q;
    wire [31:0] cstValOvfneg_uid170_i_div_if_loop_330_q;
    wire [0:0] signX_uid171_i_div_if_loop_330_b;
    wire [0:0] cstOvf_uid172_i_div_if_loop_330_s;
    reg [31:0] cstOvf_uid172_i_div_if_loop_330_q;
    wire [0:0] resFinal_uid173_i_div_if_loop_330_s;
    reg [31:0] resFinal_uid173_i_div_if_loop_330_q;
    wire [65:0] prod_qy_GT_x_uid175_i_div_if_loop_330_a;
    wire [65:0] prod_qy_GT_x_uid175_i_div_if_loop_330_b;
    logic [65:0] prod_qy_GT_x_uid175_i_div_if_loop_330_o;
    wire [0:0] prod_qy_GT_x_uid175_i_div_if_loop_330_c;
    wire [65:0] prod_qy_LT_x_uid176_i_div_if_loop_330_a;
    wire [65:0] prod_qy_LT_x_uid176_i_div_if_loop_330_b;
    logic [65:0] prod_qy_LT_x_uid176_i_div_if_loop_330_o;
    wire [0:0] prod_qy_LT_x_uid176_i_div_if_loop_330_c;
    wire [0:0] resultSign_uid181_i_div_if_loop_330_q;
    wire [0:0] signResFinal_uid182_i_div_if_loop_330_b;
    wire [0:0] OverflowCond_uid183_i_div_if_loop_330_q;
    wire [0:0] CondNegX_uid184_i_div_if_loop_330_q;
    wire [0:0] invSignX_uid185_i_div_if_loop_330_q;
    wire [0:0] CondPosX_uid186_i_div_if_loop_330_q;
    wire [0:0] postMuxSelect_uid187_i_div_if_loop_330_q;
    wire [1:0] cstSubFinal_uid189_i_div_if_loop_330_q;
    wire [32:0] resFinalMP1_uid190_i_div_if_loop_330_a;
    wire [32:0] resFinalMP1_uid190_i_div_if_loop_330_b;
    logic [32:0] resFinalMP1_uid190_i_div_if_loop_330_o;
    wire [32:0] resFinalMP1_uid190_i_div_if_loop_330_q;
    wire [31:0] resFinalPostMux_uid191_i_div_if_loop_330_in;
    wire [31:0] resFinalPostMux_uid191_i_div_if_loop_330_b;
    wire [0:0] resFinalIntDiv_uid192_i_div_if_loop_330_s;
    reg [31:0] resFinalIntDiv_uid192_i_div_if_loop_330_q;
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
    wire [0:0] vCount_uid210_zCount_uid139_i_div_if_loop_330_qi;
    reg [0:0] vCount_uid210_zCount_uid139_i_div_if_loop_330_q;
    wire [0:0] vStagei_uid213_zCount_uid139_i_div_if_loop_330_s;
    reg [31:0] vStagei_uid213_zCount_uid139_i_div_if_loop_330_q;
    wire [15:0] zs_uid214_zCount_uid139_i_div_if_loop_330_q;
    wire [0:0] vCount_uid216_zCount_uid139_i_div_if_loop_330_q;
    wire [0:0] vStagei_uid219_zCount_uid139_i_div_if_loop_330_s;
    reg [15:0] vStagei_uid219_zCount_uid139_i_div_if_loop_330_q;
    wire [7:0] zs_uid220_zCount_uid139_i_div_if_loop_330_q;
    wire [0:0] vCount_uid222_zCount_uid139_i_div_if_loop_330_qi;
    reg [0:0] vCount_uid222_zCount_uid139_i_div_if_loop_330_q;
    wire [0:0] vStagei_uid225_zCount_uid139_i_div_if_loop_330_s;
    reg [7:0] vStagei_uid225_zCount_uid139_i_div_if_loop_330_q;
    wire [3:0] zs_uid226_zCount_uid139_i_div_if_loop_330_q;
    wire [0:0] vCount_uid228_zCount_uid139_i_div_if_loop_330_q;
    wire [0:0] vStagei_uid231_zCount_uid139_i_div_if_loop_330_s;
    reg [3:0] vStagei_uid231_zCount_uid139_i_div_if_loop_330_q;
    wire [0:0] vCount_uid234_zCount_uid139_i_div_if_loop_330_q;
    wire [0:0] vStagei_uid237_zCount_uid139_i_div_if_loop_330_s;
    reg [1:0] vStagei_uid237_zCount_uid139_i_div_if_loop_330_q;
    wire [0:0] rVStage_uid239_zCount_uid139_i_div_if_loop_330_b;
    wire [0:0] vCount_uid240_zCount_uid139_i_div_if_loop_330_q;
    wire [5:0] r_uid241_zCount_uid139_i_div_if_loop_330_q;
    wire [13:0] yT1_uid259_invPolyEval_b;
    wire [0:0] lowRangeB_uid261_invPolyEval_in;
    wire [0:0] lowRangeB_uid261_invPolyEval_b;
    wire [12:0] highBBits_uid262_invPolyEval_b;
    wire [21:0] s1sumAHighB_uid263_invPolyEval_a;
    wire [21:0] s1sumAHighB_uid263_invPolyEval_b;
    logic [21:0] s1sumAHighB_uid263_invPolyEval_o;
    wire [21:0] s1sumAHighB_uid263_invPolyEval_q;
    wire [22:0] s1_uid264_invPolyEval_q;
    wire [20:0] yT2_uid265_invPolyEval_b;
    wire [0:0] lowRangeB_uid267_invPolyEval_in;
    wire [0:0] lowRangeB_uid267_invPolyEval_b;
    wire [21:0] highBBits_uid268_invPolyEval_b;
    wire [29:0] s2sumAHighB_uid269_invPolyEval_a;
    wire [29:0] s2sumAHighB_uid269_invPolyEval_b;
    logic [29:0] s2sumAHighB_uid269_invPolyEval_o;
    wire [29:0] s2sumAHighB_uid269_invPolyEval_q;
    wire [30:0] s2_uid270_invPolyEval_q;
    wire [1:0] lowRangeB_uid273_invPolyEval_in;
    wire [1:0] lowRangeB_uid273_invPolyEval_b;
    wire [29:0] highBBits_uid274_invPolyEval_b;
    wire [38:0] s3sumAHighB_uid275_invPolyEval_a;
    wire [38:0] s3sumAHighB_uid275_invPolyEval_b;
    logic [38:0] s3sumAHighB_uid275_invPolyEval_o;
    wire [38:0] s3sumAHighB_uid275_invPolyEval_q;
    wire [40:0] s3_uid276_invPolyEval_q;
    wire [13:0] osig_uid279_pT1_uid260_invPolyEval_b;
    wire [22:0] osig_uid282_pT2_uid266_invPolyEval_b;
    wire [23:0] nx_mergedSignalTM_uid296_pT3_uid272_invPolyEval_q;
    wire [4:0] aboveLeftY_bottomExtension_uid301_pT3_uid272_invPolyEval_q;
    wire [17:0] aboveLeftY_mergedSignalTM_uid303_pT3_uid272_invPolyEval_q;
    wire [11:0] rightBottomX_bottomExtension_uid305_pT3_uid272_invPolyEval_q;
    wire [17:0] rightBottomX_mergedSignalTM_uid307_pT3_uid272_invPolyEval_q;
    wire [17:0] lowRangeB_uid313_pT3_uid272_invPolyEval_in;
    wire [17:0] lowRangeB_uid313_pT3_uid272_invPolyEval_b;
    wire [18:0] highBBits_uid314_pT3_uid272_invPolyEval_b;
    wire [36:0] lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval_a;
    wire [36:0] lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval_b;
    logic [36:0] lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval_o;
    wire [36:0] lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval_q;
    wire [54:0] lev1_a0_uid316_pT3_uid272_invPolyEval_q;
    wire [52:0] os_uid317_pT3_uid272_invPolyEval_in;
    wire [31:0] os_uid317_pT3_uid272_invPolyEval_b;
    wire [0:0] i_exitcond_if_loop_335_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid332_i_cleanups_shl_if_loop_30_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid332_i_cleanups_shl_if_loop_30_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid333_i_cleanups_shl_if_loop_30_shift_x_q;
    wire [0:0] leftShiftStage0_uid335_i_cleanups_shl_if_loop_30_shift_x_s;
    reg [3:0] leftShiftStage0_uid335_i_cleanups_shl_if_loop_30_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid339_i_next_initerations_if_loop_30_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid341_i_next_initerations_if_loop_30_shift_x_q;
    wire [0:0] rightShiftStage0_uid343_i_next_initerations_if_loop_30_shift_x_s;
    reg [3:0] rightShiftStage0_uid343_i_next_initerations_if_loop_30_shift_x_q;
    wire [15:0] leftShiftStage0Idx1Rng16_uid348_normY_uid140_i_div_if_loop_330_in;
    wire [15:0] leftShiftStage0Idx1Rng16_uid348_normY_uid140_i_div_if_loop_330_b;
    wire [31:0] leftShiftStage0Idx1_uid349_normY_uid140_i_div_if_loop_330_q;
    wire [1:0] leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_s;
    reg [31:0] leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid355_normY_uid140_i_div_if_loop_330_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid355_normY_uid140_i_div_if_loop_330_b;
    wire [31:0] leftShiftStage1Idx1_uid356_normY_uid140_i_div_if_loop_330_q;
    wire [23:0] leftShiftStage1Idx2Rng8_uid358_normY_uid140_i_div_if_loop_330_in;
    wire [23:0] leftShiftStage1Idx2Rng8_uid358_normY_uid140_i_div_if_loop_330_b;
    wire [31:0] leftShiftStage1Idx2_uid359_normY_uid140_i_div_if_loop_330_q;
    wire [19:0] leftShiftStage1Idx3Rng12_uid361_normY_uid140_i_div_if_loop_330_in;
    wire [19:0] leftShiftStage1Idx3Rng12_uid361_normY_uid140_i_div_if_loop_330_b;
    wire [31:0] leftShiftStage1Idx3_uid362_normY_uid140_i_div_if_loop_330_q;
    wire [1:0] leftShiftStage1_uid364_normY_uid140_i_div_if_loop_330_s;
    reg [31:0] leftShiftStage1_uid364_normY_uid140_i_div_if_loop_330_q;
    wire [30:0] leftShiftStage2Idx1Rng1_uid366_normY_uid140_i_div_if_loop_330_in;
    wire [30:0] leftShiftStage2Idx1Rng1_uid366_normY_uid140_i_div_if_loop_330_b;
    wire [31:0] leftShiftStage2Idx1_uid367_normY_uid140_i_div_if_loop_330_q;
    wire [29:0] leftShiftStage2Idx2Rng2_uid369_normY_uid140_i_div_if_loop_330_in;
    wire [29:0] leftShiftStage2Idx2Rng2_uid369_normY_uid140_i_div_if_loop_330_b;
    wire [31:0] leftShiftStage2Idx2_uid370_normY_uid140_i_div_if_loop_330_q;
    wire [2:0] leftShiftStage2Idx3Pad3_uid371_normY_uid140_i_div_if_loop_330_q;
    wire [28:0] leftShiftStage2Idx3Rng3_uid372_normY_uid140_i_div_if_loop_330_in;
    wire [28:0] leftShiftStage2Idx3Rng3_uid372_normY_uid140_i_div_if_loop_330_b;
    wire [31:0] leftShiftStage2Idx3_uid373_normY_uid140_i_div_if_loop_330_q;
    wire [1:0] leftShiftStage2_uid375_normY_uid140_i_div_if_loop_330_s;
    reg [31:0] leftShiftStage2_uid375_normY_uid140_i_div_if_loop_330_q;
    wire [15:0] prodXInvY_uid162_i_div_if_loop_330_bjB6_q;
    wire [65:0] prodXInvY_uid162_i_div_if_loop_330_sums_join_0_q;
    wire [52:0] prodXInvY_uid162_i_div_if_loop_330_sums_align_1_q;
    wire [52:0] prodXInvY_uid162_i_div_if_loop_330_sums_align_1_qint;
    wire [66:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_a;
    wire [66:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_b;
    logic [66:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_o;
    wire [66:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_q;
    wire [0:0] xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b;
    wire [63:0] rightShiftStage0Idx1Rng1_uid395_prodPostRightShift_uid164_i_div_if_loop_330_b;
    wire [64:0] rightShiftStage0Idx1_uid396_prodPostRightShift_uid164_i_div_if_loop_330_q;
    wire [1:0] seMsb_to2_uid397_in;
    wire [1:0] seMsb_to2_uid397_b;
    wire [62:0] rightShiftStage0Idx2Rng2_uid398_prodPostRightShift_uid164_i_div_if_loop_330_b;
    wire [64:0] rightShiftStage0Idx2_uid399_prodPostRightShift_uid164_i_div_if_loop_330_q;
    wire [2:0] seMsb_to3_uid400_in;
    wire [2:0] seMsb_to3_uid400_b;
    wire [61:0] rightShiftStage0Idx3Rng3_uid401_prodPostRightShift_uid164_i_div_if_loop_330_b;
    wire [64:0] rightShiftStage0Idx3_uid402_prodPostRightShift_uid164_i_div_if_loop_330_q;
    wire [1:0] rightShiftStage0_uid404_prodPostRightShift_uid164_i_div_if_loop_330_s;
    reg [64:0] rightShiftStage0_uid404_prodPostRightShift_uid164_i_div_if_loop_330_q;
    wire [3:0] seMsb_to4_uid405_in;
    wire [3:0] seMsb_to4_uid405_b;
    wire [60:0] rightShiftStage1Idx1Rng4_uid406_prodPostRightShift_uid164_i_div_if_loop_330_b;
    wire [64:0] rightShiftStage1Idx1_uid407_prodPostRightShift_uid164_i_div_if_loop_330_q;
    wire [7:0] seMsb_to8_uid408_in;
    wire [7:0] seMsb_to8_uid408_b;
    wire [56:0] rightShiftStage1Idx2Rng8_uid409_prodPostRightShift_uid164_i_div_if_loop_330_b;
    wire [64:0] rightShiftStage1Idx2_uid410_prodPostRightShift_uid164_i_div_if_loop_330_q;
    wire [11:0] seMsb_to12_uid411_in;
    wire [11:0] seMsb_to12_uid411_b;
    wire [52:0] rightShiftStage1Idx3Rng12_uid412_prodPostRightShift_uid164_i_div_if_loop_330_b;
    wire [64:0] rightShiftStage1Idx3_uid413_prodPostRightShift_uid164_i_div_if_loop_330_q;
    wire [1:0] rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_s;
    reg [64:0] rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_q;
    wire [15:0] seMsb_to16_uid416_in;
    wire [15:0] seMsb_to16_uid416_b;
    wire [48:0] rightShiftStage2Idx1Rng16_uid417_prodPostRightShift_uid164_i_div_if_loop_330_b;
    wire [64:0] rightShiftStage2Idx1_uid418_prodPostRightShift_uid164_i_div_if_loop_330_q;
    wire [31:0] seMsb_to32_uid419_in;
    wire [31:0] seMsb_to32_uid419_b;
    wire [32:0] rightShiftStage2Idx2Rng32_uid420_prodPostRightShift_uid164_i_div_if_loop_330_b;
    wire [64:0] rightShiftStage2Idx2_uid421_prodPostRightShift_uid164_i_div_if_loop_330_q;
    wire [47:0] seMsb_to48_uid422_in;
    wire [47:0] seMsb_to48_uid422_b;
    wire [16:0] rightShiftStage2Idx3Rng48_uid423_prodPostRightShift_uid164_i_div_if_loop_330_b;
    wire [64:0] rightShiftStage2Idx3_uid424_prodPostRightShift_uid164_i_div_if_loop_330_q;
    wire [1:0] rightShiftStage2_uid426_prodPostRightShift_uid164_i_div_if_loop_330_s;
    reg [64:0] rightShiftStage2_uid426_prodPostRightShift_uid164_i_div_if_loop_330_q;
    wire [63:0] seMsb_to64_uid427_in;
    wire [63:0] seMsb_to64_uid427_b;
    wire [0:0] rightShiftStage3Idx1Rng64_uid428_prodPostRightShift_uid164_i_div_if_loop_330_b;
    wire [64:0] rightShiftStage3Idx1_uid429_prodPostRightShift_uid164_i_div_if_loop_330_q;
    wire [0:0] rightShiftStage3_uid431_prodPostRightShift_uid164_i_div_if_loop_330_s;
    reg [64:0] rightShiftStage3_uid431_prodPostRightShift_uid164_i_div_if_loop_330_q;
    wire [13:0] prodResY_uid174_i_div_if_loop_330_bs1_b;
    wire [13:0] prodResY_uid174_i_div_if_loop_330_bs2_b;
    wire [17:0] prodResY_uid174_i_div_if_loop_330_bs4_in;
    wire [17:0] prodResY_uid174_i_div_if_loop_330_bs4_b;
    wire [17:0] prodResY_uid174_i_div_if_loop_330_bs7_in;
    wire [17:0] prodResY_uid174_i_div_if_loop_330_bs7_b;
    wire [63:0] prodResY_uid174_i_div_if_loop_330_sums_join_0_q;
    wire [50:0] prodResY_uid174_i_div_if_loop_330_sums_align_1_q;
    wire [50:0] prodResY_uid174_i_div_if_loop_330_sums_align_1_qint;
    wire [64:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_a;
    wire [64:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_b;
    logic [64:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_o;
    wire [64:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_q;
    wire memoryC0_uid243_invTabGen_lutmem_reset0;
    wire [37:0] memoryC0_uid243_invTabGen_lutmem_ia;
    wire [7:0] memoryC0_uid243_invTabGen_lutmem_aa;
    wire [7:0] memoryC0_uid243_invTabGen_lutmem_ab;
    wire [37:0] memoryC0_uid243_invTabGen_lutmem_ir;
    wire [37:0] memoryC0_uid243_invTabGen_lutmem_r;
    wire memoryC1_uid246_invTabGen_lutmem_reset0;
    wire [28:0] memoryC1_uid246_invTabGen_lutmem_ia;
    wire [7:0] memoryC1_uid246_invTabGen_lutmem_aa;
    wire [7:0] memoryC1_uid246_invTabGen_lutmem_ab;
    wire [28:0] memoryC1_uid246_invTabGen_lutmem_ir;
    wire [28:0] memoryC1_uid246_invTabGen_lutmem_r;
    wire memoryC2_uid249_invTabGen_lutmem_reset0;
    wire [20:0] memoryC2_uid249_invTabGen_lutmem_ia;
    wire [7:0] memoryC2_uid249_invTabGen_lutmem_aa;
    wire [7:0] memoryC2_uid249_invTabGen_lutmem_ab;
    wire [20:0] memoryC2_uid249_invTabGen_lutmem_ir;
    wire [20:0] memoryC2_uid249_invTabGen_lutmem_r;
    wire memoryC3_uid252_invTabGen_lutmem_reset0;
    wire [13:0] memoryC3_uid252_invTabGen_lutmem_ia;
    wire [7:0] memoryC3_uid252_invTabGen_lutmem_aa;
    wire [7:0] memoryC3_uid252_invTabGen_lutmem_ab;
    wire [13:0] memoryC3_uid252_invTabGen_lutmem_ir;
    wire [13:0] memoryC3_uid252_invTabGen_lutmem_r;
    wire prodXY_uid278_pT1_uid260_invPolyEval_cma_reset;
    wire [13:0] prodXY_uid278_pT1_uid260_invPolyEval_cma_a0;
    wire [13:0] prodXY_uid278_pT1_uid260_invPolyEval_cma_c0;
    wire [27:0] prodXY_uid278_pT1_uid260_invPolyEval_cma_s0;
    wire [27:0] prodXY_uid278_pT1_uid260_invPolyEval_cma_qq;
    wire [27:0] prodXY_uid278_pT1_uid260_invPolyEval_cma_q;
    wire prodXY_uid278_pT1_uid260_invPolyEval_cma_ena0;
    wire prodXY_uid278_pT1_uid260_invPolyEval_cma_ena1;
    wire prodXY_uid278_pT1_uid260_invPolyEval_cma_ena2;
    wire prodXY_uid281_pT2_uid266_invPolyEval_cma_reset;
    wire [20:0] prodXY_uid281_pT2_uid266_invPolyEval_cma_a0;
    wire [22:0] prodXY_uid281_pT2_uid266_invPolyEval_cma_c0;
    wire [43:0] prodXY_uid281_pT2_uid266_invPolyEval_cma_s0;
    wire [43:0] prodXY_uid281_pT2_uid266_invPolyEval_cma_qq;
    wire [43:0] prodXY_uid281_pT2_uid266_invPolyEval_cma_q;
    wire prodXY_uid281_pT2_uid266_invPolyEval_cma_ena0;
    wire prodXY_uid281_pT2_uid266_invPolyEval_cma_ena1;
    wire prodXY_uid281_pT2_uid266_invPolyEval_cma_ena2;
    wire sm0_uid310_pT3_uid272_invPolyEval_cma_reset;
    wire [17:0] sm0_uid310_pT3_uid272_invPolyEval_cma_a0;
    wire [17:0] sm0_uid310_pT3_uid272_invPolyEval_cma_c0;
    wire [35:0] sm0_uid310_pT3_uid272_invPolyEval_cma_s0;
    wire [35:0] sm0_uid310_pT3_uid272_invPolyEval_cma_qq;
    wire [35:0] sm0_uid310_pT3_uid272_invPolyEval_cma_q;
    wire sm0_uid310_pT3_uid272_invPolyEval_cma_ena0;
    wire sm0_uid310_pT3_uid272_invPolyEval_cma_ena1;
    wire sm0_uid310_pT3_uid272_invPolyEval_cma_ena2;
    wire prodXInvY_uid162_i_div_if_loop_330_im0_cma_reset;
    wire [14:0] prodXInvY_uid162_i_div_if_loop_330_im0_cma_a0;
    wire [14:0] prodXInvY_uid162_i_div_if_loop_330_im0_cma_c0;
    wire [29:0] prodXInvY_uid162_i_div_if_loop_330_im0_cma_s0;
    wire [29:0] prodXInvY_uid162_i_div_if_loop_330_im0_cma_qq;
    wire [29:0] prodXInvY_uid162_i_div_if_loop_330_im0_cma_q;
    wire prodXInvY_uid162_i_div_if_loop_330_im0_cma_ena0;
    wire prodXInvY_uid162_i_div_if_loop_330_im0_cma_ena1;
    wire prodXInvY_uid162_i_div_if_loop_330_im0_cma_ena2;
    wire prodXInvY_uid162_i_div_if_loop_330_im9_cma_reset;
    wire [17:0] prodXInvY_uid162_i_div_if_loop_330_im9_cma_a0;
    wire [17:0] prodXInvY_uid162_i_div_if_loop_330_im9_cma_c0;
    wire [35:0] prodXInvY_uid162_i_div_if_loop_330_im9_cma_s0;
    wire [35:0] prodXInvY_uid162_i_div_if_loop_330_im9_cma_qq;
    wire [35:0] prodXInvY_uid162_i_div_if_loop_330_im9_cma_q;
    wire prodXInvY_uid162_i_div_if_loop_330_im9_cma_ena0;
    wire prodXInvY_uid162_i_div_if_loop_330_im9_cma_ena1;
    wire prodXInvY_uid162_i_div_if_loop_330_im9_cma_ena2;
    wire prodResY_uid174_i_div_if_loop_330_im0_cma_reset;
    wire [13:0] prodResY_uid174_i_div_if_loop_330_im0_cma_a0;
    wire [13:0] prodResY_uid174_i_div_if_loop_330_im0_cma_c0;
    wire [27:0] prodResY_uid174_i_div_if_loop_330_im0_cma_s0;
    wire [27:0] prodResY_uid174_i_div_if_loop_330_im0_cma_qq;
    wire [27:0] prodResY_uid174_i_div_if_loop_330_im0_cma_q;
    wire prodResY_uid174_i_div_if_loop_330_im0_cma_ena0;
    wire prodResY_uid174_i_div_if_loop_330_im0_cma_ena1;
    wire prodResY_uid174_i_div_if_loop_330_im0_cma_ena2;
    wire prodResY_uid174_i_div_if_loop_330_im8_cma_reset;
    wire [17:0] prodResY_uid174_i_div_if_loop_330_im8_cma_a0;
    wire [17:0] prodResY_uid174_i_div_if_loop_330_im8_cma_c0;
    wire [35:0] prodResY_uid174_i_div_if_loop_330_im8_cma_s0;
    wire [35:0] prodResY_uid174_i_div_if_loop_330_im8_cma_qq;
    wire [35:0] prodResY_uid174_i_div_if_loop_330_im8_cma_q;
    wire prodResY_uid174_i_div_if_loop_330_im8_cma_ena0;
    wire prodResY_uid174_i_div_if_loop_330_im8_cma_ena1;
    wire prodResY_uid174_i_div_if_loop_330_im8_cma_ena2;
    wire multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_reset;
    wire [17:0] multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_a0;
    wire [17:0] multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_c0;
    wire [17:0] multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_a1;
    wire [17:0] multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_c1;
    wire [36:0] multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_s0;
    wire [36:0] multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_qq;
    wire [36:0] multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_q;
    wire multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_ena0;
    wire multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_ena1;
    wire multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_ena2;
    wire prodXInvY_uid162_i_div_if_loop_330_ma3_cma_reset;
    wire [15:0] prodXInvY_uid162_i_div_if_loop_330_ma3_cma_a0;
    wire [17:0] prodXInvY_uid162_i_div_if_loop_330_ma3_cma_c0;
    wire [15:0] prodXInvY_uid162_i_div_if_loop_330_ma3_cma_a1;
    wire [17:0] prodXInvY_uid162_i_div_if_loop_330_ma3_cma_c1;
    wire [34:0] prodXInvY_uid162_i_div_if_loop_330_ma3_cma_s0;
    wire [34:0] prodXInvY_uid162_i_div_if_loop_330_ma3_cma_qq;
    wire [34:0] prodXInvY_uid162_i_div_if_loop_330_ma3_cma_q;
    wire prodXInvY_uid162_i_div_if_loop_330_ma3_cma_ena0;
    wire prodXInvY_uid162_i_div_if_loop_330_ma3_cma_ena1;
    wire prodXInvY_uid162_i_div_if_loop_330_ma3_cma_ena2;
    wire prodResY_uid174_i_div_if_loop_330_ma3_cma_reset;
    wire [13:0] prodResY_uid174_i_div_if_loop_330_ma3_cma_a0;
    wire [17:0] prodResY_uid174_i_div_if_loop_330_ma3_cma_c0;
    wire [13:0] prodResY_uid174_i_div_if_loop_330_ma3_cma_a1;
    wire [17:0] prodResY_uid174_i_div_if_loop_330_ma3_cma_c1;
    wire [32:0] prodResY_uid174_i_div_if_loop_330_ma3_cma_s0;
    wire [32:0] prodResY_uid174_i_div_if_loop_330_ma3_cma_qq;
    wire [32:0] prodResY_uid174_i_div_if_loop_330_ma3_cma_q;
    wire prodResY_uid174_i_div_if_loop_330_ma3_cma_ena0;
    wire prodResY_uid174_i_div_if_loop_330_ma3_cma_ena1;
    wire prodResY_uid174_i_div_if_loop_330_ma3_cma_ena2;
    wire [7:0] yAddr_uid149_i_div_if_loop_330_merged_bit_select_b;
    wire [22:0] yAddr_uid149_i_div_if_loop_330_merged_bit_select_c;
    wire [14:0] prodXInvY_uid162_i_div_if_loop_330_bs2_merged_bit_select_b;
    wire [17:0] prodXInvY_uid162_i_div_if_loop_330_bs2_merged_bit_select_c;
    wire [1:0] rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_b;
    wire [1:0] rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_c;
    wire [1:0] rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_d;
    wire [0:0] rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_e;
    wire [14:0] prodXInvY_uid162_i_div_if_loop_330_bs1_merged_bit_select_b;
    wire [17:0] prodXInvY_uid162_i_div_if_loop_330_bs1_merged_bit_select_c;
    wire [15:0] rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_b;
    wire [15:0] rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_c;
    wire [7:0] rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_b;
    wire [7:0] rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_c;
    wire [3:0] rVStage_uid227_zCount_uid139_i_div_if_loop_330_merged_bit_select_b;
    wire [3:0] rVStage_uid227_zCount_uid139_i_div_if_loop_330_merged_bit_select_c;
    wire [1:0] rVStage_uid233_zCount_uid139_i_div_if_loop_330_merged_bit_select_b;
    wire [1:0] rVStage_uid233_zCount_uid139_i_div_if_loop_330_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_d;
    wire [17:0] topRangeY_uid299_pT3_uid272_invPolyEval_merged_bit_select_b;
    wire [12:0] topRangeY_uid299_pT3_uid272_invPolyEval_merged_bit_select_c;
    wire [17:0] topRangeX_uid298_pT3_uid272_invPolyEval_merged_bit_select_b;
    wire [5:0] topRangeX_uid298_pT3_uid272_invPolyEval_merged_bit_select_c;
    reg [7:0] redist0_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_b_1_q;
    reg [7:0] redist1_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_c_1_q;
    reg [1:0] redist2_rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_d_1_q;
    reg [0:0] redist3_rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_e_1_q;
    reg [7:0] redist4_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_q;
    reg [7:0] redist4_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_delay_0;
    reg [7:0] redist4_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_delay_1;
    reg [7:0] redist5_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_7_q;
    reg [7:0] redist5_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_7_delay_0;
    reg [7:0] redist5_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_7_delay_1;
    reg [7:0] redist5_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_7_delay_2;
    reg [22:0] redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_2_q;
    reg [22:0] redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_2_delay_0;
    reg [0:0] redist10_xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b_1_q;
    reg [29:0] redist11_highBBits_uid274_invPolyEval_b_1_q;
    reg [1:0] redist12_lowRangeB_uid273_invPolyEval_b_1_q;
    reg [0:0] redist13_lowRangeB_uid267_invPolyEval_b_1_q;
    reg [0:0] redist14_lowRangeB_uid261_invPolyEval_b_1_q;
    reg [5:0] redist15_r_uid241_zCount_uid139_i_div_if_loop_330_q_1_q;
    reg [0:0] redist17_vCount_uid216_zCount_uid139_i_div_if_loop_330_q_1_q;
    reg [0:0] redist18_vCount_uid210_zCount_uid139_i_div_if_loop_330_q_2_q;
    reg [31:0] redist19_resFinal_uid173_i_div_if_loop_330_q_4_q;
    reg [31:0] redist19_resFinal_uid173_i_div_if_loop_330_q_4_delay_0;
    reg [0:0] redist20_signX_uid171_i_div_if_loop_330_b_4_q;
    reg [0:0] redist20_signX_uid171_i_div_if_loop_330_b_4_delay_0;
    reg [0:0] redist20_signX_uid171_i_div_if_loop_330_b_4_delay_1;
    reg [0:0] redist20_signX_uid171_i_div_if_loop_330_b_4_delay_2;
    reg [31:0] redist21_prodPostRightShiftPostRndRange_uid168_i_div_if_loop_330_b_1_q;
    reg [0:0] redist22_normYIsOne_uid146_i_div_if_loop_330_q_13_q;
    reg [0:0] redist23_normYIsOneC2_uid145_i_div_if_loop_330_b_1_q;
    reg [31:0] redist24_yPS_uid138_i_div_if_loop_330_b_1_q;
    reg [31:0] redist25_yPS_uid138_i_div_if_loop_330_b_3_q;
    reg [31:0] redist25_yPS_uid138_i_div_if_loop_330_b_3_delay_0;
    reg [0:0] redist26_xMSB_uid133_i_div_if_loop_330_b_18_q;
    reg [0:0] redist27_xMSB_uid133_i_div_if_loop_330_b_27_q;
    reg [0:0] redist28_sync_together100_aunroll_x_in_c0_eni1_1_tpl_11_q;
    reg [0:0] redist29_sync_together100_aunroll_x_in_c0_eni1_1_tpl_23_q;
    reg [0:0] redist30_sync_together100_aunroll_x_in_c0_eni1_1_tpl_35_q;
    reg [0:0] redist31_sync_together100_aunroll_x_in_i_valid_10_q;
    reg [0:0] redist32_sync_together100_aunroll_x_in_i_valid_11_q;
    reg [0:0] redist33_sync_together100_aunroll_x_in_i_valid_22_q;
    reg [0:0] redist34_sync_together100_aunroll_x_in_i_valid_34_q;
    reg [0:0] redist35_sync_together100_aunroll_x_in_i_valid_44_q;
    reg [31:0] redist36_bgTrunc_i_sub_if_loop_326_sel_x_b_1_q;
    reg [31:0] redist41_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_10_q;
    reg [0:0] redist42_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_12_q;
    reg [0:0] redist43_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_34_q;
    reg [0:0] redist44_i_first_cleanup_xor_if_loop_34_q_34_q;
    reg [0:0] redist45_i_cmp2_if_loop_327_c_5_q;
    reg [0:0] redist45_i_cmp2_if_loop_327_c_5_delay_0;
    reg [0:0] redist45_i_cmp2_if_loop_327_c_5_delay_1;
    reg [0:0] redist45_i_cmp2_if_loop_327_c_5_delay_2;
    wire redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_reset0;
    wire [7:0] redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_ia;
    wire [1:0] redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_aa;
    wire [1:0] redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_ab;
    wire [7:0] redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_iq;
    wire [7:0] redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_q;
    wire [1:0] redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_rdcnt_q;
    (* preserve *) reg [1:0] redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_rdcnt_i;
    reg [1:0] redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_wraddr_q;
    wire [2:0] redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_last_q;
    wire [2:0] redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_cmp_b;
    wire [0:0] redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_cmp_q;
    (* dont_merge *) reg [0:0] redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_cmpReg_q;
    wire [0:0] redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_notEnable_q;
    wire [0:0] redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_nor_q;
    (* dont_merge *) reg [0:0] redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_sticky_ena_q;
    wire [0:0] redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_enaAnd_q;
    wire redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_reset0;
    wire [22:0] redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_ia;
    wire [1:0] redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_aa;
    wire [1:0] redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_ab;
    wire [22:0] redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_iq;
    wire [22:0] redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_q;
    wire [1:0] redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_rdcnt_q;
    (* preserve *) reg [1:0] redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_rdcnt_i;
    (* preserve *) reg redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_rdcnt_eq;
    reg [1:0] redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_wraddr_q;
    wire [1:0] redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_last_q;
    wire [0:0] redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_cmp_q;
    (* dont_merge *) reg [0:0] redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_cmpReg_q;
    wire [0:0] redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_notEnable_q;
    wire [0:0] redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_nor_q;
    (* dont_merge *) reg [0:0] redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_sticky_ena_q;
    wire [0:0] redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_enaAnd_q;
    wire redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_reset0;
    wire [22:0] redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_ia;
    wire [1:0] redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_aa;
    wire [1:0] redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_ab;
    wire [22:0] redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_iq;
    wire [22:0] redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_q;
    wire [1:0] redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_rdcnt_q;
    (* preserve *) reg [1:0] redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_rdcnt_i;
    (* preserve *) reg redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_rdcnt_eq;
    reg [1:0] redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_wraddr_q;
    wire [1:0] redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_last_q;
    wire [0:0] redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_cmp_q;
    (* dont_merge *) reg [0:0] redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_cmpReg_q;
    wire [0:0] redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_notEnable_q;
    wire [0:0] redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_nor_q;
    (* dont_merge *) reg [0:0] redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_sticky_ena_q;
    wire [0:0] redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_enaAnd_q;
    wire redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_reset0;
    wire [5:0] redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_ia;
    wire [4:0] redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_aa;
    wire [4:0] redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_ab;
    wire [5:0] redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_iq;
    wire [5:0] redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_q;
    wire [4:0] redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_rdcnt_q;
    (* preserve *) reg [4:0] redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_rdcnt_i;
    (* preserve *) reg redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_rdcnt_eq;
    reg [4:0] redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_wraddr_q;
    wire [4:0] redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_last_q;
    wire [0:0] redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_cmp_q;
    (* dont_merge *) reg [0:0] redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_cmpReg_q;
    wire [0:0] redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_notEnable_q;
    wire [0:0] redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_nor_q;
    (* dont_merge *) reg [0:0] redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_sticky_ena_q;
    wire [0:0] redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_enaAnd_q;
    reg [31:0] redist19_resFinal_uid173_i_div_if_loop_330_q_4_inputreg0_q;
    reg [31:0] redist19_resFinal_uid173_i_div_if_loop_330_q_4_outputreg0_q;
    reg [31:0] redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_inputreg0_q;
    reg [31:0] redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_outputreg0_q;
    wire redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_reset0;
    wire [31:0] redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_ia;
    wire [4:0] redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_aa;
    wire [4:0] redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_ab;
    wire [31:0] redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_iq;
    wire [31:0] redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_q;
    wire [4:0] redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_rdcnt_q;
    (* preserve *) reg [4:0] redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_rdcnt_i;
    (* preserve *) reg redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_rdcnt_eq;
    reg [4:0] redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_wraddr_q;
    wire [5:0] redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_last_q;
    wire [5:0] redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_cmp_b;
    wire [0:0] redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_cmp_q;
    (* dont_merge *) reg [0:0] redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_cmpReg_q;
    wire [0:0] redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_notEnable_q;
    wire [0:0] redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_nor_q;
    (* dont_merge *) reg [0:0] redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_sticky_ena_q;
    wire [0:0] redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_enaAnd_q;
    reg [0:0] redist38_i_masked_if_loop_347_q_34_inputreg0_q;
    wire redist38_i_masked_if_loop_347_q_34_mem_reset0;
    wire [0:0] redist38_i_masked_if_loop_347_q_34_mem_ia;
    wire [4:0] redist38_i_masked_if_loop_347_q_34_mem_aa;
    wire [4:0] redist38_i_masked_if_loop_347_q_34_mem_ab;
    wire [0:0] redist38_i_masked_if_loop_347_q_34_mem_iq;
    wire [0:0] redist38_i_masked_if_loop_347_q_34_mem_q;
    wire [4:0] redist38_i_masked_if_loop_347_q_34_rdcnt_q;
    (* preserve *) reg [4:0] redist38_i_masked_if_loop_347_q_34_rdcnt_i;
    (* preserve *) reg redist38_i_masked_if_loop_347_q_34_rdcnt_eq;
    reg [4:0] redist38_i_masked_if_loop_347_q_34_wraddr_q;
    wire [5:0] redist38_i_masked_if_loop_347_q_34_mem_last_q;
    wire [5:0] redist38_i_masked_if_loop_347_q_34_cmp_b;
    wire [0:0] redist38_i_masked_if_loop_347_q_34_cmp_q;
    (* dont_merge *) reg [0:0] redist38_i_masked_if_loop_347_q_34_cmpReg_q;
    wire [0:0] redist38_i_masked_if_loop_347_q_34_notEnable_q;
    wire [0:0] redist38_i_masked_if_loop_347_q_34_nor_q;
    (* dont_merge *) reg [0:0] redist38_i_masked_if_loop_347_q_34_sticky_ena_q;
    wire [0:0] redist38_i_masked_if_loop_347_q_34_enaAnd_q;
    reg [31:0] redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_inputreg0_q;
    wire redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_reset0;
    wire [31:0] redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_ia;
    wire [1:0] redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_aa;
    wire [1:0] redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_ab;
    wire [31:0] redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_iq;
    wire [31:0] redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_q;
    wire [1:0] redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_q;
    (* preserve *) reg [1:0] redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_i;
    (* preserve *) reg redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_eq;
    reg [1:0] redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_wraddr_q;
    wire [1:0] redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_last_q;
    wire [0:0] redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_cmp_q;
    (* dont_merge *) reg [0:0] redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_cmpReg_q;
    wire [0:0] redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_notEnable_q;
    wire [0:0] redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_nor_q;
    (* dont_merge *) reg [0:0] redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_sticky_ena_q;
    wire [0:0] redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_enaAnd_q;
    reg [31:0] redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_outputreg0_q;
    wire redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_mem_reset0;
    wire [31:0] redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_mem_ia;
    wire [0:0] redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_mem_aa;
    wire [0:0] redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_mem_ab;
    wire [31:0] redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_mem_iq;
    wire [31:0] redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_mem_q;
    wire [0:0] redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_rdcnt_q;
    (* preserve *) reg [0:0] redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_rdcnt_i;
    reg [0:0] redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_wraddr_q;
    (* dont_merge *) reg [0:0] redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_cmpReg_q;
    wire [0:0] redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_notEnable_q;
    wire [0:0] redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_nor_q;
    (* dont_merge *) reg [0:0] redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_sticky_ena_q;
    wire [0:0] redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist31_sync_together100_aunroll_x_in_i_valid_10(DELAY,503)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist31_sync_together100_aunroll_x_in_i_valid_10 ( .xin(in_i_valid), .xout(redist31_sync_together100_aunroll_x_in_i_valid_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist32_sync_together100_aunroll_x_in_i_valid_11(DELAY,504)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together100_aunroll_x_in_i_valid_11_q <= '0;
        end
        else
        begin
            redist32_sync_together100_aunroll_x_in_i_valid_11_q <= $unsigned(redist31_sync_together100_aunroll_x_in_i_valid_10_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // leftShiftStage0Idx1Rng1_uid332_i_cleanups_shl_if_loop_30_shift_x(BITSELECT,331)@12
    assign leftShiftStage0Idx1Rng1_uid332_i_cleanups_shl_if_loop_30_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid332_i_cleanups_shl_if_loop_30_shift_x_b = leftShiftStage0Idx1Rng1_uid332_i_cleanups_shl_if_loop_30_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid333_i_cleanups_shl_if_loop_30_shift_x(BITJOIN,332)@12
    assign leftShiftStage0Idx1_uid333_i_cleanups_shl_if_loop_30_shift_x_q = {leftShiftStage0Idx1Rng1_uid332_i_cleanups_shl_if_loop_30_shift_x_b, GND_q};

    // leftShiftStage0_uid335_i_cleanups_shl_if_loop_30_shift_x(MUX,334)@12
    assign leftShiftStage0_uid335_i_cleanups_shl_if_loop_30_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid335_i_cleanups_shl_if_loop_30_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out or leftShiftStage0Idx1_uid333_i_cleanups_shl_if_loop_30_shift_x_q)
    begin
        unique case (leftShiftStage0_uid335_i_cleanups_shl_if_loop_30_shift_x_s)
            1'b0 : leftShiftStage0_uid335_i_cleanups_shl_if_loop_30_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out;
            1'b1 : leftShiftStage0_uid335_i_cleanups_shl_if_loop_30_shift_x_q = leftShiftStage0Idx1_uid333_i_cleanups_shl_if_loop_30_shift_x_q;
            default : leftShiftStage0_uid335_i_cleanups_shl_if_loop_30_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_if_loop_35_vt_select_3(BITSELECT,39)@12
    assign i_cleanups_shl_if_loop_35_vt_select_3_b = leftShiftStage0_uid335_i_cleanups_shl_if_loop_30_shift_x_q[3:1];

    // i_cleanups_shl_if_loop_35_vt_join(BITJOIN,38)@12
    assign i_cleanups_shl_if_loop_35_vt_join_q = {i_cleanups_shl_if_loop_35_vt_select_3_b, GND_q};

    // i_first_cleanup_xor_if_loop_34(LOGICAL,45)@12
    assign i_first_cleanup_xor_if_loop_34_q = i_first_cleanup_if_loop_33_sel_x_b ^ VCC_q;

    // i_notcmp_if_loop_341(LOGICAL,77)@12
    assign i_notcmp_if_loop_341_q = i_unnamed_if_loop_340_q ^ VCC_q;

    // i_or_if_loop_343(LOGICAL,78)@12
    assign i_or_if_loop_343_q = i_notcmp_if_loop_341_q | i_first_cleanup_xor_if_loop_34_q;

    // i_next_cleanups_if_loop_344(MUX,73)@12
    assign i_next_cleanups_if_loop_344_s = i_or_if_loop_343_q;
    always @(i_next_cleanups_if_loop_344_s or i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out or i_cleanups_shl_if_loop_35_vt_join_q)
    begin
        unique case (i_next_cleanups_if_loop_344_s)
            1'b0 : i_next_cleanups_if_loop_344_q = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out;
            1'b1 : i_next_cleanups_if_loop_344_q = i_cleanups_shl_if_loop_35_vt_join_q;
            default : i_next_cleanups_if_loop_344_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push10_if_loop_345(BLACKBOX,70)@12
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    if_loop_3_i_llvm_fpga_push_i4_cleanups_push10_0 thei_llvm_fpga_push_i4_cleanups_push10_if_loop_345 (
        .in_data_in(i_next_cleanups_if_loop_344_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_feedback_stall_out_10),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist32_sync_together100_aunroll_x_in_i_valid_11_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_345_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_345_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_770(CONSTANT,33)
    assign c_i4_770_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32(BLACKBOX,63)@12
    // out out_feedback_stall_out_10@20000000
    if_loop_3_i_llvm_fpga_pop_i4_cleanups_pop10_0 thei_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32 (
        .in_data_in(c_i4_770_q),
        .in_dir(redist28_sync_together100_aunroll_x_in_c0_eni1_1_tpl_11_q),
        .in_feedback_in_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_345_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_345_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist32_sync_together100_aunroll_x_in_i_valid_11_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_if_loop_33_sel_x(BITSELECT,111)@12
    assign i_first_cleanup_if_loop_33_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_37_if_loop_312(BLACKBOX,53)@12
    if_loop_3_i_llvm_fpga_ffwd_dest_i33_unnamed_7_if_loop_30 thei_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_37_if_loop_312 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist32_sync_together100_aunroll_x_in_i_valid_11_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_37_if_loop_312_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_179(CONSTANT,30)
    assign c_i33_179_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_if_loop_337(ADD,47)@12
    assign i_fpga_indvars_iv_next_if_loop_337_a = {1'b0, i_fpga_indvars_iv_replace_phi_if_loop_314_q};
    assign i_fpga_indvars_iv_next_if_loop_337_b = {1'b0, c_i33_179_q};
    assign i_fpga_indvars_iv_next_if_loop_337_o = $unsigned(i_fpga_indvars_iv_next_if_loop_337_a) + $unsigned(i_fpga_indvars_iv_next_if_loop_337_b);
    assign i_fpga_indvars_iv_next_if_loop_337_q = i_fpga_indvars_iv_next_if_loop_337_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_if_loop_337_sel_x(BITSELECT,99)@12
    assign bgTrunc_i_fpga_indvars_iv_next_if_loop_337_sel_x_b = i_fpga_indvars_iv_next_if_loop_337_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_338(BLACKBOX,69)@12
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    if_loop_3_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_338 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_if_loop_337_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_feedback_stall_out_6),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist32_sync_together100_aunroll_x_in_i_valid_11_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_338_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_338_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef73(CONSTANT,31)
    assign c_i33_undef73_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313(BLACKBOX,62)@12
    // out out_feedback_stall_out_6@20000000
    if_loop_3_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313 (
        .in_data_in(c_i33_undef73_q),
        .in_dir(redist28_sync_together100_aunroll_x_in_c0_eni1_1_tpl_11_q),
        .in_feedback_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_338_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_338_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist32_sync_together100_aunroll_x_in_i_valid_11_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_replace_phi_if_loop_314(MUX,48)@12
    assign i_fpga_indvars_iv_replace_phi_if_loop_314_s = redist28_sync_together100_aunroll_x_in_c0_eni1_1_tpl_11_q;
    always @(i_fpga_indvars_iv_replace_phi_if_loop_314_s or i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_37_if_loop_312_out_dest_data_out_3_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_if_loop_314_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_if_loop_314_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_if_loop_314_q = i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_37_if_loop_312_out_dest_data_out_3_0;
            default : i_fpga_indvars_iv_replace_phi_if_loop_314_q = 33'b0;
        endcase
    end

    // i_exitcond_if_loop_335_cmp_nsign(LOGICAL,327)@12
    assign i_exitcond_if_loop_335_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_if_loop_314_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp214_if_loop_339(BLACKBOX,51)@12
    if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp214_0 thei_llvm_fpga_ffwd_dest_i1_cmp214_if_loop_339 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist32_sync_together100_aunroll_x_in_i_valid_11_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp214_if_loop_339_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_340(LOGICAL,85)@12
    assign i_unnamed_if_loop_340_q = i_llvm_fpga_ffwd_dest_i1_cmp214_if_loop_339_out_dest_data_out_0_0 & i_exitcond_if_loop_335_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_if_loop_342(BLACKBOX,66)@12
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    if_loop_3_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_if_loop_342 (
        .in_data_in(i_unnamed_if_loop_340_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_if_loop_33_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist32_sync_together100_aunroll_x_in_i_valid_11_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_342_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_342_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist33_sync_together100_aunroll_x_in_i_valid_22(DELAY,505)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist33_sync_together100_aunroll_x_in_i_valid_22 ( .xin(redist32_sync_together100_aunroll_x_in_i_valid_11_q), .xout(redist33_sync_together100_aunroll_x_in_i_valid_22_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg3(REG,196)@23 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist33_sync_together100_aunroll_x_in_i_valid_22_q);
        end
    end

    // redist42_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_12(DELAY,514)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist42_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_12 ( .xin(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out), .xout(redist42_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rightShiftStage0Idx1Rng1_uid339_i_next_initerations_if_loop_30_shift_x(BITSELECT,338)@24
    assign rightShiftStage0Idx1Rng1_uid339_i_next_initerations_if_loop_30_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_data_out[3:1];

    // rightShiftStage0Idx1_uid341_i_next_initerations_if_loop_30_shift_x(BITJOIN,340)@24
    assign rightShiftStage0Idx1_uid341_i_next_initerations_if_loop_30_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid339_i_next_initerations_if_loop_30_shift_x_b};

    // valid_fanout_reg1(REG,194)@23 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist33_sync_together100_aunroll_x_in_i_valid_22_q);
        end
    end

    // valid_fanout_reg2(REG,195)@23 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist33_sync_together100_aunroll_x_in_i_valid_22_q);
        end
    end

    // i_llvm_fpga_push_i4_initerations_push9_if_loop_39(BLACKBOX,71)@24
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    if_loop_3_i_llvm_fpga_push_i4_initerations_push9_0 thei_llvm_fpga_push_i4_initerations_push9_if_loop_39 (
        .in_data_in(i_next_initerations_if_loop_38_vt_join_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_feedback_stall_out_9),
        .in_keep_going(redist42_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_12_q),
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

    // redist29_sync_together100_aunroll_x_in_c0_eni1_1_tpl_23(DELAY,501)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist29_sync_together100_aunroll_x_in_c0_eni1_1_tpl_23 ( .xin(redist28_sync_together100_aunroll_x_in_c0_eni1_1_tpl_11_q), .xout(redist29_sync_together100_aunroll_x_in_c0_eni1_1_tpl_23_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37(BLACKBOX,64)@24
    // out out_feedback_stall_out_9@20000000
    if_loop_3_i_llvm_fpga_pop_i4_initerations_pop9_0 thei_llvm_fpga_pop_i4_initerations_pop9_if_loop_37 (
        .in_data_in(c_i4_770_q),
        .in_dir(redist29_sync_together100_aunroll_x_in_c0_eni1_1_tpl_23_q),
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

    // rightShiftStage0_uid343_i_next_initerations_if_loop_30_shift_x(MUX,342)@24
    assign rightShiftStage0_uid343_i_next_initerations_if_loop_30_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid343_i_next_initerations_if_loop_30_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_data_out or rightShiftStage0Idx1_uid341_i_next_initerations_if_loop_30_shift_x_q)
    begin
        unique case (rightShiftStage0_uid343_i_next_initerations_if_loop_30_shift_x_s)
            1'b0 : rightShiftStage0_uid343_i_next_initerations_if_loop_30_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_data_out;
            1'b1 : rightShiftStage0_uid343_i_next_initerations_if_loop_30_shift_x_q = rightShiftStage0Idx1_uid341_i_next_initerations_if_loop_30_shift_x_q;
            default : rightShiftStage0_uid343_i_next_initerations_if_loop_30_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_if_loop_38_vt_select_2(BITSELECT,76)@24
    assign i_next_initerations_if_loop_38_vt_select_2_b = rightShiftStage0_uid343_i_next_initerations_if_loop_30_shift_x_q[2:0];

    // i_next_initerations_if_loop_38_vt_join(BITJOIN,75)@24
    assign i_next_initerations_if_loop_38_vt_join_q = {GND_q, i_next_initerations_if_loop_38_vt_select_2_b};

    // i_last_initeration_if_loop_310_sel_x(BITSELECT,112)@24
    assign i_last_initeration_if_loop_310_sel_x_b = i_next_initerations_if_loop_38_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_if_loop_311(BLACKBOX,65)@24
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    if_loop_3_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_if_loop_311 (
        .in_data_in(i_last_initeration_if_loop_310_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_initeration_stall_out),
        .in_keep_going(redist42_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_12_q),
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

    // redist28_sync_together100_aunroll_x_in_c0_eni1_1_tpl_11(DELAY,500)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist28_sync_together100_aunroll_x_in_c0_eni1_1_tpl_11 ( .xin(in_c0_eni1_1_tpl), .xout(redist28_sync_together100_aunroll_x_in_c0_eni1_1_tpl_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pipeline_keep_going_if_loop_36(BLACKBOX,59)@12
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    if_loop_3_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_if_loop_36 (
        .in_data_in(redist28_sync_together100_aunroll_x_in_c0_eni1_1_tpl_11_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_if_loop_311_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_if_loop_311_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_if_loop_342_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_if_loop_342_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist32_sync_together100_aunroll_x_in_i_valid_11_q),
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

    // pipeline_valid_out_sync(GPOUT,90)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_valid_out;

    // redist34_sync_together100_aunroll_x_in_i_valid_34(DELAY,506)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist34_sync_together100_aunroll_x_in_i_valid_34 ( .xin(redist33_sync_together100_aunroll_x_in_i_valid_22_q), .xout(redist34_sync_together100_aunroll_x_in_i_valid_34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist35_sync_together100_aunroll_x_in_i_valid_44(DELAY,507)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist35_sync_together100_aunroll_x_in_i_valid_44 ( .xin(redist34_sync_together100_aunroll_x_in_i_valid_34_q), .xout(redist35_sync_together100_aunroll_x_in_i_valid_44_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg13(REG,206)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist35_sync_together100_aunroll_x_in_i_valid_44_q);
        end
    end

    // valid_fanout_reg9(REG,202)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist31_sync_together100_aunroll_x_in_i_valid_10_q);
        end
    end

    // valid_fanout_reg4(REG,197)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist31_sync_together100_aunroll_x_in_i_valid_10_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp215_if_loop_315(BLACKBOX,52)@12
    if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp215_0 thei_llvm_fpga_ffwd_dest_i1_cmp215_if_loop_315 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp215_if_loop_315_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_316(LOGICAL,80)@12
    assign i_unnamed_if_loop_316_q = i_llvm_fpga_ffwd_dest_i1_cmp215_if_loop_315_out_dest_data_out_0_0 ^ VCC_q;

    // i_first_cleanup_xor_or_if_loop_321(LOGICAL,46)@12
    assign i_first_cleanup_xor_or_if_loop_321_q = i_unnamed_if_loop_316_q | i_first_cleanup_xor_if_loop_34_q;

    // c_i32_074(CONSTANT,27)
    assign c_i32_074_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg5(REG,198)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist31_sync_together100_aunroll_x_in_i_valid_10_q);
        end
    end

    // valid_fanout_reg12(REG,205)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist31_sync_together100_aunroll_x_in_i_valid_10_q);
        end
    end

    // c_i32_177(CONSTANT,29)
    assign c_i32_177_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_if_loop_333(ADD,49)@12
    assign i_inc_if_loop_333_a = {1'b0, i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_data_out};
    assign i_inc_if_loop_333_b = {1'b0, c_i32_177_q};
    assign i_inc_if_loop_333_o = $unsigned(i_inc_if_loop_333_a) + $unsigned(i_inc_if_loop_333_b);
    assign i_inc_if_loop_333_q = i_inc_if_loop_333_o[32:0];

    // bgTrunc_i_inc_if_loop_333_sel_x(BITSELECT,100)@12
    assign bgTrunc_i_inc_if_loop_333_sel_x_b = i_inc_if_loop_333_q[31:0];

    // i_llvm_fpga_push_i32_i_022_push8_if_loop_334(BLACKBOX,67)@12
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    if_loop_3_i_llvm_fpga_push_i32_i_022_push8_0 thei_llvm_fpga_push_i32_i_022_push8_if_loop_334 (
        .in_data_in(bgTrunc_i_inc_if_loop_333_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_feedback_stall_out_8),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i32_i_022_push8_if_loop_334_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i32_i_022_push8_if_loop_334_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317(BLACKBOX,60)@12
    // out out_feedback_stall_out_8@20000000
    if_loop_3_i_llvm_fpga_pop_i32_i_022_pop8_0 thei_llvm_fpga_pop_i32_i_022_pop8_if_loop_317 (
        .in_data_in(c_i32_074_q),
        .in_dir(redist28_sync_together100_aunroll_x_in_c0_eni1_1_tpl_11_q),
        .in_feedback_in_8(i_llvm_fpga_push_i32_i_022_push8_if_loop_334_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i32_i_022_push8_if_loop_334_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_318_sel_x(BITSELECT,129)@12
    assign i_unnamed_if_loop_318_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_data_out[31:0]};

    // i_unnamed_if_loop_318_vt_select_31(BITSELECT,84)@12
    assign i_unnamed_if_loop_318_vt_select_31_b = i_unnamed_if_loop_318_sel_x_b[31:0];

    // i_unnamed_if_loop_318_vt_join(BITJOIN,83)@12
    assign i_unnamed_if_loop_318_vt_join_q = {c_i32_074_q, i_unnamed_if_loop_318_vt_select_31_b};

    // i_mptr_bitcast_index25_if_loop_30_narrow_x(BITSELECT,115)@12
    assign i_mptr_bitcast_index25_if_loop_30_narrow_x_b = i_unnamed_if_loop_318_vt_join_q[61:0];

    // i_mptr_bitcast_index25_if_loop_30_c_i2_01_x(CONSTANT,114)
    assign i_mptr_bitcast_index25_if_loop_30_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index25_if_loop_30_shift_join_x(BITJOIN,116)@12
    assign i_mptr_bitcast_index25_if_loop_30_shift_join_x_q = {i_mptr_bitcast_index25_if_loop_30_narrow_x_b, i_mptr_bitcast_index25_if_loop_30_c_i2_01_x_q};

    // valid_fanout_reg8(REG,201)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist31_sync_together100_aunroll_x_in_i_valid_10_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast24277_if_loop_323(BLACKBOX,55)@12
    if_loop_3_i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast24277_0 thei_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast24277_if_loop_323 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast24277_if_loop_323_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index25_if_loop_30_add_x(ADD,113)@12
    assign i_mptr_bitcast_index25_if_loop_30_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast24277_if_loop_323_out_dest_data_out_2_0};
    assign i_mptr_bitcast_index25_if_loop_30_add_x_b = {1'b0, i_mptr_bitcast_index25_if_loop_30_shift_join_x_q};
    assign i_mptr_bitcast_index25_if_loop_30_add_x_o = $unsigned(i_mptr_bitcast_index25_if_loop_30_add_x_a) + $unsigned(i_mptr_bitcast_index25_if_loop_30_add_x_b);
    assign i_mptr_bitcast_index25_if_loop_30_add_x_q = i_mptr_bitcast_index25_if_loop_30_add_x_o[64:0];

    // i_mptr_bitcast_index25_if_loop_30_dupName_0_trunc_sel_x(BITSELECT,118)@12
    assign i_mptr_bitcast_index25_if_loop_30_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index25_if_loop_30_add_x_q[63:0];

    // i_llvm_fpga_mem_lm22_if_loop_325(BLACKBOX,58)@12
    // in in_i_stall@20000000
    // out out_lm22_if_loop_3_avm_address@20000000
    // out out_lm22_if_loop_3_avm_burstcount@20000000
    // out out_lm22_if_loop_3_avm_byteenable@20000000
    // out out_lm22_if_loop_3_avm_enable@20000000
    // out out_lm22_if_loop_3_avm_read@20000000
    // out out_lm22_if_loop_3_avm_write@20000000
    // out out_lm22_if_loop_3_avm_writedata@20000000
    // out out_o_readdata@17
    // out out_o_stall@16
    // out out_o_valid@17
    if_loop_3_i_llvm_fpga_mem_lm22_0 thei_llvm_fpga_mem_lm22_if_loop_325 (
        .in_flush(in_flush),
        .in_i_address(i_mptr_bitcast_index25_if_loop_30_dupName_0_trunc_sel_x_b),
        .in_i_predicate(i_first_cleanup_xor_or_if_loop_321_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_lm22_if_loop_3_avm_readdata(in_lm22_if_loop_3_avm_readdata),
        .in_lm22_if_loop_3_avm_readdatavalid(in_lm22_if_loop_3_avm_readdatavalid),
        .in_lm22_if_loop_3_avm_waitrequest(in_lm22_if_loop_3_avm_waitrequest),
        .in_lm22_if_loop_3_avm_writeack(in_lm22_if_loop_3_avm_writeack),
        .out_lm22_if_loop_3_avm_address(i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_address),
        .out_lm22_if_loop_3_avm_burstcount(i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_burstcount),
        .out_lm22_if_loop_3_avm_byteenable(i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_byteenable),
        .out_lm22_if_loop_3_avm_enable(i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_enable),
        .out_lm22_if_loop_3_avm_read(i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_read),
        .out_lm22_if_loop_3_avm_write(i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_write),
        .out_lm22_if_loop_3_avm_writedata(i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm22_if_loop_325_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,200)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist31_sync_together100_aunroll_x_in_i_valid_10_q);
        end
    end

    // valid_fanout_reg6(REG,199)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist31_sync_together100_aunroll_x_in_i_valid_10_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_if_loop_319(BLACKBOX,54)@12
    if_loop_3_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_if_loop_319 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_if_loop_319_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index_if_loop_30_add_x(ADD,119)@12
    assign i_mptr_bitcast_index_if_loop_30_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_if_loop_319_out_dest_data_out_1_0};
    assign i_mptr_bitcast_index_if_loop_30_add_x_b = {1'b0, i_mptr_bitcast_index25_if_loop_30_shift_join_x_q};
    assign i_mptr_bitcast_index_if_loop_30_add_x_o = $unsigned(i_mptr_bitcast_index_if_loop_30_add_x_a) + $unsigned(i_mptr_bitcast_index_if_loop_30_add_x_b);
    assign i_mptr_bitcast_index_if_loop_30_add_x_q = i_mptr_bitcast_index_if_loop_30_add_x_o[64:0];

    // i_mptr_bitcast_index_if_loop_30_dupName_0_trunc_sel_x(BITSELECT,124)@12
    assign i_mptr_bitcast_index_if_loop_30_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index_if_loop_30_add_x_q[63:0];

    // i_llvm_fpga_mem_lm1_if_loop_322(BLACKBOX,57)@12
    // in in_i_stall@20000000
    // out out_lm1_if_loop_3_avm_address@20000000
    // out out_lm1_if_loop_3_avm_burstcount@20000000
    // out out_lm1_if_loop_3_avm_byteenable@20000000
    // out out_lm1_if_loop_3_avm_enable@20000000
    // out out_lm1_if_loop_3_avm_read@20000000
    // out out_lm1_if_loop_3_avm_write@20000000
    // out out_lm1_if_loop_3_avm_writedata@20000000
    // out out_o_readdata@17
    // out out_o_stall@16
    // out out_o_valid@17
    if_loop_3_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_if_loop_322 (
        .in_flush(in_flush),
        .in_i_address(i_mptr_bitcast_index_if_loop_30_dupName_0_trunc_sel_x_b),
        .in_i_predicate(i_first_cleanup_xor_or_if_loop_321_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_lm1_if_loop_3_avm_readdata(in_lm1_if_loop_3_avm_readdata),
        .in_lm1_if_loop_3_avm_readdatavalid(in_lm1_if_loop_3_avm_readdatavalid),
        .in_lm1_if_loop_3_avm_waitrequest(in_lm1_if_loop_3_avm_waitrequest),
        .in_lm1_if_loop_3_avm_writeack(in_lm1_if_loop_3_avm_writeack),
        .out_lm1_if_loop_3_avm_address(i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_address),
        .out_lm1_if_loop_3_avm_burstcount(i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_burstcount),
        .out_lm1_if_loop_3_avm_byteenable(i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_byteenable),
        .out_lm1_if_loop_3_avm_enable(i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_enable),
        .out_lm1_if_loop_3_avm_read(i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_read),
        .out_lm1_if_loop_3_avm_write(i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_write),
        .out_lm1_if_loop_3_avm_writedata(i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_if_loop_322_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sub_if_loop_326(SUB,79)@17
    assign i_sub_if_loop_326_a = {1'b0, i_llvm_fpga_mem_lm1_if_loop_322_out_o_readdata};
    assign i_sub_if_loop_326_b = {1'b0, i_llvm_fpga_mem_lm22_if_loop_325_out_o_readdata};
    assign i_sub_if_loop_326_o = $unsigned(i_sub_if_loop_326_a) - $unsigned(i_sub_if_loop_326_b);
    assign i_sub_if_loop_326_q = i_sub_if_loop_326_o[32:0];

    // bgTrunc_i_sub_if_loop_326_sel_x(BITSELECT,101)@17
    assign bgTrunc_i_sub_if_loop_326_sel_x_b = $unsigned(i_sub_if_loop_326_q[31:0]);

    // redist36_bgTrunc_i_sub_if_loop_326_sel_x_b_1(DELAY,508)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_bgTrunc_i_sub_if_loop_326_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist36_bgTrunc_i_sub_if_loop_326_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub_if_loop_326_sel_x_b);
        end
    end

    // xMSB_uid133_i_div_if_loop_330(BITSELECT,132)@18
    assign xMSB_uid133_i_div_if_loop_330_b = $unsigned(redist36_bgTrunc_i_sub_if_loop_326_sel_x_b_1_q[31:31]);

    // redist26_xMSB_uid133_i_div_if_loop_330_b_18(DELAY,498)
    dspba_delay_ver #( .width(1), .depth(18), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist26_xMSB_uid133_i_div_if_loop_330_b_18 ( .xin(xMSB_uid133_i_div_if_loop_330_b), .xout(redist26_xMSB_uid133_i_div_if_loop_330_b_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist27_xMSB_uid133_i_div_if_loop_330_b_27(DELAY,499)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist27_xMSB_uid133_i_div_if_loop_330_b_27 ( .xin(redist26_xMSB_uid133_i_div_if_loop_330_b_18_q), .xout(redist27_xMSB_uid133_i_div_if_loop_330_b_27_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_notEnable(LOGICAL,590)
    assign redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_nor(LOGICAL,591)
    assign redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_nor_q = ~ (redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_notEnable_q | redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_sticky_ena_q);

    // redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_last(CONSTANT,587)
    assign redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_last_q = $unsigned(2'b01);

    // redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_cmp(LOGICAL,588)
    assign redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_cmp_q = $unsigned(redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_last_q == redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_cmpReg(REG,589)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_cmpReg_q <= $unsigned(redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_cmp_q);
        end
    end

    // redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_sticky_ena(REG,592)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_nor_q == 1'b1)
        begin
            redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_sticky_ena_q <= $unsigned(redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_cmpReg_q);
        end
    end

    // redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_enaAnd(LOGICAL,593)
    assign redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_enaAnd_q = redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_sticky_ena_q & VCC_q;

    // redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt(COUNTER,585)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_i <= 2'd0;
            redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_i == 2'd1)
            begin
                redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_eq <= 1'b0;
            end
            if (redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_eq == 1'b1)
            begin
                redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_i <= $unsigned(redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_i <= $unsigned(redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_q = redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_i[1:0];

    // valid_fanout_reg10(REG,203)@35 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist34_sync_together100_aunroll_x_in_i_valid_34_q);
        end
    end

    // valid_fanout_reg11(REG,204)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist35_sync_together100_aunroll_x_in_i_valid_44_q);
        end
    end

    // redist43_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_34(DELAY,515)
    dspba_delay_ver #( .width(1), .depth(22), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist43_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_34 ( .xin(redist42_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_12_q), .xout(redist43_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i32_sum_023_push7_if_loop_332(BLACKBOX,68)@46
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    if_loop_3_i_llvm_fpga_push_i32_sum_023_push7_0 thei_llvm_fpga_push_i32_sum_023_push7_if_loop_332 (
        .in_data_in(i_acl_if_loop_331_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_feedback_stall_out_7),
        .in_keep_going(redist43_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_34_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i32_sum_023_push7_if_loop_332_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i32_sum_023_push7_if_loop_332_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_sync_together100_aunroll_x_in_c0_eni1_1_tpl_35(DELAY,502)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist30_sync_together100_aunroll_x_in_c0_eni1_1_tpl_35 ( .xin(redist29_sync_together100_aunroll_x_in_c0_eni1_1_tpl_23_q), .xout(redist30_sync_together100_aunroll_x_in_c0_eni1_1_tpl_35_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_100076(CONSTANT,28)
    assign c_i32_100076_q = $unsigned(32'b00000000000000000000001111101000);

    // i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329(BLACKBOX,61)@36
    // out out_feedback_stall_out_7@20000000
    if_loop_3_i_llvm_fpga_pop_i32_sum_023_pop7_0 thei_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329 (
        .in_data_in(c_i32_100076_q),
        .in_dir(redist30_sync_together100_aunroll_x_in_c0_eni1_1_tpl_35_q),
        .in_feedback_in_7(i_llvm_fpga_push_i32_sum_023_push7_if_loop_332_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i32_sum_023_push7_if_loop_332_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_inputreg0(DELAY,583)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_inputreg0_q <= '0;
        end
        else
        begin
            redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out);
        end
    end

    // redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_wraddr(REG,586)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_wraddr_q <= $unsigned(redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_q);
        end
    end

    // redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem(DUALMEM,584)
    assign redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_ia = $unsigned(redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_inputreg0_q);
    assign redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_aa = redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_wraddr_q;
    assign redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_ab = redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_q;
    assign redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
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
        .intended_device_family("Cyclone 10 GX")
    ) redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_dmem (
        .clocken1(redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_reset0),
        .clock1(clock),
        .address_a(redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_aa),
        .data_a(redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_ab),
        .q_b(redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_iq),
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
    assign redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_q = redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_iq[31:0];

    // signX_uid171_i_div_if_loop_330(BITSELECT,170)@41
    assign signX_uid171_i_div_if_loop_330_b = $unsigned(redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_q[31:31]);

    // redist20_signX_uid171_i_div_if_loop_330_b_4(DELAY,492)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_signX_uid171_i_div_if_loop_330_b_4_delay_0 <= '0;
            redist20_signX_uid171_i_div_if_loop_330_b_4_delay_1 <= '0;
            redist20_signX_uid171_i_div_if_loop_330_b_4_delay_2 <= '0;
            redist20_signX_uid171_i_div_if_loop_330_b_4_q <= '0;
        end
        else
        begin
            redist20_signX_uid171_i_div_if_loop_330_b_4_delay_0 <= $unsigned(signX_uid171_i_div_if_loop_330_b);
            redist20_signX_uid171_i_div_if_loop_330_b_4_delay_1 <= redist20_signX_uid171_i_div_if_loop_330_b_4_delay_0;
            redist20_signX_uid171_i_div_if_loop_330_b_4_delay_2 <= redist20_signX_uid171_i_div_if_loop_330_b_4_delay_1;
            redist20_signX_uid171_i_div_if_loop_330_b_4_q <= redist20_signX_uid171_i_div_if_loop_330_b_4_delay_2;
        end
    end

    // resultSign_uid181_i_div_if_loop_330(LOGICAL,180)@45
    assign resultSign_uid181_i_div_if_loop_330_q = redist20_signX_uid171_i_div_if_loop_330_b_4_q ^ redist27_xMSB_uid133_i_div_if_loop_330_b_27_q;

    // cstSubFinal_uid189_i_div_if_loop_330(BITJOIN,188)@45
    assign cstSubFinal_uid189_i_div_if_loop_330_q = {resultSign_uid181_i_div_if_loop_330_q, VCC_q};

    // resFinalMP1_uid190_i_div_if_loop_330(SUB,189)@45
    assign resFinalMP1_uid190_i_div_if_loop_330_a = $unsigned({{1{redist19_resFinal_uid173_i_div_if_loop_330_q_4_outputreg0_q[31]}}, redist19_resFinal_uid173_i_div_if_loop_330_q_4_outputreg0_q});
    assign resFinalMP1_uid190_i_div_if_loop_330_b = $unsigned({{31{cstSubFinal_uid189_i_div_if_loop_330_q[1]}}, cstSubFinal_uid189_i_div_if_loop_330_q});
    assign resFinalMP1_uid190_i_div_if_loop_330_o = $unsigned($signed(resFinalMP1_uid190_i_div_if_loop_330_a) - $signed(resFinalMP1_uid190_i_div_if_loop_330_b));
    assign resFinalMP1_uid190_i_div_if_loop_330_q = resFinalMP1_uid190_i_div_if_loop_330_o[32:0];

    // resFinalPostMux_uid191_i_div_if_loop_330(BITSELECT,190)@45
    assign resFinalPostMux_uid191_i_div_if_loop_330_in = $unsigned(resFinalMP1_uid190_i_div_if_loop_330_q[31:0]);
    assign resFinalPostMux_uid191_i_div_if_loop_330_b = $unsigned(resFinalPostMux_uid191_i_div_if_loop_330_in[31:0]);

    // cstValOvfneg_uid170_i_div_if_loop_330(CONSTANT,169)
    assign cstValOvfneg_uid170_i_div_if_loop_330_q = $unsigned(32'b10000000000000000000000000000000);

    // cstValOvfPos_uid169_i_div_if_loop_330(CONSTANT,168)
    assign cstValOvfPos_uid169_i_div_if_loop_330_q = $unsigned(32'b01111111111111111111111111111111);

    // cstOvf_uid172_i_div_if_loop_330(MUX,171)@41
    assign cstOvf_uid172_i_div_if_loop_330_s = signX_uid171_i_div_if_loop_330_b;
    always @(cstOvf_uid172_i_div_if_loop_330_s or cstValOvfPos_uid169_i_div_if_loop_330_q or cstValOvfneg_uid170_i_div_if_loop_330_q)
    begin
        unique case (cstOvf_uid172_i_div_if_loop_330_s)
            1'b0 : cstOvf_uid172_i_div_if_loop_330_q = cstValOvfPos_uid169_i_div_if_loop_330_q;
            1'b1 : cstOvf_uid172_i_div_if_loop_330_q = cstValOvfneg_uid170_i_div_if_loop_330_q;
            default : cstOvf_uid172_i_div_if_loop_330_q = 32'b0;
        endcase
    end

    // prodXInvY_uid162_i_div_if_loop_330_bjB6(BITJOIN,382)@36
    assign prodXInvY_uid162_i_div_if_loop_330_bjB6_q = {GND_q, prodXInvY_uid162_i_div_if_loop_330_bs2_merged_bit_select_b};

    // oneInvRes_uid153_i_div_if_loop_330(CONSTANT,152)
    assign oneInvRes_uid153_i_div_if_loop_330_q = $unsigned(33'b100000000000000000000000000000000);

    // redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_notEnable(LOGICAL,544)
    assign redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_nor(LOGICAL,545)
    assign redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_nor_q = ~ (redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_notEnable_q | redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_sticky_ena_q);

    // redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_last(CONSTANT,541)
    assign redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_last_q = $unsigned(2'b01);

    // redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_cmp(LOGICAL,542)
    assign redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_cmp_q = $unsigned(redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_last_q == redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_rdcnt_q ? 1'b1 : 1'b0);

    // redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_cmpReg(REG,543)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_cmpReg_q <= $unsigned(redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_cmp_q);
        end
    end

    // redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_sticky_ena(REG,546)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_nor_q == 1'b1)
        begin
            redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_sticky_ena_q <= $unsigned(redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_cmpReg_q);
        end
    end

    // redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_enaAnd(LOGICAL,547)
    assign redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_enaAnd_q = redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_sticky_ena_q & VCC_q;

    // redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_rdcnt(COUNTER,539)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_rdcnt_i <= 2'd0;
            redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_rdcnt_i == 2'd1)
            begin
                redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_rdcnt_eq <= 1'b0;
            end
            if (redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_rdcnt_eq == 1'b1)
            begin
                redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_rdcnt_i <= $unsigned(redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_rdcnt_i <= $unsigned(redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_rdcnt_q = redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_rdcnt_i[1:0];

    // redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_notEnable(LOGICAL,534)
    assign redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_nor(LOGICAL,535)
    assign redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_nor_q = ~ (redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_notEnable_q | redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_sticky_ena_q);

    // redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_last(CONSTANT,531)
    assign redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_last_q = $unsigned(2'b01);

    // redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_cmp(LOGICAL,532)
    assign redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_cmp_q = $unsigned(redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_last_q == redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_cmpReg(REG,533)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_cmpReg_q <= $unsigned(redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_cmp_q);
        end
    end

    // redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_sticky_ena(REG,536)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_nor_q == 1'b1)
        begin
            redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_sticky_ena_q <= $unsigned(redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_cmpReg_q);
        end
    end

    // redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_enaAnd(LOGICAL,537)
    assign redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_enaAnd_q = redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_sticky_ena_q & VCC_q;

    // redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_rdcnt(COUNTER,529)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_rdcnt_i <= 2'd0;
            redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_rdcnt_i == 2'd1)
            begin
                redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_rdcnt_eq <= 1'b0;
            end
            if (redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_rdcnt_eq == 1'b1)
            begin
                redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_rdcnt_i <= $unsigned(redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_rdcnt_i <= $unsigned(redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_rdcnt_q = redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_rdcnt_i[1:0];

    // leftShiftStage2Idx3Rng3_uid372_normY_uid140_i_div_if_loop_330(BITSELECT,371)@21
    assign leftShiftStage2Idx3Rng3_uid372_normY_uid140_i_div_if_loop_330_in = leftShiftStage1_uid364_normY_uid140_i_div_if_loop_330_q[28:0];
    assign leftShiftStage2Idx3Rng3_uid372_normY_uid140_i_div_if_loop_330_b = leftShiftStage2Idx3Rng3_uid372_normY_uid140_i_div_if_loop_330_in[28:0];

    // leftShiftStage2Idx3Pad3_uid371_normY_uid140_i_div_if_loop_330(CONSTANT,370)
    assign leftShiftStage2Idx3Pad3_uid371_normY_uid140_i_div_if_loop_330_q = $unsigned(3'b000);

    // leftShiftStage2Idx3_uid373_normY_uid140_i_div_if_loop_330(BITJOIN,372)@21
    assign leftShiftStage2Idx3_uid373_normY_uid140_i_div_if_loop_330_q = {leftShiftStage2Idx3Rng3_uid372_normY_uid140_i_div_if_loop_330_b, leftShiftStage2Idx3Pad3_uid371_normY_uid140_i_div_if_loop_330_q};

    // leftShiftStage2Idx2Rng2_uid369_normY_uid140_i_div_if_loop_330(BITSELECT,368)@21
    assign leftShiftStage2Idx2Rng2_uid369_normY_uid140_i_div_if_loop_330_in = leftShiftStage1_uid364_normY_uid140_i_div_if_loop_330_q[29:0];
    assign leftShiftStage2Idx2Rng2_uid369_normY_uid140_i_div_if_loop_330_b = leftShiftStage2Idx2Rng2_uid369_normY_uid140_i_div_if_loop_330_in[29:0];

    // leftShiftStage2Idx2_uid370_normY_uid140_i_div_if_loop_330(BITJOIN,369)@21
    assign leftShiftStage2Idx2_uid370_normY_uid140_i_div_if_loop_330_q = {leftShiftStage2Idx2Rng2_uid369_normY_uid140_i_div_if_loop_330_b, i_mptr_bitcast_index25_if_loop_30_c_i2_01_x_q};

    // leftShiftStage2Idx1Rng1_uid366_normY_uid140_i_div_if_loop_330(BITSELECT,365)@21
    assign leftShiftStage2Idx1Rng1_uid366_normY_uid140_i_div_if_loop_330_in = leftShiftStage1_uid364_normY_uid140_i_div_if_loop_330_q[30:0];
    assign leftShiftStage2Idx1Rng1_uid366_normY_uid140_i_div_if_loop_330_b = leftShiftStage2Idx1Rng1_uid366_normY_uid140_i_div_if_loop_330_in[30:0];

    // leftShiftStage2Idx1_uid367_normY_uid140_i_div_if_loop_330(BITJOIN,366)@21
    assign leftShiftStage2Idx1_uid367_normY_uid140_i_div_if_loop_330_q = {leftShiftStage2Idx1Rng1_uid366_normY_uid140_i_div_if_loop_330_b, GND_q};

    // leftShiftStage1Idx3Rng12_uid361_normY_uid140_i_div_if_loop_330(BITSELECT,360)@21
    assign leftShiftStage1Idx3Rng12_uid361_normY_uid140_i_div_if_loop_330_in = leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_q[19:0];
    assign leftShiftStage1Idx3Rng12_uid361_normY_uid140_i_div_if_loop_330_b = leftShiftStage1Idx3Rng12_uid361_normY_uid140_i_div_if_loop_330_in[19:0];

    // rightBottomX_bottomExtension_uid305_pT3_uid272_invPolyEval(CONSTANT,304)
    assign rightBottomX_bottomExtension_uid305_pT3_uid272_invPolyEval_q = $unsigned(12'b000000000000);

    // leftShiftStage1Idx3_uid362_normY_uid140_i_div_if_loop_330(BITJOIN,361)@21
    assign leftShiftStage1Idx3_uid362_normY_uid140_i_div_if_loop_330_q = {leftShiftStage1Idx3Rng12_uid361_normY_uid140_i_div_if_loop_330_b, rightBottomX_bottomExtension_uid305_pT3_uid272_invPolyEval_q};

    // leftShiftStage1Idx2Rng8_uid358_normY_uid140_i_div_if_loop_330(BITSELECT,357)@21
    assign leftShiftStage1Idx2Rng8_uid358_normY_uid140_i_div_if_loop_330_in = leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_q[23:0];
    assign leftShiftStage1Idx2Rng8_uid358_normY_uid140_i_div_if_loop_330_b = leftShiftStage1Idx2Rng8_uid358_normY_uid140_i_div_if_loop_330_in[23:0];

    // zs_uid220_zCount_uid139_i_div_if_loop_330(CONSTANT,219)
    assign zs_uid220_zCount_uid139_i_div_if_loop_330_q = $unsigned(8'b00000000);

    // leftShiftStage1Idx2_uid359_normY_uid140_i_div_if_loop_330(BITJOIN,358)@21
    assign leftShiftStage1Idx2_uid359_normY_uid140_i_div_if_loop_330_q = {leftShiftStage1Idx2Rng8_uid358_normY_uid140_i_div_if_loop_330_b, zs_uid220_zCount_uid139_i_div_if_loop_330_q};

    // leftShiftStage1Idx1Rng4_uid355_normY_uid140_i_div_if_loop_330(BITSELECT,354)@21
    assign leftShiftStage1Idx1Rng4_uid355_normY_uid140_i_div_if_loop_330_in = leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid355_normY_uid140_i_div_if_loop_330_b = leftShiftStage1Idx1Rng4_uid355_normY_uid140_i_div_if_loop_330_in[27:0];

    // zs_uid226_zCount_uid139_i_div_if_loop_330(CONSTANT,225)
    assign zs_uid226_zCount_uid139_i_div_if_loop_330_q = $unsigned(4'b0000);

    // leftShiftStage1Idx1_uid356_normY_uid140_i_div_if_loop_330(BITJOIN,355)@21
    assign leftShiftStage1Idx1_uid356_normY_uid140_i_div_if_loop_330_q = {leftShiftStage1Idx1Rng4_uid355_normY_uid140_i_div_if_loop_330_b, zs_uid226_zCount_uid139_i_div_if_loop_330_q};

    // leftShiftStage0Idx1Rng16_uid348_normY_uid140_i_div_if_loop_330(BITSELECT,347)@21
    assign leftShiftStage0Idx1Rng16_uid348_normY_uid140_i_div_if_loop_330_in = redist25_yPS_uid138_i_div_if_loop_330_b_3_q[15:0];
    assign leftShiftStage0Idx1Rng16_uid348_normY_uid140_i_div_if_loop_330_b = leftShiftStage0Idx1Rng16_uid348_normY_uid140_i_div_if_loop_330_in[15:0];

    // zs_uid214_zCount_uid139_i_div_if_loop_330(CONSTANT,213)
    assign zs_uid214_zCount_uid139_i_div_if_loop_330_q = $unsigned(16'b0000000000000000);

    // leftShiftStage0Idx1_uid349_normY_uid140_i_div_if_loop_330(BITJOIN,348)@21
    assign leftShiftStage0Idx1_uid349_normY_uid140_i_div_if_loop_330_q = {leftShiftStage0Idx1Rng16_uid348_normY_uid140_i_div_if_loop_330_b, zs_uid214_zCount_uid139_i_div_if_loop_330_q};

    // yPSE_uid135_i_div_if_loop_330(LOGICAL,134)@18
    assign yPSE_uid135_i_div_if_loop_330_b = $unsigned({{31{xMSB_uid133_i_div_if_loop_330_b[0]}}, xMSB_uid133_i_div_if_loop_330_b});
    assign yPSE_uid135_i_div_if_loop_330_q = redist36_bgTrunc_i_sub_if_loop_326_sel_x_b_1_q ^ yPSE_uid135_i_div_if_loop_330_b;

    // yPSEA_uid137_i_div_if_loop_330(ADD,136)@18
    assign yPSEA_uid137_i_div_if_loop_330_a = {1'b0, yPSE_uid135_i_div_if_loop_330_q};
    assign yPSEA_uid137_i_div_if_loop_330_b = {32'b00000000000000000000000000000000, xMSB_uid133_i_div_if_loop_330_b};
    assign yPSEA_uid137_i_div_if_loop_330_o = $unsigned(yPSEA_uid137_i_div_if_loop_330_a) + $unsigned(yPSEA_uid137_i_div_if_loop_330_b);
    assign yPSEA_uid137_i_div_if_loop_330_q = yPSEA_uid137_i_div_if_loop_330_o[32:0];

    // yPS_uid138_i_div_if_loop_330(BITSELECT,137)@18
    assign yPS_uid138_i_div_if_loop_330_in = $unsigned(yPSEA_uid137_i_div_if_loop_330_q[31:0]);
    assign yPS_uid138_i_div_if_loop_330_b = $unsigned(yPS_uid138_i_div_if_loop_330_in[31:0]);

    // redist24_yPS_uid138_i_div_if_loop_330_b_1(DELAY,496)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_yPS_uid138_i_div_if_loop_330_b_1_q <= '0;
        end
        else
        begin
            redist24_yPS_uid138_i_div_if_loop_330_b_1_q <= $unsigned(yPS_uid138_i_div_if_loop_330_b);
        end
    end

    // redist25_yPS_uid138_i_div_if_loop_330_b_3(DELAY,497)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_yPS_uid138_i_div_if_loop_330_b_3_delay_0 <= '0;
            redist25_yPS_uid138_i_div_if_loop_330_b_3_q <= '0;
        end
        else
        begin
            redist25_yPS_uid138_i_div_if_loop_330_b_3_delay_0 <= $unsigned(redist24_yPS_uid138_i_div_if_loop_330_b_1_q);
            redist25_yPS_uid138_i_div_if_loop_330_b_3_q <= redist25_yPS_uid138_i_div_if_loop_330_b_3_delay_0;
        end
    end

    // leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330(MUX,352)@21
    assign leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_s = leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_b;
    always @(leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_s or redist25_yPS_uid138_i_div_if_loop_330_b_3_q or leftShiftStage0Idx1_uid349_normY_uid140_i_div_if_loop_330_q or c_i32_074_q)
    begin
        unique case (leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_s)
            2'b00 : leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_q = redist25_yPS_uid138_i_div_if_loop_330_b_3_q;
            2'b01 : leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_q = leftShiftStage0Idx1_uid349_normY_uid140_i_div_if_loop_330_q;
            2'b10 : leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_q = c_i32_074_q;
            2'b11 : leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_q = c_i32_074_q;
            default : leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid364_normY_uid140_i_div_if_loop_330(MUX,363)@21
    assign leftShiftStage1_uid364_normY_uid140_i_div_if_loop_330_s = leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_c;
    always @(leftShiftStage1_uid364_normY_uid140_i_div_if_loop_330_s or leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_q or leftShiftStage1Idx1_uid356_normY_uid140_i_div_if_loop_330_q or leftShiftStage1Idx2_uid359_normY_uid140_i_div_if_loop_330_q or leftShiftStage1Idx3_uid362_normY_uid140_i_div_if_loop_330_q)
    begin
        unique case (leftShiftStage1_uid364_normY_uid140_i_div_if_loop_330_s)
            2'b00 : leftShiftStage1_uid364_normY_uid140_i_div_if_loop_330_q = leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_q;
            2'b01 : leftShiftStage1_uid364_normY_uid140_i_div_if_loop_330_q = leftShiftStage1Idx1_uid356_normY_uid140_i_div_if_loop_330_q;
            2'b10 : leftShiftStage1_uid364_normY_uid140_i_div_if_loop_330_q = leftShiftStage1Idx2_uid359_normY_uid140_i_div_if_loop_330_q;
            2'b11 : leftShiftStage1_uid364_normY_uid140_i_div_if_loop_330_q = leftShiftStage1Idx3_uid362_normY_uid140_i_div_if_loop_330_q;
            default : leftShiftStage1_uid364_normY_uid140_i_div_if_loop_330_q = 32'b0;
        endcase
    end

    // vCount_uid210_zCount_uid139_i_div_if_loop_330(LOGICAL,209)@18 + 1
    assign vCount_uid210_zCount_uid139_i_div_if_loop_330_qi = $unsigned(yPS_uid138_i_div_if_loop_330_b == c_i32_074_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid210_zCount_uid139_i_div_if_loop_330_delay ( .xin(vCount_uid210_zCount_uid139_i_div_if_loop_330_qi), .xout(vCount_uid210_zCount_uid139_i_div_if_loop_330_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_vCount_uid210_zCount_uid139_i_div_if_loop_330_q_2(DELAY,490)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_vCount_uid210_zCount_uid139_i_div_if_loop_330_q_2_q <= '0;
        end
        else
        begin
            redist18_vCount_uid210_zCount_uid139_i_div_if_loop_330_q_2_q <= $unsigned(vCount_uid210_zCount_uid139_i_div_if_loop_330_q);
        end
    end

    // c_i32_175_recast_x(CONSTANT,102)
    assign c_i32_175_recast_x_q = $unsigned(32'b11111111111111111111111111111111);

    // vStagei_uid213_zCount_uid139_i_div_if_loop_330(MUX,212)@19
    assign vStagei_uid213_zCount_uid139_i_div_if_loop_330_s = vCount_uid210_zCount_uid139_i_div_if_loop_330_q;
    always @(vStagei_uid213_zCount_uid139_i_div_if_loop_330_s or redist24_yPS_uid138_i_div_if_loop_330_b_1_q or c_i32_175_recast_x_q)
    begin
        unique case (vStagei_uid213_zCount_uid139_i_div_if_loop_330_s)
            1'b0 : vStagei_uid213_zCount_uid139_i_div_if_loop_330_q = redist24_yPS_uid138_i_div_if_loop_330_b_1_q;
            1'b1 : vStagei_uid213_zCount_uid139_i_div_if_loop_330_q = c_i32_175_recast_x_q;
            default : vStagei_uid213_zCount_uid139_i_div_if_loop_330_q = 32'b0;
        endcase
    end

    // rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select(BITSELECT,465)@19
    assign rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_b = vStagei_uid213_zCount_uid139_i_div_if_loop_330_q[31:16];
    assign rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_c = vStagei_uid213_zCount_uid139_i_div_if_loop_330_q[15:0];

    // vCount_uid216_zCount_uid139_i_div_if_loop_330(LOGICAL,215)@19
    assign vCount_uid216_zCount_uid139_i_div_if_loop_330_q = $unsigned(rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_b == zs_uid214_zCount_uid139_i_div_if_loop_330_q ? 1'b1 : 1'b0);

    // redist17_vCount_uid216_zCount_uid139_i_div_if_loop_330_q_1(DELAY,489)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_vCount_uid216_zCount_uid139_i_div_if_loop_330_q_1_q <= '0;
        end
        else
        begin
            redist17_vCount_uid216_zCount_uid139_i_div_if_loop_330_q_1_q <= $unsigned(vCount_uid216_zCount_uid139_i_div_if_loop_330_q);
        end
    end

    // vStagei_uid219_zCount_uid139_i_div_if_loop_330(MUX,218)@19
    assign vStagei_uid219_zCount_uid139_i_div_if_loop_330_s = vCount_uid216_zCount_uid139_i_div_if_loop_330_q;
    always @(vStagei_uid219_zCount_uid139_i_div_if_loop_330_s or rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_b or rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_c)
    begin
        unique case (vStagei_uid219_zCount_uid139_i_div_if_loop_330_s)
            1'b0 : vStagei_uid219_zCount_uid139_i_div_if_loop_330_q = rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_b;
            1'b1 : vStagei_uid219_zCount_uid139_i_div_if_loop_330_q = rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_c;
            default : vStagei_uid219_zCount_uid139_i_div_if_loop_330_q = 16'b0;
        endcase
    end

    // rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select(BITSELECT,466)@19
    assign rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_b = vStagei_uid219_zCount_uid139_i_div_if_loop_330_q[15:8];
    assign rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_c = vStagei_uid219_zCount_uid139_i_div_if_loop_330_q[7:0];

    // vCount_uid222_zCount_uid139_i_div_if_loop_330(LOGICAL,221)@19 + 1
    assign vCount_uid222_zCount_uid139_i_div_if_loop_330_qi = $unsigned(rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_b == zs_uid220_zCount_uid139_i_div_if_loop_330_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid222_zCount_uid139_i_div_if_loop_330_delay ( .xin(vCount_uid222_zCount_uid139_i_div_if_loop_330_qi), .xout(vCount_uid222_zCount_uid139_i_div_if_loop_330_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist1_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_c_1(DELAY,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist1_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_c_1_q <= $unsigned(rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_c);
        end
    end

    // redist0_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_b_1(DELAY,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist0_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_b_1_q <= $unsigned(rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_b);
        end
    end

    // vStagei_uid225_zCount_uid139_i_div_if_loop_330(MUX,224)@20
    assign vStagei_uid225_zCount_uid139_i_div_if_loop_330_s = vCount_uid222_zCount_uid139_i_div_if_loop_330_q;
    always @(vStagei_uid225_zCount_uid139_i_div_if_loop_330_s or redist0_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_b_1_q or redist1_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_c_1_q)
    begin
        unique case (vStagei_uid225_zCount_uid139_i_div_if_loop_330_s)
            1'b0 : vStagei_uid225_zCount_uid139_i_div_if_loop_330_q = redist0_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_b_1_q;
            1'b1 : vStagei_uid225_zCount_uid139_i_div_if_loop_330_q = redist1_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_c_1_q;
            default : vStagei_uid225_zCount_uid139_i_div_if_loop_330_q = 8'b0;
        endcase
    end

    // rVStage_uid227_zCount_uid139_i_div_if_loop_330_merged_bit_select(BITSELECT,467)@20
    assign rVStage_uid227_zCount_uid139_i_div_if_loop_330_merged_bit_select_b = vStagei_uid225_zCount_uid139_i_div_if_loop_330_q[7:4];
    assign rVStage_uid227_zCount_uid139_i_div_if_loop_330_merged_bit_select_c = vStagei_uid225_zCount_uid139_i_div_if_loop_330_q[3:0];

    // vCount_uid228_zCount_uid139_i_div_if_loop_330(LOGICAL,227)@20
    assign vCount_uid228_zCount_uid139_i_div_if_loop_330_q = $unsigned(rVStage_uid227_zCount_uid139_i_div_if_loop_330_merged_bit_select_b == zs_uid226_zCount_uid139_i_div_if_loop_330_q ? 1'b1 : 1'b0);

    // vStagei_uid231_zCount_uid139_i_div_if_loop_330(MUX,230)@20
    assign vStagei_uid231_zCount_uid139_i_div_if_loop_330_s = vCount_uid228_zCount_uid139_i_div_if_loop_330_q;
    always @(vStagei_uid231_zCount_uid139_i_div_if_loop_330_s or rVStage_uid227_zCount_uid139_i_div_if_loop_330_merged_bit_select_b or rVStage_uid227_zCount_uid139_i_div_if_loop_330_merged_bit_select_c)
    begin
        unique case (vStagei_uid231_zCount_uid139_i_div_if_loop_330_s)
            1'b0 : vStagei_uid231_zCount_uid139_i_div_if_loop_330_q = rVStage_uid227_zCount_uid139_i_div_if_loop_330_merged_bit_select_b;
            1'b1 : vStagei_uid231_zCount_uid139_i_div_if_loop_330_q = rVStage_uid227_zCount_uid139_i_div_if_loop_330_merged_bit_select_c;
            default : vStagei_uid231_zCount_uid139_i_div_if_loop_330_q = 4'b0;
        endcase
    end

    // rVStage_uid233_zCount_uid139_i_div_if_loop_330_merged_bit_select(BITSELECT,468)@20
    assign rVStage_uid233_zCount_uid139_i_div_if_loop_330_merged_bit_select_b = vStagei_uid231_zCount_uid139_i_div_if_loop_330_q[3:2];
    assign rVStage_uid233_zCount_uid139_i_div_if_loop_330_merged_bit_select_c = vStagei_uid231_zCount_uid139_i_div_if_loop_330_q[1:0];

    // vCount_uid234_zCount_uid139_i_div_if_loop_330(LOGICAL,233)@20
    assign vCount_uid234_zCount_uid139_i_div_if_loop_330_q = $unsigned(rVStage_uid233_zCount_uid139_i_div_if_loop_330_merged_bit_select_b == i_mptr_bitcast_index25_if_loop_30_c_i2_01_x_q ? 1'b1 : 1'b0);

    // vStagei_uid237_zCount_uid139_i_div_if_loop_330(MUX,236)@20
    assign vStagei_uid237_zCount_uid139_i_div_if_loop_330_s = vCount_uid234_zCount_uid139_i_div_if_loop_330_q;
    always @(vStagei_uid237_zCount_uid139_i_div_if_loop_330_s or rVStage_uid233_zCount_uid139_i_div_if_loop_330_merged_bit_select_b or rVStage_uid233_zCount_uid139_i_div_if_loop_330_merged_bit_select_c)
    begin
        unique case (vStagei_uid237_zCount_uid139_i_div_if_loop_330_s)
            1'b0 : vStagei_uid237_zCount_uid139_i_div_if_loop_330_q = rVStage_uid233_zCount_uid139_i_div_if_loop_330_merged_bit_select_b;
            1'b1 : vStagei_uid237_zCount_uid139_i_div_if_loop_330_q = rVStage_uid233_zCount_uid139_i_div_if_loop_330_merged_bit_select_c;
            default : vStagei_uid237_zCount_uid139_i_div_if_loop_330_q = 2'b0;
        endcase
    end

    // rVStage_uid239_zCount_uid139_i_div_if_loop_330(BITSELECT,238)@20
    assign rVStage_uid239_zCount_uid139_i_div_if_loop_330_b = vStagei_uid237_zCount_uid139_i_div_if_loop_330_q[1:1];

    // vCount_uid240_zCount_uid139_i_div_if_loop_330(LOGICAL,239)@20
    assign vCount_uid240_zCount_uid139_i_div_if_loop_330_q = $unsigned(rVStage_uid239_zCount_uid139_i_div_if_loop_330_b == GND_q ? 1'b1 : 1'b0);

    // r_uid241_zCount_uid139_i_div_if_loop_330(BITJOIN,240)@20
    assign r_uid241_zCount_uid139_i_div_if_loop_330_q = {redist18_vCount_uid210_zCount_uid139_i_div_if_loop_330_q_2_q, redist17_vCount_uid216_zCount_uid139_i_div_if_loop_330_q_1_q, vCount_uid222_zCount_uid139_i_div_if_loop_330_q, vCount_uid228_zCount_uid139_i_div_if_loop_330_q, vCount_uid234_zCount_uid139_i_div_if_loop_330_q, vCount_uid240_zCount_uid139_i_div_if_loop_330_q};

    // redist15_r_uid241_zCount_uid139_i_div_if_loop_330_q_1(DELAY,487)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_r_uid241_zCount_uid139_i_div_if_loop_330_q_1_q <= '0;
        end
        else
        begin
            redist15_r_uid241_zCount_uid139_i_div_if_loop_330_q_1_q <= $unsigned(r_uid241_zCount_uid139_i_div_if_loop_330_q);
        end
    end

    // leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select(BITSELECT,469)@21
    assign leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_b = redist15_r_uid241_zCount_uid139_i_div_if_loop_330_q_1_q[5:4];
    assign leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_c = redist15_r_uid241_zCount_uid139_i_div_if_loop_330_q_1_q[3:2];
    assign leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_d = redist15_r_uid241_zCount_uid139_i_div_if_loop_330_q_1_q[1:0];

    // leftShiftStage2_uid375_normY_uid140_i_div_if_loop_330(MUX,374)@21
    assign leftShiftStage2_uid375_normY_uid140_i_div_if_loop_330_s = leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_d;
    always @(leftShiftStage2_uid375_normY_uid140_i_div_if_loop_330_s or leftShiftStage1_uid364_normY_uid140_i_div_if_loop_330_q or leftShiftStage2Idx1_uid367_normY_uid140_i_div_if_loop_330_q or leftShiftStage2Idx2_uid370_normY_uid140_i_div_if_loop_330_q or leftShiftStage2Idx3_uid373_normY_uid140_i_div_if_loop_330_q)
    begin
        unique case (leftShiftStage2_uid375_normY_uid140_i_div_if_loop_330_s)
            2'b00 : leftShiftStage2_uid375_normY_uid140_i_div_if_loop_330_q = leftShiftStage1_uid364_normY_uid140_i_div_if_loop_330_q;
            2'b01 : leftShiftStage2_uid375_normY_uid140_i_div_if_loop_330_q = leftShiftStage2Idx1_uid367_normY_uid140_i_div_if_loop_330_q;
            2'b10 : leftShiftStage2_uid375_normY_uid140_i_div_if_loop_330_q = leftShiftStage2Idx2_uid370_normY_uid140_i_div_if_loop_330_q;
            2'b11 : leftShiftStage2_uid375_normY_uid140_i_div_if_loop_330_q = leftShiftStage2Idx3_uid373_normY_uid140_i_div_if_loop_330_q;
            default : leftShiftStage2_uid375_normY_uid140_i_div_if_loop_330_q = 32'b0;
        endcase
    end

    // normYNoLeadOne_uid141_i_div_if_loop_330(BITSELECT,140)@21
    assign normYNoLeadOne_uid141_i_div_if_loop_330_in = leftShiftStage2_uid375_normY_uid140_i_div_if_loop_330_q[30:0];
    assign normYNoLeadOne_uid141_i_div_if_loop_330_b = normYNoLeadOne_uid141_i_div_if_loop_330_in[30:0];

    // yAddr_uid149_i_div_if_loop_330_merged_bit_select(BITSELECT,461)@21
    assign yAddr_uid149_i_div_if_loop_330_merged_bit_select_b = normYNoLeadOne_uid141_i_div_if_loop_330_b[30:23];
    assign yAddr_uid149_i_div_if_loop_330_merged_bit_select_c = normYNoLeadOne_uid141_i_div_if_loop_330_b[22:0];

    // redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_2(DELAY,479)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_2_delay_0 <= '0;
            redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_2_q <= '0;
        end
        else
        begin
            redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_2_delay_0 <= $unsigned(yAddr_uid149_i_div_if_loop_330_merged_bit_select_c);
            redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_2_q <= redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_2_delay_0;
        end
    end

    // redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_wraddr(REG,530)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_wraddr_q <= $unsigned(redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_rdcnt_q);
        end
    end

    // redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem(DUALMEM,528)
    assign redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_ia = $unsigned(redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_2_q);
    assign redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_aa = redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_wraddr_q;
    assign redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_ab = redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_rdcnt_q;
    assign redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_reset0 = ~ (resetn);
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
        .intended_device_family("Cyclone 10 GX")
    ) redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_dmem (
        .clocken1(redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_reset0),
        .clock1(clock),
        .address_a(redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_aa),
        .data_a(redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_ab),
        .q_b(redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_iq),
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
    assign redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_q = redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_iq[22:0];

    // redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_wraddr(REG,540)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_wraddr_q <= $unsigned(redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_rdcnt_q);
        end
    end

    // redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem(DUALMEM,538)
    assign redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_ia = $unsigned(redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_q);
    assign redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_aa = redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_wraddr_q;
    assign redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_ab = redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_rdcnt_q;
    assign redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_reset0 = ~ (resetn);
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
        .intended_device_family("Cyclone 10 GX")
    ) redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_dmem (
        .clocken1(redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_reset0),
        .clock1(clock),
        .address_a(redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_aa),
        .data_a(redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_ab),
        .q_b(redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_iq),
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
    assign redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_q = redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_iq[22:0];

    // nx_mergedSignalTM_uid296_pT3_uid272_invPolyEval(BITJOIN,295)@31
    assign nx_mergedSignalTM_uid296_pT3_uid272_invPolyEval_q = {GND_q, redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_10_mem_q};

    // topRangeX_uid298_pT3_uid272_invPolyEval_merged_bit_select(BITSELECT,471)@31
    assign topRangeX_uid298_pT3_uid272_invPolyEval_merged_bit_select_b = $unsigned(nx_mergedSignalTM_uid296_pT3_uid272_invPolyEval_q[23:6]);
    assign topRangeX_uid298_pT3_uid272_invPolyEval_merged_bit_select_c = $unsigned(nx_mergedSignalTM_uid296_pT3_uid272_invPolyEval_q[5:0]);

    // aboveLeftY_bottomExtension_uid301_pT3_uid272_invPolyEval(CONSTANT,300)
    assign aboveLeftY_bottomExtension_uid301_pT3_uid272_invPolyEval_q = $unsigned(5'b00000);

    // aboveLeftY_mergedSignalTM_uid303_pT3_uid272_invPolyEval(BITJOIN,302)@31
    assign aboveLeftY_mergedSignalTM_uid303_pT3_uid272_invPolyEval_q = {topRangeY_uid299_pT3_uid272_invPolyEval_merged_bit_select_c, aboveLeftY_bottomExtension_uid301_pT3_uid272_invPolyEval_q};

    // memoryC3_uid252_invTabGen_lutmem(DUALMEM,450)@21 + 2
    // in j@20000000
    assign memoryC3_uid252_invTabGen_lutmem_aa = yAddr_uid149_i_div_if_loop_330_merged_bit_select_b;
    assign memoryC3_uid252_invTabGen_lutmem_reset0 = ~ (resetn);
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
        .init_file("if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000252_invTabGen_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone 10 GX")
    ) memoryC3_uid252_invTabGen_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC3_uid252_invTabGen_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC3_uid252_invTabGen_lutmem_aa),
        .q_a(memoryC3_uid252_invTabGen_lutmem_ir),
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
    assign memoryC3_uid252_invTabGen_lutmem_r = memoryC3_uid252_invTabGen_lutmem_ir[13:0];

    // yT1_uid259_invPolyEval(BITSELECT,258)@23
    assign yT1_uid259_invPolyEval_b = redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_2_q[22:9];

    // prodXY_uid278_pT1_uid260_invPolyEval_cma(CHAINMULTADD,451)@23 + 3
    assign prodXY_uid278_pT1_uid260_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid278_pT1_uid260_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid278_pT1_uid260_invPolyEval_cma_ena1 = prodXY_uid278_pT1_uid260_invPolyEval_cma_ena0;
    assign prodXY_uid278_pT1_uid260_invPolyEval_cma_ena2 = prodXY_uid278_pT1_uid260_invPolyEval_cma_ena0;

    assign prodXY_uid278_pT1_uid260_invPolyEval_cma_a0 = yT1_uid259_invPolyEval_b;
    assign prodXY_uid278_pT1_uid260_invPolyEval_cma_c0 = $unsigned(memoryC3_uid252_invTabGen_lutmem_r);
    cyclone10gx_mac #(
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
    ) prodXY_uid278_pT1_uid260_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXY_uid278_pT1_uid260_invPolyEval_cma_ena2, prodXY_uid278_pT1_uid260_invPolyEval_cma_ena1, prodXY_uid278_pT1_uid260_invPolyEval_cma_ena0 }),
        .aclr({ prodXY_uid278_pT1_uid260_invPolyEval_cma_reset, prodXY_uid278_pT1_uid260_invPolyEval_cma_reset }),
        .ay(prodXY_uid278_pT1_uid260_invPolyEval_cma_a0),
        .ax(prodXY_uid278_pT1_uid260_invPolyEval_cma_c0),
        .resulta(prodXY_uid278_pT1_uid260_invPolyEval_cma_s0),
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
    prodXY_uid278_pT1_uid260_invPolyEval_cma_delay ( .xin(prodXY_uid278_pT1_uid260_invPolyEval_cma_s0), .xout(prodXY_uid278_pT1_uid260_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid278_pT1_uid260_invPolyEval_cma_q = $unsigned(prodXY_uid278_pT1_uid260_invPolyEval_cma_qq[27:0]);

    // osig_uid279_pT1_uid260_invPolyEval(BITSELECT,278)@26
    assign osig_uid279_pT1_uid260_invPolyEval_b = $unsigned(prodXY_uid278_pT1_uid260_invPolyEval_cma_q[27:14]);

    // highBBits_uid262_invPolyEval(BITSELECT,261)@26
    assign highBBits_uid262_invPolyEval_b = $unsigned(osig_uid279_pT1_uid260_invPolyEval_b[13:1]);

    // redist4_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3(DELAY,476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_delay_0 <= '0;
            redist4_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_delay_1 <= '0;
            redist4_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_q <= '0;
        end
        else
        begin
            redist4_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_delay_0 <= $unsigned(yAddr_uid149_i_div_if_loop_330_merged_bit_select_b);
            redist4_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_delay_1 <= redist4_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_delay_0;
            redist4_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_q <= redist4_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_delay_1;
        end
    end

    // memoryC2_uid249_invTabGen_lutmem(DUALMEM,449)@24 + 2
    // in j@20000000
    assign memoryC2_uid249_invTabGen_lutmem_aa = redist4_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_q;
    assign memoryC2_uid249_invTabGen_lutmem_reset0 = ~ (resetn);
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
        .init_file("if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000249_invTabGen_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone 10 GX")
    ) memoryC2_uid249_invTabGen_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC2_uid249_invTabGen_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC2_uid249_invTabGen_lutmem_aa),
        .q_a(memoryC2_uid249_invTabGen_lutmem_ir),
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
    assign memoryC2_uid249_invTabGen_lutmem_r = memoryC2_uid249_invTabGen_lutmem_ir[20:0];

    // s1sumAHighB_uid263_invPolyEval(ADD,262)@26 + 1
    assign s1sumAHighB_uid263_invPolyEval_a = $unsigned({{1{memoryC2_uid249_invTabGen_lutmem_r[20]}}, memoryC2_uid249_invTabGen_lutmem_r});
    assign s1sumAHighB_uid263_invPolyEval_b = $unsigned({{9{highBBits_uid262_invPolyEval_b[12]}}, highBBits_uid262_invPolyEval_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            s1sumAHighB_uid263_invPolyEval_o <= 22'b0;
        end
        else
        begin
            s1sumAHighB_uid263_invPolyEval_o <= $unsigned($signed(s1sumAHighB_uid263_invPolyEval_a) + $signed(s1sumAHighB_uid263_invPolyEval_b));
        end
    end
    assign s1sumAHighB_uid263_invPolyEval_q = s1sumAHighB_uid263_invPolyEval_o[21:0];

    // lowRangeB_uid261_invPolyEval(BITSELECT,260)@26
    assign lowRangeB_uid261_invPolyEval_in = osig_uid279_pT1_uid260_invPolyEval_b[0:0];
    assign lowRangeB_uid261_invPolyEval_b = lowRangeB_uid261_invPolyEval_in[0:0];

    // redist14_lowRangeB_uid261_invPolyEval_b_1(DELAY,486)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_lowRangeB_uid261_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist14_lowRangeB_uid261_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid261_invPolyEval_b);
        end
    end

    // s1_uid264_invPolyEval(BITJOIN,263)@27
    assign s1_uid264_invPolyEval_q = {s1sumAHighB_uid263_invPolyEval_q, redist14_lowRangeB_uid261_invPolyEval_b_1_q};

    // yT2_uid265_invPolyEval(BITSELECT,264)@27
    assign yT2_uid265_invPolyEval_b = redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_6_mem_q[22:2];

    // prodXY_uid281_pT2_uid266_invPolyEval_cma(CHAINMULTADD,452)@27 + 3
    assign prodXY_uid281_pT2_uid266_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid281_pT2_uid266_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid281_pT2_uid266_invPolyEval_cma_ena1 = prodXY_uid281_pT2_uid266_invPolyEval_cma_ena0;
    assign prodXY_uid281_pT2_uid266_invPolyEval_cma_ena2 = prodXY_uid281_pT2_uid266_invPolyEval_cma_ena0;

    assign prodXY_uid281_pT2_uid266_invPolyEval_cma_a0 = yT2_uid265_invPolyEval_b;
    assign prodXY_uid281_pT2_uid266_invPolyEval_cma_c0 = $unsigned(s1_uid264_invPolyEval_q);
    cyclone10gx_mac #(
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
    ) prodXY_uid281_pT2_uid266_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXY_uid281_pT2_uid266_invPolyEval_cma_ena2, prodXY_uid281_pT2_uid266_invPolyEval_cma_ena1, prodXY_uid281_pT2_uid266_invPolyEval_cma_ena0 }),
        .aclr({ prodXY_uid281_pT2_uid266_invPolyEval_cma_reset, prodXY_uid281_pT2_uid266_invPolyEval_cma_reset }),
        .ay(prodXY_uid281_pT2_uid266_invPolyEval_cma_a0),
        .ax(prodXY_uid281_pT2_uid266_invPolyEval_cma_c0),
        .resulta(prodXY_uid281_pT2_uid266_invPolyEval_cma_s0),
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
    prodXY_uid281_pT2_uid266_invPolyEval_cma_delay ( .xin(prodXY_uid281_pT2_uid266_invPolyEval_cma_s0), .xout(prodXY_uid281_pT2_uid266_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid281_pT2_uid266_invPolyEval_cma_q = $unsigned(prodXY_uid281_pT2_uid266_invPolyEval_cma_qq[43:0]);

    // osig_uid282_pT2_uid266_invPolyEval(BITSELECT,281)@30
    assign osig_uid282_pT2_uid266_invPolyEval_b = $unsigned(prodXY_uid281_pT2_uid266_invPolyEval_cma_q[43:21]);

    // highBBits_uid268_invPolyEval(BITSELECT,267)@30
    assign highBBits_uid268_invPolyEval_b = $unsigned(osig_uid282_pT2_uid266_invPolyEval_b[22:1]);

    // redist5_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_7(DELAY,477)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_7_delay_0 <= '0;
            redist5_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_7_delay_1 <= '0;
            redist5_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_7_delay_2 <= '0;
            redist5_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_7_q <= '0;
        end
        else
        begin
            redist5_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_7_delay_0 <= $unsigned(redist4_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_q);
            redist5_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_7_delay_1 <= redist5_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_7_delay_0;
            redist5_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_7_delay_2 <= redist5_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_7_delay_1;
            redist5_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_7_q <= redist5_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_7_delay_2;
        end
    end

    // memoryC1_uid246_invTabGen_lutmem(DUALMEM,448)@28 + 2
    // in j@20000000
    assign memoryC1_uid246_invTabGen_lutmem_aa = redist5_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_7_q;
    assign memoryC1_uid246_invTabGen_lutmem_reset0 = ~ (resetn);
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
        .init_file("if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000246_invTabGen_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone 10 GX")
    ) memoryC1_uid246_invTabGen_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC1_uid246_invTabGen_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC1_uid246_invTabGen_lutmem_aa),
        .q_a(memoryC1_uid246_invTabGen_lutmem_ir),
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
    assign memoryC1_uid246_invTabGen_lutmem_r = memoryC1_uid246_invTabGen_lutmem_ir[28:0];

    // s2sumAHighB_uid269_invPolyEval(ADD,268)@30 + 1
    assign s2sumAHighB_uid269_invPolyEval_a = $unsigned({{1{memoryC1_uid246_invTabGen_lutmem_r[28]}}, memoryC1_uid246_invTabGen_lutmem_r});
    assign s2sumAHighB_uid269_invPolyEval_b = $unsigned({{8{highBBits_uid268_invPolyEval_b[21]}}, highBBits_uid268_invPolyEval_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            s2sumAHighB_uid269_invPolyEval_o <= 30'b0;
        end
        else
        begin
            s2sumAHighB_uid269_invPolyEval_o <= $unsigned($signed(s2sumAHighB_uid269_invPolyEval_a) + $signed(s2sumAHighB_uid269_invPolyEval_b));
        end
    end
    assign s2sumAHighB_uid269_invPolyEval_q = s2sumAHighB_uid269_invPolyEval_o[29:0];

    // lowRangeB_uid267_invPolyEval(BITSELECT,266)@30
    assign lowRangeB_uid267_invPolyEval_in = osig_uid282_pT2_uid266_invPolyEval_b[0:0];
    assign lowRangeB_uid267_invPolyEval_b = lowRangeB_uid267_invPolyEval_in[0:0];

    // redist13_lowRangeB_uid267_invPolyEval_b_1(DELAY,485)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_lowRangeB_uid267_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist13_lowRangeB_uid267_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid267_invPolyEval_b);
        end
    end

    // s2_uid270_invPolyEval(BITJOIN,269)@31
    assign s2_uid270_invPolyEval_q = {s2sumAHighB_uid269_invPolyEval_q, redist13_lowRangeB_uid267_invPolyEval_b_1_q};

    // topRangeY_uid299_pT3_uid272_invPolyEval_merged_bit_select(BITSELECT,470)@31
    assign topRangeY_uid299_pT3_uid272_invPolyEval_merged_bit_select_b = $unsigned(s2_uid270_invPolyEval_q[30:13]);
    assign topRangeY_uid299_pT3_uid272_invPolyEval_merged_bit_select_c = $unsigned(s2_uid270_invPolyEval_q[12:0]);

    // rightBottomX_mergedSignalTM_uid307_pT3_uid272_invPolyEval(BITJOIN,306)@31
    assign rightBottomX_mergedSignalTM_uid307_pT3_uid272_invPolyEval_q = {topRangeX_uid298_pT3_uid272_invPolyEval_merged_bit_select_c, rightBottomX_bottomExtension_uid305_pT3_uid272_invPolyEval_q};

    // multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma(CHAINMULTADD,458)@31 + 3
    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_reset = ~ (resetn);
    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_ena0 = 1'b1;
    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_ena1 = multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_ena0;
    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_ena2 = multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_ena0;

    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_a0 = rightBottomX_mergedSignalTM_uid307_pT3_uid272_invPolyEval_q;
    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_c0 = $unsigned(topRangeY_uid299_pT3_uid272_invPolyEval_merged_bit_select_b);
    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_a1 = aboveLeftY_mergedSignalTM_uid303_pT3_uid272_invPolyEval_q;
    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_c1 = $unsigned(topRangeX_uid298_pT3_uid272_invPolyEval_merged_bit_select_b);
    cyclone10gx_mac #(
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
    ) multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_ena2, multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_ena1, multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_ena0 }),
        .aclr({ multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_reset, multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_reset }),
        .ay(multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_a1),
        .by(multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_a0),
        .ax(multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_c1),
        .bx(multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_c0),
        .resulta(multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_s0),
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
    multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_delay ( .xin(multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_s0), .xout(multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_q = $unsigned(multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_qq[36:0]);

    // highBBits_uid314_pT3_uid272_invPolyEval(BITSELECT,313)@34
    assign highBBits_uid314_pT3_uid272_invPolyEval_b = $unsigned(multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_q[36:18]);

    // sm0_uid310_pT3_uid272_invPolyEval_cma(CHAINMULTADD,453)@31 + 3
    assign sm0_uid310_pT3_uid272_invPolyEval_cma_reset = ~ (resetn);
    assign sm0_uid310_pT3_uid272_invPolyEval_cma_ena0 = 1'b1;
    assign sm0_uid310_pT3_uid272_invPolyEval_cma_ena1 = sm0_uid310_pT3_uid272_invPolyEval_cma_ena0;
    assign sm0_uid310_pT3_uid272_invPolyEval_cma_ena2 = sm0_uid310_pT3_uid272_invPolyEval_cma_ena0;

    assign sm0_uid310_pT3_uid272_invPolyEval_cma_a0 = $unsigned(topRangeX_uid298_pT3_uid272_invPolyEval_merged_bit_select_b);
    assign sm0_uid310_pT3_uid272_invPolyEval_cma_c0 = $unsigned(topRangeY_uid299_pT3_uid272_invPolyEval_merged_bit_select_b);
    cyclone10gx_mac #(
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
    ) sm0_uid310_pT3_uid272_invPolyEval_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ sm0_uid310_pT3_uid272_invPolyEval_cma_ena2, sm0_uid310_pT3_uid272_invPolyEval_cma_ena1, sm0_uid310_pT3_uid272_invPolyEval_cma_ena0 }),
        .aclr({ sm0_uid310_pT3_uid272_invPolyEval_cma_reset, sm0_uid310_pT3_uid272_invPolyEval_cma_reset }),
        .ay(sm0_uid310_pT3_uid272_invPolyEval_cma_a0),
        .ax(sm0_uid310_pT3_uid272_invPolyEval_cma_c0),
        .resulta(sm0_uid310_pT3_uid272_invPolyEval_cma_s0),
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
    sm0_uid310_pT3_uid272_invPolyEval_cma_delay ( .xin(sm0_uid310_pT3_uid272_invPolyEval_cma_s0), .xout(sm0_uid310_pT3_uid272_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign sm0_uid310_pT3_uid272_invPolyEval_cma_q = $unsigned(sm0_uid310_pT3_uid272_invPolyEval_cma_qq[35:0]);

    // lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval(ADD,314)@34
    assign lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval_a = $unsigned({{1{sm0_uid310_pT3_uid272_invPolyEval_cma_q[35]}}, sm0_uid310_pT3_uid272_invPolyEval_cma_q});
    assign lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval_b = $unsigned({{18{highBBits_uid314_pT3_uid272_invPolyEval_b[18]}}, highBBits_uid314_pT3_uid272_invPolyEval_b});
    assign lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval_o = $unsigned($signed(lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval_a) + $signed(lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval_b));
    assign lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval_q = lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval_o[36:0];

    // lowRangeB_uid313_pT3_uid272_invPolyEval(BITSELECT,312)@34
    assign lowRangeB_uid313_pT3_uid272_invPolyEval_in = multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_q[17:0];
    assign lowRangeB_uid313_pT3_uid272_invPolyEval_b = lowRangeB_uid313_pT3_uid272_invPolyEval_in[17:0];

    // lev1_a0_uid316_pT3_uid272_invPolyEval(BITJOIN,315)@34
    assign lev1_a0_uid316_pT3_uid272_invPolyEval_q = {lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval_q, lowRangeB_uid313_pT3_uid272_invPolyEval_b};

    // os_uid317_pT3_uid272_invPolyEval(BITSELECT,316)@34
    assign os_uid317_pT3_uid272_invPolyEval_in = $unsigned(lev1_a0_uid316_pT3_uid272_invPolyEval_q[52:0]);
    assign os_uid317_pT3_uid272_invPolyEval_b = $unsigned(os_uid317_pT3_uid272_invPolyEval_in[52:21]);

    // highBBits_uid274_invPolyEval(BITSELECT,273)@34
    assign highBBits_uid274_invPolyEval_b = $unsigned(os_uid317_pT3_uid272_invPolyEval_b[31:2]);

    // redist11_highBBits_uid274_invPolyEval_b_1(DELAY,483)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_highBBits_uid274_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist11_highBBits_uid274_invPolyEval_b_1_q <= $unsigned(highBBits_uid274_invPolyEval_b);
        end
    end

    // redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_notEnable(LOGICAL,524)
    assign redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_nor(LOGICAL,525)
    assign redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_nor_q = ~ (redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_notEnable_q | redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_sticky_ena_q);

    // redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_last(CONSTANT,521)
    assign redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_last_q = $unsigned(3'b010);

    // redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_cmp(LOGICAL,522)
    assign redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_cmp_b = {1'b0, redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_rdcnt_q};
    assign redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_cmp_q = $unsigned(redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_last_q == redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_cmp_b ? 1'b1 : 1'b0);

    // redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_cmpReg(REG,523)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_cmpReg_q <= $unsigned(redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_cmp_q);
        end
    end

    // redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_sticky_ena(REG,526)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_nor_q == 1'b1)
        begin
            redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_sticky_ena_q <= $unsigned(redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_cmpReg_q);
        end
    end

    // redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_enaAnd(LOGICAL,527)
    assign redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_enaAnd_q = redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_sticky_ena_q & VCC_q;

    // redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_rdcnt(COUNTER,519)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_rdcnt_i <= $unsigned(redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_rdcnt_q = redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_rdcnt_i[1:0];

    // redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_wraddr(REG,520)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_wraddr_q <= $unsigned(redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_rdcnt_q);
        end
    end

    // redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem(DUALMEM,518)
    assign redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_ia = $unsigned(redist5_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_7_q);
    assign redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_aa = redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_wraddr_q;
    assign redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_ab = redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_rdcnt_q;
    assign redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_reset0 = ~ (resetn);
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
        .intended_device_family("Cyclone 10 GX")
    ) redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_dmem (
        .clocken1(redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_reset0),
        .clock1(clock),
        .address_a(redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_aa),
        .data_a(redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_ab),
        .q_b(redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_iq),
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
    assign redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_q = redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_iq[7:0];

    // memoryC0_uid243_invTabGen_lutmem(DUALMEM,447)@33 + 2
    // in j@20000000
    assign memoryC0_uid243_invTabGen_lutmem_aa = redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_12_mem_q;
    assign memoryC0_uid243_invTabGen_lutmem_reset0 = ~ (resetn);
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
        .init_file("if_loop_3_i_sfc_logic_s_c0_in_for_body_s0000243_invTabGen_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone 10 GX")
    ) memoryC0_uid243_invTabGen_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC0_uid243_invTabGen_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC0_uid243_invTabGen_lutmem_aa),
        .q_a(memoryC0_uid243_invTabGen_lutmem_ir),
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
    assign memoryC0_uid243_invTabGen_lutmem_r = memoryC0_uid243_invTabGen_lutmem_ir[37:0];

    // s3sumAHighB_uid275_invPolyEval(ADD,274)@35
    assign s3sumAHighB_uid275_invPolyEval_a = $unsigned({{1{memoryC0_uid243_invTabGen_lutmem_r[37]}}, memoryC0_uid243_invTabGen_lutmem_r});
    assign s3sumAHighB_uid275_invPolyEval_b = $unsigned({{9{redist11_highBBits_uid274_invPolyEval_b_1_q[29]}}, redist11_highBBits_uid274_invPolyEval_b_1_q});
    assign s3sumAHighB_uid275_invPolyEval_o = $unsigned($signed(s3sumAHighB_uid275_invPolyEval_a) + $signed(s3sumAHighB_uid275_invPolyEval_b));
    assign s3sumAHighB_uid275_invPolyEval_q = s3sumAHighB_uid275_invPolyEval_o[38:0];

    // lowRangeB_uid273_invPolyEval(BITSELECT,272)@34
    assign lowRangeB_uid273_invPolyEval_in = os_uid317_pT3_uid272_invPolyEval_b[1:0];
    assign lowRangeB_uid273_invPolyEval_b = lowRangeB_uid273_invPolyEval_in[1:0];

    // redist12_lowRangeB_uid273_invPolyEval_b_1(DELAY,484)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_lowRangeB_uid273_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist12_lowRangeB_uid273_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid273_invPolyEval_b);
        end
    end

    // s3_uid276_invPolyEval(BITJOIN,275)@35
    assign s3_uid276_invPolyEval_q = {s3sumAHighB_uid275_invPolyEval_q, redist12_lowRangeB_uid273_invPolyEval_b_1_q};

    // fxpInverseRes_uid152_i_div_if_loop_330(BITSELECT,151)@35
    assign fxpInverseRes_uid152_i_div_if_loop_330_in = s3_uid276_invPolyEval_q[38:0];
    assign fxpInverseRes_uid152_i_div_if_loop_330_b = fxpInverseRes_uid152_i_div_if_loop_330_in[38:6];

    // paddingY_uid142_i_div_if_loop_330(CONSTANT,141)
    assign paddingY_uid142_i_div_if_loop_330_q = $unsigned(31'b0000000000000000000000000000000);

    // updatedY_uid143_i_div_if_loop_330(BITJOIN,142)@21
    assign updatedY_uid143_i_div_if_loop_330_q = {GND_q, paddingY_uid142_i_div_if_loop_330_q};

    // normYIsOneC2_uid142_i_div_if_loop_330(LOGICAL,143)@21 + 1
    assign normYIsOneC2_uid142_i_div_if_loop_330_a = {1'b0, normYNoLeadOne_uid141_i_div_if_loop_330_b};
    assign normYIsOneC2_uid142_i_div_if_loop_330_qi = $unsigned(normYIsOneC2_uid142_i_div_if_loop_330_a == updatedY_uid143_i_div_if_loop_330_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    normYIsOneC2_uid142_i_div_if_loop_330_delay ( .xin(normYIsOneC2_uid142_i_div_if_loop_330_qi), .xout(normYIsOneC2_uid142_i_div_if_loop_330_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // normYIsOneC2_uid145_i_div_if_loop_330(BITSELECT,144)@21
    assign normYIsOneC2_uid145_i_div_if_loop_330_b = $unsigned(leftShiftStage2_uid375_normY_uid140_i_div_if_loop_330_q[31:31]);

    // redist23_normYIsOneC2_uid145_i_div_if_loop_330_b_1(DELAY,495)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_normYIsOneC2_uid145_i_div_if_loop_330_b_1_q <= '0;
        end
        else
        begin
            redist23_normYIsOneC2_uid145_i_div_if_loop_330_b_1_q <= $unsigned(normYIsOneC2_uid145_i_div_if_loop_330_b);
        end
    end

    // normYIsOne_uid146_i_div_if_loop_330(LOGICAL,145)@22 + 1
    assign normYIsOne_uid146_i_div_if_loop_330_qi = redist23_normYIsOneC2_uid145_i_div_if_loop_330_b_1_q & normYIsOneC2_uid142_i_div_if_loop_330_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    normYIsOne_uid146_i_div_if_loop_330_delay ( .xin(normYIsOne_uid146_i_div_if_loop_330_qi), .xout(normYIsOne_uid146_i_div_if_loop_330_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_normYIsOne_uid146_i_div_if_loop_330_q_13(DELAY,494)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist22_normYIsOne_uid146_i_div_if_loop_330_q_13 ( .xin(normYIsOne_uid146_i_div_if_loop_330_q), .xout(redist22_normYIsOne_uid146_i_div_if_loop_330_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invResPostOneHandling2_uid154_i_div_if_loop_330(MUX,153)@35 + 1
    assign invResPostOneHandling2_uid154_i_div_if_loop_330_s = redist22_normYIsOne_uid146_i_div_if_loop_330_q_13_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            invResPostOneHandling2_uid154_i_div_if_loop_330_q <= 33'b0;
        end
        else
        begin
            unique case (invResPostOneHandling2_uid154_i_div_if_loop_330_s)
                1'b0 : invResPostOneHandling2_uid154_i_div_if_loop_330_q <= fxpInverseRes_uid152_i_div_if_loop_330_b;
                1'b1 : invResPostOneHandling2_uid154_i_div_if_loop_330_q <= oneInvRes_uid153_i_div_if_loop_330_q;
                default : invResPostOneHandling2_uid154_i_div_if_loop_330_q <= 33'b0;
            endcase
        end
    end

    // prodXInvY_uid162_i_div_if_loop_330_bs2_merged_bit_select(BITSELECT,462)@36
    assign prodXInvY_uid162_i_div_if_loop_330_bs2_merged_bit_select_b = invResPostOneHandling2_uid154_i_div_if_loop_330_q[32:18];
    assign prodXInvY_uid162_i_div_if_loop_330_bs2_merged_bit_select_c = invResPostOneHandling2_uid154_i_div_if_loop_330_q[17:0];

    // zMsbY0_uid159_i_div_if_loop_330(BITJOIN,158)@36
    assign zMsbY0_uid159_i_div_if_loop_330_q = {GND_q, redist26_xMSB_uid133_i_div_if_loop_330_b_18_q};

    // xPSX_uid157_i_div_if_loop_330(LOGICAL,156)@36
    assign xPSX_uid157_i_div_if_loop_330_b = $unsigned({{31{redist26_xMSB_uid133_i_div_if_loop_330_b_18_q[0]}}, redist26_xMSB_uid133_i_div_if_loop_330_b_18_q});
    assign xPSX_uid157_i_div_if_loop_330_q = i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out ^ xPSX_uid157_i_div_if_loop_330_b;

    // xPSXE_uid160_i_div_if_loop_330(ADD,159)@36
    assign xPSXE_uid160_i_div_if_loop_330_a = $unsigned({{1{xPSX_uid157_i_div_if_loop_330_q[31]}}, xPSX_uid157_i_div_if_loop_330_q});
    assign xPSXE_uid160_i_div_if_loop_330_b = $unsigned({{31{zMsbY0_uid159_i_div_if_loop_330_q[1]}}, zMsbY0_uid159_i_div_if_loop_330_q});
    assign xPSXE_uid160_i_div_if_loop_330_o = $unsigned($signed(xPSXE_uid160_i_div_if_loop_330_a) + $signed(xPSXE_uid160_i_div_if_loop_330_b));
    assign xPSXE_uid160_i_div_if_loop_330_q = xPSXE_uid160_i_div_if_loop_330_o[32:0];

    // prodXInvY_uid162_i_div_if_loop_330_bs1_merged_bit_select(BITSELECT,464)@36
    assign prodXInvY_uid162_i_div_if_loop_330_bs1_merged_bit_select_b = $unsigned(xPSXE_uid160_i_div_if_loop_330_q[32:18]);
    assign prodXInvY_uid162_i_div_if_loop_330_bs1_merged_bit_select_c = $unsigned(xPSXE_uid160_i_div_if_loop_330_q[17:0]);

    // prodXInvY_uid162_i_div_if_loop_330_ma3_cma(CHAINMULTADD,459)@36 + 3
    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_reset = ~ (resetn);
    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_ena0 = 1'b1;
    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_ena1 = prodXInvY_uid162_i_div_if_loop_330_ma3_cma_ena0;
    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_ena2 = prodXInvY_uid162_i_div_if_loop_330_ma3_cma_ena0;

    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_a0 = $unsigned({{1{prodXInvY_uid162_i_div_if_loop_330_bs1_merged_bit_select_b[14]}}, prodXInvY_uid162_i_div_if_loop_330_bs1_merged_bit_select_b[14:0]});
    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_c0 = prodXInvY_uid162_i_div_if_loop_330_bs2_merged_bit_select_c;
    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_a1 = $unsigned(prodXInvY_uid162_i_div_if_loop_330_bjB6_q);
    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_c1 = prodXInvY_uid162_i_div_if_loop_330_bs1_merged_bit_select_c;
    cyclone10gx_mac #(
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
    ) prodXInvY_uid162_i_div_if_loop_330_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXInvY_uid162_i_div_if_loop_330_ma3_cma_ena2, prodXInvY_uid162_i_div_if_loop_330_ma3_cma_ena1, prodXInvY_uid162_i_div_if_loop_330_ma3_cma_ena0 }),
        .aclr({ prodXInvY_uid162_i_div_if_loop_330_ma3_cma_reset, prodXInvY_uid162_i_div_if_loop_330_ma3_cma_reset }),
        .ay(prodXInvY_uid162_i_div_if_loop_330_ma3_cma_a1),
        .by(prodXInvY_uid162_i_div_if_loop_330_ma3_cma_a0),
        .ax(prodXInvY_uid162_i_div_if_loop_330_ma3_cma_c1),
        .bx(prodXInvY_uid162_i_div_if_loop_330_ma3_cma_c0),
        .resulta(prodXInvY_uid162_i_div_if_loop_330_ma3_cma_s0),
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
    prodXInvY_uid162_i_div_if_loop_330_ma3_cma_delay ( .xin(prodXInvY_uid162_i_div_if_loop_330_ma3_cma_s0), .xout(prodXInvY_uid162_i_div_if_loop_330_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_q = $unsigned(prodXInvY_uid162_i_div_if_loop_330_ma3_cma_qq[34:0]);

    // prodXInvY_uid162_i_div_if_loop_330_sums_align_1(BITSHIFT,389)@39
    assign prodXInvY_uid162_i_div_if_loop_330_sums_align_1_qint = { prodXInvY_uid162_i_div_if_loop_330_ma3_cma_q, 18'b000000000000000000 };
    assign prodXInvY_uid162_i_div_if_loop_330_sums_align_1_q = prodXInvY_uid162_i_div_if_loop_330_sums_align_1_qint[52:0];

    // prodXInvY_uid162_i_div_if_loop_330_im0_cma(CHAINMULTADD,454)@36 + 3
    assign prodXInvY_uid162_i_div_if_loop_330_im0_cma_reset = ~ (resetn);
    assign prodXInvY_uid162_i_div_if_loop_330_im0_cma_ena0 = 1'b1;
    assign prodXInvY_uid162_i_div_if_loop_330_im0_cma_ena1 = prodXInvY_uid162_i_div_if_loop_330_im0_cma_ena0;
    assign prodXInvY_uid162_i_div_if_loop_330_im0_cma_ena2 = prodXInvY_uid162_i_div_if_loop_330_im0_cma_ena0;

    assign prodXInvY_uid162_i_div_if_loop_330_im0_cma_a0 = prodXInvY_uid162_i_div_if_loop_330_bs2_merged_bit_select_b;
    assign prodXInvY_uid162_i_div_if_loop_330_im0_cma_c0 = $unsigned(prodXInvY_uid162_i_div_if_loop_330_bs1_merged_bit_select_b);
    cyclone10gx_mac #(
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
    ) prodXInvY_uid162_i_div_if_loop_330_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXInvY_uid162_i_div_if_loop_330_im0_cma_ena2, prodXInvY_uid162_i_div_if_loop_330_im0_cma_ena1, prodXInvY_uid162_i_div_if_loop_330_im0_cma_ena0 }),
        .aclr({ prodXInvY_uid162_i_div_if_loop_330_im0_cma_reset, prodXInvY_uid162_i_div_if_loop_330_im0_cma_reset }),
        .ay(prodXInvY_uid162_i_div_if_loop_330_im0_cma_a0),
        .ax(prodXInvY_uid162_i_div_if_loop_330_im0_cma_c0),
        .resulta(prodXInvY_uid162_i_div_if_loop_330_im0_cma_s0),
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
    prodXInvY_uid162_i_div_if_loop_330_im0_cma_delay ( .xin(prodXInvY_uid162_i_div_if_loop_330_im0_cma_s0), .xout(prodXInvY_uid162_i_div_if_loop_330_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXInvY_uid162_i_div_if_loop_330_im0_cma_q = $unsigned(prodXInvY_uid162_i_div_if_loop_330_im0_cma_qq[29:0]);

    // prodXInvY_uid162_i_div_if_loop_330_im9_cma(CHAINMULTADD,455)@36 + 3
    assign prodXInvY_uid162_i_div_if_loop_330_im9_cma_reset = ~ (resetn);
    assign prodXInvY_uid162_i_div_if_loop_330_im9_cma_ena0 = 1'b1;
    assign prodXInvY_uid162_i_div_if_loop_330_im9_cma_ena1 = prodXInvY_uid162_i_div_if_loop_330_im9_cma_ena0;
    assign prodXInvY_uid162_i_div_if_loop_330_im9_cma_ena2 = prodXInvY_uid162_i_div_if_loop_330_im9_cma_ena0;

    assign prodXInvY_uid162_i_div_if_loop_330_im9_cma_a0 = prodXInvY_uid162_i_div_if_loop_330_bs1_merged_bit_select_c;
    assign prodXInvY_uid162_i_div_if_loop_330_im9_cma_c0 = prodXInvY_uid162_i_div_if_loop_330_bs2_merged_bit_select_c;
    cyclone10gx_mac #(
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
    ) prodXInvY_uid162_i_div_if_loop_330_im9_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodXInvY_uid162_i_div_if_loop_330_im9_cma_ena2, prodXInvY_uid162_i_div_if_loop_330_im9_cma_ena1, prodXInvY_uid162_i_div_if_loop_330_im9_cma_ena0 }),
        .aclr({ prodXInvY_uid162_i_div_if_loop_330_im9_cma_reset, prodXInvY_uid162_i_div_if_loop_330_im9_cma_reset }),
        .ay(prodXInvY_uid162_i_div_if_loop_330_im9_cma_a0),
        .ax(prodXInvY_uid162_i_div_if_loop_330_im9_cma_c0),
        .resulta(prodXInvY_uid162_i_div_if_loop_330_im9_cma_s0),
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
    prodXInvY_uid162_i_div_if_loop_330_im9_cma_delay ( .xin(prodXInvY_uid162_i_div_if_loop_330_im9_cma_s0), .xout(prodXInvY_uid162_i_div_if_loop_330_im9_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXInvY_uid162_i_div_if_loop_330_im9_cma_q = $unsigned(prodXInvY_uid162_i_div_if_loop_330_im9_cma_qq[35:0]);

    // prodXInvY_uid162_i_div_if_loop_330_sums_join_0(BITJOIN,388)@39
    assign prodXInvY_uid162_i_div_if_loop_330_sums_join_0_q = {prodXInvY_uid162_i_div_if_loop_330_im0_cma_q, prodXInvY_uid162_i_div_if_loop_330_im9_cma_q};

    // prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0(ADD,391)@39
    assign prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_a = $unsigned({{1{prodXInvY_uid162_i_div_if_loop_330_sums_join_0_q[65]}}, prodXInvY_uid162_i_div_if_loop_330_sums_join_0_q});
    assign prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_b = $unsigned({{14{prodXInvY_uid162_i_div_if_loop_330_sums_align_1_q[52]}}, prodXInvY_uid162_i_div_if_loop_330_sums_align_1_q});
    assign prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_o = $unsigned($signed(prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_a) + $signed(prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_b));
    assign prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_q = prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_o[66:0];

    // rightShiftInput_uid163_i_div_if_loop_330(BITSELECT,162)@39
    assign rightShiftInput_uid163_i_div_if_loop_330_in = $unsigned(prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_q[64:0]);
    assign rightShiftInput_uid163_i_div_if_loop_330_b = $unsigned(rightShiftInput_uid163_i_div_if_loop_330_in[64:0]);

    // xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,392)@39
    assign xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftInput_uid163_i_div_if_loop_330_b[64:64]);

    // redist10_xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b_1(DELAY,482)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b_1_q <= '0;
        end
        else
        begin
            redist10_xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b_1_q <= $unsigned(xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b);
        end
    end

    // seMsb_to64_uid427(BITSELECT,426)@40
    assign seMsb_to64_uid427_in = $unsigned({{63{redist10_xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b_1_q[0]}}, redist10_xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b_1_q});
    assign seMsb_to64_uid427_b = $unsigned(seMsb_to64_uid427_in[63:0]);

    // rightShiftStage3Idx1Rng64_uid428_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,427)@40
    assign rightShiftStage3Idx1Rng64_uid428_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftStage2_uid426_prodPostRightShift_uid164_i_div_if_loop_330_q[64:64]);

    // rightShiftStage3Idx1_uid429_prodPostRightShift_uid164_i_div_if_loop_330(BITJOIN,428)@40
    assign rightShiftStage3Idx1_uid429_prodPostRightShift_uid164_i_div_if_loop_330_q = {seMsb_to64_uid427_b, rightShiftStage3Idx1Rng64_uid428_prodPostRightShift_uid164_i_div_if_loop_330_b};

    // seMsb_to48_uid422(BITSELECT,421)@40
    assign seMsb_to48_uid422_in = $unsigned({{47{redist10_xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b_1_q[0]}}, redist10_xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b_1_q});
    assign seMsb_to48_uid422_b = $unsigned(seMsb_to48_uid422_in[47:0]);

    // rightShiftStage2Idx3Rng48_uid423_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,422)@40
    assign rightShiftStage2Idx3Rng48_uid423_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_q[64:48]);

    // rightShiftStage2Idx3_uid424_prodPostRightShift_uid164_i_div_if_loop_330(BITJOIN,423)@40
    assign rightShiftStage2Idx3_uid424_prodPostRightShift_uid164_i_div_if_loop_330_q = {seMsb_to48_uid422_b, rightShiftStage2Idx3Rng48_uid423_prodPostRightShift_uid164_i_div_if_loop_330_b};

    // seMsb_to32_uid419(BITSELECT,418)@40
    assign seMsb_to32_uid419_in = $unsigned({{31{redist10_xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b_1_q[0]}}, redist10_xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b_1_q});
    assign seMsb_to32_uid419_b = $unsigned(seMsb_to32_uid419_in[31:0]);

    // rightShiftStage2Idx2Rng32_uid420_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,419)@40
    assign rightShiftStage2Idx2Rng32_uid420_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_q[64:32]);

    // rightShiftStage2Idx2_uid421_prodPostRightShift_uid164_i_div_if_loop_330(BITJOIN,420)@40
    assign rightShiftStage2Idx2_uid421_prodPostRightShift_uid164_i_div_if_loop_330_q = {seMsb_to32_uid419_b, rightShiftStage2Idx2Rng32_uid420_prodPostRightShift_uid164_i_div_if_loop_330_b};

    // seMsb_to16_uid416(BITSELECT,415)@40
    assign seMsb_to16_uid416_in = $unsigned({{15{redist10_xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b_1_q[0]}}, redist10_xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b_1_q});
    assign seMsb_to16_uid416_b = $unsigned(seMsb_to16_uid416_in[15:0]);

    // rightShiftStage2Idx1Rng16_uid417_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,416)@40
    assign rightShiftStage2Idx1Rng16_uid417_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_q[64:16]);

    // rightShiftStage2Idx1_uid418_prodPostRightShift_uid164_i_div_if_loop_330(BITJOIN,417)@40
    assign rightShiftStage2Idx1_uid418_prodPostRightShift_uid164_i_div_if_loop_330_q = {seMsb_to16_uid416_b, rightShiftStage2Idx1Rng16_uid417_prodPostRightShift_uid164_i_div_if_loop_330_b};

    // seMsb_to12_uid411(BITSELECT,410)@39
    assign seMsb_to12_uid411_in = $unsigned({{11{xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b[0]}}, xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b});
    assign seMsb_to12_uid411_b = $unsigned(seMsb_to12_uid411_in[11:0]);

    // rightShiftStage1Idx3Rng12_uid412_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,411)@39
    assign rightShiftStage1Idx3Rng12_uid412_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftStage0_uid404_prodPostRightShift_uid164_i_div_if_loop_330_q[64:12]);

    // rightShiftStage1Idx3_uid413_prodPostRightShift_uid164_i_div_if_loop_330(BITJOIN,412)@39
    assign rightShiftStage1Idx3_uid413_prodPostRightShift_uid164_i_div_if_loop_330_q = {seMsb_to12_uid411_b, rightShiftStage1Idx3Rng12_uid412_prodPostRightShift_uid164_i_div_if_loop_330_b};

    // seMsb_to8_uid408(BITSELECT,407)@39
    assign seMsb_to8_uid408_in = $unsigned({{7{xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b[0]}}, xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b});
    assign seMsb_to8_uid408_b = $unsigned(seMsb_to8_uid408_in[7:0]);

    // rightShiftStage1Idx2Rng8_uid409_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,408)@39
    assign rightShiftStage1Idx2Rng8_uid409_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftStage0_uid404_prodPostRightShift_uid164_i_div_if_loop_330_q[64:8]);

    // rightShiftStage1Idx2_uid410_prodPostRightShift_uid164_i_div_if_loop_330(BITJOIN,409)@39
    assign rightShiftStage1Idx2_uid410_prodPostRightShift_uid164_i_div_if_loop_330_q = {seMsb_to8_uid408_b, rightShiftStage1Idx2Rng8_uid409_prodPostRightShift_uid164_i_div_if_loop_330_b};

    // seMsb_to4_uid405(BITSELECT,404)@39
    assign seMsb_to4_uid405_in = $unsigned({{3{xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b[0]}}, xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b});
    assign seMsb_to4_uid405_b = $unsigned(seMsb_to4_uid405_in[3:0]);

    // rightShiftStage1Idx1Rng4_uid406_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,405)@39
    assign rightShiftStage1Idx1Rng4_uid406_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftStage0_uid404_prodPostRightShift_uid164_i_div_if_loop_330_q[64:4]);

    // rightShiftStage1Idx1_uid407_prodPostRightShift_uid164_i_div_if_loop_330(BITJOIN,406)@39
    assign rightShiftStage1Idx1_uid407_prodPostRightShift_uid164_i_div_if_loop_330_q = {seMsb_to4_uid405_b, rightShiftStage1Idx1Rng4_uid406_prodPostRightShift_uid164_i_div_if_loop_330_b};

    // seMsb_to3_uid400(BITSELECT,399)@39
    assign seMsb_to3_uid400_in = $unsigned({{2{xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b[0]}}, xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b});
    assign seMsb_to3_uid400_b = $unsigned(seMsb_to3_uid400_in[2:0]);

    // rightShiftStage0Idx3Rng3_uid401_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,400)@39
    assign rightShiftStage0Idx3Rng3_uid401_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftInput_uid163_i_div_if_loop_330_b[64:3]);

    // rightShiftStage0Idx3_uid402_prodPostRightShift_uid164_i_div_if_loop_330(BITJOIN,401)@39
    assign rightShiftStage0Idx3_uid402_prodPostRightShift_uid164_i_div_if_loop_330_q = {seMsb_to3_uid400_b, rightShiftStage0Idx3Rng3_uid401_prodPostRightShift_uid164_i_div_if_loop_330_b};

    // seMsb_to2_uid397(BITSELECT,396)@39
    assign seMsb_to2_uid397_in = $unsigned({{1{xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b[0]}}, xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b});
    assign seMsb_to2_uid397_b = $unsigned(seMsb_to2_uid397_in[1:0]);

    // rightShiftStage0Idx2Rng2_uid398_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,397)@39
    assign rightShiftStage0Idx2Rng2_uid398_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftInput_uid163_i_div_if_loop_330_b[64:2]);

    // rightShiftStage0Idx2_uid399_prodPostRightShift_uid164_i_div_if_loop_330(BITJOIN,398)@39
    assign rightShiftStage0Idx2_uid399_prodPostRightShift_uid164_i_div_if_loop_330_q = {seMsb_to2_uid397_b, rightShiftStage0Idx2Rng2_uid398_prodPostRightShift_uid164_i_div_if_loop_330_b};

    // rightShiftStage0Idx1Rng1_uid395_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,394)@39
    assign rightShiftStage0Idx1Rng1_uid395_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftInput_uid163_i_div_if_loop_330_b[64:1]);

    // rightShiftStage0Idx1_uid396_prodPostRightShift_uid164_i_div_if_loop_330(BITJOIN,395)@39
    assign rightShiftStage0Idx1_uid396_prodPostRightShift_uid164_i_div_if_loop_330_q = {xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b, rightShiftStage0Idx1Rng1_uid395_prodPostRightShift_uid164_i_div_if_loop_330_b};

    // rightShiftStage0_uid404_prodPostRightShift_uid164_i_div_if_loop_330(MUX,403)@39
    assign rightShiftStage0_uid404_prodPostRightShift_uid164_i_div_if_loop_330_s = rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_b;
    always @(rightShiftStage0_uid404_prodPostRightShift_uid164_i_div_if_loop_330_s or rightShiftInput_uid163_i_div_if_loop_330_b or rightShiftStage0Idx1_uid396_prodPostRightShift_uid164_i_div_if_loop_330_q or rightShiftStage0Idx2_uid399_prodPostRightShift_uid164_i_div_if_loop_330_q or rightShiftStage0Idx3_uid402_prodPostRightShift_uid164_i_div_if_loop_330_q)
    begin
        unique case (rightShiftStage0_uid404_prodPostRightShift_uid164_i_div_if_loop_330_s)
            2'b00 : rightShiftStage0_uid404_prodPostRightShift_uid164_i_div_if_loop_330_q = rightShiftInput_uid163_i_div_if_loop_330_b;
            2'b01 : rightShiftStage0_uid404_prodPostRightShift_uid164_i_div_if_loop_330_q = rightShiftStage0Idx1_uid396_prodPostRightShift_uid164_i_div_if_loop_330_q;
            2'b10 : rightShiftStage0_uid404_prodPostRightShift_uid164_i_div_if_loop_330_q = rightShiftStage0Idx2_uid399_prodPostRightShift_uid164_i_div_if_loop_330_q;
            2'b11 : rightShiftStage0_uid404_prodPostRightShift_uid164_i_div_if_loop_330_q = rightShiftStage0Idx3_uid402_prodPostRightShift_uid164_i_div_if_loop_330_q;
            default : rightShiftStage0_uid404_prodPostRightShift_uid164_i_div_if_loop_330_q = 65'b0;
        endcase
    end

    // redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_notEnable(LOGICAL,554)
    assign redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_notEnable_q = $unsigned(~ (VCC_q));

    // redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_nor(LOGICAL,555)
    assign redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_nor_q = ~ (redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_notEnable_q | redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_sticky_ena_q);

    // redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_last(CONSTANT,551)
    assign redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_last_q = $unsigned(5'b01111);

    // redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_cmp(LOGICAL,552)
    assign redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_cmp_q = $unsigned(redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_last_q == redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_rdcnt_q ? 1'b1 : 1'b0);

    // redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_cmpReg(REG,553)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_cmpReg_q <= $unsigned(redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_cmp_q);
        end
    end

    // redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_sticky_ena(REG,556)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_nor_q == 1'b1)
        begin
            redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_sticky_ena_q <= $unsigned(redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_cmpReg_q);
        end
    end

    // redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_enaAnd(LOGICAL,557)
    assign redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_enaAnd_q = redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_sticky_ena_q & VCC_q;

    // redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_rdcnt(COUNTER,549)
    // low=0, high=16, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_rdcnt_i <= 5'd0;
            redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_rdcnt_i == 5'd15)
            begin
                redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_rdcnt_eq <= 1'b0;
            end
            if (redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_rdcnt_eq == 1'b1)
            begin
                redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_rdcnt_i <= $unsigned(redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_rdcnt_i) + $unsigned(5'd16);
            end
            else
            begin
                redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_rdcnt_i <= $unsigned(redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_rdcnt_q = redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_rdcnt_i[4:0];

    // redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_wraddr(REG,550)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_wraddr_q <= $unsigned(5'b10000);
        end
        else
        begin
            redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_wraddr_q <= $unsigned(redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_rdcnt_q);
        end
    end

    // redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem(DUALMEM,548)
    assign redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_ia = $unsigned(redist15_r_uid241_zCount_uid139_i_div_if_loop_330_q_1_q);
    assign redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_aa = redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_wraddr_q;
    assign redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_ab = redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_rdcnt_q;
    assign redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(6),
        .widthad_a(5),
        .numwords_a(17),
        .width_b(6),
        .widthad_b(5),
        .numwords_b(17),
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
        .intended_device_family("Cyclone 10 GX")
    ) redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_dmem (
        .clocken1(redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_reset0),
        .clock1(clock),
        .address_a(redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_aa),
        .data_a(redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_ab),
        .q_b(redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_iq),
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
    assign redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_q = redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_iq[5:0];

    // cWOut_uid155_i_div_if_loop_330(CONSTANT,154)
    assign cWOut_uid155_i_div_if_loop_330_q = $unsigned(6'b100000);

    // rShiftCount_uid156_i_div_if_loop_330(SUB,155)@39
    assign rShiftCount_uid156_i_div_if_loop_330_a = {1'b0, cWOut_uid155_i_div_if_loop_330_q};
    assign rShiftCount_uid156_i_div_if_loop_330_b = {1'b0, redist16_r_uid241_zCount_uid139_i_div_if_loop_330_q_19_mem_q};
    assign rShiftCount_uid156_i_div_if_loop_330_o = $unsigned(rShiftCount_uid156_i_div_if_loop_330_a) - $unsigned(rShiftCount_uid156_i_div_if_loop_330_b);
    assign rShiftCount_uid156_i_div_if_loop_330_q = rShiftCount_uid156_i_div_if_loop_330_o[6:0];

    // rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select(BITSELECT,463)@39
    assign rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_b = rShiftCount_uid156_i_div_if_loop_330_q[1:0];
    assign rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_c = rShiftCount_uid156_i_div_if_loop_330_q[3:2];
    assign rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_d = rShiftCount_uid156_i_div_if_loop_330_q[5:4];
    assign rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_e = rShiftCount_uid156_i_div_if_loop_330_q[6:6];

    // rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330(MUX,414)@39 + 1
    assign rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_s = rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_q <= 65'b0;
        end
        else
        begin
            unique case (rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_s)
                2'b00 : rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_q <= rightShiftStage0_uid404_prodPostRightShift_uid164_i_div_if_loop_330_q;
                2'b01 : rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_q <= rightShiftStage1Idx1_uid407_prodPostRightShift_uid164_i_div_if_loop_330_q;
                2'b10 : rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_q <= rightShiftStage1Idx2_uid410_prodPostRightShift_uid164_i_div_if_loop_330_q;
                2'b11 : rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_q <= rightShiftStage1Idx3_uid413_prodPostRightShift_uid164_i_div_if_loop_330_q;
                default : rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_q <= 65'b0;
            endcase
        end
    end

    // redist2_rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_d_1(DELAY,474)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_d_1_q <= '0;
        end
        else
        begin
            redist2_rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_d_1_q <= $unsigned(rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_d);
        end
    end

    // rightShiftStage2_uid426_prodPostRightShift_uid164_i_div_if_loop_330(MUX,425)@40
    assign rightShiftStage2_uid426_prodPostRightShift_uid164_i_div_if_loop_330_s = redist2_rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_d_1_q;
    always @(rightShiftStage2_uid426_prodPostRightShift_uid164_i_div_if_loop_330_s or rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_q or rightShiftStage2Idx1_uid418_prodPostRightShift_uid164_i_div_if_loop_330_q or rightShiftStage2Idx2_uid421_prodPostRightShift_uid164_i_div_if_loop_330_q or rightShiftStage2Idx3_uid424_prodPostRightShift_uid164_i_div_if_loop_330_q)
    begin
        unique case (rightShiftStage2_uid426_prodPostRightShift_uid164_i_div_if_loop_330_s)
            2'b00 : rightShiftStage2_uid426_prodPostRightShift_uid164_i_div_if_loop_330_q = rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_q;
            2'b01 : rightShiftStage2_uid426_prodPostRightShift_uid164_i_div_if_loop_330_q = rightShiftStage2Idx1_uid418_prodPostRightShift_uid164_i_div_if_loop_330_q;
            2'b10 : rightShiftStage2_uid426_prodPostRightShift_uid164_i_div_if_loop_330_q = rightShiftStage2Idx2_uid421_prodPostRightShift_uid164_i_div_if_loop_330_q;
            2'b11 : rightShiftStage2_uid426_prodPostRightShift_uid164_i_div_if_loop_330_q = rightShiftStage2Idx3_uid424_prodPostRightShift_uid164_i_div_if_loop_330_q;
            default : rightShiftStage2_uid426_prodPostRightShift_uid164_i_div_if_loop_330_q = 65'b0;
        endcase
    end

    // redist3_rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_e_1(DELAY,475)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_e_1_q <= '0;
        end
        else
        begin
            redist3_rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_e_1_q <= $unsigned(rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_e);
        end
    end

    // rightShiftStage3_uid431_prodPostRightShift_uid164_i_div_if_loop_330(MUX,430)@40
    assign rightShiftStage3_uid431_prodPostRightShift_uid164_i_div_if_loop_330_s = redist3_rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_e_1_q;
    always @(rightShiftStage3_uid431_prodPostRightShift_uid164_i_div_if_loop_330_s or rightShiftStage2_uid426_prodPostRightShift_uid164_i_div_if_loop_330_q or rightShiftStage3Idx1_uid429_prodPostRightShift_uid164_i_div_if_loop_330_q)
    begin
        unique case (rightShiftStage3_uid431_prodPostRightShift_uid164_i_div_if_loop_330_s)
            1'b0 : rightShiftStage3_uid431_prodPostRightShift_uid164_i_div_if_loop_330_q = rightShiftStage2_uid426_prodPostRightShift_uid164_i_div_if_loop_330_q;
            1'b1 : rightShiftStage3_uid431_prodPostRightShift_uid164_i_div_if_loop_330_q = rightShiftStage3Idx1_uid429_prodPostRightShift_uid164_i_div_if_loop_330_q;
            default : rightShiftStage3_uid431_prodPostRightShift_uid164_i_div_if_loop_330_q = 65'b0;
        endcase
    end

    // prodPostRightShiftPost_uid165_i_div_if_loop_330(BITSELECT,164)@40
    assign prodPostRightShiftPost_uid165_i_div_if_loop_330_in = rightShiftStage3_uid431_prodPostRightShift_uid164_i_div_if_loop_330_q[62:0];
    assign prodPostRightShiftPost_uid165_i_div_if_loop_330_b = prodPostRightShiftPost_uid165_i_div_if_loop_330_in[62:30];

    // prodPostRightShiftPostRnd_uid167_i_div_if_loop_330(ADD,166)@40
    assign prodPostRightShiftPostRnd_uid167_i_div_if_loop_330_a = {1'b0, prodPostRightShiftPost_uid165_i_div_if_loop_330_b};
    assign prodPostRightShiftPostRnd_uid167_i_div_if_loop_330_b = {33'b000000000000000000000000000000000, VCC_q};
    assign prodPostRightShiftPostRnd_uid167_i_div_if_loop_330_o = $unsigned(prodPostRightShiftPostRnd_uid167_i_div_if_loop_330_a) + $unsigned(prodPostRightShiftPostRnd_uid167_i_div_if_loop_330_b);
    assign prodPostRightShiftPostRnd_uid167_i_div_if_loop_330_q = prodPostRightShiftPostRnd_uid167_i_div_if_loop_330_o[33:0];

    // prodPostRightShiftPostRndRange_uid168_i_div_if_loop_330(BITSELECT,167)@40
    assign prodPostRightShiftPostRndRange_uid168_i_div_if_loop_330_in = prodPostRightShiftPostRnd_uid167_i_div_if_loop_330_q[32:0];
    assign prodPostRightShiftPostRndRange_uid168_i_div_if_loop_330_b = prodPostRightShiftPostRndRange_uid168_i_div_if_loop_330_in[32:1];

    // redist21_prodPostRightShiftPostRndRange_uid168_i_div_if_loop_330_b_1(DELAY,493)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_prodPostRightShiftPostRndRange_uid168_i_div_if_loop_330_b_1_q <= '0;
        end
        else
        begin
            redist21_prodPostRightShiftPostRndRange_uid168_i_div_if_loop_330_b_1_q <= $unsigned(prodPostRightShiftPostRndRange_uid168_i_div_if_loop_330_b);
        end
    end

    // redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_notEnable(LOGICAL,568)
    assign redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_notEnable_q = $unsigned(~ (VCC_q));

    // redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_nor(LOGICAL,569)
    assign redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_nor_q = ~ (redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_notEnable_q | redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_sticky_ena_q);

    // redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_last(CONSTANT,565)
    assign redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_last_q = $unsigned(6'b010010);

    // redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_cmp(LOGICAL,566)
    assign redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_cmp_b = {1'b0, redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_rdcnt_q};
    assign redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_cmp_q = $unsigned(redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_last_q == redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_cmp_b ? 1'b1 : 1'b0);

    // redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_cmpReg(REG,567)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_cmpReg_q <= $unsigned(redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_cmp_q);
        end
    end

    // redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_sticky_ena(REG,570)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_nor_q == 1'b1)
        begin
            redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_sticky_ena_q <= $unsigned(redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_cmpReg_q);
        end
    end

    // redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_enaAnd(LOGICAL,571)
    assign redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_enaAnd_q = redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_sticky_ena_q & VCC_q;

    // redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_rdcnt(COUNTER,563)
    // low=0, high=19, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_rdcnt_i <= 5'd0;
            redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_rdcnt_i == 5'd18)
            begin
                redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_rdcnt_eq <= 1'b0;
            end
            if (redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_rdcnt_eq == 1'b1)
            begin
                redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_rdcnt_i <= $unsigned(redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_rdcnt_i) + $unsigned(5'd13);
            end
            else
            begin
                redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_rdcnt_i <= $unsigned(redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_rdcnt_q = redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_rdcnt_i[4:0];

    // redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_inputreg0(DELAY,560)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_inputreg0_q <= '0;
        end
        else
        begin
            redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_inputreg0_q <= $unsigned(redist36_bgTrunc_i_sub_if_loop_326_sel_x_b_1_q);
        end
    end

    // redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_wraddr(REG,564)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_wraddr_q <= $unsigned(5'b10011);
        end
        else
        begin
            redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_wraddr_q <= $unsigned(redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_rdcnt_q);
        end
    end

    // redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem(DUALMEM,562)
    assign redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_ia = $unsigned(redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_inputreg0_q);
    assign redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_aa = redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_wraddr_q;
    assign redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_ab = redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_rdcnt_q;
    assign redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(20),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(20),
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
        .intended_device_family("Cyclone 10 GX")
    ) redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_dmem (
        .clocken1(redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_reset0),
        .clock1(clock),
        .address_a(redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_aa),
        .data_a(redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_ab),
        .q_b(redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_iq),
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
    assign redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_q = redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_iq[31:0];

    // redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_outputreg0(DELAY,561)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_outputreg0_q <= '0;
        end
        else
        begin
            redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_outputreg0_q <= $unsigned(redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_mem_q);
        end
    end

    // yIsZero_uid147_i_div_if_loop_330(LOGICAL,146)@41
    assign yIsZero_uid147_i_div_if_loop_330_b = {31'b0000000000000000000000000000000, GND_q};
    assign yIsZero_uid147_i_div_if_loop_330_q = $unsigned(redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_outputreg0_q == yIsZero_uid147_i_div_if_loop_330_b ? 1'b1 : 1'b0);

    // resFinal_uid173_i_div_if_loop_330(MUX,172)@41
    assign resFinal_uid173_i_div_if_loop_330_s = yIsZero_uid147_i_div_if_loop_330_q;
    always @(resFinal_uid173_i_div_if_loop_330_s or redist21_prodPostRightShiftPostRndRange_uid168_i_div_if_loop_330_b_1_q or cstOvf_uid172_i_div_if_loop_330_q)
    begin
        unique case (resFinal_uid173_i_div_if_loop_330_s)
            1'b0 : resFinal_uid173_i_div_if_loop_330_q = redist21_prodPostRightShiftPostRndRange_uid168_i_div_if_loop_330_b_1_q;
            1'b1 : resFinal_uid173_i_div_if_loop_330_q = cstOvf_uid172_i_div_if_loop_330_q;
            default : resFinal_uid173_i_div_if_loop_330_q = 32'b0;
        endcase
    end

    // redist19_resFinal_uid173_i_div_if_loop_330_q_4_inputreg0(DELAY,558)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_resFinal_uid173_i_div_if_loop_330_q_4_inputreg0_q <= '0;
        end
        else
        begin
            redist19_resFinal_uid173_i_div_if_loop_330_q_4_inputreg0_q <= $unsigned(resFinal_uid173_i_div_if_loop_330_q);
        end
    end

    // redist19_resFinal_uid173_i_div_if_loop_330_q_4(DELAY,491)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_resFinal_uid173_i_div_if_loop_330_q_4_delay_0 <= '0;
            redist19_resFinal_uid173_i_div_if_loop_330_q_4_q <= '0;
        end
        else
        begin
            redist19_resFinal_uid173_i_div_if_loop_330_q_4_delay_0 <= $unsigned(redist19_resFinal_uid173_i_div_if_loop_330_q_4_inputreg0_q);
            redist19_resFinal_uid173_i_div_if_loop_330_q_4_q <= redist19_resFinal_uid173_i_div_if_loop_330_q_4_delay_0;
        end
    end

    // redist19_resFinal_uid173_i_div_if_loop_330_q_4_outputreg0(DELAY,559)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_resFinal_uid173_i_div_if_loop_330_q_4_outputreg0_q <= '0;
        end
        else
        begin
            redist19_resFinal_uid173_i_div_if_loop_330_q_4_outputreg0_q <= $unsigned(redist19_resFinal_uid173_i_div_if_loop_330_q_4_q);
        end
    end

    // signResFinal_uid182_i_div_if_loop_330(BITSELECT,181)@45
    assign signResFinal_uid182_i_div_if_loop_330_b = $unsigned(redist19_resFinal_uid173_i_div_if_loop_330_q_4_outputreg0_q[31:31]);

    // OverflowCond_uid183_i_div_if_loop_330(LOGICAL,182)@45
    assign OverflowCond_uid183_i_div_if_loop_330_q = redist20_signX_uid171_i_div_if_loop_330_b_4_q & redist27_xMSB_uid133_i_div_if_loop_330_b_27_q & signResFinal_uid182_i_div_if_loop_330_b;

    // redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_notEnable(LOGICAL,599)
    assign redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_nor(LOGICAL,600)
    assign redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_nor_q = ~ (redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_notEnable_q | redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_sticky_ena_q);

    // redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_cmpReg(REG,598)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_sticky_ena(REG,601)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_nor_q == 1'b1)
        begin
            redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_sticky_ena_q <= $unsigned(redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_cmpReg_q);
        end
    end

    // redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_enaAnd(LOGICAL,602)
    assign redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_enaAnd_q = redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_sticky_ena_q & VCC_q;

    // redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_rdcnt(COUNTER,596)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_rdcnt_i <= $unsigned(redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_rdcnt_q = redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_rdcnt_i[0:0];

    // redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_wraddr(REG,597)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_wraddr_q <= $unsigned(redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_rdcnt_q);
        end
    end

    // redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_mem(DUALMEM,595)
    assign redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_mem_ia = $unsigned(redist39_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_q);
    assign redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_mem_aa = redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_wraddr_q;
    assign redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_mem_ab = redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_rdcnt_q;
    assign redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
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
        .intended_device_family("Cyclone 10 GX")
    ) redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_mem_dmem (
        .clocken1(redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_mem_reset0),
        .clock1(clock),
        .address_a(redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_mem_aa),
        .data_a(redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_mem_ab),
        .q_b(redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_mem_iq),
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
    assign redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_mem_q = redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_mem_iq[31:0];

    // redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_outputreg0(DELAY,594)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_outputreg0_q <= '0;
        end
        else
        begin
            redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_outputreg0_q <= $unsigned(redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_mem_q);
        end
    end

    // prodResY_uid174_i_div_if_loop_330_bs4(BITSELECT,436)@41
    assign prodResY_uid174_i_div_if_loop_330_bs4_in = $unsigned(resFinal_uid173_i_div_if_loop_330_q[17:0]);
    assign prodResY_uid174_i_div_if_loop_330_bs4_b = $unsigned(prodResY_uid174_i_div_if_loop_330_bs4_in[17:0]);

    // prodResY_uid174_i_div_if_loop_330_bs2(BITSELECT,434)@41
    assign prodResY_uid174_i_div_if_loop_330_bs2_b = $unsigned(redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_outputreg0_q[31:18]);

    // prodResY_uid174_i_div_if_loop_330_bs7(BITSELECT,439)@41
    assign prodResY_uid174_i_div_if_loop_330_bs7_in = $unsigned(redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_outputreg0_q[17:0]);
    assign prodResY_uid174_i_div_if_loop_330_bs7_b = $unsigned(prodResY_uid174_i_div_if_loop_330_bs7_in[17:0]);

    // prodResY_uid174_i_div_if_loop_330_bs1(BITSELECT,433)@41
    assign prodResY_uid174_i_div_if_loop_330_bs1_b = $unsigned(resFinal_uid173_i_div_if_loop_330_q[31:18]);

    // prodResY_uid174_i_div_if_loop_330_ma3_cma(CHAINMULTADD,460)@41 + 3
    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_reset = ~ (resetn);
    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_ena0 = 1'b1;
    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_ena1 = prodResY_uid174_i_div_if_loop_330_ma3_cma_ena0;
    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_ena2 = prodResY_uid174_i_div_if_loop_330_ma3_cma_ena0;

    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_a0 = $unsigned(prodResY_uid174_i_div_if_loop_330_bs1_b);
    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_c0 = prodResY_uid174_i_div_if_loop_330_bs7_b;
    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_a1 = $unsigned(prodResY_uid174_i_div_if_loop_330_bs2_b);
    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_c1 = prodResY_uid174_i_div_if_loop_330_bs4_b;
    cyclone10gx_mac #(
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
    ) prodResY_uid174_i_div_if_loop_330_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodResY_uid174_i_div_if_loop_330_ma3_cma_ena2, prodResY_uid174_i_div_if_loop_330_ma3_cma_ena1, prodResY_uid174_i_div_if_loop_330_ma3_cma_ena0 }),
        .aclr({ prodResY_uid174_i_div_if_loop_330_ma3_cma_reset, prodResY_uid174_i_div_if_loop_330_ma3_cma_reset }),
        .ay(prodResY_uid174_i_div_if_loop_330_ma3_cma_a1),
        .by(prodResY_uid174_i_div_if_loop_330_ma3_cma_a0),
        .ax(prodResY_uid174_i_div_if_loop_330_ma3_cma_c1),
        .bx(prodResY_uid174_i_div_if_loop_330_ma3_cma_c0),
        .resulta(prodResY_uid174_i_div_if_loop_330_ma3_cma_s0),
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
    prodResY_uid174_i_div_if_loop_330_ma3_cma_delay ( .xin(prodResY_uid174_i_div_if_loop_330_ma3_cma_s0), .xout(prodResY_uid174_i_div_if_loop_330_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_q = $unsigned(prodResY_uid174_i_div_if_loop_330_ma3_cma_qq[32:0]);

    // prodResY_uid174_i_div_if_loop_330_sums_align_1(BITSHIFT,444)@44
    assign prodResY_uid174_i_div_if_loop_330_sums_align_1_qint = { prodResY_uid174_i_div_if_loop_330_ma3_cma_q, 18'b000000000000000000 };
    assign prodResY_uid174_i_div_if_loop_330_sums_align_1_q = prodResY_uid174_i_div_if_loop_330_sums_align_1_qint[50:0];

    // prodResY_uid174_i_div_if_loop_330_im0_cma(CHAINMULTADD,456)@41 + 3
    assign prodResY_uid174_i_div_if_loop_330_im0_cma_reset = ~ (resetn);
    assign prodResY_uid174_i_div_if_loop_330_im0_cma_ena0 = 1'b1;
    assign prodResY_uid174_i_div_if_loop_330_im0_cma_ena1 = prodResY_uid174_i_div_if_loop_330_im0_cma_ena0;
    assign prodResY_uid174_i_div_if_loop_330_im0_cma_ena2 = prodResY_uid174_i_div_if_loop_330_im0_cma_ena0;

    assign prodResY_uid174_i_div_if_loop_330_im0_cma_a0 = $unsigned(prodResY_uid174_i_div_if_loop_330_bs1_b);
    assign prodResY_uid174_i_div_if_loop_330_im0_cma_c0 = $unsigned(prodResY_uid174_i_div_if_loop_330_bs2_b);
    cyclone10gx_mac #(
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
    ) prodResY_uid174_i_div_if_loop_330_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodResY_uid174_i_div_if_loop_330_im0_cma_ena2, prodResY_uid174_i_div_if_loop_330_im0_cma_ena1, prodResY_uid174_i_div_if_loop_330_im0_cma_ena0 }),
        .aclr({ prodResY_uid174_i_div_if_loop_330_im0_cma_reset, prodResY_uid174_i_div_if_loop_330_im0_cma_reset }),
        .ay(prodResY_uid174_i_div_if_loop_330_im0_cma_a0),
        .ax(prodResY_uid174_i_div_if_loop_330_im0_cma_c0),
        .resulta(prodResY_uid174_i_div_if_loop_330_im0_cma_s0),
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
    prodResY_uid174_i_div_if_loop_330_im0_cma_delay ( .xin(prodResY_uid174_i_div_if_loop_330_im0_cma_s0), .xout(prodResY_uid174_i_div_if_loop_330_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodResY_uid174_i_div_if_loop_330_im0_cma_q = $unsigned(prodResY_uid174_i_div_if_loop_330_im0_cma_qq[27:0]);

    // prodResY_uid174_i_div_if_loop_330_im8_cma(CHAINMULTADD,457)@41 + 3
    assign prodResY_uid174_i_div_if_loop_330_im8_cma_reset = ~ (resetn);
    assign prodResY_uid174_i_div_if_loop_330_im8_cma_ena0 = 1'b1;
    assign prodResY_uid174_i_div_if_loop_330_im8_cma_ena1 = prodResY_uid174_i_div_if_loop_330_im8_cma_ena0;
    assign prodResY_uid174_i_div_if_loop_330_im8_cma_ena2 = prodResY_uid174_i_div_if_loop_330_im8_cma_ena0;

    assign prodResY_uid174_i_div_if_loop_330_im8_cma_a0 = prodResY_uid174_i_div_if_loop_330_bs4_b;
    assign prodResY_uid174_i_div_if_loop_330_im8_cma_c0 = prodResY_uid174_i_div_if_loop_330_bs7_b;
    cyclone10gx_mac #(
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
    ) prodResY_uid174_i_div_if_loop_330_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ prodResY_uid174_i_div_if_loop_330_im8_cma_ena2, prodResY_uid174_i_div_if_loop_330_im8_cma_ena1, prodResY_uid174_i_div_if_loop_330_im8_cma_ena0 }),
        .aclr({ prodResY_uid174_i_div_if_loop_330_im8_cma_reset, prodResY_uid174_i_div_if_loop_330_im8_cma_reset }),
        .ay(prodResY_uid174_i_div_if_loop_330_im8_cma_a0),
        .ax(prodResY_uid174_i_div_if_loop_330_im8_cma_c0),
        .resulta(prodResY_uid174_i_div_if_loop_330_im8_cma_s0),
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
    prodResY_uid174_i_div_if_loop_330_im8_cma_delay ( .xin(prodResY_uid174_i_div_if_loop_330_im8_cma_s0), .xout(prodResY_uid174_i_div_if_loop_330_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodResY_uid174_i_div_if_loop_330_im8_cma_q = $unsigned(prodResY_uid174_i_div_if_loop_330_im8_cma_qq[35:0]);

    // prodResY_uid174_i_div_if_loop_330_sums_join_0(BITJOIN,443)@44
    assign prodResY_uid174_i_div_if_loop_330_sums_join_0_q = {prodResY_uid174_i_div_if_loop_330_im0_cma_q, prodResY_uid174_i_div_if_loop_330_im8_cma_q};

    // prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0(ADD,446)@44 + 1
    assign prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_a = $unsigned({{1{prodResY_uid174_i_div_if_loop_330_sums_join_0_q[63]}}, prodResY_uid174_i_div_if_loop_330_sums_join_0_q});
    assign prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_b = $unsigned({{14{prodResY_uid174_i_div_if_loop_330_sums_align_1_q[50]}}, prodResY_uid174_i_div_if_loop_330_sums_align_1_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_o <= 65'b0;
        end
        else
        begin
            prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_o <= $unsigned($signed(prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_a) + $signed(prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_b));
        end
    end
    assign prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_q = prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_o[64:0];

    // prod_qy_LT_x_uid176_i_div_if_loop_330(COMPARE,175)@45
    assign prod_qy_LT_x_uid176_i_div_if_loop_330_a = $unsigned({{1{prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_q[64]}}, prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_q});
    assign prod_qy_LT_x_uid176_i_div_if_loop_330_b = $unsigned({{34{redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_outputreg0_q[31]}}, redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_outputreg0_q});
    assign prod_qy_LT_x_uid176_i_div_if_loop_330_o = $unsigned($signed(prod_qy_LT_x_uid176_i_div_if_loop_330_a) - $signed(prod_qy_LT_x_uid176_i_div_if_loop_330_b));
    assign prod_qy_LT_x_uid176_i_div_if_loop_330_c[0] = prod_qy_LT_x_uid176_i_div_if_loop_330_o[65];

    // CondNegX_uid184_i_div_if_loop_330(LOGICAL,183)@45
    assign CondNegX_uid184_i_div_if_loop_330_q = prod_qy_LT_x_uid176_i_div_if_loop_330_c & redist20_signX_uid171_i_div_if_loop_330_b_4_q;

    // invSignX_uid185_i_div_if_loop_330(LOGICAL,184)@45
    assign invSignX_uid185_i_div_if_loop_330_q = ~ (redist20_signX_uid171_i_div_if_loop_330_b_4_q);

    // prod_qy_GT_x_uid175_i_div_if_loop_330(COMPARE,174)@45
    assign prod_qy_GT_x_uid175_i_div_if_loop_330_a = $unsigned({{34{redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_outputreg0_q[31]}}, redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_outputreg0_q});
    assign prod_qy_GT_x_uid175_i_div_if_loop_330_b = $unsigned({{1{prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_q[64]}}, prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_q});
    assign prod_qy_GT_x_uid175_i_div_if_loop_330_o = $unsigned($signed(prod_qy_GT_x_uid175_i_div_if_loop_330_a) - $signed(prod_qy_GT_x_uid175_i_div_if_loop_330_b));
    assign prod_qy_GT_x_uid175_i_div_if_loop_330_c[0] = prod_qy_GT_x_uid175_i_div_if_loop_330_o[65];

    // CondPosX_uid186_i_div_if_loop_330(LOGICAL,185)@45
    assign CondPosX_uid186_i_div_if_loop_330_q = prod_qy_GT_x_uid175_i_div_if_loop_330_c & invSignX_uid185_i_div_if_loop_330_q;

    // postMuxSelect_uid187_i_div_if_loop_330(LOGICAL,186)@45
    assign postMuxSelect_uid187_i_div_if_loop_330_q = CondPosX_uid186_i_div_if_loop_330_q | CondNegX_uid184_i_div_if_loop_330_q | OverflowCond_uid183_i_div_if_loop_330_q;

    // resFinalIntDiv_uid192_i_div_if_loop_330(MUX,191)@45 + 1
    assign resFinalIntDiv_uid192_i_div_if_loop_330_s = postMuxSelect_uid187_i_div_if_loop_330_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            resFinalIntDiv_uid192_i_div_if_loop_330_q <= 32'b0;
        end
        else
        begin
            unique case (resFinalIntDiv_uid192_i_div_if_loop_330_s)
                1'b0 : resFinalIntDiv_uid192_i_div_if_loop_330_q <= redist19_resFinal_uid173_i_div_if_loop_330_q_4_outputreg0_q;
                1'b1 : resFinalIntDiv_uid192_i_div_if_loop_330_q <= resFinalPostMux_uid191_i_div_if_loop_330_b;
                default : resFinalIntDiv_uid192_i_div_if_loop_330_q <= 32'b0;
            endcase
        end
    end

    // redist41_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_10(DELAY,513)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_10_q <= '0;
        end
        else
        begin
            redist41_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_10_q <= $unsigned(redist40_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_outputreg0_q);
        end
    end

    // i_cmp2_if_loop_327(COMPARE,40)@41 + 1
    assign i_cmp2_if_loop_327_a = $unsigned({{2{c_i32_175_recast_x_q[31]}}, c_i32_175_recast_x_q});
    assign i_cmp2_if_loop_327_b = $unsigned({{2{redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_outputreg0_q[31]}}, redist37_bgTrunc_i_sub_if_loop_326_sel_x_b_24_outputreg0_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp2_if_loop_327_o <= 34'b0;
        end
        else
        begin
            i_cmp2_if_loop_327_o <= $unsigned($signed(i_cmp2_if_loop_327_a) - $signed(i_cmp2_if_loop_327_b));
        end
    end
    assign i_cmp2_if_loop_327_c[0] = i_cmp2_if_loop_327_o[33];

    // redist45_i_cmp2_if_loop_327_c_5(DELAY,517)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_cmp2_if_loop_327_c_5_delay_0 <= '0;
            redist45_i_cmp2_if_loop_327_c_5_delay_1 <= '0;
            redist45_i_cmp2_if_loop_327_c_5_delay_2 <= '0;
            redist45_i_cmp2_if_loop_327_c_5_q <= '0;
        end
        else
        begin
            redist45_i_cmp2_if_loop_327_c_5_delay_0 <= $unsigned(i_cmp2_if_loop_327_c);
            redist45_i_cmp2_if_loop_327_c_5_delay_1 <= redist45_i_cmp2_if_loop_327_c_5_delay_0;
            redist45_i_cmp2_if_loop_327_c_5_delay_2 <= redist45_i_cmp2_if_loop_327_c_5_delay_1;
            redist45_i_cmp2_if_loop_327_c_5_q <= redist45_i_cmp2_if_loop_327_c_5_delay_2;
        end
    end

    // i_acl_if_loop_331(MUX,36)@46
    assign i_acl_if_loop_331_s = redist45_i_cmp2_if_loop_327_c_5_q;
    always @(i_acl_if_loop_331_s or redist41_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_10_q or resFinalIntDiv_uid192_i_div_if_loop_330_q)
    begin
        unique case (i_acl_if_loop_331_s)
            1'b0 : i_acl_if_loop_331_q = redist41_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_10_q;
            1'b1 : i_acl_if_loop_331_q = resFinalIntDiv_uid192_i_div_if_loop_330_q;
            default : i_acl_if_loop_331_q = 32'b0;
        endcase
    end

    // redist44_i_first_cleanup_xor_if_loop_34_q_34(DELAY,516)
    dspba_delay_ver #( .width(1), .depth(34), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist44_i_first_cleanup_xor_if_loop_34_q_34 ( .xin(i_first_cleanup_xor_if_loop_34_q), .xout(redist44_i_first_cleanup_xor_if_loop_34_q_34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_39_if_loop_346(BLACKBOX,56)@46
    // out out_intel_reserved_ffwd_4_0@20000000
    if_loop_3_i_llvm_fpga_ffwd_source_i32_unnamed_9_if_loop_30 thei_llvm_fpga_ffwd_source_i32_unnamed_if_loop_39_if_loop_346 (
        .in_predicate_in(redist44_i_first_cleanup_xor_if_loop_34_q_34_q),
        .in_src_data_in_4_0(i_acl_if_loop_331_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_39_if_loop_346_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,96)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_39_if_loop_346_out_intel_reserved_ffwd_4_0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,105)
    assign out_lm1_if_loop_3_avm_address = i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_address;
    assign out_lm1_if_loop_3_avm_enable = i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_enable;
    assign out_lm1_if_loop_3_avm_read = i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_read;
    assign out_lm1_if_loop_3_avm_write = i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_write;
    assign out_lm1_if_loop_3_avm_writedata = i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_writedata;
    assign out_lm1_if_loop_3_avm_byteenable = i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_byteenable;
    assign out_lm1_if_loop_3_avm_burstcount = i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_burstcount;

    // dupName_1_ext_sig_sync_out_x(GPOUT,106)
    assign out_lm22_if_loop_3_avm_address = i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_address;
    assign out_lm22_if_loop_3_avm_enable = i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_enable;
    assign out_lm22_if_loop_3_avm_read = i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_read;
    assign out_lm22_if_loop_3_avm_write = i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_write;
    assign out_lm22_if_loop_3_avm_writedata = i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_writedata;
    assign out_lm22_if_loop_3_avm_byteenable = i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_byteenable;
    assign out_lm22_if_loop_3_avm_burstcount = i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_burstcount;

    // valid_fanout_reg0(REG,193)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist35_sync_together100_aunroll_x_in_i_valid_44_q);
        end
    end

    // redist38_i_masked_if_loop_347_q_34_notEnable(LOGICAL,579)
    assign redist38_i_masked_if_loop_347_q_34_notEnable_q = $unsigned(~ (VCC_q));

    // redist38_i_masked_if_loop_347_q_34_nor(LOGICAL,580)
    assign redist38_i_masked_if_loop_347_q_34_nor_q = ~ (redist38_i_masked_if_loop_347_q_34_notEnable_q | redist38_i_masked_if_loop_347_q_34_sticky_ena_q);

    // redist38_i_masked_if_loop_347_q_34_mem_last(CONSTANT,576)
    assign redist38_i_masked_if_loop_347_q_34_mem_last_q = $unsigned(6'b011101);

    // redist38_i_masked_if_loop_347_q_34_cmp(LOGICAL,577)
    assign redist38_i_masked_if_loop_347_q_34_cmp_b = {1'b0, redist38_i_masked_if_loop_347_q_34_rdcnt_q};
    assign redist38_i_masked_if_loop_347_q_34_cmp_q = $unsigned(redist38_i_masked_if_loop_347_q_34_mem_last_q == redist38_i_masked_if_loop_347_q_34_cmp_b ? 1'b1 : 1'b0);

    // redist38_i_masked_if_loop_347_q_34_cmpReg(REG,578)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_masked_if_loop_347_q_34_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist38_i_masked_if_loop_347_q_34_cmpReg_q <= $unsigned(redist38_i_masked_if_loop_347_q_34_cmp_q);
        end
    end

    // redist38_i_masked_if_loop_347_q_34_sticky_ena(REG,581)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_masked_if_loop_347_q_34_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist38_i_masked_if_loop_347_q_34_nor_q == 1'b1)
        begin
            redist38_i_masked_if_loop_347_q_34_sticky_ena_q <= $unsigned(redist38_i_masked_if_loop_347_q_34_cmpReg_q);
        end
    end

    // redist38_i_masked_if_loop_347_q_34_enaAnd(LOGICAL,582)
    assign redist38_i_masked_if_loop_347_q_34_enaAnd_q = redist38_i_masked_if_loop_347_q_34_sticky_ena_q & VCC_q;

    // redist38_i_masked_if_loop_347_q_34_rdcnt(COUNTER,574)
    // low=0, high=30, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_masked_if_loop_347_q_34_rdcnt_i <= 5'd0;
            redist38_i_masked_if_loop_347_q_34_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist38_i_masked_if_loop_347_q_34_rdcnt_i == 5'd29)
            begin
                redist38_i_masked_if_loop_347_q_34_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist38_i_masked_if_loop_347_q_34_rdcnt_eq <= 1'b0;
            end
            if (redist38_i_masked_if_loop_347_q_34_rdcnt_eq == 1'b1)
            begin
                redist38_i_masked_if_loop_347_q_34_rdcnt_i <= $unsigned(redist38_i_masked_if_loop_347_q_34_rdcnt_i) + $unsigned(5'd2);
            end
            else
            begin
                redist38_i_masked_if_loop_347_q_34_rdcnt_i <= $unsigned(redist38_i_masked_if_loop_347_q_34_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist38_i_masked_if_loop_347_q_34_rdcnt_q = redist38_i_masked_if_loop_347_q_34_rdcnt_i[4:0];

    // i_masked_if_loop_347(LOGICAL,72)@12 + 1
    assign i_masked_if_loop_347_qi = i_notcmp_if_loop_341_q & i_first_cleanup_if_loop_33_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_if_loop_347_delay ( .xin(i_masked_if_loop_347_qi), .xout(i_masked_if_loop_347_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist38_i_masked_if_loop_347_q_34_inputreg0(DELAY,572)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_masked_if_loop_347_q_34_inputreg0_q <= '0;
        end
        else
        begin
            redist38_i_masked_if_loop_347_q_34_inputreg0_q <= $unsigned(i_masked_if_loop_347_q);
        end
    end

    // redist38_i_masked_if_loop_347_q_34_wraddr(REG,575)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_masked_if_loop_347_q_34_wraddr_q <= $unsigned(5'b11110);
        end
        else
        begin
            redist38_i_masked_if_loop_347_q_34_wraddr_q <= $unsigned(redist38_i_masked_if_loop_347_q_34_rdcnt_q);
        end
    end

    // redist38_i_masked_if_loop_347_q_34_mem(DUALMEM,573)
    assign redist38_i_masked_if_loop_347_q_34_mem_ia = $unsigned(redist38_i_masked_if_loop_347_q_34_inputreg0_q);
    assign redist38_i_masked_if_loop_347_q_34_mem_aa = redist38_i_masked_if_loop_347_q_34_wraddr_q;
    assign redist38_i_masked_if_loop_347_q_34_mem_ab = redist38_i_masked_if_loop_347_q_34_rdcnt_q;
    assign redist38_i_masked_if_loop_347_q_34_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(1),
        .widthad_a(5),
        .numwords_a(31),
        .width_b(1),
        .widthad_b(5),
        .numwords_b(31),
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
        .intended_device_family("Cyclone 10 GX")
    ) redist38_i_masked_if_loop_347_q_34_mem_dmem (
        .clocken1(redist38_i_masked_if_loop_347_q_34_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist38_i_masked_if_loop_347_q_34_mem_reset0),
        .clock1(clock),
        .address_a(redist38_i_masked_if_loop_347_q_34_mem_aa),
        .data_a(redist38_i_masked_if_loop_347_q_34_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist38_i_masked_if_loop_347_q_34_mem_ab),
        .q_b(redist38_i_masked_if_loop_347_q_34_mem_iq),
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
    assign redist38_i_masked_if_loop_347_q_34_mem_q = redist38_i_masked_if_loop_347_q_34_mem_iq[0:0];

    // sync_out_aunroll_x(GPOUT,130)@46
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist43_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_34_q;
    assign out_c0_exi2_2_tpl = redist38_i_masked_if_loop_347_q_34_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_if_loop_31 = GND_q;

endmodule
