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
// SystemVerilog created on Wed May 10 20:53:57 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_3_i_sfc_logic_s_c0_in_for_body_s_c0_enter152_if_loop_30 (
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
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_if_loop_337_sel_x_b;
    wire [31:0] bgTrunc_i_inc_if_loop_333_sel_x_b;
    wire [31:0] bgTrunc_i_sub_if_loop_326_sel_x_b;
    wire [31:0] c_i32_175_recast_x_q;
    wire [0:0] i_first_cleanup_if_loop_33_sel_x_b;
    wire [0:0] i_last_initeration_if_loop_310_sel_x_b;
    wire [63:0] i_mptr_bitcast_index25_if_loop_30_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index25_if_loop_30_c_i2_01_x_q;
    wire [63:0] i_mptr_bitcast_index_if_loop_30_dupName_0_trunc_sel_x_b;
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
    wire [0:0] i_unnamed_if_loop_340_q;
    wire [0:0] xMSB_uid133_i_div_if_loop_330_b;
    wire [31:0] yPSE_uid135_i_div_if_loop_330_b;
    wire [31:0] yPSE_uid135_i_div_if_loop_330_qi;
    reg [31:0] yPSE_uid135_i_div_if_loop_330_q;
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
    wire [0:0] resultSign_uid181_i_div_if_loop_330_qi;
    reg [0:0] resultSign_uid181_i_div_if_loop_330_q;
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
    wire [0:0] vCount_uid216_zCount_uid139_i_div_if_loop_330_qi;
    reg [0:0] vCount_uid216_zCount_uid139_i_div_if_loop_330_q;
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
    wire [43:0] osig_uid282_pT2_uid266_invPolyEval_in;
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
    wire [2:0] leftShiftStage0Idx1Rng1_uid330_i_cleanups_shl_if_loop_30_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid330_i_cleanups_shl_if_loop_30_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid331_i_cleanups_shl_if_loop_30_shift_x_q;
    wire [0:0] leftShiftStage0_uid333_i_cleanups_shl_if_loop_30_shift_x_s;
    reg [3:0] leftShiftStage0_uid333_i_cleanups_shl_if_loop_30_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid337_i_next_initerations_if_loop_30_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid339_i_next_initerations_if_loop_30_shift_x_q;
    wire [0:0] rightShiftStage0_uid341_i_next_initerations_if_loop_30_shift_x_s;
    reg [3:0] rightShiftStage0_uid341_i_next_initerations_if_loop_30_shift_x_q;
    wire [0:0] i_exitcond_if_loop_335_cmp_nsign_q;
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
    wire [52:0] prodXInvY_uid162_i_div_if_loop_330_sums_align_1_q;
    wire [52:0] prodXInvY_uid162_i_div_if_loop_330_sums_align_1_qint;
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
    wire [17:0] prodResY_uid174_i_div_if_loop_330_bs1_in;
    wire [17:0] prodResY_uid174_i_div_if_loop_330_bs1_b;
    wire [17:0] prodResY_uid174_i_div_if_loop_330_bs2_in;
    wire [17:0] prodResY_uid174_i_div_if_loop_330_bs2_b;
    wire [13:0] prodResY_uid174_i_div_if_loop_330_bs5_b;
    wire [13:0] prodResY_uid174_i_div_if_loop_330_bs6_b;
    wire [50:0] prodResY_uid174_i_div_if_loop_330_sums_align_1_q;
    wire [50:0] prodResY_uid174_i_div_if_loop_330_sums_align_1_qint;
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
    wire [3:0] prodXY_uid281_pT2_uid266_invPolyEval_bjA7_q;
    reg [2:0] prodXY_uid281_pT2_uid266_invPolyEval_im9_a0;
    reg [4:0] prodXY_uid281_pT2_uid266_invPolyEval_im9_b0;
    reg [7:0] prodXY_uid281_pT2_uid266_invPolyEval_im9_s1;
    wire signed [8:0] prodXY_uid281_pT2_uid266_invPolyEval_im9_pr;
    reg [7:0] prodXY_uid281_pT2_uid266_invPolyEval_im9_q;
    wire [43:0] prodXY_uid281_pT2_uid266_invPolyEval_sums_join_0_q;
    wire [41:0] prodXY_uid281_pT2_uid266_invPolyEval_sums_align_1_q;
    wire [41:0] prodXY_uid281_pT2_uid266_invPolyEval_sums_align_1_qint;
    wire [44:0] prodXY_uid281_pT2_uid266_invPolyEval_sums_result_add_0_0_a;
    wire [44:0] prodXY_uid281_pT2_uid266_invPolyEval_sums_result_add_0_0_b;
    logic [44:0] prodXY_uid281_pT2_uid266_invPolyEval_sums_result_add_0_0_o;
    wire [44:0] prodXY_uid281_pT2_uid266_invPolyEval_sums_result_add_0_0_q;
    wire prodXY_uid278_pT1_uid260_invPolyEval_cma_reset;
    (* preserve *) reg [13:0] prodXY_uid278_pT1_uid260_invPolyEval_cma_a0 [0:0];
    (* preserve *) reg signed [13:0] prodXY_uid278_pT1_uid260_invPolyEval_cma_c0 [0:0];
    wire signed [14:0] prodXY_uid278_pT1_uid260_invPolyEval_cma_l [0:0];
    wire signed [28:0] prodXY_uid278_pT1_uid260_invPolyEval_cma_p [0:0];
    wire signed [28:0] prodXY_uid278_pT1_uid260_invPolyEval_cma_u [0:0];
    wire signed [28:0] prodXY_uid278_pT1_uid260_invPolyEval_cma_w [0:0];
    wire signed [28:0] prodXY_uid278_pT1_uid260_invPolyEval_cma_x [0:0];
    wire signed [28:0] prodXY_uid278_pT1_uid260_invPolyEval_cma_y [0:0];
    reg signed [28:0] prodXY_uid278_pT1_uid260_invPolyEval_cma_s [0:0];
    wire [28:0] prodXY_uid278_pT1_uid260_invPolyEval_cma_qq;
    wire [27:0] prodXY_uid278_pT1_uid260_invPolyEval_cma_q;
    wire prodXY_uid278_pT1_uid260_invPolyEval_cma_ena0;
    wire prodXY_uid278_pT1_uid260_invPolyEval_cma_ena1;
    wire sm0_uid310_pT3_uid272_invPolyEval_cma_reset;
    (* preserve *) reg signed [17:0] sm0_uid310_pT3_uid272_invPolyEval_cma_a0 [0:0];
    (* preserve *) reg signed [17:0] sm0_uid310_pT3_uid272_invPolyEval_cma_c0 [0:0];
    wire signed [35:0] sm0_uid310_pT3_uid272_invPolyEval_cma_p [0:0];
    wire signed [35:0] sm0_uid310_pT3_uid272_invPolyEval_cma_u [0:0];
    wire signed [35:0] sm0_uid310_pT3_uid272_invPolyEval_cma_w [0:0];
    wire signed [35:0] sm0_uid310_pT3_uid272_invPolyEval_cma_x [0:0];
    wire signed [35:0] sm0_uid310_pT3_uid272_invPolyEval_cma_y [0:0];
    reg signed [35:0] sm0_uid310_pT3_uid272_invPolyEval_cma_s [0:0];
    wire [35:0] sm0_uid310_pT3_uid272_invPolyEval_cma_qq;
    wire [35:0] sm0_uid310_pT3_uid272_invPolyEval_cma_q;
    wire sm0_uid310_pT3_uid272_invPolyEval_cma_ena0;
    wire sm0_uid310_pT3_uid272_invPolyEval_cma_ena1;
    wire prodXInvY_uid162_i_div_if_loop_330_im0_cma_reset;
    (* preserve *) reg [17:0] prodXInvY_uid162_i_div_if_loop_330_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] prodXInvY_uid162_i_div_if_loop_330_im0_cma_c0 [0:0];
    wire [35:0] prodXInvY_uid162_i_div_if_loop_330_im0_cma_p [0:0];
    wire [35:0] prodXInvY_uid162_i_div_if_loop_330_im0_cma_u [0:0];
    wire [35:0] prodXInvY_uid162_i_div_if_loop_330_im0_cma_w [0:0];
    wire [35:0] prodXInvY_uid162_i_div_if_loop_330_im0_cma_x [0:0];
    wire [35:0] prodXInvY_uid162_i_div_if_loop_330_im0_cma_y [0:0];
    reg [35:0] prodXInvY_uid162_i_div_if_loop_330_im0_cma_s [0:0];
    wire [35:0] prodXInvY_uid162_i_div_if_loop_330_im0_cma_qq;
    wire [35:0] prodXInvY_uid162_i_div_if_loop_330_im0_cma_q;
    wire prodXInvY_uid162_i_div_if_loop_330_im0_cma_ena0;
    wire prodXInvY_uid162_i_div_if_loop_330_im0_cma_ena1;
    wire prodXInvY_uid162_i_div_if_loop_330_im9_cma_reset;
    (* preserve *) reg [14:0] prodXInvY_uid162_i_div_if_loop_330_im9_cma_a0 [0:0];
    (* preserve *) reg signed [14:0] prodXInvY_uid162_i_div_if_loop_330_im9_cma_c0 [0:0];
    wire signed [15:0] prodXInvY_uid162_i_div_if_loop_330_im9_cma_l [0:0];
    wire signed [30:0] prodXInvY_uid162_i_div_if_loop_330_im9_cma_p [0:0];
    wire signed [30:0] prodXInvY_uid162_i_div_if_loop_330_im9_cma_u [0:0];
    wire signed [30:0] prodXInvY_uid162_i_div_if_loop_330_im9_cma_w [0:0];
    wire signed [30:0] prodXInvY_uid162_i_div_if_loop_330_im9_cma_x [0:0];
    wire signed [30:0] prodXInvY_uid162_i_div_if_loop_330_im9_cma_y [0:0];
    reg signed [30:0] prodXInvY_uid162_i_div_if_loop_330_im9_cma_s [0:0];
    wire [30:0] prodXInvY_uid162_i_div_if_loop_330_im9_cma_qq;
    wire [29:0] prodXInvY_uid162_i_div_if_loop_330_im9_cma_q;
    wire prodXInvY_uid162_i_div_if_loop_330_im9_cma_ena0;
    wire prodXInvY_uid162_i_div_if_loop_330_im9_cma_ena1;
    wire prodResY_uid174_i_div_if_loop_330_im0_cma_reset;
    (* preserve *) reg [17:0] prodResY_uid174_i_div_if_loop_330_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] prodResY_uid174_i_div_if_loop_330_im0_cma_c0 [0:0];
    wire [35:0] prodResY_uid174_i_div_if_loop_330_im0_cma_p [0:0];
    wire [35:0] prodResY_uid174_i_div_if_loop_330_im0_cma_u [0:0];
    wire [35:0] prodResY_uid174_i_div_if_loop_330_im0_cma_w [0:0];
    wire [35:0] prodResY_uid174_i_div_if_loop_330_im0_cma_x [0:0];
    wire [35:0] prodResY_uid174_i_div_if_loop_330_im0_cma_y [0:0];
    reg [35:0] prodResY_uid174_i_div_if_loop_330_im0_cma_s [0:0];
    wire [35:0] prodResY_uid174_i_div_if_loop_330_im0_cma_qq;
    wire [35:0] prodResY_uid174_i_div_if_loop_330_im0_cma_q;
    wire prodResY_uid174_i_div_if_loop_330_im0_cma_ena0;
    wire prodResY_uid174_i_div_if_loop_330_im0_cma_ena1;
    wire prodResY_uid174_i_div_if_loop_330_im8_cma_reset;
    (* preserve *) reg signed [13:0] prodResY_uid174_i_div_if_loop_330_im8_cma_a0 [0:0];
    (* preserve *) reg signed [13:0] prodResY_uid174_i_div_if_loop_330_im8_cma_c0 [0:0];
    wire signed [27:0] prodResY_uid174_i_div_if_loop_330_im8_cma_p [0:0];
    wire signed [27:0] prodResY_uid174_i_div_if_loop_330_im8_cma_u [0:0];
    wire signed [27:0] prodResY_uid174_i_div_if_loop_330_im8_cma_w [0:0];
    wire signed [27:0] prodResY_uid174_i_div_if_loop_330_im8_cma_x [0:0];
    wire signed [27:0] prodResY_uid174_i_div_if_loop_330_im8_cma_y [0:0];
    reg signed [27:0] prodResY_uid174_i_div_if_loop_330_im8_cma_s [0:0];
    wire [27:0] prodResY_uid174_i_div_if_loop_330_im8_cma_qq;
    wire [27:0] prodResY_uid174_i_div_if_loop_330_im8_cma_q;
    wire prodResY_uid174_i_div_if_loop_330_im8_cma_ena0;
    wire prodResY_uid174_i_div_if_loop_330_im8_cma_ena1;
    wire prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_reset;
    (* preserve *) reg [17:0] prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_c0 [0:0];
    wire [35:0] prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_p [0:0];
    wire [35:0] prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_u [0:0];
    wire [35:0] prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_w [0:0];
    wire [35:0] prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_x [0:0];
    wire [35:0] prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_y [0:0];
    reg [35:0] prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_s [0:0];
    wire [35:0] prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_qq;
    wire [35:0] prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_q;
    wire prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_ena0;
    wire prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_ena1;
    wire multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_reset;
    (* preserve *) reg [17:0] multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_a0 [0:1];
    (* preserve *) reg signed [17:0] multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_c0 [0:1];
    wire signed [18:0] multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_l [0:1];
    wire signed [36:0] multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_p [0:1];
    wire signed [37:0] multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_u [0:1];
    wire signed [37:0] multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_w [0:0];
    wire signed [37:0] multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_x [0:0];
    wire signed [37:0] multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_y [0:0];
    reg signed [37:0] multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_s [0:0];
    wire [37:0] multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_qq;
    wire [36:0] multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_q;
    wire multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_ena0;
    wire multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_ena1;
    wire prodXInvY_uid162_i_div_if_loop_330_ma3_cma_reset;
    (* preserve *) reg signed [15:0] prodXInvY_uid162_i_div_if_loop_330_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] prodXInvY_uid162_i_div_if_loop_330_ma3_cma_c0 [0:1];
    wire signed [18:0] prodXInvY_uid162_i_div_if_loop_330_ma3_cma_r [0:1];
    wire signed [34:0] prodXInvY_uid162_i_div_if_loop_330_ma3_cma_p [0:1];
    wire signed [35:0] prodXInvY_uid162_i_div_if_loop_330_ma3_cma_u [0:1];
    wire signed [35:0] prodXInvY_uid162_i_div_if_loop_330_ma3_cma_w [0:0];
    wire signed [35:0] prodXInvY_uid162_i_div_if_loop_330_ma3_cma_x [0:0];
    wire signed [35:0] prodXInvY_uid162_i_div_if_loop_330_ma3_cma_y [0:0];
    reg signed [35:0] prodXInvY_uid162_i_div_if_loop_330_ma3_cma_s [0:0];
    wire [35:0] prodXInvY_uid162_i_div_if_loop_330_ma3_cma_qq;
    wire [34:0] prodXInvY_uid162_i_div_if_loop_330_ma3_cma_q;
    wire prodXInvY_uid162_i_div_if_loop_330_ma3_cma_ena0;
    wire prodXInvY_uid162_i_div_if_loop_330_ma3_cma_ena1;
    wire prodResY_uid174_i_div_if_loop_330_ma3_cma_reset;
    (* preserve *) reg signed [13:0] prodResY_uid174_i_div_if_loop_330_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] prodResY_uid174_i_div_if_loop_330_ma3_cma_c0 [0:1];
    wire signed [18:0] prodResY_uid174_i_div_if_loop_330_ma3_cma_r [0:1];
    wire signed [32:0] prodResY_uid174_i_div_if_loop_330_ma3_cma_p [0:1];
    wire signed [33:0] prodResY_uid174_i_div_if_loop_330_ma3_cma_u [0:1];
    wire signed [33:0] prodResY_uid174_i_div_if_loop_330_ma3_cma_w [0:0];
    wire signed [33:0] prodResY_uid174_i_div_if_loop_330_ma3_cma_x [0:0];
    wire signed [33:0] prodResY_uid174_i_div_if_loop_330_ma3_cma_y [0:0];
    reg signed [33:0] prodResY_uid174_i_div_if_loop_330_ma3_cma_s [0:0];
    wire [33:0] prodResY_uid174_i_div_if_loop_330_ma3_cma_qq;
    wire [32:0] prodResY_uid174_i_div_if_loop_330_ma3_cma_q;
    wire prodResY_uid174_i_div_if_loop_330_ma3_cma_ena0;
    wire prodResY_uid174_i_div_if_loop_330_ma3_cma_ena1;
    wire prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_reset;
    (* preserve *) reg signed [4:0] prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_c0 [0:1];
    wire signed [18:0] prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_r [0:1];
    wire signed [23:0] prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_p [0:1];
    wire signed [24:0] prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_u [0:1];
    wire signed [24:0] prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_w [0:0];
    wire signed [24:0] prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_x [0:0];
    wire signed [24:0] prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_y [0:0];
    reg signed [24:0] prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_s [0:0];
    wire [24:0] prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_qq;
    wire [23:0] prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_q;
    wire prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_ena0;
    wire prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_ena1;
    wire [60:0] i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index25_if_loop_30_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index_if_loop_30_add_x_BitJoin_for_q_q;
    wire [60:0] prod_qy_GT_x_uid175_i_div_if_loop_330_p1_of_2_a;
    wire [60:0] prod_qy_GT_x_uid175_i_div_if_loop_330_p1_of_2_b;
    logic [60:0] prod_qy_GT_x_uid175_i_div_if_loop_330_p1_of_2_o;
    wire [0:0] prod_qy_GT_x_uid175_i_div_if_loop_330_p1_of_2_c;
    wire [6:0] prod_qy_GT_x_uid175_i_div_if_loop_330_p2_of_2_a;
    wire [6:0] prod_qy_GT_x_uid175_i_div_if_loop_330_p2_of_2_b;
    logic [6:0] prod_qy_GT_x_uid175_i_div_if_loop_330_p2_of_2_o;
    wire [0:0] prod_qy_GT_x_uid175_i_div_if_loop_330_p2_of_2_cin;
    wire [0:0] prod_qy_GT_x_uid175_i_div_if_loop_330_p2_of_2_c;
    wire [60:0] prod_qy_LT_x_uid176_i_div_if_loop_330_p1_of_2_a;
    wire [60:0] prod_qy_LT_x_uid176_i_div_if_loop_330_p1_of_2_b;
    logic [60:0] prod_qy_LT_x_uid176_i_div_if_loop_330_p1_of_2_o;
    wire [0:0] prod_qy_LT_x_uid176_i_div_if_loop_330_p1_of_2_c;
    wire [6:0] prod_qy_LT_x_uid176_i_div_if_loop_330_p2_of_2_a;
    wire [6:0] prod_qy_LT_x_uid176_i_div_if_loop_330_p2_of_2_b;
    logic [6:0] prod_qy_LT_x_uid176_i_div_if_loop_330_p2_of_2_o;
    wire [0:0] prod_qy_LT_x_uid176_i_div_if_loop_330_p2_of_2_cin;
    wire [0:0] prod_qy_LT_x_uid176_i_div_if_loop_330_p2_of_2_c;
    wire [60:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_a;
    wire [60:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_b;
    logic [60:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_c;
    wire [59:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_q;
    wire [8:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_a;
    wire [8:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_b;
    logic [8:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_cin;
    wire [6:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_q;
    wire [66:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitJoin_for_q_q;
    wire [60:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_a;
    wire [60:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_b;
    logic [60:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_c;
    wire [59:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_q;
    wire [6:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_a;
    wire [6:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_b;
    logic [6:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_cin;
    wire [4:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_q;
    wire [4:0] i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [25:0] i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [3:0] i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_tessel1_0_b;
    wire [4:0] i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [4:0] i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [0:0] prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b;
    wire [59:0] prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_BitJoin_for_b_q;
    wire [0:0] prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel1_0_b;
    wire [4:0] prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_BitJoin_for_c_q;
    wire [3:0] prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_b_tessel1_0_b;
    wire [0:0] prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_b_tessel1_1_b;
    wire [4:0] prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_b_BitJoin_for_c_q;
    wire [23:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b;
    wire [59:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [5:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b;
    wire [0:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b;
    wire [6:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [0:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b;
    wire [59:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [6:0] prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    wire [23:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b;
    wire [59:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [3:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b;
    wire [0:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b;
    wire [4:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [0:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b;
    wire [59:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    wire [59:0] i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [7:0] yAddr_uid149_i_div_if_loop_330_merged_bit_select_b;
    wire [22:0] yAddr_uid149_i_div_if_loop_330_merged_bit_select_c;
    wire [17:0] prodXInvY_uid162_i_div_if_loop_330_bs2_merged_bit_select_b;
    wire [14:0] prodXInvY_uid162_i_div_if_loop_330_bs2_merged_bit_select_c;
    wire [1:0] rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_b;
    wire [1:0] rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_c;
    wire [1:0] rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_d;
    wire [0:0] rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_e;
    wire [17:0] prodXInvY_uid162_i_div_if_loop_330_bs1_merged_bit_select_b;
    wire [14:0] prodXInvY_uid162_i_div_if_loop_330_bs1_merged_bit_select_c;
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
    wire [17:0] prodXY_uid281_pT2_uid266_invPolyEval_bs2_merged_bit_select_b;
    wire [4:0] prodXY_uid281_pT2_uid266_invPolyEval_bs2_merged_bit_select_c;
    wire [17:0] prodXY_uid281_pT2_uid266_invPolyEval_bs1_merged_bit_select_b;
    wire [2:0] prodXY_uid281_pT2_uid266_invPolyEval_bs1_merged_bit_select_c;
    wire [17:0] topRangeY_uid299_pT3_uid272_invPolyEval_merged_bit_select_b;
    wire [12:0] topRangeY_uid299_pT3_uid272_invPolyEval_merged_bit_select_c;
    wire [17:0] topRangeX_uid298_pT3_uid272_invPolyEval_merged_bit_select_b;
    wire [5:0] topRangeX_uid298_pT3_uid272_invPolyEval_merged_bit_select_c;
    reg [1:0] redist0_leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_c_1_q;
    reg [1:0] redist1_leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_d_1_q;
    reg [7:0] redist2_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_b_1_q;
    reg [7:0] redist3_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_c_1_q;
    reg [15:0] redist4_rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_b_1_q;
    reg [15:0] redist5_rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_c_1_q;
    reg [7:0] redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_q;
    reg [7:0] redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_delay_0;
    reg [7:0] redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_delay_1;
    reg [7:0] redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_q;
    reg [7:0] redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_delay_0;
    reg [7:0] redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_delay_1;
    reg [7:0] redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_delay_2;
    reg [7:0] redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13_q;
    reg [7:0] redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13_delay_0;
    reg [7:0] redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13_delay_1;
    reg [7:0] redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13_delay_2;
    reg [22:0] redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_3_q;
    reg [22:0] redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_3_delay_0;
    reg [22:0] redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_3_delay_1;
    reg [22:0] redist10_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_7_q;
    reg [22:0] redist10_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_7_delay_0;
    reg [22:0] redist10_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_7_delay_1;
    reg [3:0] redist12_i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [3:0] redist13_i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [0:0] redist14_prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel1_4_b_1_q;
    reg [0:0] redist19_prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b_1_q;
    reg [3:0] redist20_prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b_1_q;
    reg [0:0] redist21_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1_q;
    reg [0:0] redist28_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b_1_q;
    reg [5:0] redist29_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b_1_q;
    reg [59:0] redist30_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_q_1_q;
    reg [59:0] redist31_i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_q_1_q;
    reg [59:0] redist32_i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_q_1_q;
    reg [23:0] redist33_prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_q_1_q;
    reg [36:0] redist34_multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_q_1_q;
    reg [35:0] redist35_prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_q_1_q;
    reg [35:0] redist36_sm0_uid310_pT3_uid272_invPolyEval_cma_q_1_q;
    reg [7:0] redist37_prodXY_uid281_pT2_uid266_invPolyEval_im9_q_1_q;
    reg [13:0] redist38_memoryC3_uid252_invTabGen_lutmem_r_1_q;
    reg [20:0] redist39_memoryC2_uid249_invTabGen_lutmem_r_1_q;
    reg [28:0] redist40_memoryC1_uid246_invTabGen_lutmem_r_1_q;
    reg [37:0] redist41_memoryC0_uid243_invTabGen_lutmem_r_1_q;
    reg [29:0] redist42_highBBits_uid274_invPolyEval_b_1_q;
    reg [1:0] redist43_lowRangeB_uid273_invPolyEval_b_1_q;
    reg [21:0] redist44_highBBits_uid268_invPolyEval_b_1_q;
    reg [0:0] redist45_lowRangeB_uid267_invPolyEval_b_2_q;
    reg [0:0] redist45_lowRangeB_uid267_invPolyEval_b_2_delay_0;
    reg [12:0] redist46_highBBits_uid262_invPolyEval_b_1_q;
    reg [0:0] redist47_lowRangeB_uid261_invPolyEval_b_2_q;
    reg [0:0] redist47_lowRangeB_uid261_invPolyEval_b_2_delay_0;
    reg [0:0] redist49_vCount_uid228_zCount_uid139_i_div_if_loop_330_q_1_q;
    reg [0:0] redist50_vCount_uid222_zCount_uid139_i_div_if_loop_330_q_2_q;
    reg [0:0] redist51_vCount_uid216_zCount_uid139_i_div_if_loop_330_q_3_q;
    reg [0:0] redist51_vCount_uid216_zCount_uid139_i_div_if_loop_330_q_3_delay_0;
    reg [0:0] redist52_vCount_uid210_zCount_uid139_i_div_if_loop_330_q_4_q;
    reg [0:0] redist52_vCount_uid210_zCount_uid139_i_div_if_loop_330_q_4_delay_0;
    reg [0:0] redist52_vCount_uid210_zCount_uid139_i_div_if_loop_330_q_4_delay_1;
    reg [31:0] redist53_resFinalPostMux_uid191_i_div_if_loop_330_b_1_q;
    reg [31:0] redist54_resFinal_uid173_i_div_if_loop_330_q_4_q;
    reg [31:0] redist54_resFinal_uid173_i_div_if_loop_330_q_4_delay_0;
    reg [31:0] redist55_resFinal_uid173_i_div_if_loop_330_q_5_q;
    reg [0:0] redist56_signX_uid171_i_div_if_loop_330_b_3_q;
    reg [0:0] redist56_signX_uid171_i_div_if_loop_330_b_3_delay_0;
    reg [0:0] redist56_signX_uid171_i_div_if_loop_330_b_3_delay_1;
    reg [0:0] redist57_signX_uid171_i_div_if_loop_330_b_5_q;
    reg [0:0] redist57_signX_uid171_i_div_if_loop_330_b_5_delay_0;
    reg [32:0] redist58_prodPostRightShiftPost_uid165_i_div_if_loop_330_b_1_q;
    reg [32:0] redist59_fxpInverseRes_uid152_i_div_if_loop_330_b_1_q;
    reg [0:0] redist60_normYIsOne_uid146_i_div_if_loop_330_q_15_q;
    reg [0:0] redist61_normYIsOneC2_uid145_i_div_if_loop_330_b_2_q;
    reg [0:0] redist61_normYIsOneC2_uid145_i_div_if_loop_330_b_2_delay_0;
    reg [30:0] redist62_normYNoLeadOne_uid141_i_div_if_loop_330_b_1_q;
    reg [31:0] redist63_yPS_uid138_i_div_if_loop_330_b_1_q;
    reg [31:0] redist64_yPS_uid138_i_div_if_loop_330_b_2_q;
    reg [31:0] redist65_yPS_uid138_i_div_if_loop_330_b_5_q;
    reg [31:0] redist65_yPS_uid138_i_div_if_loop_330_b_5_delay_0;
    reg [0:0] redist66_xMSB_uid133_i_div_if_loop_330_b_1_q;
    reg [0:0] redist67_xMSB_uid133_i_div_if_loop_330_b_24_q;
    reg [0:0] redist68_xMSB_uid133_i_div_if_loop_330_b_32_q;
    reg [0:0] redist69_xMSB_uid133_i_div_if_loop_330_b_34_q;
    reg [0:0] redist69_xMSB_uid133_i_div_if_loop_330_b_34_delay_0;
    reg [0:0] redist70_i_masked_if_loop_347_q_40_q;
    reg [31:0] redist72_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_8_q;
    reg [31:0] redist72_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_8_delay_0;
    reg [31:0] redist73_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_q;
    reg [31:0] redist74_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_10_q;
    reg [31:0] redist75_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_data_out_1_q;
    reg [0:0] redist76_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_q;
    reg [0:0] redist76_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_delay_0;
    reg [0:0] redist77_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_42_q;
    reg [0:0] redist78_i_first_cleanup_xor_if_loop_34_q_40_q;
    reg [0:0] redist79_i_cmp2_if_loop_327_c_5_q;
    reg [0:0] redist79_i_cmp2_if_loop_327_c_5_delay_0;
    reg [0:0] redist79_i_cmp2_if_loop_327_c_5_delay_1;
    reg [0:0] redist79_i_cmp2_if_loop_327_c_5_delay_2;
    reg [0:0] redist80_sync_together100_aunroll_x_in_c0_eni1_1_tpl_10_q;
    reg [0:0] redist81_sync_together100_aunroll_x_in_c0_eni1_1_tpl_11_q;
    reg [0:0] redist82_sync_together100_aunroll_x_in_c0_eni1_1_tpl_12_q;
    reg [0:0] redist83_sync_together100_aunroll_x_in_c0_eni1_1_tpl_13_q;
    reg [0:0] redist84_sync_together100_aunroll_x_in_c0_eni1_1_tpl_43_q;
    reg [0:0] redist85_sync_together100_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist86_sync_together100_aunroll_x_in_i_valid_10_q;
    reg [0:0] redist87_sync_together100_aunroll_x_in_i_valid_11_q;
    reg [0:0] redist88_sync_together100_aunroll_x_in_i_valid_12_q;
    reg [0:0] redist89_sync_together100_aunroll_x_in_i_valid_13_q;
    reg [0:0] redist90_sync_together100_aunroll_x_in_i_valid_42_q;
    reg [0:0] redist91_sync_together100_aunroll_x_in_i_valid_52_q;
    reg [31:0] redist92_bgTrunc_i_sub_if_loop_326_sel_x_b_1_q;
    reg [7:0] redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_inputreg0_q;
    reg [7:0] redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13_inputreg0_q;
    reg [22:0] redist10_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_7_inputreg0_q;
    reg [22:0] redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_inputreg0_q;
    wire redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_reset0;
    wire [22:0] redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_ia;
    wire [1:0] redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_aa;
    wire [1:0] redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_ab;
    wire [22:0] redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_iq;
    wire [22:0] redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_q;
    wire [1:0] redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_rdcnt_q;
    (* preserve *) reg [1:0] redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_rdcnt_i;
    (* preserve *) reg redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_rdcnt_eq;
    reg [1:0] redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_wraddr_q;
    wire [1:0] redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_last_q;
    wire [0:0] redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_cmp_q;
    (* dont_merge *) reg [0:0] redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_cmpReg_q;
    wire [0:0] redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_notEnable_q;
    wire [0:0] redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_nor_q;
    (* dont_merge *) reg [0:0] redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_sticky_ena_q;
    wire [0:0] redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_enaAnd_q;
    reg [5:0] redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_inputreg0_q;
    reg [5:0] redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_outputreg0_q;
    wire redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_reset0;
    wire [5:0] redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_ia;
    wire [4:0] redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_aa;
    wire [4:0] redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_ab;
    wire [5:0] redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_iq;
    wire [5:0] redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_q;
    wire [4:0] redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_rdcnt_q;
    (* preserve *) reg [4:0] redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_rdcnt_i;
    (* preserve *) reg redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_rdcnt_eq;
    reg [4:0] redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_wraddr_q;
    wire [5:0] redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_last_q;
    wire [5:0] redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_cmp_b;
    wire [0:0] redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_cmp_q;
    (* dont_merge *) reg [0:0] redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_cmpReg_q;
    wire [0:0] redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_notEnable_q;
    wire [0:0] redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_nor_q;
    (* dont_merge *) reg [0:0] redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_sticky_ena_q;
    wire [0:0] redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_enaAnd_q;
    reg [31:0] redist54_resFinal_uid173_i_div_if_loop_330_q_4_inputreg0_q;
    reg [31:0] redist54_resFinal_uid173_i_div_if_loop_330_q_4_outputreg0_q;
    reg [31:0] redist65_yPS_uid138_i_div_if_loop_330_b_5_inputreg0_q;
    reg [31:0] redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_inputreg0_q;
    reg [31:0] redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_outputreg0_q;
    wire redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_reset0;
    wire [31:0] redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_ia;
    wire [0:0] redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_aa;
    wire [0:0] redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_ab;
    wire [31:0] redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_iq;
    wire [31:0] redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_q;
    wire [0:0] redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_q;
    (* preserve *) reg [0:0] redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_i;
    reg [0:0] redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_wraddr_q;
    (* dont_merge *) reg [0:0] redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_cmpReg_q;
    wire [0:0] redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_notEnable_q;
    wire [0:0] redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_nor_q;
    (* dont_merge *) reg [0:0] redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_sticky_ena_q;
    wire [0:0] redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_enaAnd_q;
    reg [31:0] redist72_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_8_inputreg0_q;
    reg [31:0] redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_outputreg0_q;
    wire redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_reset0;
    wire [31:0] redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_ia;
    wire [4:0] redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_aa;
    wire [4:0] redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_ab;
    wire [31:0] redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_iq;
    wire [31:0] redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_q;
    wire [4:0] redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_rdcnt_q;
    (* preserve *) reg [4:0] redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_rdcnt_i;
    (* preserve *) reg redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_rdcnt_eq;
    reg [4:0] redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_wraddr_q;
    wire [5:0] redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_last_q;
    wire [5:0] redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_cmp_b;
    wire [0:0] redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_cmp_q;
    (* dont_merge *) reg [0:0] redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_cmpReg_q;
    wire [0:0] redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_notEnable_q;
    wire [0:0] redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_nor_q;
    (* dont_merge *) reg [0:0] redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_sticky_ena_q;
    wire [0:0] redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist85_sync_together100_aunroll_x_in_i_valid_9(DELAY,794)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist85_sync_together100_aunroll_x_in_i_valid_9 ( .xin(in_i_valid), .xout(redist85_sync_together100_aunroll_x_in_i_valid_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist86_sync_together100_aunroll_x_in_i_valid_10(DELAY,795)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist86_sync_together100_aunroll_x_in_i_valid_10_q <= '0;
        end
        else
        begin
            redist86_sync_together100_aunroll_x_in_i_valid_10_q <= $unsigned(redist85_sync_together100_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist87_sync_together100_aunroll_x_in_i_valid_11(DELAY,796)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist87_sync_together100_aunroll_x_in_i_valid_11_q <= '0;
        end
        else
        begin
            redist87_sync_together100_aunroll_x_in_i_valid_11_q <= $unsigned(redist86_sync_together100_aunroll_x_in_i_valid_10_q);
        end
    end

    // redist88_sync_together100_aunroll_x_in_i_valid_12(DELAY,797)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist88_sync_together100_aunroll_x_in_i_valid_12_q <= '0;
        end
        else
        begin
            redist88_sync_together100_aunroll_x_in_i_valid_12_q <= $unsigned(redist87_sync_together100_aunroll_x_in_i_valid_11_q);
        end
    end

    // valid_fanout_reg7(REG,200)@13 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist88_sync_together100_aunroll_x_in_i_valid_12_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist89_sync_together100_aunroll_x_in_i_valid_13(DELAY,798)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist89_sync_together100_aunroll_x_in_i_valid_13_q <= '0;
        end
        else
        begin
            redist89_sync_together100_aunroll_x_in_i_valid_13_q <= $unsigned(redist88_sync_together100_aunroll_x_in_i_valid_12_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_37_if_loop_312(BLACKBOX,86)@13
    if_loop_3_i_llvm_fpga_ffwd_dest_i33_unnamed_7_if_loop_30 thei_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_37_if_loop_312 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist88_sync_together100_aunroll_x_in_i_valid_12_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_37_if_loop_312_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_179(CONSTANT,63)
    assign c_i33_179_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_if_loop_337(ADD,80)@14
    assign i_fpga_indvars_iv_next_if_loop_337_a = {1'b0, i_fpga_indvars_iv_replace_phi_if_loop_314_q};
    assign i_fpga_indvars_iv_next_if_loop_337_b = {1'b0, c_i33_179_q};
    assign i_fpga_indvars_iv_next_if_loop_337_o = $unsigned(i_fpga_indvars_iv_next_if_loop_337_a) + $unsigned(i_fpga_indvars_iv_next_if_loop_337_b);
    assign i_fpga_indvars_iv_next_if_loop_337_q = i_fpga_indvars_iv_next_if_loop_337_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_if_loop_337_sel_x(BITSELECT,2)@14
    assign bgTrunc_i_fpga_indvars_iv_next_if_loop_337_sel_x_b = i_fpga_indvars_iv_next_if_loop_337_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_338(BLACKBOX,102)@14
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    if_loop_3_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_338 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_if_loop_337_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_feedback_stall_out_6),
        .in_keep_going(redist76_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist89_sync_together100_aunroll_x_in_i_valid_13_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_338_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_338_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef73(CONSTANT,64)
    assign c_i33_undef73_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313(BLACKBOX,95)@13
    // out out_feedback_stall_out_6@20000000
    if_loop_3_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313 (
        .in_data_in(c_i33_undef73_q),
        .in_dir(redist82_sync_together100_aunroll_x_in_c0_eni1_1_tpl_12_q),
        .in_feedback_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_338_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_338_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist88_sync_together100_aunroll_x_in_i_valid_12_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist82_sync_together100_aunroll_x_in_c0_eni1_1_tpl_12(DELAY,791)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist82_sync_together100_aunroll_x_in_c0_eni1_1_tpl_12_q <= '0;
        end
        else
        begin
            redist82_sync_together100_aunroll_x_in_c0_eni1_1_tpl_12_q <= $unsigned(redist81_sync_together100_aunroll_x_in_c0_eni1_1_tpl_11_q);
        end
    end

    // i_fpga_indvars_iv_replace_phi_if_loop_314(MUX,81)@13 + 1
    assign i_fpga_indvars_iv_replace_phi_if_loop_314_s = redist82_sync_together100_aunroll_x_in_c0_eni1_1_tpl_12_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_fpga_indvars_iv_replace_phi_if_loop_314_q <= 33'b0;
        end
        else
        begin
            unique case (i_fpga_indvars_iv_replace_phi_if_loop_314_s)
                1'b0 : i_fpga_indvars_iv_replace_phi_if_loop_314_q <= i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_data_out;
                1'b1 : i_fpga_indvars_iv_replace_phi_if_loop_314_q <= i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_37_if_loop_312_out_dest_data_out_3_0;
                default : i_fpga_indvars_iv_replace_phi_if_loop_314_q <= 33'b0;
            endcase
        end
    end

    // i_exitcond_if_loop_335_cmp_nsign(LOGICAL,343)@14
    assign i_exitcond_if_loop_335_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_if_loop_314_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp214_if_loop_339(BLACKBOX,84)@14
    if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp214_0 thei_llvm_fpga_ffwd_dest_i1_cmp214_if_loop_339 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist89_sync_together100_aunroll_x_in_i_valid_13_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp214_if_loop_339_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_340(LOGICAL,118)@14
    assign i_unnamed_if_loop_340_q = i_llvm_fpga_ffwd_dest_i1_cmp214_if_loop_339_out_dest_data_out_0_0 & i_exitcond_if_loop_335_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_if_loop_342(BLACKBOX,99)@14
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    if_loop_3_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_if_loop_342 (
        .in_data_in(i_unnamed_if_loop_340_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_if_loop_33_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist89_sync_together100_aunroll_x_in_i_valid_13_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_342_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_342_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,196)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist86_sync_together100_aunroll_x_in_i_valid_10_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid337_i_next_initerations_if_loop_30_shift_x(BITSELECT,336)@12
    assign rightShiftStage0Idx1Rng1_uid337_i_next_initerations_if_loop_30_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_data_out[3:1];

    // rightShiftStage0Idx1_uid339_i_next_initerations_if_loop_30_shift_x(BITJOIN,338)@12
    assign rightShiftStage0Idx1_uid339_i_next_initerations_if_loop_30_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid337_i_next_initerations_if_loop_30_shift_x_b};

    // valid_fanout_reg1(REG,194)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist86_sync_together100_aunroll_x_in_i_valid_10_q);
        end
    end

    // valid_fanout_reg2(REG,195)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist86_sync_together100_aunroll_x_in_i_valid_10_q);
        end
    end

    // i_llvm_fpga_push_i4_initerations_push9_if_loop_39(BLACKBOX,104)@12
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

    // i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37(BLACKBOX,97)@12
    // out out_feedback_stall_out_9@20000000
    if_loop_3_i_llvm_fpga_pop_i4_initerations_pop9_0 thei_llvm_fpga_pop_i4_initerations_pop9_if_loop_37 (
        .in_data_in(c_i4_770_q),
        .in_dir(redist81_sync_together100_aunroll_x_in_c0_eni1_1_tpl_11_q),
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

    // rightShiftStage0_uid341_i_next_initerations_if_loop_30_shift_x(MUX,340)@12
    assign rightShiftStage0_uid341_i_next_initerations_if_loop_30_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid341_i_next_initerations_if_loop_30_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_data_out or rightShiftStage0Idx1_uid339_i_next_initerations_if_loop_30_shift_x_q)
    begin
        unique case (rightShiftStage0_uid341_i_next_initerations_if_loop_30_shift_x_s)
            1'b0 : rightShiftStage0_uid341_i_next_initerations_if_loop_30_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_data_out;
            1'b1 : rightShiftStage0_uid341_i_next_initerations_if_loop_30_shift_x_q = rightShiftStage0Idx1_uid339_i_next_initerations_if_loop_30_shift_x_q;
            default : rightShiftStage0_uid341_i_next_initerations_if_loop_30_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_if_loop_38_vt_select_2(BITSELECT,109)@12
    assign i_next_initerations_if_loop_38_vt_select_2_b = rightShiftStage0_uid341_i_next_initerations_if_loop_30_shift_x_q[2:0];

    // i_next_initerations_if_loop_38_vt_join(BITJOIN,108)@12
    assign i_next_initerations_if_loop_38_vt_join_q = {GND_q, i_next_initerations_if_loop_38_vt_select_2_b};

    // i_last_initeration_if_loop_310_sel_x(BITSELECT,15)@12
    assign i_last_initeration_if_loop_310_sel_x_b = i_next_initerations_if_loop_38_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_if_loop_311(BLACKBOX,98)@12
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

    // redist80_sync_together100_aunroll_x_in_c0_eni1_1_tpl_10(DELAY,789)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist80_sync_together100_aunroll_x_in_c0_eni1_1_tpl_10 ( .xin(in_c0_eni1_1_tpl), .xout(redist80_sync_together100_aunroll_x_in_c0_eni1_1_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist81_sync_together100_aunroll_x_in_c0_eni1_1_tpl_11(DELAY,790)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist81_sync_together100_aunroll_x_in_c0_eni1_1_tpl_11_q <= '0;
        end
        else
        begin
            redist81_sync_together100_aunroll_x_in_c0_eni1_1_tpl_11_q <= $unsigned(redist80_sync_together100_aunroll_x_in_c0_eni1_1_tpl_10_q);
        end
    end

    // i_llvm_fpga_pipeline_keep_going_if_loop_36(BLACKBOX,92)@12
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    if_loop_3_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_if_loop_36 (
        .in_data_in(redist81_sync_together100_aunroll_x_in_c0_eni1_1_tpl_11_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_if_loop_311_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_if_loop_311_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_if_loop_342_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_if_loop_342_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist87_sync_together100_aunroll_x_in_i_valid_11_q),
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

    // redist76_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2(DELAY,785)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_delay_0 <= '0;
            redist76_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_q <= '0;
        end
        else
        begin
            redist76_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out);
            redist76_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_q <= redist76_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_delay_0;
        end
    end

    // leftShiftStage0Idx1Rng1_uid330_i_cleanups_shl_if_loop_30_shift_x(BITSELECT,329)@14
    assign leftShiftStage0Idx1Rng1_uid330_i_cleanups_shl_if_loop_30_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid330_i_cleanups_shl_if_loop_30_shift_x_b = leftShiftStage0Idx1Rng1_uid330_i_cleanups_shl_if_loop_30_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid331_i_cleanups_shl_if_loop_30_shift_x(BITJOIN,330)@14
    assign leftShiftStage0Idx1_uid331_i_cleanups_shl_if_loop_30_shift_x_q = {leftShiftStage0Idx1Rng1_uid330_i_cleanups_shl_if_loop_30_shift_x_b, GND_q};

    // leftShiftStage0_uid333_i_cleanups_shl_if_loop_30_shift_x(MUX,332)@14
    assign leftShiftStage0_uid333_i_cleanups_shl_if_loop_30_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid333_i_cleanups_shl_if_loop_30_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out or leftShiftStage0Idx1_uid331_i_cleanups_shl_if_loop_30_shift_x_q)
    begin
        unique case (leftShiftStage0_uid333_i_cleanups_shl_if_loop_30_shift_x_s)
            1'b0 : leftShiftStage0_uid333_i_cleanups_shl_if_loop_30_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out;
            1'b1 : leftShiftStage0_uid333_i_cleanups_shl_if_loop_30_shift_x_q = leftShiftStage0Idx1_uid331_i_cleanups_shl_if_loop_30_shift_x_q;
            default : leftShiftStage0_uid333_i_cleanups_shl_if_loop_30_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_if_loop_35_vt_select_3(BITSELECT,72)@14
    assign i_cleanups_shl_if_loop_35_vt_select_3_b = leftShiftStage0_uid333_i_cleanups_shl_if_loop_30_shift_x_q[3:1];

    // i_cleanups_shl_if_loop_35_vt_join(BITJOIN,71)@14
    assign i_cleanups_shl_if_loop_35_vt_join_q = {i_cleanups_shl_if_loop_35_vt_select_3_b, GND_q};

    // i_notcmp_if_loop_341(LOGICAL,110)@14
    assign i_notcmp_if_loop_341_q = i_unnamed_if_loop_340_q ^ VCC_q;

    // i_or_if_loop_343(LOGICAL,111)@14
    assign i_or_if_loop_343_q = i_notcmp_if_loop_341_q | i_first_cleanup_xor_if_loop_34_q;

    // i_next_cleanups_if_loop_344(MUX,106)@14
    assign i_next_cleanups_if_loop_344_s = i_or_if_loop_343_q;
    always @(i_next_cleanups_if_loop_344_s or i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out or i_cleanups_shl_if_loop_35_vt_join_q)
    begin
        unique case (i_next_cleanups_if_loop_344_s)
            1'b0 : i_next_cleanups_if_loop_344_q = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out;
            1'b1 : i_next_cleanups_if_loop_344_q = i_cleanups_shl_if_loop_35_vt_join_q;
            default : i_next_cleanups_if_loop_344_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push10_if_loop_345(BLACKBOX,103)@14
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    if_loop_3_i_llvm_fpga_push_i4_cleanups_push10_0 thei_llvm_fpga_push_i4_cleanups_push10_if_loop_345 (
        .in_data_in(i_next_cleanups_if_loop_344_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_feedback_stall_out_10),
        .in_keep_going(redist76_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist89_sync_together100_aunroll_x_in_i_valid_13_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_345_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_345_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist83_sync_together100_aunroll_x_in_c0_eni1_1_tpl_13(DELAY,792)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist83_sync_together100_aunroll_x_in_c0_eni1_1_tpl_13_q <= '0;
        end
        else
        begin
            redist83_sync_together100_aunroll_x_in_c0_eni1_1_tpl_13_q <= $unsigned(redist82_sync_together100_aunroll_x_in_c0_eni1_1_tpl_12_q);
        end
    end

    // c_i4_770(CONSTANT,66)
    assign c_i4_770_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32(BLACKBOX,96)@14
    // out out_feedback_stall_out_10@20000000
    if_loop_3_i_llvm_fpga_pop_i4_cleanups_pop10_0 thei_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32 (
        .in_data_in(c_i4_770_q),
        .in_dir(redist83_sync_together100_aunroll_x_in_c0_eni1_1_tpl_13_q),
        .in_feedback_in_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_345_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_345_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist89_sync_together100_aunroll_x_in_i_valid_13_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_if_loop_33_sel_x(BITSELECT,14)@14
    assign i_first_cleanup_if_loop_33_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out[0:0];

    // i_first_cleanup_xor_if_loop_34(LOGICAL,78)@14
    assign i_first_cleanup_xor_if_loop_34_q = i_first_cleanup_if_loop_33_sel_x_b ^ VCC_q;

    // valid_fanout_reg4(REG,197)@13 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist88_sync_together100_aunroll_x_in_i_valid_12_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp215_if_loop_315(BLACKBOX,85)@14
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

    // i_unnamed_if_loop_316(LOGICAL,113)@14
    assign i_unnamed_if_loop_316_q = i_llvm_fpga_ffwd_dest_i1_cmp215_if_loop_315_out_dest_data_out_0_0 ^ VCC_q;

    // i_first_cleanup_xor_or_if_loop_321(LOGICAL,79)@14
    assign i_first_cleanup_xor_or_if_loop_321_q = i_unnamed_if_loop_316_q | i_first_cleanup_xor_if_loop_34_q;

    // c_i32_074(CONSTANT,60)
    assign c_i32_074_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_tessel0_2(BITSELECT,549)
    assign i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_tessel0_2_b = c_i32_074_q[25:0];

    // valid_fanout_reg5(REG,198)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist85_sync_together100_aunroll_x_in_i_valid_9_q);
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
            valid_fanout_reg12_q <= $unsigned(redist86_sync_together100_aunroll_x_in_i_valid_10_q);
        end
    end

    // c_i32_177(CONSTANT,62)
    assign c_i32_177_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_if_loop_333(ADD,82)@12
    assign i_inc_if_loop_333_a = {1'b0, redist75_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_data_out_1_q};
    assign i_inc_if_loop_333_b = {1'b0, c_i32_177_q};
    assign i_inc_if_loop_333_o = $unsigned(i_inc_if_loop_333_a) + $unsigned(i_inc_if_loop_333_b);
    assign i_inc_if_loop_333_q = i_inc_if_loop_333_o[32:0];

    // bgTrunc_i_inc_if_loop_333_sel_x(BITSELECT,3)@12
    assign bgTrunc_i_inc_if_loop_333_sel_x_b = i_inc_if_loop_333_q[31:0];

    // i_llvm_fpga_push_i32_i_022_push8_if_loop_334(BLACKBOX,100)@12
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

    // i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317(BLACKBOX,93)@11
    // out out_feedback_stall_out_8@20000000
    if_loop_3_i_llvm_fpga_pop_i32_i_022_pop8_0 thei_llvm_fpga_pop_i32_i_022_pop8_if_loop_317 (
        .in_data_in(c_i32_074_q),
        .in_dir(redist80_sync_together100_aunroll_x_in_c0_eni1_1_tpl_10_q),
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

    // redist75_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_data_out_1(DELAY,784)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist75_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_data_out_1_q <= '0;
        end
        else
        begin
            redist75_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_data_out);
        end
    end

    // i_mptr_bitcast_index25_if_loop_30_c_i2_01_x(CONSTANT,19)
    assign i_mptr_bitcast_index25_if_loop_30_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,550)@12
    assign i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_tessel0_2_b, redist75_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_data_out_1_q, i_mptr_bitcast_index25_if_loop_30_c_i2_01_x_q};

    // valid_fanout_reg6(REG,199)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist86_sync_together100_aunroll_x_in_i_valid_10_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_if_loop_319(BLACKBOX,87)@12
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

    // i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,694)@12
    assign i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_if_loop_319_out_dest_data_out_1_0[59:0]);
    assign i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_if_loop_319_out_dest_data_out_1_0[63:60]);

    // i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2(ADD,493)@12 + 1
    assign i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_o <= 61'b0;
        end
        else
        begin
            i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_c[0] = i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_q = i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_tessel1_0(BITSELECT,551)
    assign i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_tessel1_0_b = c_i32_074_q[29:26];

    // i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,553)@13
    assign i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_tessel1_0_b};

    // redist13_i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,722)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist13_i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,558)@13
    assign i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist13_i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2(ADD,494)@13 + 1
    assign i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_cin = i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_o <= 7'b0;
        end
        else
        begin
            i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_q = i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_o[5:1];

    // redist31_i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_q_1(DELAY,740)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist31_i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index_if_loop_30_add_x_BitJoin_for_q(BITJOIN,495)@14
    assign i_mptr_bitcast_index_if_loop_30_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_q, redist31_i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index_if_loop_30_dupName_0_trunc_sel_x(BITSELECT,22)@14
    assign i_mptr_bitcast_index_if_loop_30_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index_if_loop_30_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_lm1_if_loop_322(BLACKBOX,90)@14
    // in in_i_stall@20000000
    // out out_lm1_if_loop_3_avm_address@20000000
    // out out_lm1_if_loop_3_avm_burstcount@20000000
    // out out_lm1_if_loop_3_avm_byteenable@20000000
    // out out_lm1_if_loop_3_avm_enable@20000000
    // out out_lm1_if_loop_3_avm_read@20000000
    // out out_lm1_if_loop_3_avm_write@20000000
    // out out_lm1_if_loop_3_avm_writedata@20000000
    // out out_o_readdata@19
    // out out_o_stall@18
    // out out_o_valid@19
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

    // dupName_0_ext_sig_sync_out_x(GPOUT,8)
    assign out_lm1_if_loop_3_avm_address = i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_address;
    assign out_lm1_if_loop_3_avm_enable = i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_enable;
    assign out_lm1_if_loop_3_avm_read = i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_read;
    assign out_lm1_if_loop_3_avm_write = i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_write;
    assign out_lm1_if_loop_3_avm_writedata = i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_writedata;
    assign out_lm1_if_loop_3_avm_byteenable = i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_byteenable;
    assign out_lm1_if_loop_3_avm_burstcount = i_llvm_fpga_mem_lm1_if_loop_322_out_lm1_if_loop_3_avm_burstcount;

    // valid_fanout_reg9(REG,202)@13 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist88_sync_together100_aunroll_x_in_i_valid_12_q);
        end
    end

    // valid_fanout_reg8(REG,201)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist86_sync_together100_aunroll_x_in_i_valid_10_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast24277_if_loop_323(BLACKBOX,88)@12
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

    // i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,695)@12
    assign i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast24277_if_loop_323_out_dest_data_out_2_0[59:0]);
    assign i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast24277_if_loop_323_out_dest_data_out_2_0[63:60]);

    // i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2(ADD,484)@12 + 1
    assign i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_o <= 61'b0;
        end
        else
        begin
            i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_c[0] = i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_q = i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_o[59:0];

    // redist12_i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,721)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist12_i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,546)@13
    assign i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist12_i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2(ADD,485)@13 + 1
    assign i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_cin = i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_o <= 7'b0;
        end
        else
        begin
            i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_q = i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_o[5:1];

    // redist32_i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_q_1(DELAY,741)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist32_i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index25_if_loop_30_add_x_BitJoin_for_q(BITJOIN,486)@14
    assign i_mptr_bitcast_index25_if_loop_30_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_q, redist32_i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index25_if_loop_30_dupName_0_trunc_sel_x(BITSELECT,16)@14
    assign i_mptr_bitcast_index25_if_loop_30_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index25_if_loop_30_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_lm22_if_loop_325(BLACKBOX,91)@14
    // in in_i_stall@20000000
    // out out_lm22_if_loop_3_avm_address@20000000
    // out out_lm22_if_loop_3_avm_burstcount@20000000
    // out out_lm22_if_loop_3_avm_byteenable@20000000
    // out out_lm22_if_loop_3_avm_enable@20000000
    // out out_lm22_if_loop_3_avm_read@20000000
    // out out_lm22_if_loop_3_avm_write@20000000
    // out out_lm22_if_loop_3_avm_writedata@20000000
    // out out_o_readdata@19
    // out out_o_stall@18
    // out out_o_valid@19
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

    // dupName_1_ext_sig_sync_out_x(GPOUT,9)
    assign out_lm22_if_loop_3_avm_address = i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_address;
    assign out_lm22_if_loop_3_avm_enable = i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_enable;
    assign out_lm22_if_loop_3_avm_read = i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_read;
    assign out_lm22_if_loop_3_avm_write = i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_write;
    assign out_lm22_if_loop_3_avm_writedata = i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_writedata;
    assign out_lm22_if_loop_3_avm_byteenable = i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_byteenable;
    assign out_lm22_if_loop_3_avm_burstcount = i_llvm_fpga_mem_lm22_if_loop_325_out_lm22_if_loop_3_avm_burstcount;

    // redist90_sync_together100_aunroll_x_in_i_valid_42(DELAY,799)
    dspba_delay_ver #( .width(1), .depth(29), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist90_sync_together100_aunroll_x_in_i_valid_42 ( .xin(redist89_sync_together100_aunroll_x_in_i_valid_13_q), .xout(redist90_sync_together100_aunroll_x_in_i_valid_42_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist91_sync_together100_aunroll_x_in_i_valid_52(DELAY,800)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist91_sync_together100_aunroll_x_in_i_valid_52 ( .xin(redist90_sync_together100_aunroll_x_in_i_valid_42_q), .xout(redist91_sync_together100_aunroll_x_in_i_valid_52_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg0(REG,193)@53 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist91_sync_together100_aunroll_x_in_i_valid_52_q);
        end
    end

    // i_masked_if_loop_347(LOGICAL,105)@14 + 1
    assign i_masked_if_loop_347_qi = i_notcmp_if_loop_341_q & i_first_cleanup_if_loop_33_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_if_loop_347_delay ( .xin(i_masked_if_loop_347_qi), .xout(i_masked_if_loop_347_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist70_i_masked_if_loop_347_q_40(DELAY,779)
    dspba_delay_ver #( .width(1), .depth(39), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist70_i_masked_if_loop_347_q_40 ( .xin(i_masked_if_loop_347_q), .xout(redist70_i_masked_if_loop_347_q_40_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist77_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_42(DELAY,786)
    dspba_delay_ver #( .width(1), .depth(40), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist77_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_42 ( .xin(redist76_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_q), .xout(redist77_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_42_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,33)@54
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist77_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_42_q;
    assign out_c0_exi2_2_tpl = redist70_i_masked_if_loop_347_q_40_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_if_loop_31 = GND_q;

    // ext_sig_sync_out(GPOUT,68)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_if_loop_36_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_if_loop_36_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,123)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_valid_out;

    // valid_fanout_reg13(REG,206)@53 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist91_sync_together100_aunroll_x_in_i_valid_52_q);
        end
    end

    // i_sub_if_loop_326(SUB,112)@19
    assign i_sub_if_loop_326_a = {1'b0, i_llvm_fpga_mem_lm1_if_loop_322_out_o_readdata};
    assign i_sub_if_loop_326_b = {1'b0, i_llvm_fpga_mem_lm22_if_loop_325_out_o_readdata};
    assign i_sub_if_loop_326_o = $unsigned(i_sub_if_loop_326_a) - $unsigned(i_sub_if_loop_326_b);
    assign i_sub_if_loop_326_q = i_sub_if_loop_326_o[32:0];

    // bgTrunc_i_sub_if_loop_326_sel_x(BITSELECT,4)@19
    assign bgTrunc_i_sub_if_loop_326_sel_x_b = $unsigned(i_sub_if_loop_326_q[31:0]);

    // redist92_bgTrunc_i_sub_if_loop_326_sel_x_b_1(DELAY,801)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist92_bgTrunc_i_sub_if_loop_326_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist92_bgTrunc_i_sub_if_loop_326_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub_if_loop_326_sel_x_b);
        end
    end

    // xMSB_uid133_i_div_if_loop_330(BITSELECT,132)@20
    assign xMSB_uid133_i_div_if_loop_330_b = $unsigned(redist92_bgTrunc_i_sub_if_loop_326_sel_x_b_1_q[31:31]);

    // redist66_xMSB_uid133_i_div_if_loop_330_b_1(DELAY,775)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_xMSB_uid133_i_div_if_loop_330_b_1_q <= '0;
        end
        else
        begin
            redist66_xMSB_uid133_i_div_if_loop_330_b_1_q <= $unsigned(xMSB_uid133_i_div_if_loop_330_b);
        end
    end

    // redist67_xMSB_uid133_i_div_if_loop_330_b_24(DELAY,776)
    dspba_delay_ver #( .width(1), .depth(23), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist67_xMSB_uid133_i_div_if_loop_330_b_24 ( .xin(redist66_xMSB_uid133_i_div_if_loop_330_b_1_q), .xout(redist67_xMSB_uid133_i_div_if_loop_330_b_24_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist68_xMSB_uid133_i_div_if_loop_330_b_32(DELAY,777)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist68_xMSB_uid133_i_div_if_loop_330_b_32 ( .xin(redist67_xMSB_uid133_i_div_if_loop_330_b_24_q), .xout(redist68_xMSB_uid133_i_div_if_loop_330_b_32_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_notEnable(LOGICAL,838)
    assign redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_nor(LOGICAL,839)
    assign redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_nor_q = ~ (redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_notEnable_q | redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_sticky_ena_q);

    // redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_cmpReg(REG,837)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_sticky_ena(REG,840)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_nor_q == 1'b1)
        begin
            redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_sticky_ena_q <= $unsigned(redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_cmpReg_q);
        end
    end

    // redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_enaAnd(LOGICAL,841)
    assign redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_enaAnd_q = redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_sticky_ena_q & VCC_q;

    // redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt(COUNTER,835)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_i <= $unsigned(redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_q = redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_i[0:0];

    // valid_fanout_reg10(REG,203)@43 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist90_sync_together100_aunroll_x_in_i_valid_42_q);
        end
    end

    // valid_fanout_reg11(REG,204)@53 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist91_sync_together100_aunroll_x_in_i_valid_52_q);
        end
    end

    // i_llvm_fpga_push_i32_sum_023_push7_if_loop_332(BLACKBOX,101)@54
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    if_loop_3_i_llvm_fpga_push_i32_sum_023_push7_0 thei_llvm_fpga_push_i32_sum_023_push7_if_loop_332 (
        .in_data_in(i_acl_if_loop_331_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_feedback_stall_out_7),
        .in_keep_going(redist77_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_42_q),
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

    // redist84_sync_together100_aunroll_x_in_c0_eni1_1_tpl_43(DELAY,793)
    dspba_delay_ver #( .width(1), .depth(30), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist84_sync_together100_aunroll_x_in_c0_eni1_1_tpl_43 ( .xin(redist83_sync_together100_aunroll_x_in_c0_eni1_1_tpl_13_q), .xout(redist84_sync_together100_aunroll_x_in_c0_eni1_1_tpl_43_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_100076(CONSTANT,61)
    assign c_i32_100076_q = $unsigned(32'b00000000000000000000001111101000);

    // i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329(BLACKBOX,94)@44
    // out out_feedback_stall_out_7@20000000
    if_loop_3_i_llvm_fpga_pop_i32_sum_023_pop7_0 thei_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329 (
        .in_data_in(c_i32_100076_q),
        .in_dir(redist84_sync_together100_aunroll_x_in_c0_eni1_1_tpl_43_q),
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

    // redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_inputreg0(DELAY,832)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_inputreg0_q <= '0;
        end
        else
        begin
            redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out);
        end
    end

    // redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_wraddr(REG,836)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_wraddr_q <= $unsigned(redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_q);
        end
    end

    // redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem(DUALMEM,834)
    assign redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_ia = $unsigned(redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_inputreg0_q);
    assign redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_aa = redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_wraddr_q;
    assign redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_ab = redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_rdcnt_q;
    assign redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_reset0 = ~ (resetn);
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
        .intended_device_family("Cyclone V")
    ) redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_dmem (
        .clocken1(redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_reset0),
        .clock1(clock),
        .address_a(redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_aa),
        .data_a(redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_ab),
        .q_b(redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_iq),
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
    assign redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_q = redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_iq[31:0];

    // redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_outputreg0(DELAY,833)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_outputreg0_q <= '0;
        end
        else
        begin
            redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_outputreg0_q <= $unsigned(redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_mem_q);
        end
    end

    // signX_uid171_i_div_if_loop_330(BITSELECT,170)@49
    assign signX_uid171_i_div_if_loop_330_b = $unsigned(redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_outputreg0_q[31:31]);

    // redist56_signX_uid171_i_div_if_loop_330_b_3(DELAY,765)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_signX_uid171_i_div_if_loop_330_b_3_delay_0 <= '0;
            redist56_signX_uid171_i_div_if_loop_330_b_3_delay_1 <= '0;
            redist56_signX_uid171_i_div_if_loop_330_b_3_q <= '0;
        end
        else
        begin
            redist56_signX_uid171_i_div_if_loop_330_b_3_delay_0 <= $unsigned(signX_uid171_i_div_if_loop_330_b);
            redist56_signX_uid171_i_div_if_loop_330_b_3_delay_1 <= redist56_signX_uid171_i_div_if_loop_330_b_3_delay_0;
            redist56_signX_uid171_i_div_if_loop_330_b_3_q <= redist56_signX_uid171_i_div_if_loop_330_b_3_delay_1;
        end
    end

    // resultSign_uid181_i_div_if_loop_330(LOGICAL,180)@52 + 1
    assign resultSign_uid181_i_div_if_loop_330_qi = redist56_signX_uid171_i_div_if_loop_330_b_3_q ^ redist68_xMSB_uid133_i_div_if_loop_330_b_32_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    resultSign_uid181_i_div_if_loop_330_delay ( .xin(resultSign_uid181_i_div_if_loop_330_qi), .xout(resultSign_uid181_i_div_if_loop_330_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstSubFinal_uid189_i_div_if_loop_330(BITJOIN,188)@53
    assign cstSubFinal_uid189_i_div_if_loop_330_q = {resultSign_uid181_i_div_if_loop_330_q, VCC_q};

    // cstValOvfneg_uid170_i_div_if_loop_330(CONSTANT,169)
    assign cstValOvfneg_uid170_i_div_if_loop_330_q = $unsigned(32'b10000000000000000000000000000000);

    // cstValOvfPos_uid169_i_div_if_loop_330(CONSTANT,168)
    assign cstValOvfPos_uid169_i_div_if_loop_330_q = $unsigned(32'b01111111111111111111111111111111);

    // cstOvf_uid172_i_div_if_loop_330(MUX,171)@49
    assign cstOvf_uid172_i_div_if_loop_330_s = signX_uid171_i_div_if_loop_330_b;
    always @(cstOvf_uid172_i_div_if_loop_330_s or cstValOvfPos_uid169_i_div_if_loop_330_q or cstValOvfneg_uid170_i_div_if_loop_330_q)
    begin
        unique case (cstOvf_uid172_i_div_if_loop_330_s)
            1'b0 : cstOvf_uid172_i_div_if_loop_330_q = cstValOvfPos_uid169_i_div_if_loop_330_q;
            1'b1 : cstOvf_uid172_i_div_if_loop_330_q = cstValOvfneg_uid170_i_div_if_loop_330_q;
            default : cstOvf_uid172_i_div_if_loop_330_q = 32'b0;
        endcase
    end

    // prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1(BITSELECT,655)@46
    assign prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b = $unsigned(prodXInvY_uid162_i_div_if_loop_330_sums_align_1_q[52:52]);

    // prodXInvY_uid162_i_div_if_loop_330_bjB6(BITJOIN,382)@44
    assign prodXInvY_uid162_i_div_if_loop_330_bjB6_q = {GND_q, prodXInvY_uid162_i_div_if_loop_330_bs2_merged_bit_select_c};

    // oneInvRes_uid153_i_div_if_loop_330(CONSTANT,152)
    assign oneInvRes_uid153_i_div_if_loop_330_q = $unsigned(33'b100000000000000000000000000000000);

    // redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_notEnable(LOGICAL,813)
    assign redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_nor(LOGICAL,814)
    assign redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_nor_q = ~ (redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_notEnable_q | redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_sticky_ena_q);

    // redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_last(CONSTANT,810)
    assign redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_last_q = $unsigned(2'b01);

    // redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_cmp(LOGICAL,811)
    assign redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_cmp_q = $unsigned(redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_last_q == redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_rdcnt_q ? 1'b1 : 1'b0);

    // redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_cmpReg(REG,812)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_cmpReg_q <= $unsigned(redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_cmp_q);
        end
    end

    // redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_sticky_ena(REG,815)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_nor_q == 1'b1)
        begin
            redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_sticky_ena_q <= $unsigned(redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_cmpReg_q);
        end
    end

    // redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_enaAnd(LOGICAL,816)
    assign redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_enaAnd_q = redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_sticky_ena_q & VCC_q;

    // redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_rdcnt(COUNTER,808)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_rdcnt_i <= 2'd0;
            redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_rdcnt_i == 2'd1)
            begin
                redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_rdcnt_eq <= 1'b0;
            end
            if (redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_rdcnt_eq == 1'b1)
            begin
                redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_rdcnt_i <= $unsigned(redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_rdcnt_i <= $unsigned(redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_rdcnt_q = redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_rdcnt_i[1:0];

    // leftShiftStage2Idx3Rng3_uid372_normY_uid140_i_div_if_loop_330(BITSELECT,371)@27
    assign leftShiftStage2Idx3Rng3_uid372_normY_uid140_i_div_if_loop_330_in = leftShiftStage1_uid364_normY_uid140_i_div_if_loop_330_q[28:0];
    assign leftShiftStage2Idx3Rng3_uid372_normY_uid140_i_div_if_loop_330_b = leftShiftStage2Idx3Rng3_uid372_normY_uid140_i_div_if_loop_330_in[28:0];

    // leftShiftStage2Idx3Pad3_uid371_normY_uid140_i_div_if_loop_330(CONSTANT,370)
    assign leftShiftStage2Idx3Pad3_uid371_normY_uid140_i_div_if_loop_330_q = $unsigned(3'b000);

    // leftShiftStage2Idx3_uid373_normY_uid140_i_div_if_loop_330(BITJOIN,372)@27
    assign leftShiftStage2Idx3_uid373_normY_uid140_i_div_if_loop_330_q = {leftShiftStage2Idx3Rng3_uid372_normY_uid140_i_div_if_loop_330_b, leftShiftStage2Idx3Pad3_uid371_normY_uid140_i_div_if_loop_330_q};

    // leftShiftStage2Idx2Rng2_uid369_normY_uid140_i_div_if_loop_330(BITSELECT,368)@27
    assign leftShiftStage2Idx2Rng2_uid369_normY_uid140_i_div_if_loop_330_in = leftShiftStage1_uid364_normY_uid140_i_div_if_loop_330_q[29:0];
    assign leftShiftStage2Idx2Rng2_uid369_normY_uid140_i_div_if_loop_330_b = leftShiftStage2Idx2Rng2_uid369_normY_uid140_i_div_if_loop_330_in[29:0];

    // leftShiftStage2Idx2_uid370_normY_uid140_i_div_if_loop_330(BITJOIN,369)@27
    assign leftShiftStage2Idx2_uid370_normY_uid140_i_div_if_loop_330_q = {leftShiftStage2Idx2Rng2_uid369_normY_uid140_i_div_if_loop_330_b, i_mptr_bitcast_index25_if_loop_30_c_i2_01_x_q};

    // leftShiftStage2Idx1Rng1_uid366_normY_uid140_i_div_if_loop_330(BITSELECT,365)@27
    assign leftShiftStage2Idx1Rng1_uid366_normY_uid140_i_div_if_loop_330_in = leftShiftStage1_uid364_normY_uid140_i_div_if_loop_330_q[30:0];
    assign leftShiftStage2Idx1Rng1_uid366_normY_uid140_i_div_if_loop_330_b = leftShiftStage2Idx1Rng1_uid366_normY_uid140_i_div_if_loop_330_in[30:0];

    // leftShiftStage2Idx1_uid367_normY_uid140_i_div_if_loop_330(BITJOIN,366)@27
    assign leftShiftStage2Idx1_uid367_normY_uid140_i_div_if_loop_330_q = {leftShiftStage2Idx1Rng1_uid366_normY_uid140_i_div_if_loop_330_b, GND_q};

    // leftShiftStage1Idx3Rng12_uid361_normY_uid140_i_div_if_loop_330(BITSELECT,360)@27
    assign leftShiftStage1Idx3Rng12_uid361_normY_uid140_i_div_if_loop_330_in = leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_q[19:0];
    assign leftShiftStage1Idx3Rng12_uid361_normY_uid140_i_div_if_loop_330_b = leftShiftStage1Idx3Rng12_uid361_normY_uid140_i_div_if_loop_330_in[19:0];

    // rightBottomX_bottomExtension_uid305_pT3_uid272_invPolyEval(CONSTANT,304)
    assign rightBottomX_bottomExtension_uid305_pT3_uid272_invPolyEval_q = $unsigned(12'b000000000000);

    // leftShiftStage1Idx3_uid362_normY_uid140_i_div_if_loop_330(BITJOIN,361)@27
    assign leftShiftStage1Idx3_uid362_normY_uid140_i_div_if_loop_330_q = {leftShiftStage1Idx3Rng12_uid361_normY_uid140_i_div_if_loop_330_b, rightBottomX_bottomExtension_uid305_pT3_uid272_invPolyEval_q};

    // leftShiftStage1Idx2Rng8_uid358_normY_uid140_i_div_if_loop_330(BITSELECT,357)@27
    assign leftShiftStage1Idx2Rng8_uid358_normY_uid140_i_div_if_loop_330_in = leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_q[23:0];
    assign leftShiftStage1Idx2Rng8_uid358_normY_uid140_i_div_if_loop_330_b = leftShiftStage1Idx2Rng8_uid358_normY_uid140_i_div_if_loop_330_in[23:0];

    // zs_uid220_zCount_uid139_i_div_if_loop_330(CONSTANT,219)
    assign zs_uid220_zCount_uid139_i_div_if_loop_330_q = $unsigned(8'b00000000);

    // leftShiftStage1Idx2_uid359_normY_uid140_i_div_if_loop_330(BITJOIN,358)@27
    assign leftShiftStage1Idx2_uid359_normY_uid140_i_div_if_loop_330_q = {leftShiftStage1Idx2Rng8_uid358_normY_uid140_i_div_if_loop_330_b, zs_uid220_zCount_uid139_i_div_if_loop_330_q};

    // leftShiftStage1Idx1Rng4_uid355_normY_uid140_i_div_if_loop_330(BITSELECT,354)@27
    assign leftShiftStage1Idx1Rng4_uid355_normY_uid140_i_div_if_loop_330_in = leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid355_normY_uid140_i_div_if_loop_330_b = leftShiftStage1Idx1Rng4_uid355_normY_uid140_i_div_if_loop_330_in[27:0];

    // zs_uid226_zCount_uid139_i_div_if_loop_330(CONSTANT,225)
    assign zs_uid226_zCount_uid139_i_div_if_loop_330_q = $unsigned(4'b0000);

    // leftShiftStage1Idx1_uid356_normY_uid140_i_div_if_loop_330(BITJOIN,355)@27
    assign leftShiftStage1Idx1_uid356_normY_uid140_i_div_if_loop_330_q = {leftShiftStage1Idx1Rng4_uid355_normY_uid140_i_div_if_loop_330_b, zs_uid226_zCount_uid139_i_div_if_loop_330_q};

    // leftShiftStage0Idx1Rng16_uid348_normY_uid140_i_div_if_loop_330(BITSELECT,347)@26
    assign leftShiftStage0Idx1Rng16_uid348_normY_uid140_i_div_if_loop_330_in = redist65_yPS_uid138_i_div_if_loop_330_b_5_q[15:0];
    assign leftShiftStage0Idx1Rng16_uid348_normY_uid140_i_div_if_loop_330_b = leftShiftStage0Idx1Rng16_uid348_normY_uid140_i_div_if_loop_330_in[15:0];

    // zs_uid214_zCount_uid139_i_div_if_loop_330(CONSTANT,213)
    assign zs_uid214_zCount_uid139_i_div_if_loop_330_q = $unsigned(16'b0000000000000000);

    // leftShiftStage0Idx1_uid349_normY_uid140_i_div_if_loop_330(BITJOIN,348)@26
    assign leftShiftStage0Idx1_uid349_normY_uid140_i_div_if_loop_330_q = {leftShiftStage0Idx1Rng16_uid348_normY_uid140_i_div_if_loop_330_b, zs_uid214_zCount_uid139_i_div_if_loop_330_q};

    // yPSE_uid135_i_div_if_loop_330(LOGICAL,134)@20 + 1
    assign yPSE_uid135_i_div_if_loop_330_b = $unsigned({{31{xMSB_uid133_i_div_if_loop_330_b[0]}}, xMSB_uid133_i_div_if_loop_330_b});
    assign yPSE_uid135_i_div_if_loop_330_qi = redist92_bgTrunc_i_sub_if_loop_326_sel_x_b_1_q ^ yPSE_uid135_i_div_if_loop_330_b;
    dspba_delay_ver #( .width(32), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    yPSE_uid135_i_div_if_loop_330_delay ( .xin(yPSE_uid135_i_div_if_loop_330_qi), .xout(yPSE_uid135_i_div_if_loop_330_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // yPSEA_uid137_i_div_if_loop_330(ADD,136)@21
    assign yPSEA_uid137_i_div_if_loop_330_a = {1'b0, yPSE_uid135_i_div_if_loop_330_q};
    assign yPSEA_uid137_i_div_if_loop_330_b = {32'b00000000000000000000000000000000, redist66_xMSB_uid133_i_div_if_loop_330_b_1_q};
    assign yPSEA_uid137_i_div_if_loop_330_o = $unsigned(yPSEA_uid137_i_div_if_loop_330_a) + $unsigned(yPSEA_uid137_i_div_if_loop_330_b);
    assign yPSEA_uid137_i_div_if_loop_330_q = yPSEA_uid137_i_div_if_loop_330_o[32:0];

    // yPS_uid138_i_div_if_loop_330(BITSELECT,137)@21
    assign yPS_uid138_i_div_if_loop_330_in = $unsigned(yPSEA_uid137_i_div_if_loop_330_q[31:0]);
    assign yPS_uid138_i_div_if_loop_330_b = $unsigned(yPS_uid138_i_div_if_loop_330_in[31:0]);

    // redist63_yPS_uid138_i_div_if_loop_330_b_1(DELAY,772)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_yPS_uid138_i_div_if_loop_330_b_1_q <= '0;
        end
        else
        begin
            redist63_yPS_uid138_i_div_if_loop_330_b_1_q <= $unsigned(yPS_uid138_i_div_if_loop_330_b);
        end
    end

    // redist64_yPS_uid138_i_div_if_loop_330_b_2(DELAY,773)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_yPS_uid138_i_div_if_loop_330_b_2_q <= '0;
        end
        else
        begin
            redist64_yPS_uid138_i_div_if_loop_330_b_2_q <= $unsigned(redist63_yPS_uid138_i_div_if_loop_330_b_1_q);
        end
    end

    // redist65_yPS_uid138_i_div_if_loop_330_b_5_inputreg0(DELAY,831)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_yPS_uid138_i_div_if_loop_330_b_5_inputreg0_q <= '0;
        end
        else
        begin
            redist65_yPS_uid138_i_div_if_loop_330_b_5_inputreg0_q <= $unsigned(redist64_yPS_uid138_i_div_if_loop_330_b_2_q);
        end
    end

    // redist65_yPS_uid138_i_div_if_loop_330_b_5(DELAY,774)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_yPS_uid138_i_div_if_loop_330_b_5_delay_0 <= '0;
            redist65_yPS_uid138_i_div_if_loop_330_b_5_q <= '0;
        end
        else
        begin
            redist65_yPS_uid138_i_div_if_loop_330_b_5_delay_0 <= $unsigned(redist65_yPS_uid138_i_div_if_loop_330_b_5_inputreg0_q);
            redist65_yPS_uid138_i_div_if_loop_330_b_5_q <= redist65_yPS_uid138_i_div_if_loop_330_b_5_delay_0;
        end
    end

    // vCount_uid210_zCount_uid139_i_div_if_loop_330(LOGICAL,209)@22 + 1
    assign vCount_uid210_zCount_uid139_i_div_if_loop_330_qi = $unsigned(redist63_yPS_uid138_i_div_if_loop_330_b_1_q == c_i32_074_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid210_zCount_uid139_i_div_if_loop_330_delay ( .xin(vCount_uid210_zCount_uid139_i_div_if_loop_330_qi), .xout(vCount_uid210_zCount_uid139_i_div_if_loop_330_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist52_vCount_uid210_zCount_uid139_i_div_if_loop_330_q_4(DELAY,761)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_vCount_uid210_zCount_uid139_i_div_if_loop_330_q_4_delay_0 <= '0;
            redist52_vCount_uid210_zCount_uid139_i_div_if_loop_330_q_4_delay_1 <= '0;
            redist52_vCount_uid210_zCount_uid139_i_div_if_loop_330_q_4_q <= '0;
        end
        else
        begin
            redist52_vCount_uid210_zCount_uid139_i_div_if_loop_330_q_4_delay_0 <= $unsigned(vCount_uid210_zCount_uid139_i_div_if_loop_330_q);
            redist52_vCount_uid210_zCount_uid139_i_div_if_loop_330_q_4_delay_1 <= redist52_vCount_uid210_zCount_uid139_i_div_if_loop_330_q_4_delay_0;
            redist52_vCount_uid210_zCount_uid139_i_div_if_loop_330_q_4_q <= redist52_vCount_uid210_zCount_uid139_i_div_if_loop_330_q_4_delay_1;
        end
    end

    // c_i32_175_recast_x(CONSTANT,5)
    assign c_i32_175_recast_x_q = $unsigned(32'b11111111111111111111111111111111);

    // vStagei_uid213_zCount_uid139_i_div_if_loop_330(MUX,212)@23
    assign vStagei_uid213_zCount_uid139_i_div_if_loop_330_s = vCount_uid210_zCount_uid139_i_div_if_loop_330_q;
    always @(vStagei_uid213_zCount_uid139_i_div_if_loop_330_s or redist64_yPS_uid138_i_div_if_loop_330_b_2_q or c_i32_175_recast_x_q)
    begin
        unique case (vStagei_uid213_zCount_uid139_i_div_if_loop_330_s)
            1'b0 : vStagei_uid213_zCount_uid139_i_div_if_loop_330_q = redist64_yPS_uid138_i_div_if_loop_330_b_2_q;
            1'b1 : vStagei_uid213_zCount_uid139_i_div_if_loop_330_q = c_i32_175_recast_x_q;
            default : vStagei_uid213_zCount_uid139_i_div_if_loop_330_q = 32'b0;
        endcase
    end

    // rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select(BITSELECT,700)@23
    assign rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_b = vStagei_uid213_zCount_uid139_i_div_if_loop_330_q[31:16];
    assign rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_c = vStagei_uid213_zCount_uid139_i_div_if_loop_330_q[15:0];

    // vCount_uid216_zCount_uid139_i_div_if_loop_330(LOGICAL,215)@23 + 1
    assign vCount_uid216_zCount_uid139_i_div_if_loop_330_qi = $unsigned(rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_b == zs_uid214_zCount_uid139_i_div_if_loop_330_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid216_zCount_uid139_i_div_if_loop_330_delay ( .xin(vCount_uid216_zCount_uid139_i_div_if_loop_330_qi), .xout(vCount_uid216_zCount_uid139_i_div_if_loop_330_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist51_vCount_uid216_zCount_uid139_i_div_if_loop_330_q_3(DELAY,760)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_vCount_uid216_zCount_uid139_i_div_if_loop_330_q_3_delay_0 <= '0;
            redist51_vCount_uid216_zCount_uid139_i_div_if_loop_330_q_3_q <= '0;
        end
        else
        begin
            redist51_vCount_uid216_zCount_uid139_i_div_if_loop_330_q_3_delay_0 <= $unsigned(vCount_uid216_zCount_uid139_i_div_if_loop_330_q);
            redist51_vCount_uid216_zCount_uid139_i_div_if_loop_330_q_3_q <= redist51_vCount_uid216_zCount_uid139_i_div_if_loop_330_q_3_delay_0;
        end
    end

    // redist5_rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_c_1(DELAY,714)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist5_rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_c_1_q <= $unsigned(rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_c);
        end
    end

    // redist4_rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_b_1(DELAY,713)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist4_rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_b_1_q <= $unsigned(rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_b);
        end
    end

    // vStagei_uid219_zCount_uid139_i_div_if_loop_330(MUX,218)@24
    assign vStagei_uid219_zCount_uid139_i_div_if_loop_330_s = vCount_uid216_zCount_uid139_i_div_if_loop_330_q;
    always @(vStagei_uid219_zCount_uid139_i_div_if_loop_330_s or redist4_rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_b_1_q or redist5_rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_c_1_q)
    begin
        unique case (vStagei_uid219_zCount_uid139_i_div_if_loop_330_s)
            1'b0 : vStagei_uid219_zCount_uid139_i_div_if_loop_330_q = redist4_rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_b_1_q;
            1'b1 : vStagei_uid219_zCount_uid139_i_div_if_loop_330_q = redist5_rVStage_uid215_zCount_uid139_i_div_if_loop_330_merged_bit_select_c_1_q;
            default : vStagei_uid219_zCount_uid139_i_div_if_loop_330_q = 16'b0;
        endcase
    end

    // rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select(BITSELECT,701)@24
    assign rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_b = vStagei_uid219_zCount_uid139_i_div_if_loop_330_q[15:8];
    assign rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_c = vStagei_uid219_zCount_uid139_i_div_if_loop_330_q[7:0];

    // vCount_uid222_zCount_uid139_i_div_if_loop_330(LOGICAL,221)@24 + 1
    assign vCount_uid222_zCount_uid139_i_div_if_loop_330_qi = $unsigned(rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_b == zs_uid220_zCount_uid139_i_div_if_loop_330_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid222_zCount_uid139_i_div_if_loop_330_delay ( .xin(vCount_uid222_zCount_uid139_i_div_if_loop_330_qi), .xout(vCount_uid222_zCount_uid139_i_div_if_loop_330_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist50_vCount_uid222_zCount_uid139_i_div_if_loop_330_q_2(DELAY,759)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_vCount_uid222_zCount_uid139_i_div_if_loop_330_q_2_q <= '0;
        end
        else
        begin
            redist50_vCount_uid222_zCount_uid139_i_div_if_loop_330_q_2_q <= $unsigned(vCount_uid222_zCount_uid139_i_div_if_loop_330_q);
        end
    end

    // redist3_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_c_1(DELAY,712)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist3_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_c_1_q <= $unsigned(rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_c);
        end
    end

    // redist2_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_b_1(DELAY,711)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist2_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_b_1_q <= $unsigned(rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_b);
        end
    end

    // vStagei_uid225_zCount_uid139_i_div_if_loop_330(MUX,224)@25
    assign vStagei_uid225_zCount_uid139_i_div_if_loop_330_s = vCount_uid222_zCount_uid139_i_div_if_loop_330_q;
    always @(vStagei_uid225_zCount_uid139_i_div_if_loop_330_s or redist2_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_b_1_q or redist3_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_c_1_q)
    begin
        unique case (vStagei_uid225_zCount_uid139_i_div_if_loop_330_s)
            1'b0 : vStagei_uid225_zCount_uid139_i_div_if_loop_330_q = redist2_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_b_1_q;
            1'b1 : vStagei_uid225_zCount_uid139_i_div_if_loop_330_q = redist3_rVStage_uid221_zCount_uid139_i_div_if_loop_330_merged_bit_select_c_1_q;
            default : vStagei_uid225_zCount_uid139_i_div_if_loop_330_q = 8'b0;
        endcase
    end

    // rVStage_uid227_zCount_uid139_i_div_if_loop_330_merged_bit_select(BITSELECT,702)@25
    assign rVStage_uid227_zCount_uid139_i_div_if_loop_330_merged_bit_select_b = vStagei_uid225_zCount_uid139_i_div_if_loop_330_q[7:4];
    assign rVStage_uid227_zCount_uid139_i_div_if_loop_330_merged_bit_select_c = vStagei_uid225_zCount_uid139_i_div_if_loop_330_q[3:0];

    // vCount_uid228_zCount_uid139_i_div_if_loop_330(LOGICAL,227)@25
    assign vCount_uid228_zCount_uid139_i_div_if_loop_330_q = $unsigned(rVStage_uid227_zCount_uid139_i_div_if_loop_330_merged_bit_select_b == zs_uid226_zCount_uid139_i_div_if_loop_330_q ? 1'b1 : 1'b0);

    // redist49_vCount_uid228_zCount_uid139_i_div_if_loop_330_q_1(DELAY,758)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_vCount_uid228_zCount_uid139_i_div_if_loop_330_q_1_q <= '0;
        end
        else
        begin
            redist49_vCount_uid228_zCount_uid139_i_div_if_loop_330_q_1_q <= $unsigned(vCount_uid228_zCount_uid139_i_div_if_loop_330_q);
        end
    end

    // vStagei_uid231_zCount_uid139_i_div_if_loop_330(MUX,230)@25 + 1
    assign vStagei_uid231_zCount_uid139_i_div_if_loop_330_s = vCount_uid228_zCount_uid139_i_div_if_loop_330_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vStagei_uid231_zCount_uid139_i_div_if_loop_330_q <= 4'b0;
        end
        else
        begin
            unique case (vStagei_uid231_zCount_uid139_i_div_if_loop_330_s)
                1'b0 : vStagei_uid231_zCount_uid139_i_div_if_loop_330_q <= rVStage_uid227_zCount_uid139_i_div_if_loop_330_merged_bit_select_b;
                1'b1 : vStagei_uid231_zCount_uid139_i_div_if_loop_330_q <= rVStage_uid227_zCount_uid139_i_div_if_loop_330_merged_bit_select_c;
                default : vStagei_uid231_zCount_uid139_i_div_if_loop_330_q <= 4'b0;
            endcase
        end
    end

    // rVStage_uid233_zCount_uid139_i_div_if_loop_330_merged_bit_select(BITSELECT,703)@26
    assign rVStage_uid233_zCount_uid139_i_div_if_loop_330_merged_bit_select_b = vStagei_uid231_zCount_uid139_i_div_if_loop_330_q[3:2];
    assign rVStage_uid233_zCount_uid139_i_div_if_loop_330_merged_bit_select_c = vStagei_uid231_zCount_uid139_i_div_if_loop_330_q[1:0];

    // vCount_uid234_zCount_uid139_i_div_if_loop_330(LOGICAL,233)@26
    assign vCount_uid234_zCount_uid139_i_div_if_loop_330_q = $unsigned(rVStage_uid233_zCount_uid139_i_div_if_loop_330_merged_bit_select_b == i_mptr_bitcast_index25_if_loop_30_c_i2_01_x_q ? 1'b1 : 1'b0);

    // vStagei_uid237_zCount_uid139_i_div_if_loop_330(MUX,236)@26
    assign vStagei_uid237_zCount_uid139_i_div_if_loop_330_s = vCount_uid234_zCount_uid139_i_div_if_loop_330_q;
    always @(vStagei_uid237_zCount_uid139_i_div_if_loop_330_s or rVStage_uid233_zCount_uid139_i_div_if_loop_330_merged_bit_select_b or rVStage_uid233_zCount_uid139_i_div_if_loop_330_merged_bit_select_c)
    begin
        unique case (vStagei_uid237_zCount_uid139_i_div_if_loop_330_s)
            1'b0 : vStagei_uid237_zCount_uid139_i_div_if_loop_330_q = rVStage_uid233_zCount_uid139_i_div_if_loop_330_merged_bit_select_b;
            1'b1 : vStagei_uid237_zCount_uid139_i_div_if_loop_330_q = rVStage_uid233_zCount_uid139_i_div_if_loop_330_merged_bit_select_c;
            default : vStagei_uid237_zCount_uid139_i_div_if_loop_330_q = 2'b0;
        endcase
    end

    // rVStage_uid239_zCount_uid139_i_div_if_loop_330(BITSELECT,238)@26
    assign rVStage_uid239_zCount_uid139_i_div_if_loop_330_b = vStagei_uid237_zCount_uid139_i_div_if_loop_330_q[1:1];

    // vCount_uid240_zCount_uid139_i_div_if_loop_330(LOGICAL,239)@26
    assign vCount_uid240_zCount_uid139_i_div_if_loop_330_q = $unsigned(rVStage_uid239_zCount_uid139_i_div_if_loop_330_b == GND_q ? 1'b1 : 1'b0);

    // r_uid241_zCount_uid139_i_div_if_loop_330(BITJOIN,240)@26
    assign r_uid241_zCount_uid139_i_div_if_loop_330_q = {redist52_vCount_uid210_zCount_uid139_i_div_if_loop_330_q_4_q, redist51_vCount_uid216_zCount_uid139_i_div_if_loop_330_q_3_q, redist50_vCount_uid222_zCount_uid139_i_div_if_loop_330_q_2_q, redist49_vCount_uid228_zCount_uid139_i_div_if_loop_330_q_1_q, vCount_uid234_zCount_uid139_i_div_if_loop_330_q, vCount_uid240_zCount_uid139_i_div_if_loop_330_q};

    // leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select(BITSELECT,704)@26
    assign leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_b = r_uid241_zCount_uid139_i_div_if_loop_330_q[5:4];
    assign leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_c = r_uid241_zCount_uid139_i_div_if_loop_330_q[3:2];
    assign leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_d = r_uid241_zCount_uid139_i_div_if_loop_330_q[1:0];

    // leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330(MUX,352)@26 + 1
    assign leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_s = leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_q <= 32'b0;
        end
        else
        begin
            unique case (leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_s)
                2'b00 : leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_q <= redist65_yPS_uid138_i_div_if_loop_330_b_5_q;
                2'b01 : leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_q <= leftShiftStage0Idx1_uid349_normY_uid140_i_div_if_loop_330_q;
                2'b10 : leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_q <= c_i32_074_q;
                2'b11 : leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_q <= c_i32_074_q;
                default : leftShiftStage0_uid353_normY_uid140_i_div_if_loop_330_q <= 32'b0;
            endcase
        end
    end

    // redist0_leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_c_1(DELAY,709)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_c_1_q <= $unsigned(leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_c);
        end
    end

    // leftShiftStage1_uid364_normY_uid140_i_div_if_loop_330(MUX,363)@27
    assign leftShiftStage1_uid364_normY_uid140_i_div_if_loop_330_s = redist0_leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_c_1_q;
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

    // redist1_leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_d_1(DELAY,710)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_d_1_q <= '0;
        end
        else
        begin
            redist1_leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_d_1_q <= $unsigned(leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_d);
        end
    end

    // leftShiftStage2_uid375_normY_uid140_i_div_if_loop_330(MUX,374)@27
    assign leftShiftStage2_uid375_normY_uid140_i_div_if_loop_330_s = redist1_leftShiftStageSel0Dto4_uid352_normY_uid140_i_div_if_loop_330_merged_bit_select_d_1_q;
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

    // normYNoLeadOne_uid141_i_div_if_loop_330(BITSELECT,140)@27
    assign normYNoLeadOne_uid141_i_div_if_loop_330_in = leftShiftStage2_uid375_normY_uid140_i_div_if_loop_330_q[30:0];
    assign normYNoLeadOne_uid141_i_div_if_loop_330_b = normYNoLeadOne_uid141_i_div_if_loop_330_in[30:0];

    // yAddr_uid149_i_div_if_loop_330_merged_bit_select(BITSELECT,696)@27
    assign yAddr_uid149_i_div_if_loop_330_merged_bit_select_b = normYNoLeadOne_uid141_i_div_if_loop_330_b[30:23];
    assign yAddr_uid149_i_div_if_loop_330_merged_bit_select_c = normYNoLeadOne_uid141_i_div_if_loop_330_b[22:0];

    // redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_3(DELAY,718)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_3_delay_0 <= '0;
            redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_3_delay_1 <= '0;
            redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_3_q <= '0;
        end
        else
        begin
            redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_3_delay_0 <= $unsigned(yAddr_uid149_i_div_if_loop_330_merged_bit_select_c);
            redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_3_delay_1 <= redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_3_delay_0;
            redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_3_q <= redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_3_delay_1;
        end
    end

    // redist10_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_7_inputreg0(DELAY,805)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_7_inputreg0_q <= '0;
        end
        else
        begin
            redist10_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_7_inputreg0_q <= $unsigned(redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_3_q);
        end
    end

    // redist10_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_7(DELAY,719)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_7_delay_0 <= '0;
            redist10_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_7_delay_1 <= '0;
            redist10_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_7_q <= '0;
        end
        else
        begin
            redist10_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_7_delay_0 <= $unsigned(redist10_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_7_inputreg0_q);
            redist10_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_7_delay_1 <= redist10_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_7_delay_0;
            redist10_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_7_q <= redist10_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_7_delay_1;
        end
    end

    // redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_inputreg0(DELAY,806)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_inputreg0_q <= '0;
        end
        else
        begin
            redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_inputreg0_q <= $unsigned(redist10_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_7_q);
        end
    end

    // redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_wraddr(REG,809)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_wraddr_q <= $unsigned(redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_rdcnt_q);
        end
    end

    // redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem(DUALMEM,807)
    assign redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_ia = $unsigned(redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_inputreg0_q);
    assign redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_aa = redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_wraddr_q;
    assign redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_ab = redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_rdcnt_q;
    assign redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_reset0 = ~ (resetn);
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
        .intended_device_family("Cyclone V")
    ) redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_dmem (
        .clocken1(redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_reset0),
        .clock1(clock),
        .address_a(redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_aa),
        .data_a(redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_ab),
        .q_b(redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_iq),
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
    assign redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_q = redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_iq[22:0];

    // nx_mergedSignalTM_uid296_pT3_uid272_invPolyEval(BITJOIN,295)@39
    assign nx_mergedSignalTM_uid296_pT3_uid272_invPolyEval_q = {GND_q, redist11_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_12_mem_q};

    // topRangeX_uid298_pT3_uid272_invPolyEval_merged_bit_select(BITSELECT,708)@39
    assign topRangeX_uid298_pT3_uid272_invPolyEval_merged_bit_select_b = $unsigned(nx_mergedSignalTM_uid296_pT3_uid272_invPolyEval_q[23:6]);
    assign topRangeX_uid298_pT3_uid272_invPolyEval_merged_bit_select_c = $unsigned(nx_mergedSignalTM_uid296_pT3_uid272_invPolyEval_q[5:0]);

    // aboveLeftY_bottomExtension_uid301_pT3_uid272_invPolyEval(CONSTANT,300)
    assign aboveLeftY_bottomExtension_uid301_pT3_uid272_invPolyEval_q = $unsigned(5'b00000);

    // aboveLeftY_mergedSignalTM_uid303_pT3_uid272_invPolyEval(BITJOIN,302)@39
    assign aboveLeftY_mergedSignalTM_uid303_pT3_uid272_invPolyEval_q = {topRangeY_uid299_pT3_uid272_invPolyEval_merged_bit_select_c, aboveLeftY_bottomExtension_uid301_pT3_uid272_invPolyEval_q};

    // yT2_uid265_invPolyEval(BITSELECT,264)@34
    assign yT2_uid265_invPolyEval_b = redist10_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_7_q[22:2];

    // prodXY_uid281_pT2_uid266_invPolyEval_bs1_merged_bit_select(BITSELECT,706)@34
    assign prodXY_uid281_pT2_uid266_invPolyEval_bs1_merged_bit_select_b = yT2_uid265_invPolyEval_b[17:0];
    assign prodXY_uid281_pT2_uid266_invPolyEval_bs1_merged_bit_select_c = yT2_uid265_invPolyEval_b[20:18];

    // memoryC3_uid252_invTabGen_lutmem(DUALMEM,450)@27 + 2
    // in j@20000000
    assign memoryC3_uid252_invTabGen_lutmem_aa = yAddr_uid149_i_div_if_loop_330_merged_bit_select_b;
    assign memoryC3_uid252_invTabGen_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
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
        .intended_device_family("Cyclone V")
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

    // redist38_memoryC3_uid252_invTabGen_lutmem_r_1(DELAY,747)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_memoryC3_uid252_invTabGen_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist38_memoryC3_uid252_invTabGen_lutmem_r_1_q <= $unsigned(memoryC3_uid252_invTabGen_lutmem_r);
        end
    end

    // yT1_uid259_invPolyEval(BITSELECT,258)@30
    assign yT1_uid259_invPolyEval_b = redist9_yAddr_uid149_i_div_if_loop_330_merged_bit_select_c_3_q[22:9];

    // prodXY_uid278_pT1_uid260_invPolyEval_cma(CHAINMULTADD,467)@30 + 2
    assign prodXY_uid278_pT1_uid260_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid278_pT1_uid260_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid278_pT1_uid260_invPolyEval_cma_ena1 = prodXY_uid278_pT1_uid260_invPolyEval_cma_ena0;
    assign prodXY_uid278_pT1_uid260_invPolyEval_cma_l[0] = $signed({1'b0, prodXY_uid278_pT1_uid260_invPolyEval_cma_a0[0][13:0]});
    assign prodXY_uid278_pT1_uid260_invPolyEval_cma_p[0] = prodXY_uid278_pT1_uid260_invPolyEval_cma_l[0] * prodXY_uid278_pT1_uid260_invPolyEval_cma_c0[0];
    assign prodXY_uid278_pT1_uid260_invPolyEval_cma_u[0] = prodXY_uid278_pT1_uid260_invPolyEval_cma_p[0][28:0];
    assign prodXY_uid278_pT1_uid260_invPolyEval_cma_w[0] = prodXY_uid278_pT1_uid260_invPolyEval_cma_u[0];
    assign prodXY_uid278_pT1_uid260_invPolyEval_cma_x[0] = prodXY_uid278_pT1_uid260_invPolyEval_cma_w[0];
    assign prodXY_uid278_pT1_uid260_invPolyEval_cma_y[0] = prodXY_uid278_pT1_uid260_invPolyEval_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid278_pT1_uid260_invPolyEval_cma_a0 <= '{default: '0};
            prodXY_uid278_pT1_uid260_invPolyEval_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid278_pT1_uid260_invPolyEval_cma_ena0 == 1'b1)
            begin
                prodXY_uid278_pT1_uid260_invPolyEval_cma_a0[0] <= yT1_uid259_invPolyEval_b;
                prodXY_uid278_pT1_uid260_invPolyEval_cma_c0[0] <= redist38_memoryC3_uid252_invTabGen_lutmem_r_1_q;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid278_pT1_uid260_invPolyEval_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid278_pT1_uid260_invPolyEval_cma_ena1 == 1'b1)
            begin
                prodXY_uid278_pT1_uid260_invPolyEval_cma_s[0] <= prodXY_uid278_pT1_uid260_invPolyEval_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(29), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid278_pT1_uid260_invPolyEval_cma_delay ( .xin(prodXY_uid278_pT1_uid260_invPolyEval_cma_s[0]), .xout(prodXY_uid278_pT1_uid260_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid278_pT1_uid260_invPolyEval_cma_q = $unsigned(prodXY_uid278_pT1_uid260_invPolyEval_cma_qq[27:0]);

    // osig_uid279_pT1_uid260_invPolyEval(BITSELECT,278)@32
    assign osig_uid279_pT1_uid260_invPolyEval_b = $unsigned(prodXY_uid278_pT1_uid260_invPolyEval_cma_q[27:14]);

    // highBBits_uid262_invPolyEval(BITSELECT,261)@32
    assign highBBits_uid262_invPolyEval_b = $unsigned(osig_uid279_pT1_uid260_invPolyEval_b[13:1]);

    // redist46_highBBits_uid262_invPolyEval_b_1(DELAY,755)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_highBBits_uid262_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist46_highBBits_uid262_invPolyEval_b_1_q <= $unsigned(highBBits_uid262_invPolyEval_b);
        end
    end

    // redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3(DELAY,715)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_delay_0 <= '0;
            redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_delay_1 <= '0;
            redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_q <= '0;
        end
        else
        begin
            redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_delay_0 <= $unsigned(yAddr_uid149_i_div_if_loop_330_merged_bit_select_b);
            redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_delay_1 <= redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_delay_0;
            redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_q <= redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_delay_1;
        end
    end

    // memoryC2_uid249_invTabGen_lutmem(DUALMEM,449)@30 + 2
    // in j@20000000
    assign memoryC2_uid249_invTabGen_lutmem_aa = redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_q;
    assign memoryC2_uid249_invTabGen_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
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
        .intended_device_family("Cyclone V")
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

    // redist39_memoryC2_uid249_invTabGen_lutmem_r_1(DELAY,748)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_memoryC2_uid249_invTabGen_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist39_memoryC2_uid249_invTabGen_lutmem_r_1_q <= $unsigned(memoryC2_uid249_invTabGen_lutmem_r);
        end
    end

    // s1sumAHighB_uid263_invPolyEval(ADD,262)@33 + 1
    assign s1sumAHighB_uid263_invPolyEval_a = $unsigned({{1{redist39_memoryC2_uid249_invTabGen_lutmem_r_1_q[20]}}, redist39_memoryC2_uid249_invTabGen_lutmem_r_1_q});
    assign s1sumAHighB_uid263_invPolyEval_b = $unsigned({{9{redist46_highBBits_uid262_invPolyEval_b_1_q[12]}}, redist46_highBBits_uid262_invPolyEval_b_1_q});
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

    // lowRangeB_uid261_invPolyEval(BITSELECT,260)@32
    assign lowRangeB_uid261_invPolyEval_in = osig_uid279_pT1_uid260_invPolyEval_b[0:0];
    assign lowRangeB_uid261_invPolyEval_b = lowRangeB_uid261_invPolyEval_in[0:0];

    // redist47_lowRangeB_uid261_invPolyEval_b_2(DELAY,756)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_lowRangeB_uid261_invPolyEval_b_2_delay_0 <= '0;
            redist47_lowRangeB_uid261_invPolyEval_b_2_q <= '0;
        end
        else
        begin
            redist47_lowRangeB_uid261_invPolyEval_b_2_delay_0 <= $unsigned(lowRangeB_uid261_invPolyEval_b);
            redist47_lowRangeB_uid261_invPolyEval_b_2_q <= redist47_lowRangeB_uid261_invPolyEval_b_2_delay_0;
        end
    end

    // s1_uid264_invPolyEval(BITJOIN,263)@34
    assign s1_uid264_invPolyEval_q = {s1sumAHighB_uid263_invPolyEval_q, redist47_lowRangeB_uid261_invPolyEval_b_2_q};

    // prodXY_uid281_pT2_uid266_invPolyEval_bs2_merged_bit_select(BITSELECT,705)@34
    assign prodXY_uid281_pT2_uid266_invPolyEval_bs2_merged_bit_select_b = $unsigned(s1_uid264_invPolyEval_q[17:0]);
    assign prodXY_uid281_pT2_uid266_invPolyEval_bs2_merged_bit_select_c = $unsigned(s1_uid264_invPolyEval_q[22:18]);

    // prodXY_uid281_pT2_uid266_invPolyEval_bjA7(BITJOIN,458)@34
    assign prodXY_uid281_pT2_uid266_invPolyEval_bjA7_q = {GND_q, prodXY_uid281_pT2_uid266_invPolyEval_bs1_merged_bit_select_c};

    // prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma(CHAINMULTADD,477)@34 + 2
    assign prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_reset = ~ (resetn);
    assign prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_ena0 = 1'b1;
    assign prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_ena1 = prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_ena0;
    assign prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_r[0] = $signed({1'b0, prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_c0[0][17:0]});
    assign prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_r[1] = $signed({1'b0, prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_c0[1][17:0]});
    assign prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_p[0] = prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_a0[0] * prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_r[0];
    assign prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_p[1] = prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_a0[1] * prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_r[1];
    assign prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_u[0] = {{1{prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_p[0][23]}}, prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_p[0][23:0]};
    assign prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_u[1] = {{1{prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_p[1][23]}}, prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_p[1][23:0]};
    assign prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_w[0] = prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_u[0] + prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_u[1];
    assign prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_x[0] = prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_w[0];
    assign prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_y[0] = prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_a0 <= '{default: '0};
            prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_ena0 == 1'b1)
            begin
                prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_a0[0] <= {{1{prodXY_uid281_pT2_uid266_invPolyEval_bjA7_q[3]}}, prodXY_uid281_pT2_uid266_invPolyEval_bjA7_q[3:0]};
                prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_a0[1] <= prodXY_uid281_pT2_uid266_invPolyEval_bs2_merged_bit_select_c;
                prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_c0[0] <= prodXY_uid281_pT2_uid266_invPolyEval_bs2_merged_bit_select_b;
                prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_c0[1] <= prodXY_uid281_pT2_uid266_invPolyEval_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_ena1 == 1'b1)
            begin
                prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_s[0] <= prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(25), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_delay ( .xin(prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_s[0]), .xout(prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_q = $unsigned(prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_qq[23:0]);

    // redist33_prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_q_1(DELAY,742)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_q_1_q <= '0;
        end
        else
        begin
            redist33_prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_q_1_q <= $unsigned(prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_q);
        end
    end

    // prodXY_uid281_pT2_uid266_invPolyEval_sums_align_1(BITSHIFT,464)@37
    assign prodXY_uid281_pT2_uid266_invPolyEval_sums_align_1_qint = { redist33_prodXY_uid281_pT2_uid266_invPolyEval_ma3_cma_q_1_q, 18'b000000000000000000 };
    assign prodXY_uid281_pT2_uid266_invPolyEval_sums_align_1_q = prodXY_uid281_pT2_uid266_invPolyEval_sums_align_1_qint[41:0];

    // prodXY_uid281_pT2_uid266_invPolyEval_im9(MULT,460)@34 + 2
    assign prodXY_uid281_pT2_uid266_invPolyEval_im9_pr = signed'({1'b0, prodXY_uid281_pT2_uid266_invPolyEval_im9_a0[2:0]}) * signed'(prodXY_uid281_pT2_uid266_invPolyEval_im9_b0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid281_pT2_uid266_invPolyEval_im9_a0 <= 3'b0;
            prodXY_uid281_pT2_uid266_invPolyEval_im9_b0 <= 5'b0;
            prodXY_uid281_pT2_uid266_invPolyEval_im9_s1 <= 8'b0;
        end
        else
        begin
            prodXY_uid281_pT2_uid266_invPolyEval_im9_a0 <= prodXY_uid281_pT2_uid266_invPolyEval_bs1_merged_bit_select_c;
            prodXY_uid281_pT2_uid266_invPolyEval_im9_b0 <= $unsigned(prodXY_uid281_pT2_uid266_invPolyEval_bs2_merged_bit_select_c);
            prodXY_uid281_pT2_uid266_invPolyEval_im9_s1 <= $unsigned(prodXY_uid281_pT2_uid266_invPolyEval_im9_pr[7:0]);
        end
    end
    assign prodXY_uid281_pT2_uid266_invPolyEval_im9_q = prodXY_uid281_pT2_uid266_invPolyEval_im9_s1;

    // redist37_prodXY_uid281_pT2_uid266_invPolyEval_im9_q_1(DELAY,746)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_prodXY_uid281_pT2_uid266_invPolyEval_im9_q_1_q <= '0;
        end
        else
        begin
            redist37_prodXY_uid281_pT2_uid266_invPolyEval_im9_q_1_q <= $unsigned(prodXY_uid281_pT2_uid266_invPolyEval_im9_q);
        end
    end

    // prodXY_uid281_pT2_uid266_invPolyEval_im0_cma(CHAINMULTADD,473)@34 + 2
    assign prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_reset = ~ (resetn);
    assign prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_ena0 = 1'b1;
    assign prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_ena1 = prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_ena0;
    assign prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_p[0] = prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_a0[0] * prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_c0[0];
    assign prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_u[0] = prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_p[0][35:0];
    assign prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_w[0] = prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_u[0];
    assign prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_x[0] = prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_w[0];
    assign prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_y[0] = prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_a0 <= '{default: '0};
            prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_ena0 == 1'b1)
            begin
                prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_a0[0] <= prodXY_uid281_pT2_uid266_invPolyEval_bs1_merged_bit_select_b;
                prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_c0[0] <= prodXY_uid281_pT2_uid266_invPolyEval_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_ena1 == 1'b1)
            begin
                prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_s[0] <= prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_delay ( .xin(prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_s[0]), .xout(prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_q = $unsigned(prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_qq[35:0]);

    // redist35_prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_q_1(DELAY,744)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_q_1_q <= '0;
        end
        else
        begin
            redist35_prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_q_1_q <= $unsigned(prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_q);
        end
    end

    // prodXY_uid281_pT2_uid266_invPolyEval_sums_join_0(BITJOIN,463)@37
    assign prodXY_uid281_pT2_uid266_invPolyEval_sums_join_0_q = {redist37_prodXY_uid281_pT2_uid266_invPolyEval_im9_q_1_q, redist35_prodXY_uid281_pT2_uid266_invPolyEval_im0_cma_q_1_q};

    // prodXY_uid281_pT2_uid266_invPolyEval_sums_result_add_0_0(ADD,466)@37
    assign prodXY_uid281_pT2_uid266_invPolyEval_sums_result_add_0_0_a = $unsigned({{1{prodXY_uid281_pT2_uid266_invPolyEval_sums_join_0_q[43]}}, prodXY_uid281_pT2_uid266_invPolyEval_sums_join_0_q});
    assign prodXY_uid281_pT2_uid266_invPolyEval_sums_result_add_0_0_b = $unsigned({{3{prodXY_uid281_pT2_uid266_invPolyEval_sums_align_1_q[41]}}, prodXY_uid281_pT2_uid266_invPolyEval_sums_align_1_q});
    assign prodXY_uid281_pT2_uid266_invPolyEval_sums_result_add_0_0_o = $unsigned($signed(prodXY_uid281_pT2_uid266_invPolyEval_sums_result_add_0_0_a) + $signed(prodXY_uid281_pT2_uid266_invPolyEval_sums_result_add_0_0_b));
    assign prodXY_uid281_pT2_uid266_invPolyEval_sums_result_add_0_0_q = prodXY_uid281_pT2_uid266_invPolyEval_sums_result_add_0_0_o[44:0];

    // osig_uid282_pT2_uid266_invPolyEval(BITSELECT,281)@37
    assign osig_uid282_pT2_uid266_invPolyEval_in = $unsigned(prodXY_uid281_pT2_uid266_invPolyEval_sums_result_add_0_0_q[43:0]);
    assign osig_uid282_pT2_uid266_invPolyEval_b = $unsigned(osig_uid282_pT2_uid266_invPolyEval_in[43:21]);

    // highBBits_uid268_invPolyEval(BITSELECT,267)@37
    assign highBBits_uid268_invPolyEval_b = $unsigned(osig_uid282_pT2_uid266_invPolyEval_b[22:1]);

    // redist44_highBBits_uid268_invPolyEval_b_1(DELAY,753)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_highBBits_uid268_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist44_highBBits_uid268_invPolyEval_b_1_q <= $unsigned(highBBits_uid268_invPolyEval_b);
        end
    end

    // redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_inputreg0(DELAY,803)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_inputreg0_q <= '0;
        end
        else
        begin
            redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_inputreg0_q <= $unsigned(redist6_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_3_q);
        end
    end

    // redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8(DELAY,716)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_delay_0 <= '0;
            redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_delay_1 <= '0;
            redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_delay_2 <= '0;
            redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_q <= '0;
        end
        else
        begin
            redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_delay_0 <= $unsigned(redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_inputreg0_q);
            redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_delay_1 <= redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_delay_0;
            redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_delay_2 <= redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_delay_1;
            redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_q <= redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_delay_2;
        end
    end

    // memoryC1_uid246_invTabGen_lutmem(DUALMEM,448)@35 + 2
    // in j@20000000
    assign memoryC1_uid246_invTabGen_lutmem_aa = redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_q;
    assign memoryC1_uid246_invTabGen_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
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
        .intended_device_family("Cyclone V")
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

    // redist40_memoryC1_uid246_invTabGen_lutmem_r_1(DELAY,749)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_memoryC1_uid246_invTabGen_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist40_memoryC1_uid246_invTabGen_lutmem_r_1_q <= $unsigned(memoryC1_uid246_invTabGen_lutmem_r);
        end
    end

    // s2sumAHighB_uid269_invPolyEval(ADD,268)@38 + 1
    assign s2sumAHighB_uid269_invPolyEval_a = $unsigned({{1{redist40_memoryC1_uid246_invTabGen_lutmem_r_1_q[28]}}, redist40_memoryC1_uid246_invTabGen_lutmem_r_1_q});
    assign s2sumAHighB_uid269_invPolyEval_b = $unsigned({{8{redist44_highBBits_uid268_invPolyEval_b_1_q[21]}}, redist44_highBBits_uid268_invPolyEval_b_1_q});
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

    // lowRangeB_uid267_invPolyEval(BITSELECT,266)@37
    assign lowRangeB_uid267_invPolyEval_in = osig_uid282_pT2_uid266_invPolyEval_b[0:0];
    assign lowRangeB_uid267_invPolyEval_b = lowRangeB_uid267_invPolyEval_in[0:0];

    // redist45_lowRangeB_uid267_invPolyEval_b_2(DELAY,754)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_lowRangeB_uid267_invPolyEval_b_2_delay_0 <= '0;
            redist45_lowRangeB_uid267_invPolyEval_b_2_q <= '0;
        end
        else
        begin
            redist45_lowRangeB_uid267_invPolyEval_b_2_delay_0 <= $unsigned(lowRangeB_uid267_invPolyEval_b);
            redist45_lowRangeB_uid267_invPolyEval_b_2_q <= redist45_lowRangeB_uid267_invPolyEval_b_2_delay_0;
        end
    end

    // s2_uid270_invPolyEval(BITJOIN,269)@39
    assign s2_uid270_invPolyEval_q = {s2sumAHighB_uid269_invPolyEval_q, redist45_lowRangeB_uid267_invPolyEval_b_2_q};

    // topRangeY_uid299_pT3_uid272_invPolyEval_merged_bit_select(BITSELECT,707)@39
    assign topRangeY_uid299_pT3_uid272_invPolyEval_merged_bit_select_b = $unsigned(s2_uid270_invPolyEval_q[30:13]);
    assign topRangeY_uid299_pT3_uid272_invPolyEval_merged_bit_select_c = $unsigned(s2_uid270_invPolyEval_q[12:0]);

    // rightBottomX_mergedSignalTM_uid307_pT3_uid272_invPolyEval(BITJOIN,306)@39
    assign rightBottomX_mergedSignalTM_uid307_pT3_uid272_invPolyEval_q = {topRangeX_uid298_pT3_uid272_invPolyEval_merged_bit_select_c, rightBottomX_bottomExtension_uid305_pT3_uid272_invPolyEval_q};

    // multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma(CHAINMULTADD,474)@39 + 2
    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_reset = ~ (resetn);
    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_ena0 = 1'b1;
    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_ena1 = multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_ena0;
    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_l[0] = $signed({1'b0, multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_a0[0][17:0]});
    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_l[1] = $signed({1'b0, multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_a0[1][17:0]});
    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_p[0] = multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_l[0] * multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_c0[0];
    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_p[1] = multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_l[1] * multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_c0[1];
    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_u[0] = {{1{multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_p[0][36]}}, multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_p[0][36:0]};
    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_u[1] = {{1{multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_p[1][36]}}, multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_p[1][36:0]};
    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_w[0] = multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_u[0] + multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_u[1];
    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_x[0] = multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_w[0];
    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_y[0] = multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_a0 <= '{default: '0};
            multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_ena0 == 1'b1)
            begin
                multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_a0[0] <= rightBottomX_mergedSignalTM_uid307_pT3_uid272_invPolyEval_q;
                multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_a0[1] <= aboveLeftY_mergedSignalTM_uid303_pT3_uid272_invPolyEval_q;
                multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_c0[0] <= topRangeY_uid299_pT3_uid272_invPolyEval_merged_bit_select_b;
                multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_c0[1] <= topRangeX_uid298_pT3_uid272_invPolyEval_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_s <= '{default: '0};
        end
        else
        begin
            if (multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_ena1 == 1'b1)
            begin
                multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_s[0] <= multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(38), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_delay ( .xin(multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_s[0]), .xout(multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_q = $unsigned(multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_qq[36:0]);

    // redist34_multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_q_1(DELAY,743)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_q_1_q <= '0;
        end
        else
        begin
            redist34_multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_q_1_q <= $unsigned(multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_q);
        end
    end

    // highBBits_uid314_pT3_uid272_invPolyEval(BITSELECT,313)@42
    assign highBBits_uid314_pT3_uid272_invPolyEval_b = $unsigned(redist34_multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_q_1_q[36:18]);

    // sm0_uid310_pT3_uid272_invPolyEval_cma(CHAINMULTADD,468)@39 + 2
    assign sm0_uid310_pT3_uid272_invPolyEval_cma_reset = ~ (resetn);
    assign sm0_uid310_pT3_uid272_invPolyEval_cma_ena0 = 1'b1;
    assign sm0_uid310_pT3_uid272_invPolyEval_cma_ena1 = sm0_uid310_pT3_uid272_invPolyEval_cma_ena0;
    assign sm0_uid310_pT3_uid272_invPolyEval_cma_p[0] = sm0_uid310_pT3_uid272_invPolyEval_cma_a0[0] * sm0_uid310_pT3_uid272_invPolyEval_cma_c0[0];
    assign sm0_uid310_pT3_uid272_invPolyEval_cma_u[0] = sm0_uid310_pT3_uid272_invPolyEval_cma_p[0][35:0];
    assign sm0_uid310_pT3_uid272_invPolyEval_cma_w[0] = sm0_uid310_pT3_uid272_invPolyEval_cma_u[0];
    assign sm0_uid310_pT3_uid272_invPolyEval_cma_x[0] = sm0_uid310_pT3_uid272_invPolyEval_cma_w[0];
    assign sm0_uid310_pT3_uid272_invPolyEval_cma_y[0] = sm0_uid310_pT3_uid272_invPolyEval_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sm0_uid310_pT3_uid272_invPolyEval_cma_a0 <= '{default: '0};
            sm0_uid310_pT3_uid272_invPolyEval_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (sm0_uid310_pT3_uid272_invPolyEval_cma_ena0 == 1'b1)
            begin
                sm0_uid310_pT3_uid272_invPolyEval_cma_a0[0] <= topRangeX_uid298_pT3_uid272_invPolyEval_merged_bit_select_b;
                sm0_uid310_pT3_uid272_invPolyEval_cma_c0[0] <= topRangeY_uid299_pT3_uid272_invPolyEval_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sm0_uid310_pT3_uid272_invPolyEval_cma_s <= '{default: '0};
        end
        else
        begin
            if (sm0_uid310_pT3_uid272_invPolyEval_cma_ena1 == 1'b1)
            begin
                sm0_uid310_pT3_uid272_invPolyEval_cma_s[0] <= sm0_uid310_pT3_uid272_invPolyEval_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sm0_uid310_pT3_uid272_invPolyEval_cma_delay ( .xin(sm0_uid310_pT3_uid272_invPolyEval_cma_s[0]), .xout(sm0_uid310_pT3_uid272_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign sm0_uid310_pT3_uid272_invPolyEval_cma_q = $unsigned(sm0_uid310_pT3_uid272_invPolyEval_cma_qq[35:0]);

    // redist36_sm0_uid310_pT3_uid272_invPolyEval_cma_q_1(DELAY,745)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sm0_uid310_pT3_uid272_invPolyEval_cma_q_1_q <= '0;
        end
        else
        begin
            redist36_sm0_uid310_pT3_uid272_invPolyEval_cma_q_1_q <= $unsigned(sm0_uid310_pT3_uid272_invPolyEval_cma_q);
        end
    end

    // lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval(ADD,314)@42
    assign lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval_a = $unsigned({{1{redist36_sm0_uid310_pT3_uid272_invPolyEval_cma_q_1_q[35]}}, redist36_sm0_uid310_pT3_uid272_invPolyEval_cma_q_1_q});
    assign lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval_b = $unsigned({{18{highBBits_uid314_pT3_uid272_invPolyEval_b[18]}}, highBBits_uid314_pT3_uid272_invPolyEval_b});
    assign lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval_o = $unsigned($signed(lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval_a) + $signed(lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval_b));
    assign lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval_q = lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval_o[36:0];

    // lowRangeB_uid313_pT3_uid272_invPolyEval(BITSELECT,312)@42
    assign lowRangeB_uid313_pT3_uid272_invPolyEval_in = redist34_multSumOfTwoTS_uid311_pT3_uid272_invPolyEval_cma_q_1_q[17:0];
    assign lowRangeB_uid313_pT3_uid272_invPolyEval_b = lowRangeB_uid313_pT3_uid272_invPolyEval_in[17:0];

    // lev1_a0_uid316_pT3_uid272_invPolyEval(BITJOIN,315)@42
    assign lev1_a0_uid316_pT3_uid272_invPolyEval_q = {lev1_a0sumAHighB_uid315_pT3_uid272_invPolyEval_q, lowRangeB_uid313_pT3_uid272_invPolyEval_b};

    // os_uid317_pT3_uid272_invPolyEval(BITSELECT,316)@42
    assign os_uid317_pT3_uid272_invPolyEval_in = $unsigned(lev1_a0_uid316_pT3_uid272_invPolyEval_q[52:0]);
    assign os_uid317_pT3_uid272_invPolyEval_b = $unsigned(os_uid317_pT3_uid272_invPolyEval_in[52:21]);

    // highBBits_uid274_invPolyEval(BITSELECT,273)@42
    assign highBBits_uid274_invPolyEval_b = $unsigned(os_uid317_pT3_uid272_invPolyEval_b[31:2]);

    // redist42_highBBits_uid274_invPolyEval_b_1(DELAY,751)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_highBBits_uid274_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist42_highBBits_uid274_invPolyEval_b_1_q <= $unsigned(highBBits_uid274_invPolyEval_b);
        end
    end

    // redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13_inputreg0(DELAY,804)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13_inputreg0_q <= '0;
        end
        else
        begin
            redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13_inputreg0_q <= $unsigned(redist7_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_8_q);
        end
    end

    // redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13(DELAY,717)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13_delay_0 <= '0;
            redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13_delay_1 <= '0;
            redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13_delay_2 <= '0;
            redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13_q <= '0;
        end
        else
        begin
            redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13_delay_0 <= $unsigned(redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13_inputreg0_q);
            redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13_delay_1 <= redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13_delay_0;
            redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13_delay_2 <= redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13_delay_1;
            redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13_q <= redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13_delay_2;
        end
    end

    // memoryC0_uid243_invTabGen_lutmem(DUALMEM,447)@40 + 2
    // in j@20000000
    assign memoryC0_uid243_invTabGen_lutmem_aa = redist8_yAddr_uid149_i_div_if_loop_330_merged_bit_select_b_13_q;
    assign memoryC0_uid243_invTabGen_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
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
        .intended_device_family("Cyclone V")
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

    // redist41_memoryC0_uid243_invTabGen_lutmem_r_1(DELAY,750)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_memoryC0_uid243_invTabGen_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist41_memoryC0_uid243_invTabGen_lutmem_r_1_q <= $unsigned(memoryC0_uid243_invTabGen_lutmem_r);
        end
    end

    // s3sumAHighB_uid275_invPolyEval(ADD,274)@43
    assign s3sumAHighB_uid275_invPolyEval_a = $unsigned({{1{redist41_memoryC0_uid243_invTabGen_lutmem_r_1_q[37]}}, redist41_memoryC0_uid243_invTabGen_lutmem_r_1_q});
    assign s3sumAHighB_uid275_invPolyEval_b = $unsigned({{9{redist42_highBBits_uid274_invPolyEval_b_1_q[29]}}, redist42_highBBits_uid274_invPolyEval_b_1_q});
    assign s3sumAHighB_uid275_invPolyEval_o = $unsigned($signed(s3sumAHighB_uid275_invPolyEval_a) + $signed(s3sumAHighB_uid275_invPolyEval_b));
    assign s3sumAHighB_uid275_invPolyEval_q = s3sumAHighB_uid275_invPolyEval_o[38:0];

    // lowRangeB_uid273_invPolyEval(BITSELECT,272)@42
    assign lowRangeB_uid273_invPolyEval_in = os_uid317_pT3_uid272_invPolyEval_b[1:0];
    assign lowRangeB_uid273_invPolyEval_b = lowRangeB_uid273_invPolyEval_in[1:0];

    // redist43_lowRangeB_uid273_invPolyEval_b_1(DELAY,752)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_lowRangeB_uid273_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist43_lowRangeB_uid273_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid273_invPolyEval_b);
        end
    end

    // s3_uid276_invPolyEval(BITJOIN,275)@43
    assign s3_uid276_invPolyEval_q = {s3sumAHighB_uid275_invPolyEval_q, redist43_lowRangeB_uid273_invPolyEval_b_1_q};

    // fxpInverseRes_uid152_i_div_if_loop_330(BITSELECT,151)@43
    assign fxpInverseRes_uid152_i_div_if_loop_330_in = s3_uid276_invPolyEval_q[38:0];
    assign fxpInverseRes_uid152_i_div_if_loop_330_b = fxpInverseRes_uid152_i_div_if_loop_330_in[38:6];

    // redist59_fxpInverseRes_uid152_i_div_if_loop_330_b_1(DELAY,768)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_fxpInverseRes_uid152_i_div_if_loop_330_b_1_q <= '0;
        end
        else
        begin
            redist59_fxpInverseRes_uid152_i_div_if_loop_330_b_1_q <= $unsigned(fxpInverseRes_uid152_i_div_if_loop_330_b);
        end
    end

    // paddingY_uid142_i_div_if_loop_330(CONSTANT,141)
    assign paddingY_uid142_i_div_if_loop_330_q = $unsigned(31'b0000000000000000000000000000000);

    // updatedY_uid143_i_div_if_loop_330(BITJOIN,142)@28
    assign updatedY_uid143_i_div_if_loop_330_q = {GND_q, paddingY_uid142_i_div_if_loop_330_q};

    // redist62_normYNoLeadOne_uid141_i_div_if_loop_330_b_1(DELAY,771)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_normYNoLeadOne_uid141_i_div_if_loop_330_b_1_q <= '0;
        end
        else
        begin
            redist62_normYNoLeadOne_uid141_i_div_if_loop_330_b_1_q <= $unsigned(normYNoLeadOne_uid141_i_div_if_loop_330_b);
        end
    end

    // normYIsOneC2_uid142_i_div_if_loop_330(LOGICAL,143)@28 + 1
    assign normYIsOneC2_uid142_i_div_if_loop_330_a = {1'b0, redist62_normYNoLeadOne_uid141_i_div_if_loop_330_b_1_q};
    assign normYIsOneC2_uid142_i_div_if_loop_330_qi = $unsigned(normYIsOneC2_uid142_i_div_if_loop_330_a == updatedY_uid143_i_div_if_loop_330_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    normYIsOneC2_uid142_i_div_if_loop_330_delay ( .xin(normYIsOneC2_uid142_i_div_if_loop_330_qi), .xout(normYIsOneC2_uid142_i_div_if_loop_330_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // normYIsOneC2_uid145_i_div_if_loop_330(BITSELECT,144)@27
    assign normYIsOneC2_uid145_i_div_if_loop_330_b = $unsigned(leftShiftStage2_uid375_normY_uid140_i_div_if_loop_330_q[31:31]);

    // redist61_normYIsOneC2_uid145_i_div_if_loop_330_b_2(DELAY,770)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_normYIsOneC2_uid145_i_div_if_loop_330_b_2_delay_0 <= '0;
            redist61_normYIsOneC2_uid145_i_div_if_loop_330_b_2_q <= '0;
        end
        else
        begin
            redist61_normYIsOneC2_uid145_i_div_if_loop_330_b_2_delay_0 <= $unsigned(normYIsOneC2_uid145_i_div_if_loop_330_b);
            redist61_normYIsOneC2_uid145_i_div_if_loop_330_b_2_q <= redist61_normYIsOneC2_uid145_i_div_if_loop_330_b_2_delay_0;
        end
    end

    // normYIsOne_uid146_i_div_if_loop_330(LOGICAL,145)@29 + 1
    assign normYIsOne_uid146_i_div_if_loop_330_qi = redist61_normYIsOneC2_uid145_i_div_if_loop_330_b_2_q & normYIsOneC2_uid142_i_div_if_loop_330_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    normYIsOne_uid146_i_div_if_loop_330_delay ( .xin(normYIsOne_uid146_i_div_if_loop_330_qi), .xout(normYIsOne_uid146_i_div_if_loop_330_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist60_normYIsOne_uid146_i_div_if_loop_330_q_15(DELAY,769)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist60_normYIsOne_uid146_i_div_if_loop_330_q_15 ( .xin(normYIsOne_uid146_i_div_if_loop_330_q), .xout(redist60_normYIsOne_uid146_i_div_if_loop_330_q_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invResPostOneHandling2_uid154_i_div_if_loop_330(MUX,153)@44
    assign invResPostOneHandling2_uid154_i_div_if_loop_330_s = redist60_normYIsOne_uid146_i_div_if_loop_330_q_15_q;
    always @(invResPostOneHandling2_uid154_i_div_if_loop_330_s or redist59_fxpInverseRes_uid152_i_div_if_loop_330_b_1_q or oneInvRes_uid153_i_div_if_loop_330_q)
    begin
        unique case (invResPostOneHandling2_uid154_i_div_if_loop_330_s)
            1'b0 : invResPostOneHandling2_uid154_i_div_if_loop_330_q = redist59_fxpInverseRes_uid152_i_div_if_loop_330_b_1_q;
            1'b1 : invResPostOneHandling2_uid154_i_div_if_loop_330_q = oneInvRes_uid153_i_div_if_loop_330_q;
            default : invResPostOneHandling2_uid154_i_div_if_loop_330_q = 33'b0;
        endcase
    end

    // prodXInvY_uid162_i_div_if_loop_330_bs2_merged_bit_select(BITSELECT,697)@44
    assign prodXInvY_uid162_i_div_if_loop_330_bs2_merged_bit_select_b = invResPostOneHandling2_uid154_i_div_if_loop_330_q[17:0];
    assign prodXInvY_uid162_i_div_if_loop_330_bs2_merged_bit_select_c = invResPostOneHandling2_uid154_i_div_if_loop_330_q[32:18];

    // zMsbY0_uid159_i_div_if_loop_330(BITJOIN,158)@44
    assign zMsbY0_uid159_i_div_if_loop_330_q = {GND_q, redist67_xMSB_uid133_i_div_if_loop_330_b_24_q};

    // xPSX_uid157_i_div_if_loop_330(LOGICAL,156)@44
    assign xPSX_uid157_i_div_if_loop_330_b = $unsigned({{31{redist67_xMSB_uid133_i_div_if_loop_330_b_24_q[0]}}, redist67_xMSB_uid133_i_div_if_loop_330_b_24_q});
    assign xPSX_uid157_i_div_if_loop_330_q = i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out ^ xPSX_uid157_i_div_if_loop_330_b;

    // xPSXE_uid160_i_div_if_loop_330(ADD,159)@44
    assign xPSXE_uid160_i_div_if_loop_330_a = $unsigned({{1{xPSX_uid157_i_div_if_loop_330_q[31]}}, xPSX_uid157_i_div_if_loop_330_q});
    assign xPSXE_uid160_i_div_if_loop_330_b = $unsigned({{31{zMsbY0_uid159_i_div_if_loop_330_q[1]}}, zMsbY0_uid159_i_div_if_loop_330_q});
    assign xPSXE_uid160_i_div_if_loop_330_o = $unsigned($signed(xPSXE_uid160_i_div_if_loop_330_a) + $signed(xPSXE_uid160_i_div_if_loop_330_b));
    assign xPSXE_uid160_i_div_if_loop_330_q = xPSXE_uid160_i_div_if_loop_330_o[32:0];

    // prodXInvY_uid162_i_div_if_loop_330_bs1_merged_bit_select(BITSELECT,699)@44
    assign prodXInvY_uid162_i_div_if_loop_330_bs1_merged_bit_select_b = $unsigned(xPSXE_uid160_i_div_if_loop_330_q[17:0]);
    assign prodXInvY_uid162_i_div_if_loop_330_bs1_merged_bit_select_c = $unsigned(xPSXE_uid160_i_div_if_loop_330_q[32:18]);

    // prodXInvY_uid162_i_div_if_loop_330_ma3_cma(CHAINMULTADD,475)@44 + 2
    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_reset = ~ (resetn);
    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_ena0 = 1'b1;
    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_ena1 = prodXInvY_uid162_i_div_if_loop_330_ma3_cma_ena0;
    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_r[0] = $signed({1'b0, prodXInvY_uid162_i_div_if_loop_330_ma3_cma_c0[0][17:0]});
    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_r[1] = $signed({1'b0, prodXInvY_uid162_i_div_if_loop_330_ma3_cma_c0[1][17:0]});
    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_p[0] = prodXInvY_uid162_i_div_if_loop_330_ma3_cma_a0[0] * prodXInvY_uid162_i_div_if_loop_330_ma3_cma_r[0];
    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_p[1] = prodXInvY_uid162_i_div_if_loop_330_ma3_cma_a0[1] * prodXInvY_uid162_i_div_if_loop_330_ma3_cma_r[1];
    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_u[0] = {{1{prodXInvY_uid162_i_div_if_loop_330_ma3_cma_p[0][34]}}, prodXInvY_uid162_i_div_if_loop_330_ma3_cma_p[0][34:0]};
    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_u[1] = {{1{prodXInvY_uid162_i_div_if_loop_330_ma3_cma_p[1][34]}}, prodXInvY_uid162_i_div_if_loop_330_ma3_cma_p[1][34:0]};
    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_w[0] = prodXInvY_uid162_i_div_if_loop_330_ma3_cma_u[0] + prodXInvY_uid162_i_div_if_loop_330_ma3_cma_u[1];
    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_x[0] = prodXInvY_uid162_i_div_if_loop_330_ma3_cma_w[0];
    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_y[0] = prodXInvY_uid162_i_div_if_loop_330_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXInvY_uid162_i_div_if_loop_330_ma3_cma_a0 <= '{default: '0};
            prodXInvY_uid162_i_div_if_loop_330_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXInvY_uid162_i_div_if_loop_330_ma3_cma_ena0 == 1'b1)
            begin
                prodXInvY_uid162_i_div_if_loop_330_ma3_cma_a0[0] <= {{1{prodXInvY_uid162_i_div_if_loop_330_bs1_merged_bit_select_c[14]}}, prodXInvY_uid162_i_div_if_loop_330_bs1_merged_bit_select_c[14:0]};
                prodXInvY_uid162_i_div_if_loop_330_ma3_cma_a0[1] <= prodXInvY_uid162_i_div_if_loop_330_bjB6_q;
                prodXInvY_uid162_i_div_if_loop_330_ma3_cma_c0[0] <= prodXInvY_uid162_i_div_if_loop_330_bs2_merged_bit_select_b;
                prodXInvY_uid162_i_div_if_loop_330_ma3_cma_c0[1] <= prodXInvY_uid162_i_div_if_loop_330_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXInvY_uid162_i_div_if_loop_330_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXInvY_uid162_i_div_if_loop_330_ma3_cma_ena1 == 1'b1)
            begin
                prodXInvY_uid162_i_div_if_loop_330_ma3_cma_s[0] <= prodXInvY_uid162_i_div_if_loop_330_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXInvY_uid162_i_div_if_loop_330_ma3_cma_delay ( .xin(prodXInvY_uid162_i_div_if_loop_330_ma3_cma_s[0]), .xout(prodXInvY_uid162_i_div_if_loop_330_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXInvY_uid162_i_div_if_loop_330_ma3_cma_q = $unsigned(prodXInvY_uid162_i_div_if_loop_330_ma3_cma_qq[34:0]);

    // prodXInvY_uid162_i_div_if_loop_330_sums_align_1(BITSHIFT,389)@46
    assign prodXInvY_uid162_i_div_if_loop_330_sums_align_1_qint = { prodXInvY_uid162_i_div_if_loop_330_ma3_cma_q, 18'b000000000000000000 };
    assign prodXInvY_uid162_i_div_if_loop_330_sums_align_1_q = prodXInvY_uid162_i_div_if_loop_330_sums_align_1_qint[52:0];

    // prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,662)@46
    assign prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodXInvY_uid162_i_div_if_loop_330_sums_align_1_q};

    // prodXInvY_uid162_i_div_if_loop_330_im9_cma(CHAINMULTADD,470)@44 + 2
    assign prodXInvY_uid162_i_div_if_loop_330_im9_cma_reset = ~ (resetn);
    assign prodXInvY_uid162_i_div_if_loop_330_im9_cma_ena0 = 1'b1;
    assign prodXInvY_uid162_i_div_if_loop_330_im9_cma_ena1 = prodXInvY_uid162_i_div_if_loop_330_im9_cma_ena0;
    assign prodXInvY_uid162_i_div_if_loop_330_im9_cma_l[0] = $signed({1'b0, prodXInvY_uid162_i_div_if_loop_330_im9_cma_a0[0][14:0]});
    assign prodXInvY_uid162_i_div_if_loop_330_im9_cma_p[0] = prodXInvY_uid162_i_div_if_loop_330_im9_cma_l[0] * prodXInvY_uid162_i_div_if_loop_330_im9_cma_c0[0];
    assign prodXInvY_uid162_i_div_if_loop_330_im9_cma_u[0] = prodXInvY_uid162_i_div_if_loop_330_im9_cma_p[0][30:0];
    assign prodXInvY_uid162_i_div_if_loop_330_im9_cma_w[0] = prodXInvY_uid162_i_div_if_loop_330_im9_cma_u[0];
    assign prodXInvY_uid162_i_div_if_loop_330_im9_cma_x[0] = prodXInvY_uid162_i_div_if_loop_330_im9_cma_w[0];
    assign prodXInvY_uid162_i_div_if_loop_330_im9_cma_y[0] = prodXInvY_uid162_i_div_if_loop_330_im9_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXInvY_uid162_i_div_if_loop_330_im9_cma_a0 <= '{default: '0};
            prodXInvY_uid162_i_div_if_loop_330_im9_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXInvY_uid162_i_div_if_loop_330_im9_cma_ena0 == 1'b1)
            begin
                prodXInvY_uid162_i_div_if_loop_330_im9_cma_a0[0] <= prodXInvY_uid162_i_div_if_loop_330_bs2_merged_bit_select_c;
                prodXInvY_uid162_i_div_if_loop_330_im9_cma_c0[0] <= prodXInvY_uid162_i_div_if_loop_330_bs1_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXInvY_uid162_i_div_if_loop_330_im9_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXInvY_uid162_i_div_if_loop_330_im9_cma_ena1 == 1'b1)
            begin
                prodXInvY_uid162_i_div_if_loop_330_im9_cma_s[0] <= prodXInvY_uid162_i_div_if_loop_330_im9_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(31), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXInvY_uid162_i_div_if_loop_330_im9_cma_delay ( .xin(prodXInvY_uid162_i_div_if_loop_330_im9_cma_s[0]), .xout(prodXInvY_uid162_i_div_if_loop_330_im9_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXInvY_uid162_i_div_if_loop_330_im9_cma_q = $unsigned(prodXInvY_uid162_i_div_if_loop_330_im9_cma_qq[29:0]);

    // prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel0_1(BITSELECT,649)@46
    assign prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b = $unsigned(prodXInvY_uid162_i_div_if_loop_330_im9_cma_q[23:0]);

    // prodXInvY_uid162_i_div_if_loop_330_im0_cma(CHAINMULTADD,469)@44 + 2
    assign prodXInvY_uid162_i_div_if_loop_330_im0_cma_reset = ~ (resetn);
    assign prodXInvY_uid162_i_div_if_loop_330_im0_cma_ena0 = 1'b1;
    assign prodXInvY_uid162_i_div_if_loop_330_im0_cma_ena1 = prodXInvY_uid162_i_div_if_loop_330_im0_cma_ena0;
    assign prodXInvY_uid162_i_div_if_loop_330_im0_cma_p[0] = prodXInvY_uid162_i_div_if_loop_330_im0_cma_a0[0] * prodXInvY_uid162_i_div_if_loop_330_im0_cma_c0[0];
    assign prodXInvY_uid162_i_div_if_loop_330_im0_cma_u[0] = prodXInvY_uid162_i_div_if_loop_330_im0_cma_p[0][35:0];
    assign prodXInvY_uid162_i_div_if_loop_330_im0_cma_w[0] = prodXInvY_uid162_i_div_if_loop_330_im0_cma_u[0];
    assign prodXInvY_uid162_i_div_if_loop_330_im0_cma_x[0] = prodXInvY_uid162_i_div_if_loop_330_im0_cma_w[0];
    assign prodXInvY_uid162_i_div_if_loop_330_im0_cma_y[0] = prodXInvY_uid162_i_div_if_loop_330_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXInvY_uid162_i_div_if_loop_330_im0_cma_a0 <= '{default: '0};
            prodXInvY_uid162_i_div_if_loop_330_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXInvY_uid162_i_div_if_loop_330_im0_cma_ena0 == 1'b1)
            begin
                prodXInvY_uid162_i_div_if_loop_330_im0_cma_a0[0] <= prodXInvY_uid162_i_div_if_loop_330_bs1_merged_bit_select_b;
                prodXInvY_uid162_i_div_if_loop_330_im0_cma_c0[0] <= prodXInvY_uid162_i_div_if_loop_330_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXInvY_uid162_i_div_if_loop_330_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXInvY_uid162_i_div_if_loop_330_im0_cma_ena1 == 1'b1)
            begin
                prodXInvY_uid162_i_div_if_loop_330_im0_cma_s[0] <= prodXInvY_uid162_i_div_if_loop_330_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXInvY_uid162_i_div_if_loop_330_im0_cma_delay ( .xin(prodXInvY_uid162_i_div_if_loop_330_im0_cma_s[0]), .xout(prodXInvY_uid162_i_div_if_loop_330_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXInvY_uid162_i_div_if_loop_330_im0_cma_q = $unsigned(prodXInvY_uid162_i_div_if_loop_330_im0_cma_qq[35:0]);

    // prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,650)@46
    assign prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b, prodXInvY_uid162_i_div_if_loop_330_im0_cma_q};

    // prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2(ADD,528)@46 + 1
    assign prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_a = {1'b0, prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q};
    assign prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_b = {1'b0, prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_o <= 61'b0;
        end
        else
        begin
            prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_o <= $unsigned(prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_a) + $unsigned(prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_c[0] = prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_o[60];
    assign prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_q = prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_o[59:0];

    // redist21_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1(DELAY,730)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1_q <= '0;
        end
        else
        begin
            redist21_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1_q <= $unsigned(prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b);
        end
    end

    // prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,670)@47
    assign prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q = {redist21_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1_q, redist21_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1_q, redist21_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1_q, redist21_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1_q, redist21_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1_q, redist21_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1_q, redist21_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1_q};

    // prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_1(BITSELECT,652)@46
    assign prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b = $unsigned(prodXInvY_uid162_i_div_if_loop_330_im9_cma_q[29:29]);

    // redist28_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b_1(DELAY,737)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b_1_q <= '0;
        end
        else
        begin
            redist28_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b_1_q <= $unsigned(prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b);
        end
    end

    // prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_0(BITSELECT,651)@46
    assign prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b = $unsigned(prodXInvY_uid162_i_div_if_loop_330_im9_cma_q[29:24]);

    // redist29_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b_1(DELAY,738)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b_1_q <= '0;
        end
        else
        begin
            redist29_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b_1_q <= $unsigned(prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b);
        end
    end

    // prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,653)@47
    assign prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {redist28_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b_1_q, redist29_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b_1_q};

    // prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p2_of_2(ADD,529)@47 + 1
    assign prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_cin = prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_c;
    assign prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_a = $unsigned({ {{1{prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q[6]}}, prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 });
    assign prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_b = $unsigned({ {{1{prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q[6]}}, prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q}, prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_cin[0] });
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_o <= 9'b0;
        end
        else
        begin
            prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_o <= $unsigned($signed(prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_a) + $signed(prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_b));
        end
    end
    assign prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_q = prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_o[7:1];

    // redist30_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_q_1(DELAY,739)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist30_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_q_1_q <= $unsigned(prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_q);
        end
    end

    // prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitJoin_for_q(BITJOIN,530)@48
    assign prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitJoin_for_q_q = {prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_q, redist30_prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_q_1_q};

    // rightShiftInput_uid163_i_div_if_loop_330(BITSELECT,162)@48
    assign rightShiftInput_uid163_i_div_if_loop_330_in = $unsigned(prodXInvY_uid162_i_div_if_loop_330_sums_result_add_0_0_BitJoin_for_q_q[64:0]);
    assign rightShiftInput_uid163_i_div_if_loop_330_b = $unsigned(rightShiftInput_uid163_i_div_if_loop_330_in[64:0]);

    // xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,392)@48
    assign xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftInput_uid163_i_div_if_loop_330_b[64:64]);

    // seMsb_to64_uid427(BITSELECT,426)@48
    assign seMsb_to64_uid427_in = $unsigned({{63{xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b[0]}}, xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b});
    assign seMsb_to64_uid427_b = $unsigned(seMsb_to64_uid427_in[63:0]);

    // rightShiftStage3Idx1Rng64_uid428_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,427)@48
    assign rightShiftStage3Idx1Rng64_uid428_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftStage2_uid426_prodPostRightShift_uid164_i_div_if_loop_330_q[64:64]);

    // rightShiftStage3Idx1_uid429_prodPostRightShift_uid164_i_div_if_loop_330(BITJOIN,428)@48
    assign rightShiftStage3Idx1_uid429_prodPostRightShift_uid164_i_div_if_loop_330_q = {seMsb_to64_uid427_b, rightShiftStage3Idx1Rng64_uid428_prodPostRightShift_uid164_i_div_if_loop_330_b};

    // seMsb_to48_uid422(BITSELECT,421)@48
    assign seMsb_to48_uid422_in = $unsigned({{47{xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b[0]}}, xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b});
    assign seMsb_to48_uid422_b = $unsigned(seMsb_to48_uid422_in[47:0]);

    // rightShiftStage2Idx3Rng48_uid423_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,422)@48
    assign rightShiftStage2Idx3Rng48_uid423_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_q[64:48]);

    // rightShiftStage2Idx3_uid424_prodPostRightShift_uid164_i_div_if_loop_330(BITJOIN,423)@48
    assign rightShiftStage2Idx3_uid424_prodPostRightShift_uid164_i_div_if_loop_330_q = {seMsb_to48_uid422_b, rightShiftStage2Idx3Rng48_uid423_prodPostRightShift_uid164_i_div_if_loop_330_b};

    // seMsb_to32_uid419(BITSELECT,418)@48
    assign seMsb_to32_uid419_in = $unsigned({{31{xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b[0]}}, xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b});
    assign seMsb_to32_uid419_b = $unsigned(seMsb_to32_uid419_in[31:0]);

    // rightShiftStage2Idx2Rng32_uid420_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,419)@48
    assign rightShiftStage2Idx2Rng32_uid420_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_q[64:32]);

    // rightShiftStage2Idx2_uid421_prodPostRightShift_uid164_i_div_if_loop_330(BITJOIN,420)@48
    assign rightShiftStage2Idx2_uid421_prodPostRightShift_uid164_i_div_if_loop_330_q = {seMsb_to32_uid419_b, rightShiftStage2Idx2Rng32_uid420_prodPostRightShift_uid164_i_div_if_loop_330_b};

    // seMsb_to16_uid416(BITSELECT,415)@48
    assign seMsb_to16_uid416_in = $unsigned({{15{xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b[0]}}, xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b});
    assign seMsb_to16_uid416_b = $unsigned(seMsb_to16_uid416_in[15:0]);

    // rightShiftStage2Idx1Rng16_uid417_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,416)@48
    assign rightShiftStage2Idx1Rng16_uid417_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_q[64:16]);

    // rightShiftStage2Idx1_uid418_prodPostRightShift_uid164_i_div_if_loop_330(BITJOIN,417)@48
    assign rightShiftStage2Idx1_uid418_prodPostRightShift_uid164_i_div_if_loop_330_q = {seMsb_to16_uid416_b, rightShiftStage2Idx1Rng16_uid417_prodPostRightShift_uid164_i_div_if_loop_330_b};

    // seMsb_to12_uid411(BITSELECT,410)@48
    assign seMsb_to12_uid411_in = $unsigned({{11{xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b[0]}}, xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b});
    assign seMsb_to12_uid411_b = $unsigned(seMsb_to12_uid411_in[11:0]);

    // rightShiftStage1Idx3Rng12_uid412_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,411)@48
    assign rightShiftStage1Idx3Rng12_uid412_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftStage0_uid404_prodPostRightShift_uid164_i_div_if_loop_330_q[64:12]);

    // rightShiftStage1Idx3_uid413_prodPostRightShift_uid164_i_div_if_loop_330(BITJOIN,412)@48
    assign rightShiftStage1Idx3_uid413_prodPostRightShift_uid164_i_div_if_loop_330_q = {seMsb_to12_uid411_b, rightShiftStage1Idx3Rng12_uid412_prodPostRightShift_uid164_i_div_if_loop_330_b};

    // seMsb_to8_uid408(BITSELECT,407)@48
    assign seMsb_to8_uid408_in = $unsigned({{7{xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b[0]}}, xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b});
    assign seMsb_to8_uid408_b = $unsigned(seMsb_to8_uid408_in[7:0]);

    // rightShiftStage1Idx2Rng8_uid409_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,408)@48
    assign rightShiftStage1Idx2Rng8_uid409_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftStage0_uid404_prodPostRightShift_uid164_i_div_if_loop_330_q[64:8]);

    // rightShiftStage1Idx2_uid410_prodPostRightShift_uid164_i_div_if_loop_330(BITJOIN,409)@48
    assign rightShiftStage1Idx2_uid410_prodPostRightShift_uid164_i_div_if_loop_330_q = {seMsb_to8_uid408_b, rightShiftStage1Idx2Rng8_uid409_prodPostRightShift_uid164_i_div_if_loop_330_b};

    // seMsb_to4_uid405(BITSELECT,404)@48
    assign seMsb_to4_uid405_in = $unsigned({{3{xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b[0]}}, xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b});
    assign seMsb_to4_uid405_b = $unsigned(seMsb_to4_uid405_in[3:0]);

    // rightShiftStage1Idx1Rng4_uid406_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,405)@48
    assign rightShiftStage1Idx1Rng4_uid406_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftStage0_uid404_prodPostRightShift_uid164_i_div_if_loop_330_q[64:4]);

    // rightShiftStage1Idx1_uid407_prodPostRightShift_uid164_i_div_if_loop_330(BITJOIN,406)@48
    assign rightShiftStage1Idx1_uid407_prodPostRightShift_uid164_i_div_if_loop_330_q = {seMsb_to4_uid405_b, rightShiftStage1Idx1Rng4_uid406_prodPostRightShift_uid164_i_div_if_loop_330_b};

    // seMsb_to3_uid400(BITSELECT,399)@48
    assign seMsb_to3_uid400_in = $unsigned({{2{xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b[0]}}, xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b});
    assign seMsb_to3_uid400_b = $unsigned(seMsb_to3_uid400_in[2:0]);

    // rightShiftStage0Idx3Rng3_uid401_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,400)@48
    assign rightShiftStage0Idx3Rng3_uid401_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftInput_uid163_i_div_if_loop_330_b[64:3]);

    // rightShiftStage0Idx3_uid402_prodPostRightShift_uid164_i_div_if_loop_330(BITJOIN,401)@48
    assign rightShiftStage0Idx3_uid402_prodPostRightShift_uid164_i_div_if_loop_330_q = {seMsb_to3_uid400_b, rightShiftStage0Idx3Rng3_uid401_prodPostRightShift_uid164_i_div_if_loop_330_b};

    // seMsb_to2_uid397(BITSELECT,396)@48
    assign seMsb_to2_uid397_in = $unsigned({{1{xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b[0]}}, xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b});
    assign seMsb_to2_uid397_b = $unsigned(seMsb_to2_uid397_in[1:0]);

    // rightShiftStage0Idx2Rng2_uid398_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,397)@48
    assign rightShiftStage0Idx2Rng2_uid398_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftInput_uid163_i_div_if_loop_330_b[64:2]);

    // rightShiftStage0Idx2_uid399_prodPostRightShift_uid164_i_div_if_loop_330(BITJOIN,398)@48
    assign rightShiftStage0Idx2_uid399_prodPostRightShift_uid164_i_div_if_loop_330_q = {seMsb_to2_uid397_b, rightShiftStage0Idx2Rng2_uid398_prodPostRightShift_uid164_i_div_if_loop_330_b};

    // rightShiftStage0Idx1Rng1_uid395_prodPostRightShift_uid164_i_div_if_loop_330(BITSELECT,394)@48
    assign rightShiftStage0Idx1Rng1_uid395_prodPostRightShift_uid164_i_div_if_loop_330_b = $unsigned(rightShiftInput_uid163_i_div_if_loop_330_b[64:1]);

    // rightShiftStage0Idx1_uid396_prodPostRightShift_uid164_i_div_if_loop_330(BITJOIN,395)@48
    assign rightShiftStage0Idx1_uid396_prodPostRightShift_uid164_i_div_if_loop_330_q = {xMSB_uid393_prodPostRightShift_uid164_i_div_if_loop_330_b, rightShiftStage0Idx1Rng1_uid395_prodPostRightShift_uid164_i_div_if_loop_330_b};

    // rightShiftStage0_uid404_prodPostRightShift_uid164_i_div_if_loop_330(MUX,403)@48
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

    // rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330(MUX,414)@48
    assign rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_s = rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_c;
    always @(rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_s or rightShiftStage0_uid404_prodPostRightShift_uid164_i_div_if_loop_330_q or rightShiftStage1Idx1_uid407_prodPostRightShift_uid164_i_div_if_loop_330_q or rightShiftStage1Idx2_uid410_prodPostRightShift_uid164_i_div_if_loop_330_q or rightShiftStage1Idx3_uid413_prodPostRightShift_uid164_i_div_if_loop_330_q)
    begin
        unique case (rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_s)
            2'b00 : rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_q = rightShiftStage0_uid404_prodPostRightShift_uid164_i_div_if_loop_330_q;
            2'b01 : rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_q = rightShiftStage1Idx1_uid407_prodPostRightShift_uid164_i_div_if_loop_330_q;
            2'b10 : rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_q = rightShiftStage1Idx2_uid410_prodPostRightShift_uid164_i_div_if_loop_330_q;
            2'b11 : rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_q = rightShiftStage1Idx3_uid413_prodPostRightShift_uid164_i_div_if_loop_330_q;
            default : rightShiftStage1_uid415_prodPostRightShift_uid164_i_div_if_loop_330_q = 65'b0;
        endcase
    end

    // rightShiftStage2_uid426_prodPostRightShift_uid164_i_div_if_loop_330(MUX,425)@48
    assign rightShiftStage2_uid426_prodPostRightShift_uid164_i_div_if_loop_330_s = rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_d;
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

    // redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_notEnable(LOGICAL,825)
    assign redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_notEnable_q = $unsigned(~ (VCC_q));

    // redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_nor(LOGICAL,826)
    assign redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_nor_q = ~ (redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_notEnable_q | redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_sticky_ena_q);

    // redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_last(CONSTANT,822)
    assign redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_last_q = $unsigned(6'b010001);

    // redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_cmp(LOGICAL,823)
    assign redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_cmp_b = {1'b0, redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_rdcnt_q};
    assign redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_cmp_q = $unsigned(redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_last_q == redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_cmp_b ? 1'b1 : 1'b0);

    // redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_cmpReg(REG,824)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_cmpReg_q <= $unsigned(redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_cmp_q);
        end
    end

    // redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_sticky_ena(REG,827)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_nor_q == 1'b1)
        begin
            redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_sticky_ena_q <= $unsigned(redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_cmpReg_q);
        end
    end

    // redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_enaAnd(LOGICAL,828)
    assign redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_enaAnd_q = redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_sticky_ena_q & VCC_q;

    // redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_rdcnt(COUNTER,820)
    // low=0, high=18, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_rdcnt_i <= 5'd0;
            redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_rdcnt_i == 5'd17)
            begin
                redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_rdcnt_eq <= 1'b0;
            end
            if (redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_rdcnt_eq == 1'b1)
            begin
                redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_rdcnt_i <= $unsigned(redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_rdcnt_i) + $unsigned(5'd14);
            end
            else
            begin
                redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_rdcnt_i <= $unsigned(redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_rdcnt_q = redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_rdcnt_i[4:0];

    // redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_inputreg0(DELAY,817)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_inputreg0_q <= '0;
        end
        else
        begin
            redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_inputreg0_q <= $unsigned(r_uid241_zCount_uid139_i_div_if_loop_330_q);
        end
    end

    // redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_wraddr(REG,821)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_wraddr_q <= $unsigned(5'b10010);
        end
        else
        begin
            redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_wraddr_q <= $unsigned(redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_rdcnt_q);
        end
    end

    // redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem(DUALMEM,819)
    assign redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_ia = $unsigned(redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_inputreg0_q);
    assign redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_aa = redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_wraddr_q;
    assign redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_ab = redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_rdcnt_q;
    assign redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(6),
        .widthad_a(5),
        .numwords_a(19),
        .width_b(6),
        .widthad_b(5),
        .numwords_b(19),
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
        .intended_device_family("Cyclone V")
    ) redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_dmem (
        .clocken1(redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_reset0),
        .clock1(clock),
        .address_a(redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_aa),
        .data_a(redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_ab),
        .q_b(redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_iq),
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
    assign redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_q = redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_iq[5:0];

    // redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_outputreg0(DELAY,818)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_outputreg0_q <= '0;
        end
        else
        begin
            redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_outputreg0_q <= $unsigned(redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_mem_q);
        end
    end

    // cWOut_uid155_i_div_if_loop_330(CONSTANT,154)
    assign cWOut_uid155_i_div_if_loop_330_q = $unsigned(6'b100000);

    // rShiftCount_uid156_i_div_if_loop_330(SUB,155)@48
    assign rShiftCount_uid156_i_div_if_loop_330_a = {1'b0, cWOut_uid155_i_div_if_loop_330_q};
    assign rShiftCount_uid156_i_div_if_loop_330_b = {1'b0, redist48_r_uid241_zCount_uid139_i_div_if_loop_330_q_22_outputreg0_q};
    assign rShiftCount_uid156_i_div_if_loop_330_o = $unsigned(rShiftCount_uid156_i_div_if_loop_330_a) - $unsigned(rShiftCount_uid156_i_div_if_loop_330_b);
    assign rShiftCount_uid156_i_div_if_loop_330_q = rShiftCount_uid156_i_div_if_loop_330_o[6:0];

    // rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select(BITSELECT,698)@48
    assign rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_b = rShiftCount_uid156_i_div_if_loop_330_q[1:0];
    assign rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_c = rShiftCount_uid156_i_div_if_loop_330_q[3:2];
    assign rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_d = rShiftCount_uid156_i_div_if_loop_330_q[5:4];
    assign rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_e = rShiftCount_uid156_i_div_if_loop_330_q[6:6];

    // rightShiftStage3_uid431_prodPostRightShift_uid164_i_div_if_loop_330(MUX,430)@48
    assign rightShiftStage3_uid431_prodPostRightShift_uid164_i_div_if_loop_330_s = rightShiftStageSel0Dto0_uid403_prodPostRightShift_uid164_i_div_if_loop_330_merged_bit_select_e;
    always @(rightShiftStage3_uid431_prodPostRightShift_uid164_i_div_if_loop_330_s or rightShiftStage2_uid426_prodPostRightShift_uid164_i_div_if_loop_330_q or rightShiftStage3Idx1_uid429_prodPostRightShift_uid164_i_div_if_loop_330_q)
    begin
        unique case (rightShiftStage3_uid431_prodPostRightShift_uid164_i_div_if_loop_330_s)
            1'b0 : rightShiftStage3_uid431_prodPostRightShift_uid164_i_div_if_loop_330_q = rightShiftStage2_uid426_prodPostRightShift_uid164_i_div_if_loop_330_q;
            1'b1 : rightShiftStage3_uid431_prodPostRightShift_uid164_i_div_if_loop_330_q = rightShiftStage3Idx1_uid429_prodPostRightShift_uid164_i_div_if_loop_330_q;
            default : rightShiftStage3_uid431_prodPostRightShift_uid164_i_div_if_loop_330_q = 65'b0;
        endcase
    end

    // prodPostRightShiftPost_uid165_i_div_if_loop_330(BITSELECT,164)@48
    assign prodPostRightShiftPost_uid165_i_div_if_loop_330_in = rightShiftStage3_uid431_prodPostRightShift_uid164_i_div_if_loop_330_q[62:0];
    assign prodPostRightShiftPost_uid165_i_div_if_loop_330_b = prodPostRightShiftPost_uid165_i_div_if_loop_330_in[62:30];

    // redist58_prodPostRightShiftPost_uid165_i_div_if_loop_330_b_1(DELAY,767)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_prodPostRightShiftPost_uid165_i_div_if_loop_330_b_1_q <= '0;
        end
        else
        begin
            redist58_prodPostRightShiftPost_uid165_i_div_if_loop_330_b_1_q <= $unsigned(prodPostRightShiftPost_uid165_i_div_if_loop_330_b);
        end
    end

    // prodPostRightShiftPostRnd_uid167_i_div_if_loop_330(ADD,166)@49
    assign prodPostRightShiftPostRnd_uid167_i_div_if_loop_330_a = {1'b0, redist58_prodPostRightShiftPost_uid165_i_div_if_loop_330_b_1_q};
    assign prodPostRightShiftPostRnd_uid167_i_div_if_loop_330_b = {33'b000000000000000000000000000000000, VCC_q};
    assign prodPostRightShiftPostRnd_uid167_i_div_if_loop_330_o = $unsigned(prodPostRightShiftPostRnd_uid167_i_div_if_loop_330_a) + $unsigned(prodPostRightShiftPostRnd_uid167_i_div_if_loop_330_b);
    assign prodPostRightShiftPostRnd_uid167_i_div_if_loop_330_q = prodPostRightShiftPostRnd_uid167_i_div_if_loop_330_o[33:0];

    // prodPostRightShiftPostRndRange_uid168_i_div_if_loop_330(BITSELECT,167)@49
    assign prodPostRightShiftPostRndRange_uid168_i_div_if_loop_330_in = prodPostRightShiftPostRnd_uid167_i_div_if_loop_330_q[32:0];
    assign prodPostRightShiftPostRndRange_uid168_i_div_if_loop_330_b = prodPostRightShiftPostRndRange_uid168_i_div_if_loop_330_in[32:1];

    // redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_notEnable(LOGICAL,850)
    assign redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_notEnable_q = $unsigned(~ (VCC_q));

    // redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_nor(LOGICAL,851)
    assign redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_nor_q = ~ (redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_notEnable_q | redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_sticky_ena_q);

    // redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_last(CONSTANT,847)
    assign redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_last_q = $unsigned(6'b011001);

    // redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_cmp(LOGICAL,848)
    assign redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_cmp_b = {1'b0, redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_rdcnt_q};
    assign redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_cmp_q = $unsigned(redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_last_q == redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_cmp_b ? 1'b1 : 1'b0);

    // redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_cmpReg(REG,849)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_cmpReg_q <= $unsigned(redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_cmp_q);
        end
    end

    // redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_sticky_ena(REG,852)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_nor_q == 1'b1)
        begin
            redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_sticky_ena_q <= $unsigned(redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_cmpReg_q);
        end
    end

    // redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_enaAnd(LOGICAL,853)
    assign redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_enaAnd_q = redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_sticky_ena_q & VCC_q;

    // redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_rdcnt(COUNTER,845)
    // low=0, high=26, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_rdcnt_i <= 5'd0;
            redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_rdcnt_i == 5'd25)
            begin
                redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_rdcnt_eq <= 1'b0;
            end
            if (redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_rdcnt_eq == 1'b1)
            begin
                redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_rdcnt_i <= $unsigned(redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_rdcnt_i) + $unsigned(5'd6);
            end
            else
            begin
                redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_rdcnt_i <= $unsigned(redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_rdcnt_q = redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_rdcnt_i[4:0];

    // redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_wraddr(REG,846)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_wraddr_q <= $unsigned(5'b11010);
        end
        else
        begin
            redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_wraddr_q <= $unsigned(redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_rdcnt_q);
        end
    end

    // redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem(DUALMEM,844)
    assign redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_ia = $unsigned(redist92_bgTrunc_i_sub_if_loop_326_sel_x_b_1_q);
    assign redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_aa = redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_wraddr_q;
    assign redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_ab = redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_rdcnt_q;
    assign redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(27),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(27),
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
        .intended_device_family("Cyclone V")
    ) redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_dmem (
        .clocken1(redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_reset0),
        .clock1(clock),
        .address_a(redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_aa),
        .data_a(redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_ab),
        .q_b(redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_iq),
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
    assign redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_q = redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_iq[31:0];

    // redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_outputreg0(DELAY,843)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_outputreg0_q <= '0;
        end
        else
        begin
            redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_outputreg0_q <= $unsigned(redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_mem_q);
        end
    end

    // yIsZero_uid147_i_div_if_loop_330(LOGICAL,146)@49
    assign yIsZero_uid147_i_div_if_loop_330_b = {31'b0000000000000000000000000000000, GND_q};
    assign yIsZero_uid147_i_div_if_loop_330_q = $unsigned(redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_outputreg0_q == yIsZero_uid147_i_div_if_loop_330_b ? 1'b1 : 1'b0);

    // resFinal_uid173_i_div_if_loop_330(MUX,172)@49
    assign resFinal_uid173_i_div_if_loop_330_s = yIsZero_uid147_i_div_if_loop_330_q;
    always @(resFinal_uid173_i_div_if_loop_330_s or prodPostRightShiftPostRndRange_uid168_i_div_if_loop_330_b or cstOvf_uid172_i_div_if_loop_330_q)
    begin
        unique case (resFinal_uid173_i_div_if_loop_330_s)
            1'b0 : resFinal_uid173_i_div_if_loop_330_q = prodPostRightShiftPostRndRange_uid168_i_div_if_loop_330_b;
            1'b1 : resFinal_uid173_i_div_if_loop_330_q = cstOvf_uid172_i_div_if_loop_330_q;
            default : resFinal_uid173_i_div_if_loop_330_q = 32'b0;
        endcase
    end

    // redist54_resFinal_uid173_i_div_if_loop_330_q_4_inputreg0(DELAY,829)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_resFinal_uid173_i_div_if_loop_330_q_4_inputreg0_q <= '0;
        end
        else
        begin
            redist54_resFinal_uid173_i_div_if_loop_330_q_4_inputreg0_q <= $unsigned(resFinal_uid173_i_div_if_loop_330_q);
        end
    end

    // redist54_resFinal_uid173_i_div_if_loop_330_q_4(DELAY,763)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_resFinal_uid173_i_div_if_loop_330_q_4_delay_0 <= '0;
            redist54_resFinal_uid173_i_div_if_loop_330_q_4_q <= '0;
        end
        else
        begin
            redist54_resFinal_uid173_i_div_if_loop_330_q_4_delay_0 <= $unsigned(redist54_resFinal_uid173_i_div_if_loop_330_q_4_inputreg0_q);
            redist54_resFinal_uid173_i_div_if_loop_330_q_4_q <= redist54_resFinal_uid173_i_div_if_loop_330_q_4_delay_0;
        end
    end

    // redist54_resFinal_uid173_i_div_if_loop_330_q_4_outputreg0(DELAY,830)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_resFinal_uid173_i_div_if_loop_330_q_4_outputreg0_q <= '0;
        end
        else
        begin
            redist54_resFinal_uid173_i_div_if_loop_330_q_4_outputreg0_q <= $unsigned(redist54_resFinal_uid173_i_div_if_loop_330_q_4_q);
        end
    end

    // resFinalMP1_uid190_i_div_if_loop_330(SUB,189)@53
    assign resFinalMP1_uid190_i_div_if_loop_330_a = $unsigned({{1{redist54_resFinal_uid173_i_div_if_loop_330_q_4_outputreg0_q[31]}}, redist54_resFinal_uid173_i_div_if_loop_330_q_4_outputreg0_q});
    assign resFinalMP1_uid190_i_div_if_loop_330_b = $unsigned({{31{cstSubFinal_uid189_i_div_if_loop_330_q[1]}}, cstSubFinal_uid189_i_div_if_loop_330_q});
    assign resFinalMP1_uid190_i_div_if_loop_330_o = $unsigned($signed(resFinalMP1_uid190_i_div_if_loop_330_a) - $signed(resFinalMP1_uid190_i_div_if_loop_330_b));
    assign resFinalMP1_uid190_i_div_if_loop_330_q = resFinalMP1_uid190_i_div_if_loop_330_o[32:0];

    // resFinalPostMux_uid191_i_div_if_loop_330(BITSELECT,190)@53
    assign resFinalPostMux_uid191_i_div_if_loop_330_in = $unsigned(resFinalMP1_uid190_i_div_if_loop_330_q[31:0]);
    assign resFinalPostMux_uid191_i_div_if_loop_330_b = $unsigned(resFinalPostMux_uid191_i_div_if_loop_330_in[31:0]);

    // redist53_resFinalPostMux_uid191_i_div_if_loop_330_b_1(DELAY,762)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_resFinalPostMux_uid191_i_div_if_loop_330_b_1_q <= '0;
        end
        else
        begin
            redist53_resFinalPostMux_uid191_i_div_if_loop_330_b_1_q <= $unsigned(resFinalPostMux_uid191_i_div_if_loop_330_b);
        end
    end

    // redist55_resFinal_uid173_i_div_if_loop_330_q_5(DELAY,764)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_resFinal_uid173_i_div_if_loop_330_q_5_q <= '0;
        end
        else
        begin
            redist55_resFinal_uid173_i_div_if_loop_330_q_5_q <= $unsigned(redist54_resFinal_uid173_i_div_if_loop_330_q_4_outputreg0_q);
        end
    end

    // signResFinal_uid182_i_div_if_loop_330(BITSELECT,181)@54
    assign signResFinal_uid182_i_div_if_loop_330_b = $unsigned(redist55_resFinal_uid173_i_div_if_loop_330_q_5_q[31:31]);

    // redist69_xMSB_uid133_i_div_if_loop_330_b_34(DELAY,778)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_xMSB_uid133_i_div_if_loop_330_b_34_delay_0 <= '0;
            redist69_xMSB_uid133_i_div_if_loop_330_b_34_q <= '0;
        end
        else
        begin
            redist69_xMSB_uid133_i_div_if_loop_330_b_34_delay_0 <= $unsigned(redist68_xMSB_uid133_i_div_if_loop_330_b_32_q);
            redist69_xMSB_uid133_i_div_if_loop_330_b_34_q <= redist69_xMSB_uid133_i_div_if_loop_330_b_34_delay_0;
        end
    end

    // redist57_signX_uid171_i_div_if_loop_330_b_5(DELAY,766)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_signX_uid171_i_div_if_loop_330_b_5_delay_0 <= '0;
            redist57_signX_uid171_i_div_if_loop_330_b_5_q <= '0;
        end
        else
        begin
            redist57_signX_uid171_i_div_if_loop_330_b_5_delay_0 <= $unsigned(redist56_signX_uid171_i_div_if_loop_330_b_3_q);
            redist57_signX_uid171_i_div_if_loop_330_b_5_q <= redist57_signX_uid171_i_div_if_loop_330_b_5_delay_0;
        end
    end

    // OverflowCond_uid183_i_div_if_loop_330(LOGICAL,182)@54
    assign OverflowCond_uid183_i_div_if_loop_330_q = redist57_signX_uid171_i_div_if_loop_330_b_5_q & redist69_xMSB_uid133_i_div_if_loop_330_b_34_q & signResFinal_uid182_i_div_if_loop_330_b;

    // prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1(BITSELECT,567)@52
    assign prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b = $unsigned(redist72_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_8_q[31:31]);

    // redist72_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_8_inputreg0(DELAY,842)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_8_inputreg0_q <= '0;
        end
        else
        begin
            redist72_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_8_inputreg0_q <= $unsigned(redist71_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_5_outputreg0_q);
        end
    end

    // redist72_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_8(DELAY,781)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_8_delay_0 <= '0;
            redist72_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_8_q <= '0;
        end
        else
        begin
            redist72_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_8_delay_0 <= $unsigned(redist72_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_8_inputreg0_q);
            redist72_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_8_q <= redist72_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_8_delay_0;
        end
    end

    // prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_BitJoin_for_b(BITJOIN,595)@52
    assign prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_BitJoin_for_b_q = {prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel0_1_b, redist72_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_8_q};

    // prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1(BITSELECT,678)@51
    assign prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b = $unsigned(prodResY_uid174_i_div_if_loop_330_sums_align_1_q[50:50]);

    // prodResY_uid174_i_div_if_loop_330_bs1(BITSELECT,433)@49
    assign prodResY_uid174_i_div_if_loop_330_bs1_in = $unsigned(resFinal_uid173_i_div_if_loop_330_q[17:0]);
    assign prodResY_uid174_i_div_if_loop_330_bs1_b = $unsigned(prodResY_uid174_i_div_if_loop_330_bs1_in[17:0]);

    // prodResY_uid174_i_div_if_loop_330_bs5(BITSELECT,437)@49
    assign prodResY_uid174_i_div_if_loop_330_bs5_b = $unsigned(redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_outputreg0_q[31:18]);

    // prodResY_uid174_i_div_if_loop_330_bs2(BITSELECT,434)@49
    assign prodResY_uid174_i_div_if_loop_330_bs2_in = $unsigned(redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_outputreg0_q[17:0]);
    assign prodResY_uid174_i_div_if_loop_330_bs2_b = $unsigned(prodResY_uid174_i_div_if_loop_330_bs2_in[17:0]);

    // prodResY_uid174_i_div_if_loop_330_bs6(BITSELECT,438)@49
    assign prodResY_uid174_i_div_if_loop_330_bs6_b = $unsigned(resFinal_uid173_i_div_if_loop_330_q[31:18]);

    // prodResY_uid174_i_div_if_loop_330_ma3_cma(CHAINMULTADD,476)@49 + 2
    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_reset = ~ (resetn);
    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_ena0 = 1'b1;
    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_ena1 = prodResY_uid174_i_div_if_loop_330_ma3_cma_ena0;
    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_r[0] = $signed({1'b0, prodResY_uid174_i_div_if_loop_330_ma3_cma_c0[0][17:0]});
    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_r[1] = $signed({1'b0, prodResY_uid174_i_div_if_loop_330_ma3_cma_c0[1][17:0]});
    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_p[0] = prodResY_uid174_i_div_if_loop_330_ma3_cma_a0[0] * prodResY_uid174_i_div_if_loop_330_ma3_cma_r[0];
    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_p[1] = prodResY_uid174_i_div_if_loop_330_ma3_cma_a0[1] * prodResY_uid174_i_div_if_loop_330_ma3_cma_r[1];
    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_u[0] = {{1{prodResY_uid174_i_div_if_loop_330_ma3_cma_p[0][32]}}, prodResY_uid174_i_div_if_loop_330_ma3_cma_p[0][32:0]};
    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_u[1] = {{1{prodResY_uid174_i_div_if_loop_330_ma3_cma_p[1][32]}}, prodResY_uid174_i_div_if_loop_330_ma3_cma_p[1][32:0]};
    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_w[0] = prodResY_uid174_i_div_if_loop_330_ma3_cma_u[0] + prodResY_uid174_i_div_if_loop_330_ma3_cma_u[1];
    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_x[0] = prodResY_uid174_i_div_if_loop_330_ma3_cma_w[0];
    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_y[0] = prodResY_uid174_i_div_if_loop_330_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodResY_uid174_i_div_if_loop_330_ma3_cma_a0 <= '{default: '0};
            prodResY_uid174_i_div_if_loop_330_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodResY_uid174_i_div_if_loop_330_ma3_cma_ena0 == 1'b1)
            begin
                prodResY_uid174_i_div_if_loop_330_ma3_cma_a0[0] <= prodResY_uid174_i_div_if_loop_330_bs6_b;
                prodResY_uid174_i_div_if_loop_330_ma3_cma_a0[1] <= prodResY_uid174_i_div_if_loop_330_bs5_b;
                prodResY_uid174_i_div_if_loop_330_ma3_cma_c0[0] <= prodResY_uid174_i_div_if_loop_330_bs2_b;
                prodResY_uid174_i_div_if_loop_330_ma3_cma_c0[1] <= prodResY_uid174_i_div_if_loop_330_bs1_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodResY_uid174_i_div_if_loop_330_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodResY_uid174_i_div_if_loop_330_ma3_cma_ena1 == 1'b1)
            begin
                prodResY_uid174_i_div_if_loop_330_ma3_cma_s[0] <= prodResY_uid174_i_div_if_loop_330_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(34), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodResY_uid174_i_div_if_loop_330_ma3_cma_delay ( .xin(prodResY_uid174_i_div_if_loop_330_ma3_cma_s[0]), .xout(prodResY_uid174_i_div_if_loop_330_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodResY_uid174_i_div_if_loop_330_ma3_cma_q = $unsigned(prodResY_uid174_i_div_if_loop_330_ma3_cma_qq[32:0]);

    // prodResY_uid174_i_div_if_loop_330_sums_align_1(BITSHIFT,444)@51
    assign prodResY_uid174_i_div_if_loop_330_sums_align_1_qint = { prodResY_uid174_i_div_if_loop_330_ma3_cma_q, 18'b000000000000000000 };
    assign prodResY_uid174_i_div_if_loop_330_sums_align_1_q = prodResY_uid174_i_div_if_loop_330_sums_align_1_qint[50:0];

    // prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,687)@51
    assign prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodResY_uid174_i_div_if_loop_330_sums_align_1_q};

    // prodResY_uid174_i_div_if_loop_330_im8_cma(CHAINMULTADD,472)@49 + 2
    assign prodResY_uid174_i_div_if_loop_330_im8_cma_reset = ~ (resetn);
    assign prodResY_uid174_i_div_if_loop_330_im8_cma_ena0 = 1'b1;
    assign prodResY_uid174_i_div_if_loop_330_im8_cma_ena1 = prodResY_uid174_i_div_if_loop_330_im8_cma_ena0;
    assign prodResY_uid174_i_div_if_loop_330_im8_cma_p[0] = prodResY_uid174_i_div_if_loop_330_im8_cma_a0[0] * prodResY_uid174_i_div_if_loop_330_im8_cma_c0[0];
    assign prodResY_uid174_i_div_if_loop_330_im8_cma_u[0] = prodResY_uid174_i_div_if_loop_330_im8_cma_p[0][27:0];
    assign prodResY_uid174_i_div_if_loop_330_im8_cma_w[0] = prodResY_uid174_i_div_if_loop_330_im8_cma_u[0];
    assign prodResY_uid174_i_div_if_loop_330_im8_cma_x[0] = prodResY_uid174_i_div_if_loop_330_im8_cma_w[0];
    assign prodResY_uid174_i_div_if_loop_330_im8_cma_y[0] = prodResY_uid174_i_div_if_loop_330_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodResY_uid174_i_div_if_loop_330_im8_cma_a0 <= '{default: '0};
            prodResY_uid174_i_div_if_loop_330_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodResY_uid174_i_div_if_loop_330_im8_cma_ena0 == 1'b1)
            begin
                prodResY_uid174_i_div_if_loop_330_im8_cma_a0[0] <= prodResY_uid174_i_div_if_loop_330_bs6_b;
                prodResY_uid174_i_div_if_loop_330_im8_cma_c0[0] <= prodResY_uid174_i_div_if_loop_330_bs5_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodResY_uid174_i_div_if_loop_330_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodResY_uid174_i_div_if_loop_330_im8_cma_ena1 == 1'b1)
            begin
                prodResY_uid174_i_div_if_loop_330_im8_cma_s[0] <= prodResY_uid174_i_div_if_loop_330_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodResY_uid174_i_div_if_loop_330_im8_cma_delay ( .xin(prodResY_uid174_i_div_if_loop_330_im8_cma_s[0]), .xout(prodResY_uid174_i_div_if_loop_330_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodResY_uid174_i_div_if_loop_330_im8_cma_q = $unsigned(prodResY_uid174_i_div_if_loop_330_im8_cma_qq[27:0]);

    // prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel0_1(BITSELECT,672)@51
    assign prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b = $unsigned(prodResY_uid174_i_div_if_loop_330_im8_cma_q[23:0]);

    // prodResY_uid174_i_div_if_loop_330_im0_cma(CHAINMULTADD,471)@49 + 2
    assign prodResY_uid174_i_div_if_loop_330_im0_cma_reset = ~ (resetn);
    assign prodResY_uid174_i_div_if_loop_330_im0_cma_ena0 = 1'b1;
    assign prodResY_uid174_i_div_if_loop_330_im0_cma_ena1 = prodResY_uid174_i_div_if_loop_330_im0_cma_ena0;
    assign prodResY_uid174_i_div_if_loop_330_im0_cma_p[0] = prodResY_uid174_i_div_if_loop_330_im0_cma_a0[0] * prodResY_uid174_i_div_if_loop_330_im0_cma_c0[0];
    assign prodResY_uid174_i_div_if_loop_330_im0_cma_u[0] = prodResY_uid174_i_div_if_loop_330_im0_cma_p[0][35:0];
    assign prodResY_uid174_i_div_if_loop_330_im0_cma_w[0] = prodResY_uid174_i_div_if_loop_330_im0_cma_u[0];
    assign prodResY_uid174_i_div_if_loop_330_im0_cma_x[0] = prodResY_uid174_i_div_if_loop_330_im0_cma_w[0];
    assign prodResY_uid174_i_div_if_loop_330_im0_cma_y[0] = prodResY_uid174_i_div_if_loop_330_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodResY_uid174_i_div_if_loop_330_im0_cma_a0 <= '{default: '0};
            prodResY_uid174_i_div_if_loop_330_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodResY_uid174_i_div_if_loop_330_im0_cma_ena0 == 1'b1)
            begin
                prodResY_uid174_i_div_if_loop_330_im0_cma_a0[0] <= prodResY_uid174_i_div_if_loop_330_bs1_b;
                prodResY_uid174_i_div_if_loop_330_im0_cma_c0[0] <= prodResY_uid174_i_div_if_loop_330_bs2_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodResY_uid174_i_div_if_loop_330_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodResY_uid174_i_div_if_loop_330_im0_cma_ena1 == 1'b1)
            begin
                prodResY_uid174_i_div_if_loop_330_im0_cma_s[0] <= prodResY_uid174_i_div_if_loop_330_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodResY_uid174_i_div_if_loop_330_im0_cma_delay ( .xin(prodResY_uid174_i_div_if_loop_330_im0_cma_s[0]), .xout(prodResY_uid174_i_div_if_loop_330_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodResY_uid174_i_div_if_loop_330_im0_cma_q = $unsigned(prodResY_uid174_i_div_if_loop_330_im0_cma_qq[35:0]);

    // prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,673)@51
    assign prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b, prodResY_uid174_i_div_if_loop_330_im0_cma_q};

    // prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p1_of_2(ADD,539)@51 + 1
    assign prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_a = {1'b0, prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q};
    assign prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_b = {1'b0, prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_o <= 61'b0;
        end
        else
        begin
            prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_o <= $unsigned(prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_a) + $unsigned(prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_c[0] = prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_o[60];
    assign prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_q = prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_o[59:0];

    // prod_qy_LT_x_uid176_i_div_if_loop_330_p1_of_2(COMPARE,516)@52 + 1
    assign prod_qy_LT_x_uid176_i_div_if_loop_330_p1_of_2_a = {1'b0, prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_q};
    assign prod_qy_LT_x_uid176_i_div_if_loop_330_p1_of_2_b = {1'b0, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prod_qy_LT_x_uid176_i_div_if_loop_330_p1_of_2_o <= 61'b0;
        end
        else
        begin
            prod_qy_LT_x_uid176_i_div_if_loop_330_p1_of_2_o <= $unsigned(prod_qy_LT_x_uid176_i_div_if_loop_330_p1_of_2_a) - $unsigned(prod_qy_LT_x_uid176_i_div_if_loop_330_p1_of_2_b);
        end
    end
    assign prod_qy_LT_x_uid176_i_div_if_loop_330_p1_of_2_c[0] = prod_qy_LT_x_uid176_i_div_if_loop_330_p1_of_2_o[60];

    // redist73_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9(DELAY,782)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_q <= '0;
        end
        else
        begin
            redist73_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_q <= $unsigned(redist72_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_8_q);
        end
    end

    // prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel1_0(BITSELECT,596)@53
    assign prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel1_0_b = $unsigned(redist73_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_q[31:31]);

    // prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_BitJoin_for_c(BITJOIN,601)@53
    assign prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_BitJoin_for_c_q = {prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel1_0_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel1_0_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel1_0_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel1_0_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_tessel1_0_b};

    // redist14_prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel1_4_b_1(DELAY,723)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel1_4_b_1_q <= '0;
        end
        else
        begin
            redist14_prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel1_4_b_1_q <= $unsigned(prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b);
        end
    end

    // prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,693)@52
    assign prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q = {redist14_prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel1_4_b_1_q, redist14_prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel1_4_b_1_q, redist14_prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel1_4_b_1_q, redist14_prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel1_4_b_1_q, redist14_prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_tessel1_4_b_1_q};

    // prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_1(BITSELECT,675)@51
    assign prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b = $unsigned(prodResY_uid174_i_div_if_loop_330_im8_cma_q[27:27]);

    // redist19_prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b_1(DELAY,728)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b_1_q <= '0;
        end
        else
        begin
            redist19_prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b_1_q <= $unsigned(prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b);
        end
    end

    // prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_0(BITSELECT,674)@51
    assign prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b = $unsigned(prodResY_uid174_i_div_if_loop_330_im8_cma_q[27:24]);

    // redist20_prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b_1(DELAY,729)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b_1_q <= '0;
        end
        else
        begin
            redist20_prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b_1_q <= $unsigned(prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b);
        end
    end

    // prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,676)@52
    assign prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {redist19_prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b_1_q, redist20_prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b_1_q};

    // prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p2_of_2(ADD,540)@52 + 1
    assign prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_cin = prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_c;
    assign prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_a = $unsigned({ {{1{prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q[4]}}, prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 });
    assign prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_b = $unsigned({ {{1{prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q[4]}}, prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q}, prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_cin[0] });
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_o <= 7'b0;
        end
        else
        begin
            prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_o <= $unsigned($signed(prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_a) + $signed(prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_b));
        end
    end
    assign prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_q = prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_o[5:1];

    // prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_b_tessel1_1(BITSELECT,605)@53
    assign prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_b_tessel1_1_b = $unsigned(prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_q[3:3]);

    // prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_b_tessel1_0(BITSELECT,604)@53
    assign prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_b_tessel1_0_b = $unsigned(prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p2_of_2_q[3:0]);

    // prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_b_BitJoin_for_c(BITJOIN,606)@53
    assign prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_b_BitJoin_for_c_q = {prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_b_tessel1_1_b, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_b_tessel1_0_b};

    // prod_qy_LT_x_uid176_i_div_if_loop_330_p2_of_2(COMPARE,517)@53 + 1
    assign prod_qy_LT_x_uid176_i_div_if_loop_330_p2_of_2_cin = prod_qy_LT_x_uid176_i_div_if_loop_330_p1_of_2_c;
    assign prod_qy_LT_x_uid176_i_div_if_loop_330_p2_of_2_a = $unsigned({ {{1{prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_b_BitJoin_for_c_q[4]}}, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_b_BitJoin_for_c_q}, 1'b0 });
    assign prod_qy_LT_x_uid176_i_div_if_loop_330_p2_of_2_b = $unsigned({ {{1{prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_BitJoin_for_c_q[4]}}, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_BitJoin_for_c_q}, prod_qy_LT_x_uid176_i_div_if_loop_330_p2_of_2_cin[0] });
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prod_qy_LT_x_uid176_i_div_if_loop_330_p2_of_2_o <= 7'b0;
        end
        else
        begin
            prod_qy_LT_x_uid176_i_div_if_loop_330_p2_of_2_o <= $unsigned($signed(prod_qy_LT_x_uid176_i_div_if_loop_330_p2_of_2_a) - $signed(prod_qy_LT_x_uid176_i_div_if_loop_330_p2_of_2_b));
        end
    end
    assign prod_qy_LT_x_uid176_i_div_if_loop_330_p2_of_2_c[0] = prod_qy_LT_x_uid176_i_div_if_loop_330_p2_of_2_o[6];

    // CondNegX_uid184_i_div_if_loop_330(LOGICAL,183)@54
    assign CondNegX_uid184_i_div_if_loop_330_q = prod_qy_LT_x_uid176_i_div_if_loop_330_p2_of_2_c & redist57_signX_uid171_i_div_if_loop_330_b_5_q;

    // invSignX_uid185_i_div_if_loop_330(LOGICAL,184)@54
    assign invSignX_uid185_i_div_if_loop_330_q = ~ (redist57_signX_uid171_i_div_if_loop_330_b_5_q);

    // prod_qy_GT_x_uid175_i_div_if_loop_330_p1_of_2(COMPARE,504)@52 + 1
    assign prod_qy_GT_x_uid175_i_div_if_loop_330_p1_of_2_a = {1'b0, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_BitJoin_for_b_q};
    assign prod_qy_GT_x_uid175_i_div_if_loop_330_p1_of_2_b = {1'b0, prodResY_uid174_i_div_if_loop_330_sums_result_add_0_0_p1_of_2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prod_qy_GT_x_uid175_i_div_if_loop_330_p1_of_2_o <= 61'b0;
        end
        else
        begin
            prod_qy_GT_x_uid175_i_div_if_loop_330_p1_of_2_o <= $unsigned(prod_qy_GT_x_uid175_i_div_if_loop_330_p1_of_2_a) - $unsigned(prod_qy_GT_x_uid175_i_div_if_loop_330_p1_of_2_b);
        end
    end
    assign prod_qy_GT_x_uid175_i_div_if_loop_330_p1_of_2_c[0] = prod_qy_GT_x_uid175_i_div_if_loop_330_p1_of_2_o[60];

    // prod_qy_GT_x_uid175_i_div_if_loop_330_p2_of_2(COMPARE,505)@53 + 1
    assign prod_qy_GT_x_uid175_i_div_if_loop_330_p2_of_2_cin = prod_qy_GT_x_uid175_i_div_if_loop_330_p1_of_2_c;
    assign prod_qy_GT_x_uid175_i_div_if_loop_330_p2_of_2_a = $unsigned({ {{1{prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_BitJoin_for_c_q[4]}}, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_a_BitJoin_for_c_q}, 1'b0 });
    assign prod_qy_GT_x_uid175_i_div_if_loop_330_p2_of_2_b = $unsigned({ {{1{prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_b_BitJoin_for_c_q[4]}}, prod_qy_GT_x_uid175_i_div_if_loop_330_BitSelect_for_b_BitJoin_for_c_q}, prod_qy_GT_x_uid175_i_div_if_loop_330_p2_of_2_cin[0] });
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prod_qy_GT_x_uid175_i_div_if_loop_330_p2_of_2_o <= 7'b0;
        end
        else
        begin
            prod_qy_GT_x_uid175_i_div_if_loop_330_p2_of_2_o <= $unsigned($signed(prod_qy_GT_x_uid175_i_div_if_loop_330_p2_of_2_a) - $signed(prod_qy_GT_x_uid175_i_div_if_loop_330_p2_of_2_b));
        end
    end
    assign prod_qy_GT_x_uid175_i_div_if_loop_330_p2_of_2_c[0] = prod_qy_GT_x_uid175_i_div_if_loop_330_p2_of_2_o[6];

    // CondPosX_uid186_i_div_if_loop_330(LOGICAL,185)@54
    assign CondPosX_uid186_i_div_if_loop_330_q = prod_qy_GT_x_uid175_i_div_if_loop_330_p2_of_2_c & invSignX_uid185_i_div_if_loop_330_q;

    // postMuxSelect_uid187_i_div_if_loop_330(LOGICAL,186)@54
    assign postMuxSelect_uid187_i_div_if_loop_330_q = CondPosX_uid186_i_div_if_loop_330_q | CondNegX_uid184_i_div_if_loop_330_q | OverflowCond_uid183_i_div_if_loop_330_q;

    // resFinalIntDiv_uid192_i_div_if_loop_330(MUX,191)@54
    assign resFinalIntDiv_uid192_i_div_if_loop_330_s = postMuxSelect_uid187_i_div_if_loop_330_q;
    always @(resFinalIntDiv_uid192_i_div_if_loop_330_s or redist55_resFinal_uid173_i_div_if_loop_330_q_5_q or redist53_resFinalPostMux_uid191_i_div_if_loop_330_b_1_q)
    begin
        unique case (resFinalIntDiv_uid192_i_div_if_loop_330_s)
            1'b0 : resFinalIntDiv_uid192_i_div_if_loop_330_q = redist55_resFinal_uid173_i_div_if_loop_330_q_5_q;
            1'b1 : resFinalIntDiv_uid192_i_div_if_loop_330_q = redist53_resFinalPostMux_uid191_i_div_if_loop_330_b_1_q;
            default : resFinalIntDiv_uid192_i_div_if_loop_330_q = 32'b0;
        endcase
    end

    // redist74_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_10(DELAY,783)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_10_q <= '0;
        end
        else
        begin
            redist74_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_10_q <= $unsigned(redist73_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_9_q);
        end
    end

    // i_cmp2_if_loop_327(COMPARE,73)@49 + 1
    assign i_cmp2_if_loop_327_a = $unsigned({{2{c_i32_175_recast_x_q[31]}}, c_i32_175_recast_x_q});
    assign i_cmp2_if_loop_327_b = $unsigned({{2{redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_outputreg0_q[31]}}, redist93_bgTrunc_i_sub_if_loop_326_sel_x_b_30_outputreg0_q});
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

    // redist79_i_cmp2_if_loop_327_c_5(DELAY,788)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist79_i_cmp2_if_loop_327_c_5_delay_0 <= '0;
            redist79_i_cmp2_if_loop_327_c_5_delay_1 <= '0;
            redist79_i_cmp2_if_loop_327_c_5_delay_2 <= '0;
            redist79_i_cmp2_if_loop_327_c_5_q <= '0;
        end
        else
        begin
            redist79_i_cmp2_if_loop_327_c_5_delay_0 <= $unsigned(i_cmp2_if_loop_327_c);
            redist79_i_cmp2_if_loop_327_c_5_delay_1 <= redist79_i_cmp2_if_loop_327_c_5_delay_0;
            redist79_i_cmp2_if_loop_327_c_5_delay_2 <= redist79_i_cmp2_if_loop_327_c_5_delay_1;
            redist79_i_cmp2_if_loop_327_c_5_q <= redist79_i_cmp2_if_loop_327_c_5_delay_2;
        end
    end

    // i_acl_if_loop_331(MUX,69)@54
    assign i_acl_if_loop_331_s = redist79_i_cmp2_if_loop_327_c_5_q;
    always @(i_acl_if_loop_331_s or redist74_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_10_q or resFinalIntDiv_uid192_i_div_if_loop_330_q)
    begin
        unique case (i_acl_if_loop_331_s)
            1'b0 : i_acl_if_loop_331_q = redist74_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_329_out_data_out_10_q;
            1'b1 : i_acl_if_loop_331_q = resFinalIntDiv_uid192_i_div_if_loop_330_q;
            default : i_acl_if_loop_331_q = 32'b0;
        endcase
    end

    // redist78_i_first_cleanup_xor_if_loop_34_q_40(DELAY,787)
    dspba_delay_ver #( .width(1), .depth(40), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist78_i_first_cleanup_xor_if_loop_34_q_40 ( .xin(i_first_cleanup_xor_if_loop_34_q), .xout(redist78_i_first_cleanup_xor_if_loop_34_q_40_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_39_if_loop_346(BLACKBOX,89)@54
    // out out_intel_reserved_ffwd_4_0@20000000
    if_loop_3_i_llvm_fpga_ffwd_source_i32_unnamed_9_if_loop_30 thei_llvm_fpga_ffwd_source_i32_unnamed_if_loop_39_if_loop_346 (
        .in_predicate_in(redist78_i_first_cleanup_xor_if_loop_34_q_40_q),
        .in_src_data_in_4_0(i_acl_if_loop_331_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_39_if_loop_346_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,129)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_39_if_loop_346_out_intel_reserved_ffwd_4_0;

endmodule
