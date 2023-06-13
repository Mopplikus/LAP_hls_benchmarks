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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body_if_loop_3s_c1_enter_if_loop_30
// Created for function/kernel if_loop_3
// SystemVerilog created on Tue Jun 13 03:11:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_3_i_sfc_logic_s_c1_in_for_body_s_c1_enter_if_loop_30 (
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_if_loop_31,
    output wire [0:0] out_unnamed_if_loop_310_0_tpl,
    input wire [0:0] in_c1_eni5_0_tpl,
    input wire [31:0] in_c1_eni5_1_tpl,
    input wire [31:0] in_c1_eni5_2_tpl,
    input wire [0:0] in_c1_eni5_3_tpl,
    input wire [0:0] in_c1_eni5_4_tpl,
    input wire [0:0] in_c1_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_sub_if_loop_32_sel_x_b;
    wire [31:0] c_i32_114_recast_x_q;
    wire [31:0] c_i32_100015_q;
    wire [0:0] i_acl_if_loop_37_s;
    reg [31:0] i_acl_if_loop_37_q;
    wire [33:0] i_cmp2_if_loop_33_a;
    wire [33:0] i_cmp2_if_loop_33_b;
    logic [33:0] i_cmp2_if_loop_33_o;
    wire [0:0] i_cmp2_if_loop_33_c;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_39_if_loop_39_out_intel_reserved_ffwd_4_0;
    wire [31:0] i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_feedback_stall_out_7;
    wire [31:0] i_llvm_fpga_push_i32_sum_023_push7_if_loop_38_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i32_sum_023_push7_if_loop_38_out_feedback_valid_out_7;
    wire [32:0] i_sub_if_loop_32_a;
    wire [32:0] i_sub_if_loop_32_b;
    logic [32:0] i_sub_if_loop_32_o;
    wire [32:0] i_sub_if_loop_32_q;
    wire [0:0] xMSB_uid25_i_div_if_loop_36_b;
    wire [31:0] yPSE_uid27_i_div_if_loop_36_b;
    wire [31:0] yPSE_uid27_i_div_if_loop_36_qi;
    reg [31:0] yPSE_uid27_i_div_if_loop_36_q;
    wire [32:0] yPSEA_uid29_i_div_if_loop_36_a;
    wire [32:0] yPSEA_uid29_i_div_if_loop_36_b;
    logic [32:0] yPSEA_uid29_i_div_if_loop_36_o;
    wire [32:0] yPSEA_uid29_i_div_if_loop_36_q;
    wire [31:0] yPS_uid30_i_div_if_loop_36_in;
    wire [31:0] yPS_uid30_i_div_if_loop_36_b;
    wire [30:0] normYNoLeadOne_uid33_i_div_if_loop_36_in;
    wire [30:0] normYNoLeadOne_uid33_i_div_if_loop_36_b;
    wire [30:0] paddingY_uid34_i_div_if_loop_36_q;
    wire [31:0] updatedY_uid35_i_div_if_loop_36_q;
    wire [31:0] normYIsOneC2_uid34_i_div_if_loop_36_a;
    wire [0:0] normYIsOneC2_uid34_i_div_if_loop_36_qi;
    reg [0:0] normYIsOneC2_uid34_i_div_if_loop_36_q;
    wire [0:0] normYIsOneC2_uid37_i_div_if_loop_36_b;
    wire [0:0] normYIsOne_uid38_i_div_if_loop_36_qi;
    reg [0:0] normYIsOne_uid38_i_div_if_loop_36_q;
    wire [31:0] yIsZero_uid39_i_div_if_loop_36_b;
    wire [0:0] yIsZero_uid39_i_div_if_loop_36_q;
    wire [38:0] fxpInverseRes_uid44_i_div_if_loop_36_in;
    wire [32:0] fxpInverseRes_uid44_i_div_if_loop_36_b;
    wire [32:0] oneInvRes_uid45_i_div_if_loop_36_q;
    wire [0:0] invResPostOneHandling2_uid46_i_div_if_loop_36_s;
    reg [32:0] invResPostOneHandling2_uid46_i_div_if_loop_36_q;
    wire [5:0] cWOut_uid47_i_div_if_loop_36_q;
    wire [6:0] rShiftCount_uid48_i_div_if_loop_36_a;
    wire [6:0] rShiftCount_uid48_i_div_if_loop_36_b;
    logic [6:0] rShiftCount_uid48_i_div_if_loop_36_o;
    wire [6:0] rShiftCount_uid48_i_div_if_loop_36_q;
    wire [31:0] xPSX_uid49_i_div_if_loop_36_b;
    wire [31:0] xPSX_uid49_i_div_if_loop_36_q;
    wire [1:0] zMsbY0_uid51_i_div_if_loop_36_q;
    wire [32:0] xPSXE_uid52_i_div_if_loop_36_a;
    wire [32:0] xPSXE_uid52_i_div_if_loop_36_b;
    logic [32:0] xPSXE_uid52_i_div_if_loop_36_o;
    wire [32:0] xPSXE_uid52_i_div_if_loop_36_q;
    wire [64:0] rightShiftInput_uid55_i_div_if_loop_36_in;
    wire [64:0] rightShiftInput_uid55_i_div_if_loop_36_b;
    wire [62:0] prodPostRightShiftPost_uid57_i_div_if_loop_36_in;
    wire [32:0] prodPostRightShiftPost_uid57_i_div_if_loop_36_b;
    wire [33:0] prodPostRightShiftPostRnd_uid59_i_div_if_loop_36_a;
    wire [33:0] prodPostRightShiftPostRnd_uid59_i_div_if_loop_36_b;
    logic [33:0] prodPostRightShiftPostRnd_uid59_i_div_if_loop_36_o;
    wire [33:0] prodPostRightShiftPostRnd_uid59_i_div_if_loop_36_q;
    wire [32:0] prodPostRightShiftPostRndRange_uid60_i_div_if_loop_36_in;
    wire [31:0] prodPostRightShiftPostRndRange_uid60_i_div_if_loop_36_b;
    wire [31:0] cstValOvfPos_uid61_i_div_if_loop_36_q;
    wire [31:0] cstValOvfneg_uid62_i_div_if_loop_36_q;
    wire [0:0] signX_uid63_i_div_if_loop_36_b;
    wire [0:0] cstOvf_uid64_i_div_if_loop_36_s;
    reg [31:0] cstOvf_uid64_i_div_if_loop_36_q;
    wire [0:0] resFinal_uid65_i_div_if_loop_36_s;
    reg [31:0] resFinal_uid65_i_div_if_loop_36_q;
    wire [0:0] resultSign_uid73_i_div_if_loop_36_qi;
    reg [0:0] resultSign_uid73_i_div_if_loop_36_q;
    wire [0:0] signResFinal_uid74_i_div_if_loop_36_b;
    wire [0:0] OverflowCond_uid75_i_div_if_loop_36_qi;
    reg [0:0] OverflowCond_uid75_i_div_if_loop_36_q;
    wire [0:0] CondNegX_uid76_i_div_if_loop_36_q;
    wire [0:0] invSignX_uid77_i_div_if_loop_36_q;
    wire [0:0] CondPosX_uid78_i_div_if_loop_36_q;
    wire [0:0] postMuxSelect_uid79_i_div_if_loop_36_q;
    wire [1:0] cstSubFinal_uid81_i_div_if_loop_36_q;
    wire [32:0] resFinalMP1_uid82_i_div_if_loop_36_a;
    wire [32:0] resFinalMP1_uid82_i_div_if_loop_36_b;
    logic [32:0] resFinalMP1_uid82_i_div_if_loop_36_o;
    wire [32:0] resFinalMP1_uid82_i_div_if_loop_36_q;
    wire [31:0] resFinalPostMux_uid83_i_div_if_loop_36_in;
    wire [31:0] resFinalPostMux_uid83_i_div_if_loop_36_b;
    wire [0:0] resFinalIntDiv_uid84_i_div_if_loop_36_s;
    reg [31:0] resFinalIntDiv_uid84_i_div_if_loop_36_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    wire [31:0] zs_uid90_zCount_uid31_i_div_if_loop_36_q;
    wire [0:0] vCount_uid92_zCount_uid31_i_div_if_loop_36_qi;
    reg [0:0] vCount_uid92_zCount_uid31_i_div_if_loop_36_q;
    wire [0:0] vStagei_uid95_zCount_uid31_i_div_if_loop_36_s;
    reg [31:0] vStagei_uid95_zCount_uid31_i_div_if_loop_36_q;
    wire [15:0] zs_uid96_zCount_uid31_i_div_if_loop_36_q;
    wire [0:0] vCount_uid98_zCount_uid31_i_div_if_loop_36_qi;
    reg [0:0] vCount_uid98_zCount_uid31_i_div_if_loop_36_q;
    wire [0:0] vStagei_uid101_zCount_uid31_i_div_if_loop_36_s;
    reg [15:0] vStagei_uid101_zCount_uid31_i_div_if_loop_36_q;
    wire [7:0] zs_uid102_zCount_uid31_i_div_if_loop_36_q;
    wire [0:0] vCount_uid104_zCount_uid31_i_div_if_loop_36_qi;
    reg [0:0] vCount_uid104_zCount_uid31_i_div_if_loop_36_q;
    wire [0:0] vStagei_uid107_zCount_uid31_i_div_if_loop_36_s;
    reg [7:0] vStagei_uid107_zCount_uid31_i_div_if_loop_36_q;
    wire [3:0] zs_uid108_zCount_uid31_i_div_if_loop_36_q;
    wire [0:0] vCount_uid110_zCount_uid31_i_div_if_loop_36_q;
    wire [0:0] vStagei_uid113_zCount_uid31_i_div_if_loop_36_s;
    reg [3:0] vStagei_uid113_zCount_uid31_i_div_if_loop_36_q;
    wire [1:0] zs_uid114_zCount_uid31_i_div_if_loop_36_q;
    wire [0:0] vCount_uid116_zCount_uid31_i_div_if_loop_36_q;
    wire [0:0] vStagei_uid119_zCount_uid31_i_div_if_loop_36_s;
    reg [1:0] vStagei_uid119_zCount_uid31_i_div_if_loop_36_q;
    wire [0:0] rVStage_uid121_zCount_uid31_i_div_if_loop_36_b;
    wire [0:0] vCount_uid122_zCount_uid31_i_div_if_loop_36_q;
    wire [5:0] r_uid123_zCount_uid31_i_div_if_loop_36_q;
    wire [13:0] yT1_uid141_invPolyEval_b;
    wire [0:0] lowRangeB_uid143_invPolyEval_in;
    wire [0:0] lowRangeB_uid143_invPolyEval_b;
    wire [12:0] highBBits_uid144_invPolyEval_b;
    wire [21:0] s1sumAHighB_uid145_invPolyEval_a;
    wire [21:0] s1sumAHighB_uid145_invPolyEval_b;
    logic [21:0] s1sumAHighB_uid145_invPolyEval_o;
    wire [21:0] s1sumAHighB_uid145_invPolyEval_q;
    wire [22:0] s1_uid146_invPolyEval_q;
    wire [20:0] yT2_uid147_invPolyEval_b;
    wire [0:0] lowRangeB_uid149_invPolyEval_in;
    wire [0:0] lowRangeB_uid149_invPolyEval_b;
    wire [21:0] highBBits_uid150_invPolyEval_b;
    wire [29:0] s2sumAHighB_uid151_invPolyEval_a;
    wire [29:0] s2sumAHighB_uid151_invPolyEval_b;
    logic [29:0] s2sumAHighB_uid151_invPolyEval_o;
    wire [29:0] s2sumAHighB_uid151_invPolyEval_q;
    wire [30:0] s2_uid152_invPolyEval_q;
    wire [1:0] lowRangeB_uid155_invPolyEval_in;
    wire [1:0] lowRangeB_uid155_invPolyEval_b;
    wire [29:0] highBBits_uid156_invPolyEval_b;
    wire [38:0] s3sumAHighB_uid157_invPolyEval_a;
    wire [38:0] s3sumAHighB_uid157_invPolyEval_b;
    logic [38:0] s3sumAHighB_uid157_invPolyEval_o;
    wire [38:0] s3sumAHighB_uid157_invPolyEval_q;
    wire [40:0] s3_uid158_invPolyEval_q;
    wire [13:0] osig_uid161_pT1_uid142_invPolyEval_b;
    wire [43:0] osig_uid164_pT2_uid148_invPolyEval_in;
    wire [22:0] osig_uid164_pT2_uid148_invPolyEval_b;
    wire [23:0] nx_mergedSignalTM_uid178_pT3_uid154_invPolyEval_q;
    wire [4:0] aboveLeftY_bottomExtension_uid183_pT3_uid154_invPolyEval_q;
    wire [17:0] aboveLeftY_mergedSignalTM_uid185_pT3_uid154_invPolyEval_q;
    wire [11:0] rightBottomX_bottomExtension_uid187_pT3_uid154_invPolyEval_q;
    wire [17:0] rightBottomX_mergedSignalTM_uid189_pT3_uid154_invPolyEval_q;
    wire [17:0] lowRangeB_uid195_pT3_uid154_invPolyEval_in;
    wire [17:0] lowRangeB_uid195_pT3_uid154_invPolyEval_b;
    wire [18:0] highBBits_uid196_pT3_uid154_invPolyEval_b;
    wire [36:0] lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_a;
    wire [36:0] lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_b;
    logic [36:0] lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_o;
    wire [36:0] lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_q;
    wire [54:0] lev1_a0_uid198_pT3_uid154_invPolyEval_q;
    wire [52:0] os_uid199_pT3_uid154_invPolyEval_in;
    wire [31:0] os_uid199_pT3_uid154_invPolyEval_b;
    wire [15:0] leftShiftStage0Idx1Rng16_uid205_normY_uid32_i_div_if_loop_36_in;
    wire [15:0] leftShiftStage0Idx1Rng16_uid205_normY_uid32_i_div_if_loop_36_b;
    wire [31:0] leftShiftStage0Idx1_uid206_normY_uid32_i_div_if_loop_36_q;
    wire [1:0] leftShiftStage0_uid210_normY_uid32_i_div_if_loop_36_s;
    reg [31:0] leftShiftStage0_uid210_normY_uid32_i_div_if_loop_36_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid212_normY_uid32_i_div_if_loop_36_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid212_normY_uid32_i_div_if_loop_36_b;
    wire [31:0] leftShiftStage1Idx1_uid213_normY_uid32_i_div_if_loop_36_q;
    wire [23:0] leftShiftStage1Idx2Rng8_uid215_normY_uid32_i_div_if_loop_36_in;
    wire [23:0] leftShiftStage1Idx2Rng8_uid215_normY_uid32_i_div_if_loop_36_b;
    wire [31:0] leftShiftStage1Idx2_uid216_normY_uid32_i_div_if_loop_36_q;
    wire [19:0] leftShiftStage1Idx3Rng12_uid218_normY_uid32_i_div_if_loop_36_in;
    wire [19:0] leftShiftStage1Idx3Rng12_uid218_normY_uid32_i_div_if_loop_36_b;
    wire [31:0] leftShiftStage1Idx3_uid219_normY_uid32_i_div_if_loop_36_q;
    wire [1:0] leftShiftStage1_uid221_normY_uid32_i_div_if_loop_36_s;
    reg [31:0] leftShiftStage1_uid221_normY_uid32_i_div_if_loop_36_q;
    wire [30:0] leftShiftStage2Idx1Rng1_uid223_normY_uid32_i_div_if_loop_36_in;
    wire [30:0] leftShiftStage2Idx1Rng1_uid223_normY_uid32_i_div_if_loop_36_b;
    wire [31:0] leftShiftStage2Idx1_uid224_normY_uid32_i_div_if_loop_36_q;
    wire [29:0] leftShiftStage2Idx2Rng2_uid226_normY_uid32_i_div_if_loop_36_in;
    wire [29:0] leftShiftStage2Idx2Rng2_uid226_normY_uid32_i_div_if_loop_36_b;
    wire [31:0] leftShiftStage2Idx2_uid227_normY_uid32_i_div_if_loop_36_q;
    wire [2:0] leftShiftStage2Idx3Pad3_uid228_normY_uid32_i_div_if_loop_36_q;
    wire [28:0] leftShiftStage2Idx3Rng3_uid229_normY_uid32_i_div_if_loop_36_in;
    wire [28:0] leftShiftStage2Idx3Rng3_uid229_normY_uid32_i_div_if_loop_36_b;
    wire [31:0] leftShiftStage2Idx3_uid230_normY_uid32_i_div_if_loop_36_q;
    wire [1:0] leftShiftStage2_uid232_normY_uid32_i_div_if_loop_36_s;
    reg [31:0] leftShiftStage2_uid232_normY_uid32_i_div_if_loop_36_q;
    wire [15:0] prodXInvY_uid54_i_div_if_loop_36_bjB6_q;
    wire [52:0] prodXInvY_uid54_i_div_if_loop_36_sums_align_1_q;
    wire [52:0] prodXInvY_uid54_i_div_if_loop_36_sums_align_1_qint;
    wire [0:0] xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36_b;
    wire [63:0] rightShiftStage0Idx1Rng1_uid252_prodPostRightShift_uid56_i_div_if_loop_36_b;
    wire [64:0] rightShiftStage0Idx1_uid253_prodPostRightShift_uid56_i_div_if_loop_36_q;
    wire [1:0] seMsb_to2_uid254_in;
    wire [1:0] seMsb_to2_uid254_b;
    wire [62:0] rightShiftStage0Idx2Rng2_uid255_prodPostRightShift_uid56_i_div_if_loop_36_b;
    wire [64:0] rightShiftStage0Idx2_uid256_prodPostRightShift_uid56_i_div_if_loop_36_q;
    wire [2:0] seMsb_to3_uid257_in;
    wire [2:0] seMsb_to3_uid257_b;
    wire [61:0] rightShiftStage0Idx3Rng3_uid258_prodPostRightShift_uid56_i_div_if_loop_36_b;
    wire [64:0] rightShiftStage0Idx3_uid259_prodPostRightShift_uid56_i_div_if_loop_36_q;
    wire [1:0] rightShiftStage0_uid261_prodPostRightShift_uid56_i_div_if_loop_36_s;
    reg [64:0] rightShiftStage0_uid261_prodPostRightShift_uid56_i_div_if_loop_36_q;
    wire [3:0] seMsb_to4_uid262_in;
    wire [3:0] seMsb_to4_uid262_b;
    wire [60:0] rightShiftStage1Idx1Rng4_uid263_prodPostRightShift_uid56_i_div_if_loop_36_b;
    wire [64:0] rightShiftStage1Idx1_uid264_prodPostRightShift_uid56_i_div_if_loop_36_q;
    wire [7:0] seMsb_to8_uid265_in;
    wire [7:0] seMsb_to8_uid265_b;
    wire [56:0] rightShiftStage1Idx2Rng8_uid266_prodPostRightShift_uid56_i_div_if_loop_36_b;
    wire [64:0] rightShiftStage1Idx2_uid267_prodPostRightShift_uid56_i_div_if_loop_36_q;
    wire [11:0] seMsb_to12_uid268_in;
    wire [11:0] seMsb_to12_uid268_b;
    wire [52:0] rightShiftStage1Idx3Rng12_uid269_prodPostRightShift_uid56_i_div_if_loop_36_b;
    wire [64:0] rightShiftStage1Idx3_uid270_prodPostRightShift_uid56_i_div_if_loop_36_q;
    wire [1:0] rightShiftStage1_uid272_prodPostRightShift_uid56_i_div_if_loop_36_s;
    reg [64:0] rightShiftStage1_uid272_prodPostRightShift_uid56_i_div_if_loop_36_q;
    wire [15:0] seMsb_to16_uid273_in;
    wire [15:0] seMsb_to16_uid273_b;
    wire [48:0] rightShiftStage2Idx1Rng16_uid274_prodPostRightShift_uid56_i_div_if_loop_36_b;
    wire [64:0] rightShiftStage2Idx1_uid275_prodPostRightShift_uid56_i_div_if_loop_36_q;
    wire [31:0] seMsb_to32_uid276_in;
    wire [31:0] seMsb_to32_uid276_b;
    wire [32:0] rightShiftStage2Idx2Rng32_uid277_prodPostRightShift_uid56_i_div_if_loop_36_b;
    wire [64:0] rightShiftStage2Idx2_uid278_prodPostRightShift_uid56_i_div_if_loop_36_q;
    wire [47:0] seMsb_to48_uid279_in;
    wire [47:0] seMsb_to48_uid279_b;
    wire [16:0] rightShiftStage2Idx3Rng48_uid280_prodPostRightShift_uid56_i_div_if_loop_36_b;
    wire [64:0] rightShiftStage2Idx3_uid281_prodPostRightShift_uid56_i_div_if_loop_36_q;
    wire [1:0] rightShiftStage2_uid283_prodPostRightShift_uid56_i_div_if_loop_36_s;
    reg [64:0] rightShiftStage2_uid283_prodPostRightShift_uid56_i_div_if_loop_36_q;
    wire [63:0] seMsb_to64_uid284_in;
    wire [63:0] seMsb_to64_uid284_b;
    wire [0:0] rightShiftStage3Idx1Rng64_uid285_prodPostRightShift_uid56_i_div_if_loop_36_b;
    wire [64:0] rightShiftStage3Idx1_uid286_prodPostRightShift_uid56_i_div_if_loop_36_q;
    wire [0:0] rightShiftStage3_uid288_prodPostRightShift_uid56_i_div_if_loop_36_s;
    reg [64:0] rightShiftStage3_uid288_prodPostRightShift_uid56_i_div_if_loop_36_q;
    wire [17:0] prodResY_uid66_i_div_if_loop_36_bs1_in;
    wire [17:0] prodResY_uid66_i_div_if_loop_36_bs1_b;
    wire [17:0] prodResY_uid66_i_div_if_loop_36_bs2_in;
    wire [17:0] prodResY_uid66_i_div_if_loop_36_bs2_b;
    wire [13:0] prodResY_uid66_i_div_if_loop_36_bs5_b;
    wire [13:0] prodResY_uid66_i_div_if_loop_36_bs6_b;
    wire [50:0] prodResY_uid66_i_div_if_loop_36_sums_align_1_q;
    wire [50:0] prodResY_uid66_i_div_if_loop_36_sums_align_1_qint;
    wire memoryC0_uid125_invTabGen_lutmem_reset0;
    wire [37:0] memoryC0_uid125_invTabGen_lutmem_ia;
    wire [7:0] memoryC0_uid125_invTabGen_lutmem_aa;
    wire [7:0] memoryC0_uid125_invTabGen_lutmem_ab;
    wire [37:0] memoryC0_uid125_invTabGen_lutmem_ir;
    wire [37:0] memoryC0_uid125_invTabGen_lutmem_r;
    wire memoryC1_uid128_invTabGen_lutmem_reset0;
    wire [28:0] memoryC1_uid128_invTabGen_lutmem_ia;
    wire [7:0] memoryC1_uid128_invTabGen_lutmem_aa;
    wire [7:0] memoryC1_uid128_invTabGen_lutmem_ab;
    wire [28:0] memoryC1_uid128_invTabGen_lutmem_ir;
    wire [28:0] memoryC1_uid128_invTabGen_lutmem_r;
    wire memoryC2_uid131_invTabGen_lutmem_reset0;
    wire [20:0] memoryC2_uid131_invTabGen_lutmem_ia;
    wire [7:0] memoryC2_uid131_invTabGen_lutmem_aa;
    wire [7:0] memoryC2_uid131_invTabGen_lutmem_ab;
    wire [20:0] memoryC2_uid131_invTabGen_lutmem_ir;
    wire [20:0] memoryC2_uid131_invTabGen_lutmem_r;
    wire memoryC3_uid134_invTabGen_lutmem_reset0;
    wire [13:0] memoryC3_uid134_invTabGen_lutmem_ia;
    wire [7:0] memoryC3_uid134_invTabGen_lutmem_aa;
    wire [7:0] memoryC3_uid134_invTabGen_lutmem_ab;
    wire [13:0] memoryC3_uid134_invTabGen_lutmem_ir;
    wire [13:0] memoryC3_uid134_invTabGen_lutmem_r;
    wire [3:0] prodXY_uid163_pT2_uid148_invPolyEval_bjA7_q;
    reg [2:0] prodXY_uid163_pT2_uid148_invPolyEval_im9_a0;
    reg [4:0] prodXY_uid163_pT2_uid148_invPolyEval_im9_b0;
    reg [7:0] prodXY_uid163_pT2_uid148_invPolyEval_im9_s1;
    wire signed [8:0] prodXY_uid163_pT2_uid148_invPolyEval_im9_pr;
    reg [7:0] prodXY_uid163_pT2_uid148_invPolyEval_im9_q;
    wire [43:0] prodXY_uid163_pT2_uid148_invPolyEval_sums_join_0_q;
    wire [41:0] prodXY_uid163_pT2_uid148_invPolyEval_sums_align_1_q;
    wire [41:0] prodXY_uid163_pT2_uid148_invPolyEval_sums_align_1_qint;
    wire [44:0] prodXY_uid163_pT2_uid148_invPolyEval_sums_result_add_0_0_a;
    wire [44:0] prodXY_uid163_pT2_uid148_invPolyEval_sums_result_add_0_0_b;
    logic [44:0] prodXY_uid163_pT2_uid148_invPolyEval_sums_result_add_0_0_o;
    wire [44:0] prodXY_uid163_pT2_uid148_invPolyEval_sums_result_add_0_0_q;
    wire prodXY_uid160_pT1_uid142_invPolyEval_cma_reset;
    (* preserve *) reg [13:0] prodXY_uid160_pT1_uid142_invPolyEval_cma_a0 [0:0];
    (* preserve *) reg signed [13:0] prodXY_uid160_pT1_uid142_invPolyEval_cma_c0 [0:0];
    wire signed [14:0] prodXY_uid160_pT1_uid142_invPolyEval_cma_l [0:0];
    wire signed [28:0] prodXY_uid160_pT1_uid142_invPolyEval_cma_p [0:0];
    wire signed [28:0] prodXY_uid160_pT1_uid142_invPolyEval_cma_u [0:0];
    wire signed [28:0] prodXY_uid160_pT1_uid142_invPolyEval_cma_w [0:0];
    wire signed [28:0] prodXY_uid160_pT1_uid142_invPolyEval_cma_x [0:0];
    wire signed [28:0] prodXY_uid160_pT1_uid142_invPolyEval_cma_y [0:0];
    reg signed [28:0] prodXY_uid160_pT1_uid142_invPolyEval_cma_s [0:0];
    wire [28:0] prodXY_uid160_pT1_uid142_invPolyEval_cma_qq;
    wire [27:0] prodXY_uid160_pT1_uid142_invPolyEval_cma_q;
    wire prodXY_uid160_pT1_uid142_invPolyEval_cma_ena0;
    wire prodXY_uid160_pT1_uid142_invPolyEval_cma_ena1;
    wire sm0_uid192_pT3_uid154_invPolyEval_cma_reset;
    (* preserve *) reg signed [17:0] sm0_uid192_pT3_uid154_invPolyEval_cma_a0 [0:0];
    (* preserve *) reg signed [17:0] sm0_uid192_pT3_uid154_invPolyEval_cma_c0 [0:0];
    wire signed [35:0] sm0_uid192_pT3_uid154_invPolyEval_cma_p [0:0];
    wire signed [35:0] sm0_uid192_pT3_uid154_invPolyEval_cma_u [0:0];
    wire signed [35:0] sm0_uid192_pT3_uid154_invPolyEval_cma_w [0:0];
    wire signed [35:0] sm0_uid192_pT3_uid154_invPolyEval_cma_x [0:0];
    wire signed [35:0] sm0_uid192_pT3_uid154_invPolyEval_cma_y [0:0];
    reg signed [35:0] sm0_uid192_pT3_uid154_invPolyEval_cma_s [0:0];
    wire [35:0] sm0_uid192_pT3_uid154_invPolyEval_cma_qq;
    wire [35:0] sm0_uid192_pT3_uid154_invPolyEval_cma_q;
    wire sm0_uid192_pT3_uid154_invPolyEval_cma_ena0;
    wire sm0_uid192_pT3_uid154_invPolyEval_cma_ena1;
    wire prodXInvY_uid54_i_div_if_loop_36_im0_cma_reset;
    (* preserve *) reg [17:0] prodXInvY_uid54_i_div_if_loop_36_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] prodXInvY_uid54_i_div_if_loop_36_im0_cma_c0 [0:0];
    wire [35:0] prodXInvY_uid54_i_div_if_loop_36_im0_cma_p [0:0];
    wire [35:0] prodXInvY_uid54_i_div_if_loop_36_im0_cma_u [0:0];
    wire [35:0] prodXInvY_uid54_i_div_if_loop_36_im0_cma_w [0:0];
    wire [35:0] prodXInvY_uid54_i_div_if_loop_36_im0_cma_x [0:0];
    wire [35:0] prodXInvY_uid54_i_div_if_loop_36_im0_cma_y [0:0];
    reg [35:0] prodXInvY_uid54_i_div_if_loop_36_im0_cma_s [0:0];
    wire [35:0] prodXInvY_uid54_i_div_if_loop_36_im0_cma_qq;
    wire [35:0] prodXInvY_uid54_i_div_if_loop_36_im0_cma_q;
    wire prodXInvY_uid54_i_div_if_loop_36_im0_cma_ena0;
    wire prodXInvY_uid54_i_div_if_loop_36_im0_cma_ena1;
    wire prodXInvY_uid54_i_div_if_loop_36_im9_cma_reset;
    (* preserve *) reg [14:0] prodXInvY_uid54_i_div_if_loop_36_im9_cma_a0 [0:0];
    (* preserve *) reg signed [14:0] prodXInvY_uid54_i_div_if_loop_36_im9_cma_c0 [0:0];
    wire signed [15:0] prodXInvY_uid54_i_div_if_loop_36_im9_cma_l [0:0];
    wire signed [30:0] prodXInvY_uid54_i_div_if_loop_36_im9_cma_p [0:0];
    wire signed [30:0] prodXInvY_uid54_i_div_if_loop_36_im9_cma_u [0:0];
    wire signed [30:0] prodXInvY_uid54_i_div_if_loop_36_im9_cma_w [0:0];
    wire signed [30:0] prodXInvY_uid54_i_div_if_loop_36_im9_cma_x [0:0];
    wire signed [30:0] prodXInvY_uid54_i_div_if_loop_36_im9_cma_y [0:0];
    reg signed [30:0] prodXInvY_uid54_i_div_if_loop_36_im9_cma_s [0:0];
    wire [30:0] prodXInvY_uid54_i_div_if_loop_36_im9_cma_qq;
    wire [29:0] prodXInvY_uid54_i_div_if_loop_36_im9_cma_q;
    wire prodXInvY_uid54_i_div_if_loop_36_im9_cma_ena0;
    wire prodXInvY_uid54_i_div_if_loop_36_im9_cma_ena1;
    wire prodResY_uid66_i_div_if_loop_36_im0_cma_reset;
    (* preserve *) reg [17:0] prodResY_uid66_i_div_if_loop_36_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] prodResY_uid66_i_div_if_loop_36_im0_cma_c0 [0:0];
    wire [35:0] prodResY_uid66_i_div_if_loop_36_im0_cma_p [0:0];
    wire [35:0] prodResY_uid66_i_div_if_loop_36_im0_cma_u [0:0];
    wire [35:0] prodResY_uid66_i_div_if_loop_36_im0_cma_w [0:0];
    wire [35:0] prodResY_uid66_i_div_if_loop_36_im0_cma_x [0:0];
    wire [35:0] prodResY_uid66_i_div_if_loop_36_im0_cma_y [0:0];
    reg [35:0] prodResY_uid66_i_div_if_loop_36_im0_cma_s [0:0];
    wire [35:0] prodResY_uid66_i_div_if_loop_36_im0_cma_qq;
    wire [35:0] prodResY_uid66_i_div_if_loop_36_im0_cma_q;
    wire prodResY_uid66_i_div_if_loop_36_im0_cma_ena0;
    wire prodResY_uid66_i_div_if_loop_36_im0_cma_ena1;
    wire prodResY_uid66_i_div_if_loop_36_im8_cma_reset;
    (* preserve *) reg signed [13:0] prodResY_uid66_i_div_if_loop_36_im8_cma_a0 [0:0];
    (* preserve *) reg signed [13:0] prodResY_uid66_i_div_if_loop_36_im8_cma_c0 [0:0];
    wire signed [27:0] prodResY_uid66_i_div_if_loop_36_im8_cma_p [0:0];
    wire signed [27:0] prodResY_uid66_i_div_if_loop_36_im8_cma_u [0:0];
    wire signed [27:0] prodResY_uid66_i_div_if_loop_36_im8_cma_w [0:0];
    wire signed [27:0] prodResY_uid66_i_div_if_loop_36_im8_cma_x [0:0];
    wire signed [27:0] prodResY_uid66_i_div_if_loop_36_im8_cma_y [0:0];
    reg signed [27:0] prodResY_uid66_i_div_if_loop_36_im8_cma_s [0:0];
    wire [27:0] prodResY_uid66_i_div_if_loop_36_im8_cma_qq;
    wire [27:0] prodResY_uid66_i_div_if_loop_36_im8_cma_q;
    wire prodResY_uid66_i_div_if_loop_36_im8_cma_ena0;
    wire prodResY_uid66_i_div_if_loop_36_im8_cma_ena1;
    wire prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_reset;
    (* preserve *) reg [17:0] prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_c0 [0:0];
    wire [35:0] prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_p [0:0];
    wire [35:0] prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_u [0:0];
    wire [35:0] prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_w [0:0];
    wire [35:0] prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_x [0:0];
    wire [35:0] prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_y [0:0];
    reg [35:0] prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_s [0:0];
    wire [35:0] prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_qq;
    wire [35:0] prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_q;
    wire prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_ena0;
    wire prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_ena1;
    wire multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_reset;
    (* preserve *) reg [17:0] multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_a0 [0:1];
    (* preserve *) reg signed [17:0] multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_c0 [0:1];
    wire signed [18:0] multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_l [0:1];
    wire signed [36:0] multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_p [0:1];
    wire signed [37:0] multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_u [0:1];
    wire signed [37:0] multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_w [0:0];
    wire signed [37:0] multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_x [0:0];
    wire signed [37:0] multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_y [0:0];
    reg signed [37:0] multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_s [0:0];
    wire [37:0] multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_qq;
    wire [36:0] multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_q;
    wire multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ena0;
    wire multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ena1;
    wire prodXInvY_uid54_i_div_if_loop_36_ma3_cma_reset;
    (* preserve *) reg signed [15:0] prodXInvY_uid54_i_div_if_loop_36_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] prodXInvY_uid54_i_div_if_loop_36_ma3_cma_c0 [0:1];
    wire signed [18:0] prodXInvY_uid54_i_div_if_loop_36_ma3_cma_r [0:1];
    wire signed [34:0] prodXInvY_uid54_i_div_if_loop_36_ma3_cma_p [0:1];
    wire signed [35:0] prodXInvY_uid54_i_div_if_loop_36_ma3_cma_u [0:1];
    wire signed [35:0] prodXInvY_uid54_i_div_if_loop_36_ma3_cma_w [0:0];
    wire signed [35:0] prodXInvY_uid54_i_div_if_loop_36_ma3_cma_x [0:0];
    wire signed [35:0] prodXInvY_uid54_i_div_if_loop_36_ma3_cma_y [0:0];
    reg signed [35:0] prodXInvY_uid54_i_div_if_loop_36_ma3_cma_s [0:0];
    wire [35:0] prodXInvY_uid54_i_div_if_loop_36_ma3_cma_qq;
    wire [34:0] prodXInvY_uid54_i_div_if_loop_36_ma3_cma_q;
    wire prodXInvY_uid54_i_div_if_loop_36_ma3_cma_ena0;
    wire prodXInvY_uid54_i_div_if_loop_36_ma3_cma_ena1;
    wire prodResY_uid66_i_div_if_loop_36_ma3_cma_reset;
    (* preserve *) reg signed [13:0] prodResY_uid66_i_div_if_loop_36_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] prodResY_uid66_i_div_if_loop_36_ma3_cma_c0 [0:1];
    wire signed [18:0] prodResY_uid66_i_div_if_loop_36_ma3_cma_r [0:1];
    wire signed [32:0] prodResY_uid66_i_div_if_loop_36_ma3_cma_p [0:1];
    wire signed [33:0] prodResY_uid66_i_div_if_loop_36_ma3_cma_u [0:1];
    wire signed [33:0] prodResY_uid66_i_div_if_loop_36_ma3_cma_w [0:0];
    wire signed [33:0] prodResY_uid66_i_div_if_loop_36_ma3_cma_x [0:0];
    wire signed [33:0] prodResY_uid66_i_div_if_loop_36_ma3_cma_y [0:0];
    reg signed [33:0] prodResY_uid66_i_div_if_loop_36_ma3_cma_s [0:0];
    wire [33:0] prodResY_uid66_i_div_if_loop_36_ma3_cma_qq;
    wire [32:0] prodResY_uid66_i_div_if_loop_36_ma3_cma_q;
    wire prodResY_uid66_i_div_if_loop_36_ma3_cma_ena0;
    wire prodResY_uid66_i_div_if_loop_36_ma3_cma_ena1;
    wire prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_reset;
    (* preserve *) reg signed [4:0] prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_c0 [0:1];
    wire signed [18:0] prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_r [0:1];
    wire signed [23:0] prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_p [0:1];
    wire signed [24:0] prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_u [0:1];
    wire signed [24:0] prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_w [0:0];
    wire signed [24:0] prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_x [0:0];
    wire signed [24:0] prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_y [0:0];
    reg signed [24:0] prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_s [0:0];
    wire [24:0] prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_qq;
    wire [23:0] prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_q;
    wire prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_ena0;
    wire prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_ena1;
    wire [60:0] prod_qy_GT_x_uid67_i_div_if_loop_36_p1_of_2_a;
    wire [60:0] prod_qy_GT_x_uid67_i_div_if_loop_36_p1_of_2_b;
    logic [60:0] prod_qy_GT_x_uid67_i_div_if_loop_36_p1_of_2_o;
    wire [0:0] prod_qy_GT_x_uid67_i_div_if_loop_36_p1_of_2_c;
    wire [6:0] prod_qy_GT_x_uid67_i_div_if_loop_36_p2_of_2_a;
    wire [6:0] prod_qy_GT_x_uid67_i_div_if_loop_36_p2_of_2_b;
    logic [6:0] prod_qy_GT_x_uid67_i_div_if_loop_36_p2_of_2_o;
    wire [0:0] prod_qy_GT_x_uid67_i_div_if_loop_36_p2_of_2_cin;
    wire [0:0] prod_qy_GT_x_uid67_i_div_if_loop_36_p2_of_2_c;
    wire [60:0] prod_qy_LT_x_uid68_i_div_if_loop_36_p1_of_2_a;
    wire [60:0] prod_qy_LT_x_uid68_i_div_if_loop_36_p1_of_2_b;
    logic [60:0] prod_qy_LT_x_uid68_i_div_if_loop_36_p1_of_2_o;
    wire [0:0] prod_qy_LT_x_uid68_i_div_if_loop_36_p1_of_2_c;
    wire [6:0] prod_qy_LT_x_uid68_i_div_if_loop_36_p2_of_2_a;
    wire [6:0] prod_qy_LT_x_uid68_i_div_if_loop_36_p2_of_2_b;
    logic [6:0] prod_qy_LT_x_uid68_i_div_if_loop_36_p2_of_2_o;
    wire [0:0] prod_qy_LT_x_uid68_i_div_if_loop_36_p2_of_2_cin;
    wire [0:0] prod_qy_LT_x_uid68_i_div_if_loop_36_p2_of_2_c;
    wire [60:0] prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_a;
    wire [60:0] prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_b;
    logic [60:0] prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_c;
    wire [59:0] prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_q;
    wire [8:0] prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_a;
    wire [8:0] prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_b;
    logic [8:0] prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_cin;
    wire [6:0] prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_q;
    wire [66:0] prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitJoin_for_q_q;
    wire [60:0] prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_a;
    wire [60:0] prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_b;
    logic [60:0] prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_c;
    wire [59:0] prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_q;
    wire [6:0] prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_a;
    wire [6:0] prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_b;
    logic [6:0] prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_cin;
    wire [4:0] prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_q;
    wire [0:0] prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b;
    wire [59:0] prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_BitJoin_for_b_q;
    wire [0:0] prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel1_0_b;
    wire [4:0] prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_BitJoin_for_c_q;
    wire [3:0] prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_b_tessel1_0_b;
    wire [0:0] prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_b_tessel1_1_b;
    wire [4:0] prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_b_BitJoin_for_c_q;
    wire [23:0] prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b;
    wire [59:0] prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [5:0] prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b;
    wire [0:0] prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b;
    wire [6:0] prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [0:0] prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b;
    wire [59:0] prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [6:0] prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    wire [23:0] prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b;
    wire [59:0] prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [3:0] prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b;
    wire [0:0] prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b;
    wire [4:0] prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [0:0] prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b;
    wire [59:0] prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q;
    wire [7:0] yAddr_uid41_i_div_if_loop_36_merged_bit_select_b;
    wire [22:0] yAddr_uid41_i_div_if_loop_36_merged_bit_select_c;
    wire [17:0] prodXInvY_uid54_i_div_if_loop_36_bs2_merged_bit_select_b;
    wire [14:0] prodXInvY_uid54_i_div_if_loop_36_bs2_merged_bit_select_c;
    wire [1:0] rightShiftStageSel0Dto0_uid260_prodPostRightShift_uid56_i_div_if_loop_36_merged_bit_select_b;
    wire [1:0] rightShiftStageSel0Dto0_uid260_prodPostRightShift_uid56_i_div_if_loop_36_merged_bit_select_c;
    wire [1:0] rightShiftStageSel0Dto0_uid260_prodPostRightShift_uid56_i_div_if_loop_36_merged_bit_select_d;
    wire [0:0] rightShiftStageSel0Dto0_uid260_prodPostRightShift_uid56_i_div_if_loop_36_merged_bit_select_e;
    wire [17:0] prodXInvY_uid54_i_div_if_loop_36_bs1_merged_bit_select_b;
    wire [14:0] prodXInvY_uid54_i_div_if_loop_36_bs1_merged_bit_select_c;
    wire [15:0] rVStage_uid97_zCount_uid31_i_div_if_loop_36_merged_bit_select_b;
    wire [15:0] rVStage_uid97_zCount_uid31_i_div_if_loop_36_merged_bit_select_c;
    wire [7:0] rVStage_uid103_zCount_uid31_i_div_if_loop_36_merged_bit_select_b;
    wire [7:0] rVStage_uid103_zCount_uid31_i_div_if_loop_36_merged_bit_select_c;
    wire [3:0] rVStage_uid109_zCount_uid31_i_div_if_loop_36_merged_bit_select_b;
    wire [3:0] rVStage_uid109_zCount_uid31_i_div_if_loop_36_merged_bit_select_c;
    wire [1:0] rVStage_uid115_zCount_uid31_i_div_if_loop_36_merged_bit_select_b;
    wire [1:0] rVStage_uid115_zCount_uid31_i_div_if_loop_36_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto4_uid209_normY_uid32_i_div_if_loop_36_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto4_uid209_normY_uid32_i_div_if_loop_36_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto4_uid209_normY_uid32_i_div_if_loop_36_merged_bit_select_d;
    wire [17:0] prodXY_uid163_pT2_uid148_invPolyEval_bs2_merged_bit_select_b;
    wire [4:0] prodXY_uid163_pT2_uid148_invPolyEval_bs2_merged_bit_select_c;
    wire [17:0] prodXY_uid163_pT2_uid148_invPolyEval_bs1_merged_bit_select_b;
    wire [2:0] prodXY_uid163_pT2_uid148_invPolyEval_bs1_merged_bit_select_c;
    wire [17:0] topRangeY_uid181_pT3_uid154_invPolyEval_merged_bit_select_b;
    wire [12:0] topRangeY_uid181_pT3_uid154_invPolyEval_merged_bit_select_c;
    wire [17:0] topRangeX_uid180_pT3_uid154_invPolyEval_merged_bit_select_b;
    wire [5:0] topRangeX_uid180_pT3_uid154_invPolyEval_merged_bit_select_c;
    reg [1:0] redist0_leftShiftStageSel0Dto4_uid209_normY_uid32_i_div_if_loop_36_merged_bit_select_c_1_q;
    reg [1:0] redist1_leftShiftStageSel0Dto4_uid209_normY_uid32_i_div_if_loop_36_merged_bit_select_d_1_q;
    reg [7:0] redist2_rVStage_uid103_zCount_uid31_i_div_if_loop_36_merged_bit_select_b_1_q;
    reg [7:0] redist3_rVStage_uid103_zCount_uid31_i_div_if_loop_36_merged_bit_select_c_1_q;
    reg [15:0] redist4_rVStage_uid97_zCount_uid31_i_div_if_loop_36_merged_bit_select_b_1_q;
    reg [15:0] redist5_rVStage_uid97_zCount_uid31_i_div_if_loop_36_merged_bit_select_c_1_q;
    reg [7:0] redist6_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_3_q;
    reg [7:0] redist6_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_3_delay_0;
    reg [7:0] redist6_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_3_delay_1;
    reg [7:0] redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_q;
    reg [7:0] redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_delay_0;
    reg [7:0] redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_delay_1;
    reg [7:0] redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_delay_2;
    reg [7:0] redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13_q;
    reg [7:0] redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13_delay_0;
    reg [7:0] redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13_delay_1;
    reg [7:0] redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13_delay_2;
    reg [22:0] redist9_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_3_q;
    reg [22:0] redist9_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_3_delay_0;
    reg [22:0] redist9_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_3_delay_1;
    reg [22:0] redist10_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_7_q;
    reg [22:0] redist10_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_7_delay_0;
    reg [22:0] redist10_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_7_delay_1;
    reg [0:0] redist12_prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel1_4_b_1_q;
    reg [0:0] redist17_prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b_1_q;
    reg [3:0] redist18_prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b_1_q;
    reg [0:0] redist19_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1_q;
    reg [0:0] redist26_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b_1_q;
    reg [5:0] redist27_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b_1_q;
    reg [59:0] redist28_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_q_1_q;
    reg [23:0] redist29_prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_q_1_q;
    reg [36:0] redist30_multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_q_1_q;
    reg [35:0] redist31_prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_q_1_q;
    reg [35:0] redist32_sm0_uid192_pT3_uid154_invPolyEval_cma_q_1_q;
    reg [7:0] redist33_prodXY_uid163_pT2_uid148_invPolyEval_im9_q_1_q;
    reg [13:0] redist34_memoryC3_uid134_invTabGen_lutmem_r_1_q;
    reg [20:0] redist35_memoryC2_uid131_invTabGen_lutmem_r_1_q;
    reg [28:0] redist36_memoryC1_uid128_invTabGen_lutmem_r_1_q;
    reg [37:0] redist37_memoryC0_uid125_invTabGen_lutmem_r_1_q;
    reg [29:0] redist38_highBBits_uid156_invPolyEval_b_1_q;
    reg [1:0] redist39_lowRangeB_uid155_invPolyEval_b_1_q;
    reg [21:0] redist40_highBBits_uid150_invPolyEval_b_1_q;
    reg [0:0] redist41_lowRangeB_uid149_invPolyEval_b_2_q;
    reg [0:0] redist41_lowRangeB_uid149_invPolyEval_b_2_delay_0;
    reg [12:0] redist42_highBBits_uid144_invPolyEval_b_1_q;
    reg [0:0] redist43_lowRangeB_uid143_invPolyEval_b_2_q;
    reg [0:0] redist43_lowRangeB_uid143_invPolyEval_b_2_delay_0;
    reg [0:0] redist45_vCount_uid110_zCount_uid31_i_div_if_loop_36_q_1_q;
    reg [0:0] redist46_vCount_uid104_zCount_uid31_i_div_if_loop_36_q_2_q;
    reg [0:0] redist47_vCount_uid98_zCount_uid31_i_div_if_loop_36_q_3_q;
    reg [0:0] redist47_vCount_uid98_zCount_uid31_i_div_if_loop_36_q_3_delay_0;
    reg [0:0] redist48_vCount_uid92_zCount_uid31_i_div_if_loop_36_q_4_q;
    reg [0:0] redist48_vCount_uid92_zCount_uid31_i_div_if_loop_36_q_4_delay_0;
    reg [0:0] redist48_vCount_uid92_zCount_uid31_i_div_if_loop_36_q_4_delay_1;
    reg [31:0] redist49_resFinalPostMux_uid83_i_div_if_loop_36_b_1_q;
    reg [0:0] redist50_OverflowCond_uid75_i_div_if_loop_36_q_2_q;
    reg [31:0] redist51_resFinal_uid65_i_div_if_loop_36_q_3_q;
    reg [31:0] redist51_resFinal_uid65_i_div_if_loop_36_q_3_delay_0;
    reg [31:0] redist52_resFinal_uid65_i_div_if_loop_36_q_4_q;
    reg [31:0] redist53_resFinal_uid65_i_div_if_loop_36_q_5_q;
    reg [0:0] redist54_signX_uid63_i_div_if_loop_36_b_3_q;
    reg [0:0] redist54_signX_uid63_i_div_if_loop_36_b_3_delay_0;
    reg [0:0] redist54_signX_uid63_i_div_if_loop_36_b_3_delay_1;
    reg [0:0] redist55_signX_uid63_i_div_if_loop_36_b_5_q;
    reg [0:0] redist55_signX_uid63_i_div_if_loop_36_b_5_delay_0;
    reg [32:0] redist56_fxpInverseRes_uid44_i_div_if_loop_36_b_1_q;
    reg [0:0] redist57_normYIsOne_uid38_i_div_if_loop_36_q_15_q;
    reg [0:0] redist58_normYIsOneC2_uid37_i_div_if_loop_36_b_2_q;
    reg [0:0] redist58_normYIsOneC2_uid37_i_div_if_loop_36_b_2_delay_0;
    reg [30:0] redist59_normYNoLeadOne_uid33_i_div_if_loop_36_b_1_q;
    reg [31:0] redist60_yPS_uid30_i_div_if_loop_36_b_1_q;
    reg [31:0] redist61_yPS_uid30_i_div_if_loop_36_b_2_q;
    reg [31:0] redist62_yPS_uid30_i_div_if_loop_36_b_5_q;
    reg [31:0] redist62_yPS_uid30_i_div_if_loop_36_b_5_delay_0;
    reg [0:0] redist63_xMSB_uid25_i_div_if_loop_36_b_1_q;
    reg [0:0] redist64_xMSB_uid25_i_div_if_loop_36_b_24_q;
    reg [0:0] redist65_xMSB_uid25_i_div_if_loop_36_b_31_q;
    reg [31:0] redist66_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_4_q;
    reg [31:0] redist66_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_4_delay_0;
    reg [31:0] redist67_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_7_q;
    reg [31:0] redist67_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_7_delay_0;
    reg [31:0] redist68_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_8_q;
    reg [31:0] redist69_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_9_q;
    reg [0:0] redist70_i_cmp2_if_loop_33_c_5_q;
    reg [0:0] redist70_i_cmp2_if_loop_33_c_5_delay_0;
    reg [0:0] redist70_i_cmp2_if_loop_33_c_5_delay_1;
    reg [0:0] redist70_i_cmp2_if_loop_33_c_5_delay_2;
    reg [0:0] redist71_sync_together18_aunroll_x_in_c1_eni5_3_tpl_25_q;
    reg [0:0] redist72_sync_together18_aunroll_x_in_c1_eni5_4_tpl_34_q;
    reg [0:0] redist73_sync_together18_aunroll_x_in_c1_eni5_5_tpl_34_q;
    reg [0:0] redist74_sync_together18_aunroll_x_in_i_valid_24_q;
    reg [0:0] redist75_sync_together18_aunroll_x_in_i_valid_33_q;
    reg [31:0] redist76_bgTrunc_i_sub_if_loop_32_sel_x_b_1_q;
    reg [7:0] redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_inputreg0_q;
    reg [7:0] redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13_inputreg0_q;
    reg [22:0] redist10_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_7_inputreg0_q;
    reg [22:0] redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_inputreg0_q;
    wire redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_reset0;
    wire [22:0] redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_ia;
    wire [1:0] redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_aa;
    wire [1:0] redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_ab;
    wire [22:0] redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_iq;
    wire [22:0] redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_q;
    wire [1:0] redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_rdcnt_q;
    (* preserve *) reg [1:0] redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_rdcnt_i;
    (* preserve *) reg redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_rdcnt_eq;
    reg [1:0] redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_wraddr_q;
    wire [1:0] redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_last_q;
    wire [0:0] redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_cmp_q;
    (* dont_merge *) reg [0:0] redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_cmpReg_q;
    wire [0:0] redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_notEnable_q;
    wire [0:0] redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_nor_q;
    (* dont_merge *) reg [0:0] redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_sticky_ena_q;
    wire [0:0] redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_enaAnd_q;
    reg [5:0] redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_inputreg0_q;
    reg [5:0] redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_outputreg0_q;
    wire redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_reset0;
    wire [5:0] redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_ia;
    wire [4:0] redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_aa;
    wire [4:0] redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_ab;
    wire [5:0] redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_iq;
    wire [5:0] redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_q;
    wire [4:0] redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_rdcnt_q;
    (* preserve *) reg [4:0] redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_rdcnt_i;
    (* preserve *) reg redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_rdcnt_eq;
    reg [4:0] redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_wraddr_q;
    wire [5:0] redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_last_q;
    wire [5:0] redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_cmp_b;
    wire [0:0] redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_cmp_q;
    (* dont_merge *) reg [0:0] redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_cmpReg_q;
    wire [0:0] redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_notEnable_q;
    wire [0:0] redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_nor_q;
    (* dont_merge *) reg [0:0] redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_sticky_ena_q;
    wire [0:0] redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_enaAnd_q;
    reg [31:0] redist51_resFinal_uid65_i_div_if_loop_36_q_3_inputreg0_q;
    reg [31:0] redist62_yPS_uid30_i_div_if_loop_36_b_5_inputreg0_q;
    reg [31:0] redist66_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_4_inputreg0_q;
    reg [31:0] redist66_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_4_outputreg0_q;
    reg [31:0] redist67_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_7_inputreg0_q;
    reg [31:0] redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_outputreg0_q;
    wire redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_reset0;
    wire [31:0] redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_ia;
    wire [4:0] redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_aa;
    wire [4:0] redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_ab;
    wire [31:0] redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_iq;
    wire [31:0] redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_q;
    wire [4:0] redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_rdcnt_q;
    (* preserve *) reg [4:0] redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_rdcnt_i;
    (* preserve *) reg redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_rdcnt_eq;
    reg [4:0] redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_wraddr_q;
    wire [5:0] redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_last_q;
    wire [5:0] redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_cmp_b;
    wire [0:0] redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_cmp_q;
    (* dont_merge *) reg [0:0] redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_cmpReg_q;
    wire [0:0] redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_notEnable_q;
    wire [0:0] redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_nor_q;
    (* dont_merge *) reg [0:0] redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_sticky_ena_q;
    wire [0:0] redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist74_sync_together18_aunroll_x_in_i_valid_24(DELAY,596)
    dspba_delay_ver #( .width(1), .depth(24), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist74_sync_together18_aunroll_x_in_i_valid_24 ( .xin(in_i_valid), .xout(redist74_sync_together18_aunroll_x_in_i_valid_24_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist75_sync_together18_aunroll_x_in_i_valid_33(DELAY,597)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist75_sync_together18_aunroll_x_in_i_valid_33 ( .xin(redist74_sync_together18_aunroll_x_in_i_valid_24_q), .xout(redist75_sync_together18_aunroll_x_in_i_valid_33_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg0(REG,85)@79 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist75_sync_together18_aunroll_x_in_i_valid_33_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,4)@80
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_if_loop_31 = GND_q;
    assign out_unnamed_if_loop_310_0_tpl = GND_q;

    // valid_fanout_reg3(REG,88)@79 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist75_sync_together18_aunroll_x_in_i_valid_33_q);
        end
    end

    // i_sub_if_loop_32(SUB,18)@46
    assign i_sub_if_loop_32_a = {1'b0, in_c1_eni5_1_tpl};
    assign i_sub_if_loop_32_b = {1'b0, in_c1_eni5_2_tpl};
    assign i_sub_if_loop_32_o = $unsigned(i_sub_if_loop_32_a) - $unsigned(i_sub_if_loop_32_b);
    assign i_sub_if_loop_32_q = i_sub_if_loop_32_o[32:0];

    // bgTrunc_i_sub_if_loop_32_sel_x(BITSELECT,2)@46
    assign bgTrunc_i_sub_if_loop_32_sel_x_b = $unsigned(i_sub_if_loop_32_q[31:0]);

    // redist76_bgTrunc_i_sub_if_loop_32_sel_x_b_1(DELAY,598)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_bgTrunc_i_sub_if_loop_32_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist76_bgTrunc_i_sub_if_loop_32_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub_if_loop_32_sel_x_b);
        end
    end

    // xMSB_uid25_i_div_if_loop_36(BITSELECT,24)@47
    assign xMSB_uid25_i_div_if_loop_36_b = $unsigned(redist76_bgTrunc_i_sub_if_loop_32_sel_x_b_1_q[31:31]);

    // redist63_xMSB_uid25_i_div_if_loop_36_b_1(DELAY,585)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_xMSB_uid25_i_div_if_loop_36_b_1_q <= '0;
        end
        else
        begin
            redist63_xMSB_uid25_i_div_if_loop_36_b_1_q <= $unsigned(xMSB_uid25_i_div_if_loop_36_b);
        end
    end

    // redist64_xMSB_uid25_i_div_if_loop_36_b_24(DELAY,586)
    dspba_delay_ver #( .width(1), .depth(23), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist64_xMSB_uid25_i_div_if_loop_36_b_24 ( .xin(redist63_xMSB_uid25_i_div_if_loop_36_b_1_q), .xout(redist64_xMSB_uid25_i_div_if_loop_36_b_24_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist65_xMSB_uid25_i_div_if_loop_36_b_31(DELAY,587)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist65_xMSB_uid25_i_div_if_loop_36_b_31 ( .xin(redist64_xMSB_uid25_i_div_if_loop_36_b_24_q), .xout(redist65_xMSB_uid25_i_div_if_loop_36_b_31_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg1(REG,86)@70 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist74_sync_together18_aunroll_x_in_i_valid_24_q);
        end
    end

    // valid_fanout_reg2(REG,87)@79 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist75_sync_together18_aunroll_x_in_i_valid_33_q);
        end
    end

    // redist72_sync_together18_aunroll_x_in_c1_eni5_4_tpl_34(DELAY,594)
    dspba_delay_ver #( .width(1), .depth(34), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist72_sync_together18_aunroll_x_in_c1_eni5_4_tpl_34 ( .xin(in_c1_eni5_4_tpl), .xout(redist72_sync_together18_aunroll_x_in_c1_eni5_4_tpl_34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i32_sum_023_push7_if_loop_38(BLACKBOX,17)@80
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    if_loop_3_i_llvm_fpga_push_i32_sum_023_push7_0 thei_llvm_fpga_push_i32_sum_023_push7_if_loop_38 (
        .in_c1_ene4(redist72_sync_together18_aunroll_x_in_c1_eni5_4_tpl_34_q),
        .in_data_in(i_acl_if_loop_37_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_feedback_stall_out_7),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i32_sum_023_push7_if_loop_38_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i32_sum_023_push7_if_loop_38_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist71_sync_together18_aunroll_x_in_c1_eni5_3_tpl_25(DELAY,593)
    dspba_delay_ver #( .width(1), .depth(25), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist71_sync_together18_aunroll_x_in_c1_eni5_3_tpl_25 ( .xin(in_c1_eni5_3_tpl), .xout(redist71_sync_together18_aunroll_x_in_c1_eni5_3_tpl_25_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_100015(CONSTANT,10)
    assign c_i32_100015_q = $unsigned(32'b00000000000000000000001111101000);

    // i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35(BLACKBOX,16)@71
    // out out_feedback_stall_out_7@20000000
    if_loop_3_i_llvm_fpga_pop_i32_sum_023_pop7_0 thei_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35 (
        .in_data_in(c_i32_100015_q),
        .in_dir(redist71_sync_together18_aunroll_x_in_c1_eni5_3_tpl_25_q),
        .in_feedback_in_7(i_llvm_fpga_push_i32_sum_023_push7_if_loop_38_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i32_sum_023_push7_if_loop_38_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist66_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_4_inputreg0(DELAY,628)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_4_inputreg0_q <= '0;
        end
        else
        begin
            redist66_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_4_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out);
        end
    end

    // redist66_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_4(DELAY,588)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_4_delay_0 <= '0;
            redist66_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_4_q <= '0;
        end
        else
        begin
            redist66_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_4_delay_0 <= $unsigned(redist66_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_4_inputreg0_q);
            redist66_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_4_q <= redist66_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_4_delay_0;
        end
    end

    // redist66_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_4_outputreg0(DELAY,629)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_4_outputreg0_q <= '0;
        end
        else
        begin
            redist66_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_4_outputreg0_q <= $unsigned(redist66_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_4_q);
        end
    end

    // signX_uid63_i_div_if_loop_36(BITSELECT,62)@75
    assign signX_uid63_i_div_if_loop_36_b = $unsigned(redist66_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_4_outputreg0_q[31:31]);

    // redist54_signX_uid63_i_div_if_loop_36_b_3(DELAY,576)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_signX_uid63_i_div_if_loop_36_b_3_delay_0 <= '0;
            redist54_signX_uid63_i_div_if_loop_36_b_3_delay_1 <= '0;
            redist54_signX_uid63_i_div_if_loop_36_b_3_q <= '0;
        end
        else
        begin
            redist54_signX_uid63_i_div_if_loop_36_b_3_delay_0 <= $unsigned(signX_uid63_i_div_if_loop_36_b);
            redist54_signX_uid63_i_div_if_loop_36_b_3_delay_1 <= redist54_signX_uid63_i_div_if_loop_36_b_3_delay_0;
            redist54_signX_uid63_i_div_if_loop_36_b_3_q <= redist54_signX_uid63_i_div_if_loop_36_b_3_delay_1;
        end
    end

    // resultSign_uid73_i_div_if_loop_36(LOGICAL,72)@78 + 1
    assign resultSign_uid73_i_div_if_loop_36_qi = redist54_signX_uid63_i_div_if_loop_36_b_3_q ^ redist65_xMSB_uid25_i_div_if_loop_36_b_31_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    resultSign_uid73_i_div_if_loop_36_delay ( .xin(resultSign_uid73_i_div_if_loop_36_qi), .xout(resultSign_uid73_i_div_if_loop_36_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstSubFinal_uid81_i_div_if_loop_36(BITJOIN,80)@79
    assign cstSubFinal_uid81_i_div_if_loop_36_q = {resultSign_uid73_i_div_if_loop_36_q, VCC_q};

    // cstValOvfneg_uid62_i_div_if_loop_36(CONSTANT,61)
    assign cstValOvfneg_uid62_i_div_if_loop_36_q = $unsigned(32'b10000000000000000000000000000000);

    // cstValOvfPos_uid61_i_div_if_loop_36(CONSTANT,60)
    assign cstValOvfPos_uid61_i_div_if_loop_36_q = $unsigned(32'b01111111111111111111111111111111);

    // cstOvf_uid64_i_div_if_loop_36(MUX,63)@75
    assign cstOvf_uid64_i_div_if_loop_36_s = signX_uid63_i_div_if_loop_36_b;
    always @(cstOvf_uid64_i_div_if_loop_36_s or cstValOvfPos_uid61_i_div_if_loop_36_q or cstValOvfneg_uid62_i_div_if_loop_36_q)
    begin
        unique case (cstOvf_uid64_i_div_if_loop_36_s)
            1'b0 : cstOvf_uid64_i_div_if_loop_36_q = cstValOvfPos_uid61_i_div_if_loop_36_q;
            1'b1 : cstOvf_uid64_i_div_if_loop_36_q = cstValOvfneg_uid62_i_div_if_loop_36_q;
            default : cstOvf_uid64_i_div_if_loop_36_q = 32'b0;
        endcase
    end

    // prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1(BITSELECT,470)@73
    assign prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b = $unsigned(prodXInvY_uid54_i_div_if_loop_36_sums_align_1_q[52:52]);

    // prodXInvY_uid54_i_div_if_loop_36_bjB6(BITJOIN,239)@71
    assign prodXInvY_uid54_i_div_if_loop_36_bjB6_q = {GND_q, prodXInvY_uid54_i_div_if_loop_36_bs2_merged_bit_select_c};

    // oneInvRes_uid45_i_div_if_loop_36(CONSTANT,44)
    assign oneInvRes_uid45_i_div_if_loop_36_q = $unsigned(33'b100000000000000000000000000000000);

    // redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_notEnable(LOGICAL,610)
    assign redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_nor(LOGICAL,611)
    assign redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_nor_q = ~ (redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_notEnable_q | redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_sticky_ena_q);

    // redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_last(CONSTANT,607)
    assign redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_last_q = $unsigned(2'b01);

    // redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_cmp(LOGICAL,608)
    assign redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_cmp_q = $unsigned(redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_last_q == redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_rdcnt_q ? 1'b1 : 1'b0);

    // redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_cmpReg(REG,609)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_cmpReg_q <= $unsigned(redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_cmp_q);
        end
    end

    // redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_sticky_ena(REG,612)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_nor_q == 1'b1)
        begin
            redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_sticky_ena_q <= $unsigned(redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_cmpReg_q);
        end
    end

    // redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_enaAnd(LOGICAL,613)
    assign redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_enaAnd_q = redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_sticky_ena_q & VCC_q;

    // redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_rdcnt(COUNTER,605)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_rdcnt_i <= 2'd0;
            redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_rdcnt_i == 2'd1)
            begin
                redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_rdcnt_eq <= 1'b0;
            end
            if (redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_rdcnt_eq == 1'b1)
            begin
                redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_rdcnt_i <= $unsigned(redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_rdcnt_i <= $unsigned(redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_rdcnt_q = redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_rdcnt_i[1:0];

    // leftShiftStage2Idx3Rng3_uid229_normY_uid32_i_div_if_loop_36(BITSELECT,228)@54
    assign leftShiftStage2Idx3Rng3_uid229_normY_uid32_i_div_if_loop_36_in = leftShiftStage1_uid221_normY_uid32_i_div_if_loop_36_q[28:0];
    assign leftShiftStage2Idx3Rng3_uid229_normY_uid32_i_div_if_loop_36_b = leftShiftStage2Idx3Rng3_uid229_normY_uid32_i_div_if_loop_36_in[28:0];

    // leftShiftStage2Idx3Pad3_uid228_normY_uid32_i_div_if_loop_36(CONSTANT,227)
    assign leftShiftStage2Idx3Pad3_uid228_normY_uid32_i_div_if_loop_36_q = $unsigned(3'b000);

    // leftShiftStage2Idx3_uid230_normY_uid32_i_div_if_loop_36(BITJOIN,229)@54
    assign leftShiftStage2Idx3_uid230_normY_uid32_i_div_if_loop_36_q = {leftShiftStage2Idx3Rng3_uid229_normY_uid32_i_div_if_loop_36_b, leftShiftStage2Idx3Pad3_uid228_normY_uid32_i_div_if_loop_36_q};

    // leftShiftStage2Idx2Rng2_uid226_normY_uid32_i_div_if_loop_36(BITSELECT,225)@54
    assign leftShiftStage2Idx2Rng2_uid226_normY_uid32_i_div_if_loop_36_in = leftShiftStage1_uid221_normY_uid32_i_div_if_loop_36_q[29:0];
    assign leftShiftStage2Idx2Rng2_uid226_normY_uid32_i_div_if_loop_36_b = leftShiftStage2Idx2Rng2_uid226_normY_uid32_i_div_if_loop_36_in[29:0];

    // zs_uid114_zCount_uid31_i_div_if_loop_36(CONSTANT,113)
    assign zs_uid114_zCount_uid31_i_div_if_loop_36_q = $unsigned(2'b00);

    // leftShiftStage2Idx2_uid227_normY_uid32_i_div_if_loop_36(BITJOIN,226)@54
    assign leftShiftStage2Idx2_uid227_normY_uid32_i_div_if_loop_36_q = {leftShiftStage2Idx2Rng2_uid226_normY_uid32_i_div_if_loop_36_b, zs_uid114_zCount_uid31_i_div_if_loop_36_q};

    // leftShiftStage2Idx1Rng1_uid223_normY_uid32_i_div_if_loop_36(BITSELECT,222)@54
    assign leftShiftStage2Idx1Rng1_uid223_normY_uid32_i_div_if_loop_36_in = leftShiftStage1_uid221_normY_uid32_i_div_if_loop_36_q[30:0];
    assign leftShiftStage2Idx1Rng1_uid223_normY_uid32_i_div_if_loop_36_b = leftShiftStage2Idx1Rng1_uid223_normY_uid32_i_div_if_loop_36_in[30:0];

    // leftShiftStage2Idx1_uid224_normY_uid32_i_div_if_loop_36(BITJOIN,223)@54
    assign leftShiftStage2Idx1_uid224_normY_uid32_i_div_if_loop_36_q = {leftShiftStage2Idx1Rng1_uid223_normY_uid32_i_div_if_loop_36_b, GND_q};

    // leftShiftStage1Idx3Rng12_uid218_normY_uid32_i_div_if_loop_36(BITSELECT,217)@54
    assign leftShiftStage1Idx3Rng12_uid218_normY_uid32_i_div_if_loop_36_in = leftShiftStage0_uid210_normY_uid32_i_div_if_loop_36_q[19:0];
    assign leftShiftStage1Idx3Rng12_uid218_normY_uid32_i_div_if_loop_36_b = leftShiftStage1Idx3Rng12_uid218_normY_uid32_i_div_if_loop_36_in[19:0];

    // rightBottomX_bottomExtension_uid187_pT3_uid154_invPolyEval(CONSTANT,186)
    assign rightBottomX_bottomExtension_uid187_pT3_uid154_invPolyEval_q = $unsigned(12'b000000000000);

    // leftShiftStage1Idx3_uid219_normY_uid32_i_div_if_loop_36(BITJOIN,218)@54
    assign leftShiftStage1Idx3_uid219_normY_uid32_i_div_if_loop_36_q = {leftShiftStage1Idx3Rng12_uid218_normY_uid32_i_div_if_loop_36_b, rightBottomX_bottomExtension_uid187_pT3_uid154_invPolyEval_q};

    // leftShiftStage1Idx2Rng8_uid215_normY_uid32_i_div_if_loop_36(BITSELECT,214)@54
    assign leftShiftStage1Idx2Rng8_uid215_normY_uid32_i_div_if_loop_36_in = leftShiftStage0_uid210_normY_uid32_i_div_if_loop_36_q[23:0];
    assign leftShiftStage1Idx2Rng8_uid215_normY_uid32_i_div_if_loop_36_b = leftShiftStage1Idx2Rng8_uid215_normY_uid32_i_div_if_loop_36_in[23:0];

    // zs_uid102_zCount_uid31_i_div_if_loop_36(CONSTANT,101)
    assign zs_uid102_zCount_uid31_i_div_if_loop_36_q = $unsigned(8'b00000000);

    // leftShiftStage1Idx2_uid216_normY_uid32_i_div_if_loop_36(BITJOIN,215)@54
    assign leftShiftStage1Idx2_uid216_normY_uid32_i_div_if_loop_36_q = {leftShiftStage1Idx2Rng8_uid215_normY_uid32_i_div_if_loop_36_b, zs_uid102_zCount_uid31_i_div_if_loop_36_q};

    // leftShiftStage1Idx1Rng4_uid212_normY_uid32_i_div_if_loop_36(BITSELECT,211)@54
    assign leftShiftStage1Idx1Rng4_uid212_normY_uid32_i_div_if_loop_36_in = leftShiftStage0_uid210_normY_uid32_i_div_if_loop_36_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid212_normY_uid32_i_div_if_loop_36_b = leftShiftStage1Idx1Rng4_uid212_normY_uid32_i_div_if_loop_36_in[27:0];

    // zs_uid108_zCount_uid31_i_div_if_loop_36(CONSTANT,107)
    assign zs_uid108_zCount_uid31_i_div_if_loop_36_q = $unsigned(4'b0000);

    // leftShiftStage1Idx1_uid213_normY_uid32_i_div_if_loop_36(BITJOIN,212)@54
    assign leftShiftStage1Idx1_uid213_normY_uid32_i_div_if_loop_36_q = {leftShiftStage1Idx1Rng4_uid212_normY_uid32_i_div_if_loop_36_b, zs_uid108_zCount_uid31_i_div_if_loop_36_q};

    // zs_uid90_zCount_uid31_i_div_if_loop_36(CONSTANT,89)
    assign zs_uid90_zCount_uid31_i_div_if_loop_36_q = $unsigned(32'b00000000000000000000000000000000);

    // leftShiftStage0Idx1Rng16_uid205_normY_uid32_i_div_if_loop_36(BITSELECT,204)@53
    assign leftShiftStage0Idx1Rng16_uid205_normY_uid32_i_div_if_loop_36_in = redist62_yPS_uid30_i_div_if_loop_36_b_5_q[15:0];
    assign leftShiftStage0Idx1Rng16_uid205_normY_uid32_i_div_if_loop_36_b = leftShiftStage0Idx1Rng16_uid205_normY_uid32_i_div_if_loop_36_in[15:0];

    // zs_uid96_zCount_uid31_i_div_if_loop_36(CONSTANT,95)
    assign zs_uid96_zCount_uid31_i_div_if_loop_36_q = $unsigned(16'b0000000000000000);

    // leftShiftStage0Idx1_uid206_normY_uid32_i_div_if_loop_36(BITJOIN,205)@53
    assign leftShiftStage0Idx1_uid206_normY_uid32_i_div_if_loop_36_q = {leftShiftStage0Idx1Rng16_uid205_normY_uid32_i_div_if_loop_36_b, zs_uid96_zCount_uid31_i_div_if_loop_36_q};

    // yPSE_uid27_i_div_if_loop_36(LOGICAL,26)@47 + 1
    assign yPSE_uid27_i_div_if_loop_36_b = $unsigned({{31{xMSB_uid25_i_div_if_loop_36_b[0]}}, xMSB_uid25_i_div_if_loop_36_b});
    assign yPSE_uid27_i_div_if_loop_36_qi = redist76_bgTrunc_i_sub_if_loop_32_sel_x_b_1_q ^ yPSE_uid27_i_div_if_loop_36_b;
    dspba_delay_ver #( .width(32), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    yPSE_uid27_i_div_if_loop_36_delay ( .xin(yPSE_uid27_i_div_if_loop_36_qi), .xout(yPSE_uid27_i_div_if_loop_36_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // yPSEA_uid29_i_div_if_loop_36(ADD,28)@48
    assign yPSEA_uid29_i_div_if_loop_36_a = {1'b0, yPSE_uid27_i_div_if_loop_36_q};
    assign yPSEA_uid29_i_div_if_loop_36_b = {32'b00000000000000000000000000000000, redist63_xMSB_uid25_i_div_if_loop_36_b_1_q};
    assign yPSEA_uid29_i_div_if_loop_36_o = $unsigned(yPSEA_uid29_i_div_if_loop_36_a) + $unsigned(yPSEA_uid29_i_div_if_loop_36_b);
    assign yPSEA_uid29_i_div_if_loop_36_q = yPSEA_uid29_i_div_if_loop_36_o[32:0];

    // yPS_uid30_i_div_if_loop_36(BITSELECT,29)@48
    assign yPS_uid30_i_div_if_loop_36_in = $unsigned(yPSEA_uid29_i_div_if_loop_36_q[31:0]);
    assign yPS_uid30_i_div_if_loop_36_b = $unsigned(yPS_uid30_i_div_if_loop_36_in[31:0]);

    // redist60_yPS_uid30_i_div_if_loop_36_b_1(DELAY,582)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_yPS_uid30_i_div_if_loop_36_b_1_q <= '0;
        end
        else
        begin
            redist60_yPS_uid30_i_div_if_loop_36_b_1_q <= $unsigned(yPS_uid30_i_div_if_loop_36_b);
        end
    end

    // redist61_yPS_uid30_i_div_if_loop_36_b_2(DELAY,583)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_yPS_uid30_i_div_if_loop_36_b_2_q <= '0;
        end
        else
        begin
            redist61_yPS_uid30_i_div_if_loop_36_b_2_q <= $unsigned(redist60_yPS_uid30_i_div_if_loop_36_b_1_q);
        end
    end

    // redist62_yPS_uid30_i_div_if_loop_36_b_5_inputreg0(DELAY,627)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_yPS_uid30_i_div_if_loop_36_b_5_inputreg0_q <= '0;
        end
        else
        begin
            redist62_yPS_uid30_i_div_if_loop_36_b_5_inputreg0_q <= $unsigned(redist61_yPS_uid30_i_div_if_loop_36_b_2_q);
        end
    end

    // redist62_yPS_uid30_i_div_if_loop_36_b_5(DELAY,584)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_yPS_uid30_i_div_if_loop_36_b_5_delay_0 <= '0;
            redist62_yPS_uid30_i_div_if_loop_36_b_5_q <= '0;
        end
        else
        begin
            redist62_yPS_uid30_i_div_if_loop_36_b_5_delay_0 <= $unsigned(redist62_yPS_uid30_i_div_if_loop_36_b_5_inputreg0_q);
            redist62_yPS_uid30_i_div_if_loop_36_b_5_q <= redist62_yPS_uid30_i_div_if_loop_36_b_5_delay_0;
        end
    end

    // vCount_uid92_zCount_uid31_i_div_if_loop_36(LOGICAL,91)@49 + 1
    assign vCount_uid92_zCount_uid31_i_div_if_loop_36_qi = $unsigned(redist60_yPS_uid30_i_div_if_loop_36_b_1_q == zs_uid90_zCount_uid31_i_div_if_loop_36_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid92_zCount_uid31_i_div_if_loop_36_delay ( .xin(vCount_uid92_zCount_uid31_i_div_if_loop_36_qi), .xout(vCount_uid92_zCount_uid31_i_div_if_loop_36_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist48_vCount_uid92_zCount_uid31_i_div_if_loop_36_q_4(DELAY,570)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_vCount_uid92_zCount_uid31_i_div_if_loop_36_q_4_delay_0 <= '0;
            redist48_vCount_uid92_zCount_uid31_i_div_if_loop_36_q_4_delay_1 <= '0;
            redist48_vCount_uid92_zCount_uid31_i_div_if_loop_36_q_4_q <= '0;
        end
        else
        begin
            redist48_vCount_uid92_zCount_uid31_i_div_if_loop_36_q_4_delay_0 <= $unsigned(vCount_uid92_zCount_uid31_i_div_if_loop_36_q);
            redist48_vCount_uid92_zCount_uid31_i_div_if_loop_36_q_4_delay_1 <= redist48_vCount_uid92_zCount_uid31_i_div_if_loop_36_q_4_delay_0;
            redist48_vCount_uid92_zCount_uid31_i_div_if_loop_36_q_4_q <= redist48_vCount_uid92_zCount_uid31_i_div_if_loop_36_q_4_delay_1;
        end
    end

    // c_i32_114_recast_x(CONSTANT,3)
    assign c_i32_114_recast_x_q = $unsigned(32'b11111111111111111111111111111111);

    // vStagei_uid95_zCount_uid31_i_div_if_loop_36(MUX,94)@50
    assign vStagei_uid95_zCount_uid31_i_div_if_loop_36_s = vCount_uid92_zCount_uid31_i_div_if_loop_36_q;
    always @(vStagei_uid95_zCount_uid31_i_div_if_loop_36_s or redist61_yPS_uid30_i_div_if_loop_36_b_2_q or c_i32_114_recast_x_q)
    begin
        unique case (vStagei_uid95_zCount_uid31_i_div_if_loop_36_s)
            1'b0 : vStagei_uid95_zCount_uid31_i_div_if_loop_36_q = redist61_yPS_uid30_i_div_if_loop_36_b_2_q;
            1'b1 : vStagei_uid95_zCount_uid31_i_div_if_loop_36_q = c_i32_114_recast_x_q;
            default : vStagei_uid95_zCount_uid31_i_div_if_loop_36_q = 32'b0;
        endcase
    end

    // rVStage_uid97_zCount_uid31_i_div_if_loop_36_merged_bit_select(BITSELECT,513)@50
    assign rVStage_uid97_zCount_uid31_i_div_if_loop_36_merged_bit_select_b = vStagei_uid95_zCount_uid31_i_div_if_loop_36_q[31:16];
    assign rVStage_uid97_zCount_uid31_i_div_if_loop_36_merged_bit_select_c = vStagei_uid95_zCount_uid31_i_div_if_loop_36_q[15:0];

    // vCount_uid98_zCount_uid31_i_div_if_loop_36(LOGICAL,97)@50 + 1
    assign vCount_uid98_zCount_uid31_i_div_if_loop_36_qi = $unsigned(rVStage_uid97_zCount_uid31_i_div_if_loop_36_merged_bit_select_b == zs_uid96_zCount_uid31_i_div_if_loop_36_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid98_zCount_uid31_i_div_if_loop_36_delay ( .xin(vCount_uid98_zCount_uid31_i_div_if_loop_36_qi), .xout(vCount_uid98_zCount_uid31_i_div_if_loop_36_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist47_vCount_uid98_zCount_uid31_i_div_if_loop_36_q_3(DELAY,569)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_vCount_uid98_zCount_uid31_i_div_if_loop_36_q_3_delay_0 <= '0;
            redist47_vCount_uid98_zCount_uid31_i_div_if_loop_36_q_3_q <= '0;
        end
        else
        begin
            redist47_vCount_uid98_zCount_uid31_i_div_if_loop_36_q_3_delay_0 <= $unsigned(vCount_uid98_zCount_uid31_i_div_if_loop_36_q);
            redist47_vCount_uid98_zCount_uid31_i_div_if_loop_36_q_3_q <= redist47_vCount_uid98_zCount_uid31_i_div_if_loop_36_q_3_delay_0;
        end
    end

    // redist5_rVStage_uid97_zCount_uid31_i_div_if_loop_36_merged_bit_select_c_1(DELAY,527)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_rVStage_uid97_zCount_uid31_i_div_if_loop_36_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist5_rVStage_uid97_zCount_uid31_i_div_if_loop_36_merged_bit_select_c_1_q <= $unsigned(rVStage_uid97_zCount_uid31_i_div_if_loop_36_merged_bit_select_c);
        end
    end

    // redist4_rVStage_uid97_zCount_uid31_i_div_if_loop_36_merged_bit_select_b_1(DELAY,526)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_rVStage_uid97_zCount_uid31_i_div_if_loop_36_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist4_rVStage_uid97_zCount_uid31_i_div_if_loop_36_merged_bit_select_b_1_q <= $unsigned(rVStage_uid97_zCount_uid31_i_div_if_loop_36_merged_bit_select_b);
        end
    end

    // vStagei_uid101_zCount_uid31_i_div_if_loop_36(MUX,100)@51
    assign vStagei_uid101_zCount_uid31_i_div_if_loop_36_s = vCount_uid98_zCount_uid31_i_div_if_loop_36_q;
    always @(vStagei_uid101_zCount_uid31_i_div_if_loop_36_s or redist4_rVStage_uid97_zCount_uid31_i_div_if_loop_36_merged_bit_select_b_1_q or redist5_rVStage_uid97_zCount_uid31_i_div_if_loop_36_merged_bit_select_c_1_q)
    begin
        unique case (vStagei_uid101_zCount_uid31_i_div_if_loop_36_s)
            1'b0 : vStagei_uid101_zCount_uid31_i_div_if_loop_36_q = redist4_rVStage_uid97_zCount_uid31_i_div_if_loop_36_merged_bit_select_b_1_q;
            1'b1 : vStagei_uid101_zCount_uid31_i_div_if_loop_36_q = redist5_rVStage_uid97_zCount_uid31_i_div_if_loop_36_merged_bit_select_c_1_q;
            default : vStagei_uid101_zCount_uid31_i_div_if_loop_36_q = 16'b0;
        endcase
    end

    // rVStage_uid103_zCount_uid31_i_div_if_loop_36_merged_bit_select(BITSELECT,514)@51
    assign rVStage_uid103_zCount_uid31_i_div_if_loop_36_merged_bit_select_b = vStagei_uid101_zCount_uid31_i_div_if_loop_36_q[15:8];
    assign rVStage_uid103_zCount_uid31_i_div_if_loop_36_merged_bit_select_c = vStagei_uid101_zCount_uid31_i_div_if_loop_36_q[7:0];

    // vCount_uid104_zCount_uid31_i_div_if_loop_36(LOGICAL,103)@51 + 1
    assign vCount_uid104_zCount_uid31_i_div_if_loop_36_qi = $unsigned(rVStage_uid103_zCount_uid31_i_div_if_loop_36_merged_bit_select_b == zs_uid102_zCount_uid31_i_div_if_loop_36_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid104_zCount_uid31_i_div_if_loop_36_delay ( .xin(vCount_uid104_zCount_uid31_i_div_if_loop_36_qi), .xout(vCount_uid104_zCount_uid31_i_div_if_loop_36_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist46_vCount_uid104_zCount_uid31_i_div_if_loop_36_q_2(DELAY,568)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_vCount_uid104_zCount_uid31_i_div_if_loop_36_q_2_q <= '0;
        end
        else
        begin
            redist46_vCount_uid104_zCount_uid31_i_div_if_loop_36_q_2_q <= $unsigned(vCount_uid104_zCount_uid31_i_div_if_loop_36_q);
        end
    end

    // redist3_rVStage_uid103_zCount_uid31_i_div_if_loop_36_merged_bit_select_c_1(DELAY,525)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_rVStage_uid103_zCount_uid31_i_div_if_loop_36_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist3_rVStage_uid103_zCount_uid31_i_div_if_loop_36_merged_bit_select_c_1_q <= $unsigned(rVStage_uid103_zCount_uid31_i_div_if_loop_36_merged_bit_select_c);
        end
    end

    // redist2_rVStage_uid103_zCount_uid31_i_div_if_loop_36_merged_bit_select_b_1(DELAY,524)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_rVStage_uid103_zCount_uid31_i_div_if_loop_36_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist2_rVStage_uid103_zCount_uid31_i_div_if_loop_36_merged_bit_select_b_1_q <= $unsigned(rVStage_uid103_zCount_uid31_i_div_if_loop_36_merged_bit_select_b);
        end
    end

    // vStagei_uid107_zCount_uid31_i_div_if_loop_36(MUX,106)@52
    assign vStagei_uid107_zCount_uid31_i_div_if_loop_36_s = vCount_uid104_zCount_uid31_i_div_if_loop_36_q;
    always @(vStagei_uid107_zCount_uid31_i_div_if_loop_36_s or redist2_rVStage_uid103_zCount_uid31_i_div_if_loop_36_merged_bit_select_b_1_q or redist3_rVStage_uid103_zCount_uid31_i_div_if_loop_36_merged_bit_select_c_1_q)
    begin
        unique case (vStagei_uid107_zCount_uid31_i_div_if_loop_36_s)
            1'b0 : vStagei_uid107_zCount_uid31_i_div_if_loop_36_q = redist2_rVStage_uid103_zCount_uid31_i_div_if_loop_36_merged_bit_select_b_1_q;
            1'b1 : vStagei_uid107_zCount_uid31_i_div_if_loop_36_q = redist3_rVStage_uid103_zCount_uid31_i_div_if_loop_36_merged_bit_select_c_1_q;
            default : vStagei_uid107_zCount_uid31_i_div_if_loop_36_q = 8'b0;
        endcase
    end

    // rVStage_uid109_zCount_uid31_i_div_if_loop_36_merged_bit_select(BITSELECT,515)@52
    assign rVStage_uid109_zCount_uid31_i_div_if_loop_36_merged_bit_select_b = vStagei_uid107_zCount_uid31_i_div_if_loop_36_q[7:4];
    assign rVStage_uid109_zCount_uid31_i_div_if_loop_36_merged_bit_select_c = vStagei_uid107_zCount_uid31_i_div_if_loop_36_q[3:0];

    // vCount_uid110_zCount_uid31_i_div_if_loop_36(LOGICAL,109)@52
    assign vCount_uid110_zCount_uid31_i_div_if_loop_36_q = $unsigned(rVStage_uid109_zCount_uid31_i_div_if_loop_36_merged_bit_select_b == zs_uid108_zCount_uid31_i_div_if_loop_36_q ? 1'b1 : 1'b0);

    // redist45_vCount_uid110_zCount_uid31_i_div_if_loop_36_q_1(DELAY,567)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_vCount_uid110_zCount_uid31_i_div_if_loop_36_q_1_q <= '0;
        end
        else
        begin
            redist45_vCount_uid110_zCount_uid31_i_div_if_loop_36_q_1_q <= $unsigned(vCount_uid110_zCount_uid31_i_div_if_loop_36_q);
        end
    end

    // vStagei_uid113_zCount_uid31_i_div_if_loop_36(MUX,112)@52 + 1
    assign vStagei_uid113_zCount_uid31_i_div_if_loop_36_s = vCount_uid110_zCount_uid31_i_div_if_loop_36_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vStagei_uid113_zCount_uid31_i_div_if_loop_36_q <= 4'b0;
        end
        else
        begin
            unique case (vStagei_uid113_zCount_uid31_i_div_if_loop_36_s)
                1'b0 : vStagei_uid113_zCount_uid31_i_div_if_loop_36_q <= rVStage_uid109_zCount_uid31_i_div_if_loop_36_merged_bit_select_b;
                1'b1 : vStagei_uid113_zCount_uid31_i_div_if_loop_36_q <= rVStage_uid109_zCount_uid31_i_div_if_loop_36_merged_bit_select_c;
                default : vStagei_uid113_zCount_uid31_i_div_if_loop_36_q <= 4'b0;
            endcase
        end
    end

    // rVStage_uid115_zCount_uid31_i_div_if_loop_36_merged_bit_select(BITSELECT,516)@53
    assign rVStage_uid115_zCount_uid31_i_div_if_loop_36_merged_bit_select_b = vStagei_uid113_zCount_uid31_i_div_if_loop_36_q[3:2];
    assign rVStage_uid115_zCount_uid31_i_div_if_loop_36_merged_bit_select_c = vStagei_uid113_zCount_uid31_i_div_if_loop_36_q[1:0];

    // vCount_uid116_zCount_uid31_i_div_if_loop_36(LOGICAL,115)@53
    assign vCount_uid116_zCount_uid31_i_div_if_loop_36_q = $unsigned(rVStage_uid115_zCount_uid31_i_div_if_loop_36_merged_bit_select_b == zs_uid114_zCount_uid31_i_div_if_loop_36_q ? 1'b1 : 1'b0);

    // vStagei_uid119_zCount_uid31_i_div_if_loop_36(MUX,118)@53
    assign vStagei_uid119_zCount_uid31_i_div_if_loop_36_s = vCount_uid116_zCount_uid31_i_div_if_loop_36_q;
    always @(vStagei_uid119_zCount_uid31_i_div_if_loop_36_s or rVStage_uid115_zCount_uid31_i_div_if_loop_36_merged_bit_select_b or rVStage_uid115_zCount_uid31_i_div_if_loop_36_merged_bit_select_c)
    begin
        unique case (vStagei_uid119_zCount_uid31_i_div_if_loop_36_s)
            1'b0 : vStagei_uid119_zCount_uid31_i_div_if_loop_36_q = rVStage_uid115_zCount_uid31_i_div_if_loop_36_merged_bit_select_b;
            1'b1 : vStagei_uid119_zCount_uid31_i_div_if_loop_36_q = rVStage_uid115_zCount_uid31_i_div_if_loop_36_merged_bit_select_c;
            default : vStagei_uid119_zCount_uid31_i_div_if_loop_36_q = 2'b0;
        endcase
    end

    // rVStage_uid121_zCount_uid31_i_div_if_loop_36(BITSELECT,120)@53
    assign rVStage_uid121_zCount_uid31_i_div_if_loop_36_b = vStagei_uid119_zCount_uid31_i_div_if_loop_36_q[1:1];

    // vCount_uid122_zCount_uid31_i_div_if_loop_36(LOGICAL,121)@53
    assign vCount_uid122_zCount_uid31_i_div_if_loop_36_q = $unsigned(rVStage_uid121_zCount_uid31_i_div_if_loop_36_b == GND_q ? 1'b1 : 1'b0);

    // r_uid123_zCount_uid31_i_div_if_loop_36(BITJOIN,122)@53
    assign r_uid123_zCount_uid31_i_div_if_loop_36_q = {redist48_vCount_uid92_zCount_uid31_i_div_if_loop_36_q_4_q, redist47_vCount_uid98_zCount_uid31_i_div_if_loop_36_q_3_q, redist46_vCount_uid104_zCount_uid31_i_div_if_loop_36_q_2_q, redist45_vCount_uid110_zCount_uid31_i_div_if_loop_36_q_1_q, vCount_uid116_zCount_uid31_i_div_if_loop_36_q, vCount_uid122_zCount_uid31_i_div_if_loop_36_q};

    // leftShiftStageSel0Dto4_uid209_normY_uid32_i_div_if_loop_36_merged_bit_select(BITSELECT,517)@53
    assign leftShiftStageSel0Dto4_uid209_normY_uid32_i_div_if_loop_36_merged_bit_select_b = r_uid123_zCount_uid31_i_div_if_loop_36_q[5:4];
    assign leftShiftStageSel0Dto4_uid209_normY_uid32_i_div_if_loop_36_merged_bit_select_c = r_uid123_zCount_uid31_i_div_if_loop_36_q[3:2];
    assign leftShiftStageSel0Dto4_uid209_normY_uid32_i_div_if_loop_36_merged_bit_select_d = r_uid123_zCount_uid31_i_div_if_loop_36_q[1:0];

    // leftShiftStage0_uid210_normY_uid32_i_div_if_loop_36(MUX,209)@53 + 1
    assign leftShiftStage0_uid210_normY_uid32_i_div_if_loop_36_s = leftShiftStageSel0Dto4_uid209_normY_uid32_i_div_if_loop_36_merged_bit_select_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            leftShiftStage0_uid210_normY_uid32_i_div_if_loop_36_q <= 32'b0;
        end
        else
        begin
            unique case (leftShiftStage0_uid210_normY_uid32_i_div_if_loop_36_s)
                2'b00 : leftShiftStage0_uid210_normY_uid32_i_div_if_loop_36_q <= redist62_yPS_uid30_i_div_if_loop_36_b_5_q;
                2'b01 : leftShiftStage0_uid210_normY_uid32_i_div_if_loop_36_q <= leftShiftStage0Idx1_uid206_normY_uid32_i_div_if_loop_36_q;
                2'b10 : leftShiftStage0_uid210_normY_uid32_i_div_if_loop_36_q <= zs_uid90_zCount_uid31_i_div_if_loop_36_q;
                2'b11 : leftShiftStage0_uid210_normY_uid32_i_div_if_loop_36_q <= zs_uid90_zCount_uid31_i_div_if_loop_36_q;
                default : leftShiftStage0_uid210_normY_uid32_i_div_if_loop_36_q <= 32'b0;
            endcase
        end
    end

    // redist0_leftShiftStageSel0Dto4_uid209_normY_uid32_i_div_if_loop_36_merged_bit_select_c_1(DELAY,522)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_leftShiftStageSel0Dto4_uid209_normY_uid32_i_div_if_loop_36_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_leftShiftStageSel0Dto4_uid209_normY_uid32_i_div_if_loop_36_merged_bit_select_c_1_q <= $unsigned(leftShiftStageSel0Dto4_uid209_normY_uid32_i_div_if_loop_36_merged_bit_select_c);
        end
    end

    // leftShiftStage1_uid221_normY_uid32_i_div_if_loop_36(MUX,220)@54
    assign leftShiftStage1_uid221_normY_uid32_i_div_if_loop_36_s = redist0_leftShiftStageSel0Dto4_uid209_normY_uid32_i_div_if_loop_36_merged_bit_select_c_1_q;
    always @(leftShiftStage1_uid221_normY_uid32_i_div_if_loop_36_s or leftShiftStage0_uid210_normY_uid32_i_div_if_loop_36_q or leftShiftStage1Idx1_uid213_normY_uid32_i_div_if_loop_36_q or leftShiftStage1Idx2_uid216_normY_uid32_i_div_if_loop_36_q or leftShiftStage1Idx3_uid219_normY_uid32_i_div_if_loop_36_q)
    begin
        unique case (leftShiftStage1_uid221_normY_uid32_i_div_if_loop_36_s)
            2'b00 : leftShiftStage1_uid221_normY_uid32_i_div_if_loop_36_q = leftShiftStage0_uid210_normY_uid32_i_div_if_loop_36_q;
            2'b01 : leftShiftStage1_uid221_normY_uid32_i_div_if_loop_36_q = leftShiftStage1Idx1_uid213_normY_uid32_i_div_if_loop_36_q;
            2'b10 : leftShiftStage1_uid221_normY_uid32_i_div_if_loop_36_q = leftShiftStage1Idx2_uid216_normY_uid32_i_div_if_loop_36_q;
            2'b11 : leftShiftStage1_uid221_normY_uid32_i_div_if_loop_36_q = leftShiftStage1Idx3_uid219_normY_uid32_i_div_if_loop_36_q;
            default : leftShiftStage1_uid221_normY_uid32_i_div_if_loop_36_q = 32'b0;
        endcase
    end

    // redist1_leftShiftStageSel0Dto4_uid209_normY_uid32_i_div_if_loop_36_merged_bit_select_d_1(DELAY,523)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_leftShiftStageSel0Dto4_uid209_normY_uid32_i_div_if_loop_36_merged_bit_select_d_1_q <= '0;
        end
        else
        begin
            redist1_leftShiftStageSel0Dto4_uid209_normY_uid32_i_div_if_loop_36_merged_bit_select_d_1_q <= $unsigned(leftShiftStageSel0Dto4_uid209_normY_uid32_i_div_if_loop_36_merged_bit_select_d);
        end
    end

    // leftShiftStage2_uid232_normY_uid32_i_div_if_loop_36(MUX,231)@54
    assign leftShiftStage2_uid232_normY_uid32_i_div_if_loop_36_s = redist1_leftShiftStageSel0Dto4_uid209_normY_uid32_i_div_if_loop_36_merged_bit_select_d_1_q;
    always @(leftShiftStage2_uid232_normY_uid32_i_div_if_loop_36_s or leftShiftStage1_uid221_normY_uid32_i_div_if_loop_36_q or leftShiftStage2Idx1_uid224_normY_uid32_i_div_if_loop_36_q or leftShiftStage2Idx2_uid227_normY_uid32_i_div_if_loop_36_q or leftShiftStage2Idx3_uid230_normY_uid32_i_div_if_loop_36_q)
    begin
        unique case (leftShiftStage2_uid232_normY_uid32_i_div_if_loop_36_s)
            2'b00 : leftShiftStage2_uid232_normY_uid32_i_div_if_loop_36_q = leftShiftStage1_uid221_normY_uid32_i_div_if_loop_36_q;
            2'b01 : leftShiftStage2_uid232_normY_uid32_i_div_if_loop_36_q = leftShiftStage2Idx1_uid224_normY_uid32_i_div_if_loop_36_q;
            2'b10 : leftShiftStage2_uid232_normY_uid32_i_div_if_loop_36_q = leftShiftStage2Idx2_uid227_normY_uid32_i_div_if_loop_36_q;
            2'b11 : leftShiftStage2_uid232_normY_uid32_i_div_if_loop_36_q = leftShiftStage2Idx3_uid230_normY_uid32_i_div_if_loop_36_q;
            default : leftShiftStage2_uid232_normY_uid32_i_div_if_loop_36_q = 32'b0;
        endcase
    end

    // normYNoLeadOne_uid33_i_div_if_loop_36(BITSELECT,32)@54
    assign normYNoLeadOne_uid33_i_div_if_loop_36_in = leftShiftStage2_uid232_normY_uid32_i_div_if_loop_36_q[30:0];
    assign normYNoLeadOne_uid33_i_div_if_loop_36_b = normYNoLeadOne_uid33_i_div_if_loop_36_in[30:0];

    // yAddr_uid41_i_div_if_loop_36_merged_bit_select(BITSELECT,509)@54
    assign yAddr_uid41_i_div_if_loop_36_merged_bit_select_b = normYNoLeadOne_uid33_i_div_if_loop_36_b[30:23];
    assign yAddr_uid41_i_div_if_loop_36_merged_bit_select_c = normYNoLeadOne_uid33_i_div_if_loop_36_b[22:0];

    // redist9_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_3(DELAY,531)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_3_delay_0 <= '0;
            redist9_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_3_delay_1 <= '0;
            redist9_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_3_q <= '0;
        end
        else
        begin
            redist9_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_3_delay_0 <= $unsigned(yAddr_uid41_i_div_if_loop_36_merged_bit_select_c);
            redist9_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_3_delay_1 <= redist9_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_3_delay_0;
            redist9_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_3_q <= redist9_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_3_delay_1;
        end
    end

    // redist10_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_7_inputreg0(DELAY,602)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_7_inputreg0_q <= '0;
        end
        else
        begin
            redist10_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_7_inputreg0_q <= $unsigned(redist9_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_3_q);
        end
    end

    // redist10_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_7(DELAY,532)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_7_delay_0 <= '0;
            redist10_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_7_delay_1 <= '0;
            redist10_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_7_q <= '0;
        end
        else
        begin
            redist10_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_7_delay_0 <= $unsigned(redist10_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_7_inputreg0_q);
            redist10_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_7_delay_1 <= redist10_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_7_delay_0;
            redist10_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_7_q <= redist10_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_7_delay_1;
        end
    end

    // redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_inputreg0(DELAY,603)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_inputreg0_q <= '0;
        end
        else
        begin
            redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_inputreg0_q <= $unsigned(redist10_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_7_q);
        end
    end

    // redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_wraddr(REG,606)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_wraddr_q <= $unsigned(redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_rdcnt_q);
        end
    end

    // redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem(DUALMEM,604)
    assign redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_ia = $unsigned(redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_inputreg0_q);
    assign redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_aa = redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_wraddr_q;
    assign redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_ab = redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_rdcnt_q;
    assign redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_reset0 = ~ (resetn);
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
    ) redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_dmem (
        .clocken1(redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_reset0),
        .clock1(clock),
        .address_a(redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_aa),
        .data_a(redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_ab),
        .q_b(redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_iq),
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
    assign redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_q = redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_iq[22:0];

    // nx_mergedSignalTM_uid178_pT3_uid154_invPolyEval(BITJOIN,177)@66
    assign nx_mergedSignalTM_uid178_pT3_uid154_invPolyEval_q = {GND_q, redist11_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_12_mem_q};

    // topRangeX_uid180_pT3_uid154_invPolyEval_merged_bit_select(BITSELECT,521)@66
    assign topRangeX_uid180_pT3_uid154_invPolyEval_merged_bit_select_b = $unsigned(nx_mergedSignalTM_uid178_pT3_uid154_invPolyEval_q[23:6]);
    assign topRangeX_uid180_pT3_uid154_invPolyEval_merged_bit_select_c = $unsigned(nx_mergedSignalTM_uid178_pT3_uid154_invPolyEval_q[5:0]);

    // aboveLeftY_bottomExtension_uid183_pT3_uid154_invPolyEval(CONSTANT,182)
    assign aboveLeftY_bottomExtension_uid183_pT3_uid154_invPolyEval_q = $unsigned(5'b00000);

    // aboveLeftY_mergedSignalTM_uid185_pT3_uid154_invPolyEval(BITJOIN,184)@66
    assign aboveLeftY_mergedSignalTM_uid185_pT3_uid154_invPolyEval_q = {topRangeY_uid181_pT3_uid154_invPolyEval_merged_bit_select_c, aboveLeftY_bottomExtension_uid183_pT3_uid154_invPolyEval_q};

    // yT2_uid147_invPolyEval(BITSELECT,146)@61
    assign yT2_uid147_invPolyEval_b = redist10_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_7_q[22:2];

    // prodXY_uid163_pT2_uid148_invPolyEval_bs1_merged_bit_select(BITSELECT,519)@61
    assign prodXY_uid163_pT2_uid148_invPolyEval_bs1_merged_bit_select_b = yT2_uid147_invPolyEval_b[17:0];
    assign prodXY_uid163_pT2_uid148_invPolyEval_bs1_merged_bit_select_c = yT2_uid147_invPolyEval_b[20:18];

    // memoryC3_uid134_invTabGen_lutmem(DUALMEM,307)@54 + 2
    // in j@20000000
    assign memoryC3_uid134_invTabGen_lutmem_aa = yAddr_uid41_i_div_if_loop_36_merged_bit_select_b;
    assign memoryC3_uid134_invTabGen_lutmem_reset0 = ~ (resetn);
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
        .init_file("if_loop_3_i_sfc_logic_s_c1_in_for_body_s0000134_invTabGen_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC3_uid134_invTabGen_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC3_uid134_invTabGen_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC3_uid134_invTabGen_lutmem_aa),
        .q_a(memoryC3_uid134_invTabGen_lutmem_ir),
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
    assign memoryC3_uid134_invTabGen_lutmem_r = memoryC3_uid134_invTabGen_lutmem_ir[13:0];

    // redist34_memoryC3_uid134_invTabGen_lutmem_r_1(DELAY,556)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_memoryC3_uid134_invTabGen_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist34_memoryC3_uid134_invTabGen_lutmem_r_1_q <= $unsigned(memoryC3_uid134_invTabGen_lutmem_r);
        end
    end

    // yT1_uid141_invPolyEval(BITSELECT,140)@57
    assign yT1_uid141_invPolyEval_b = redist9_yAddr_uid41_i_div_if_loop_36_merged_bit_select_c_3_q[22:9];

    // prodXY_uid160_pT1_uid142_invPolyEval_cma(CHAINMULTADD,324)@57 + 2
    assign prodXY_uid160_pT1_uid142_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid160_pT1_uid142_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid160_pT1_uid142_invPolyEval_cma_ena1 = prodXY_uid160_pT1_uid142_invPolyEval_cma_ena0;
    assign prodXY_uid160_pT1_uid142_invPolyEval_cma_l[0] = $signed({1'b0, prodXY_uid160_pT1_uid142_invPolyEval_cma_a0[0][13:0]});
    assign prodXY_uid160_pT1_uid142_invPolyEval_cma_p[0] = prodXY_uid160_pT1_uid142_invPolyEval_cma_l[0] * prodXY_uid160_pT1_uid142_invPolyEval_cma_c0[0];
    assign prodXY_uid160_pT1_uid142_invPolyEval_cma_u[0] = prodXY_uid160_pT1_uid142_invPolyEval_cma_p[0][28:0];
    assign prodXY_uid160_pT1_uid142_invPolyEval_cma_w[0] = prodXY_uid160_pT1_uid142_invPolyEval_cma_u[0];
    assign prodXY_uid160_pT1_uid142_invPolyEval_cma_x[0] = prodXY_uid160_pT1_uid142_invPolyEval_cma_w[0];
    assign prodXY_uid160_pT1_uid142_invPolyEval_cma_y[0] = prodXY_uid160_pT1_uid142_invPolyEval_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid160_pT1_uid142_invPolyEval_cma_a0 <= '{default: '0};
            prodXY_uid160_pT1_uid142_invPolyEval_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid160_pT1_uid142_invPolyEval_cma_ena0 == 1'b1)
            begin
                prodXY_uid160_pT1_uid142_invPolyEval_cma_a0[0] <= yT1_uid141_invPolyEval_b;
                prodXY_uid160_pT1_uid142_invPolyEval_cma_c0[0] <= redist34_memoryC3_uid134_invTabGen_lutmem_r_1_q;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid160_pT1_uid142_invPolyEval_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid160_pT1_uid142_invPolyEval_cma_ena1 == 1'b1)
            begin
                prodXY_uid160_pT1_uid142_invPolyEval_cma_s[0] <= prodXY_uid160_pT1_uid142_invPolyEval_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(29), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid160_pT1_uid142_invPolyEval_cma_delay ( .xin(prodXY_uid160_pT1_uid142_invPolyEval_cma_s[0]), .xout(prodXY_uid160_pT1_uid142_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid160_pT1_uid142_invPolyEval_cma_q = $unsigned(prodXY_uid160_pT1_uid142_invPolyEval_cma_qq[27:0]);

    // osig_uid161_pT1_uid142_invPolyEval(BITSELECT,160)@59
    assign osig_uid161_pT1_uid142_invPolyEval_b = $unsigned(prodXY_uid160_pT1_uid142_invPolyEval_cma_q[27:14]);

    // highBBits_uid144_invPolyEval(BITSELECT,143)@59
    assign highBBits_uid144_invPolyEval_b = $unsigned(osig_uid161_pT1_uid142_invPolyEval_b[13:1]);

    // redist42_highBBits_uid144_invPolyEval_b_1(DELAY,564)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_highBBits_uid144_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist42_highBBits_uid144_invPolyEval_b_1_q <= $unsigned(highBBits_uid144_invPolyEval_b);
        end
    end

    // redist6_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_3(DELAY,528)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_3_delay_0 <= '0;
            redist6_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_3_delay_1 <= '0;
            redist6_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_3_q <= '0;
        end
        else
        begin
            redist6_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_3_delay_0 <= $unsigned(yAddr_uid41_i_div_if_loop_36_merged_bit_select_b);
            redist6_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_3_delay_1 <= redist6_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_3_delay_0;
            redist6_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_3_q <= redist6_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_3_delay_1;
        end
    end

    // memoryC2_uid131_invTabGen_lutmem(DUALMEM,306)@57 + 2
    // in j@20000000
    assign memoryC2_uid131_invTabGen_lutmem_aa = redist6_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_3_q;
    assign memoryC2_uid131_invTabGen_lutmem_reset0 = ~ (resetn);
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
        .init_file("if_loop_3_i_sfc_logic_s_c1_in_for_body_s0000131_invTabGen_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC2_uid131_invTabGen_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC2_uid131_invTabGen_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC2_uid131_invTabGen_lutmem_aa),
        .q_a(memoryC2_uid131_invTabGen_lutmem_ir),
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
    assign memoryC2_uid131_invTabGen_lutmem_r = memoryC2_uid131_invTabGen_lutmem_ir[20:0];

    // redist35_memoryC2_uid131_invTabGen_lutmem_r_1(DELAY,557)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_memoryC2_uid131_invTabGen_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist35_memoryC2_uid131_invTabGen_lutmem_r_1_q <= $unsigned(memoryC2_uid131_invTabGen_lutmem_r);
        end
    end

    // s1sumAHighB_uid145_invPolyEval(ADD,144)@60 + 1
    assign s1sumAHighB_uid145_invPolyEval_a = $unsigned({{1{redist35_memoryC2_uid131_invTabGen_lutmem_r_1_q[20]}}, redist35_memoryC2_uid131_invTabGen_lutmem_r_1_q});
    assign s1sumAHighB_uid145_invPolyEval_b = $unsigned({{9{redist42_highBBits_uid144_invPolyEval_b_1_q[12]}}, redist42_highBBits_uid144_invPolyEval_b_1_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            s1sumAHighB_uid145_invPolyEval_o <= 22'b0;
        end
        else
        begin
            s1sumAHighB_uid145_invPolyEval_o <= $unsigned($signed(s1sumAHighB_uid145_invPolyEval_a) + $signed(s1sumAHighB_uid145_invPolyEval_b));
        end
    end
    assign s1sumAHighB_uid145_invPolyEval_q = s1sumAHighB_uid145_invPolyEval_o[21:0];

    // lowRangeB_uid143_invPolyEval(BITSELECT,142)@59
    assign lowRangeB_uid143_invPolyEval_in = osig_uid161_pT1_uid142_invPolyEval_b[0:0];
    assign lowRangeB_uid143_invPolyEval_b = lowRangeB_uid143_invPolyEval_in[0:0];

    // redist43_lowRangeB_uid143_invPolyEval_b_2(DELAY,565)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_lowRangeB_uid143_invPolyEval_b_2_delay_0 <= '0;
            redist43_lowRangeB_uid143_invPolyEval_b_2_q <= '0;
        end
        else
        begin
            redist43_lowRangeB_uid143_invPolyEval_b_2_delay_0 <= $unsigned(lowRangeB_uid143_invPolyEval_b);
            redist43_lowRangeB_uid143_invPolyEval_b_2_q <= redist43_lowRangeB_uid143_invPolyEval_b_2_delay_0;
        end
    end

    // s1_uid146_invPolyEval(BITJOIN,145)@61
    assign s1_uid146_invPolyEval_q = {s1sumAHighB_uid145_invPolyEval_q, redist43_lowRangeB_uid143_invPolyEval_b_2_q};

    // prodXY_uid163_pT2_uid148_invPolyEval_bs2_merged_bit_select(BITSELECT,518)@61
    assign prodXY_uid163_pT2_uid148_invPolyEval_bs2_merged_bit_select_b = $unsigned(s1_uid146_invPolyEval_q[17:0]);
    assign prodXY_uid163_pT2_uid148_invPolyEval_bs2_merged_bit_select_c = $unsigned(s1_uid146_invPolyEval_q[22:18]);

    // prodXY_uid163_pT2_uid148_invPolyEval_bjA7(BITJOIN,315)@61
    assign prodXY_uid163_pT2_uid148_invPolyEval_bjA7_q = {GND_q, prodXY_uid163_pT2_uid148_invPolyEval_bs1_merged_bit_select_c};

    // prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma(CHAINMULTADD,334)@61 + 2
    assign prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_reset = ~ (resetn);
    assign prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_ena0 = 1'b1;
    assign prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_ena1 = prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_ena0;
    assign prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_r[0] = $signed({1'b0, prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_c0[0][17:0]});
    assign prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_r[1] = $signed({1'b0, prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_c0[1][17:0]});
    assign prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_p[0] = prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_a0[0] * prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_r[0];
    assign prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_p[1] = prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_a0[1] * prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_r[1];
    assign prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_u[0] = {{1{prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_p[0][23]}}, prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_p[0][23:0]};
    assign prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_u[1] = {{1{prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_p[1][23]}}, prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_p[1][23:0]};
    assign prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_w[0] = prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_u[0] + prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_u[1];
    assign prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_x[0] = prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_w[0];
    assign prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_y[0] = prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_a0 <= '{default: '0};
            prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_ena0 == 1'b1)
            begin
                prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_a0[0] <= {{1{prodXY_uid163_pT2_uid148_invPolyEval_bjA7_q[3]}}, prodXY_uid163_pT2_uid148_invPolyEval_bjA7_q[3:0]};
                prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_a0[1] <= prodXY_uid163_pT2_uid148_invPolyEval_bs2_merged_bit_select_c;
                prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_c0[0] <= prodXY_uid163_pT2_uid148_invPolyEval_bs2_merged_bit_select_b;
                prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_c0[1] <= prodXY_uid163_pT2_uid148_invPolyEval_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_ena1 == 1'b1)
            begin
                prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_s[0] <= prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(25), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_delay ( .xin(prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_s[0]), .xout(prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_q = $unsigned(prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_qq[23:0]);

    // redist29_prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_q_1(DELAY,551)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_q_1_q <= '0;
        end
        else
        begin
            redist29_prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_q_1_q <= $unsigned(prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_q);
        end
    end

    // prodXY_uid163_pT2_uid148_invPolyEval_sums_align_1(BITSHIFT,321)@64
    assign prodXY_uid163_pT2_uid148_invPolyEval_sums_align_1_qint = { redist29_prodXY_uid163_pT2_uid148_invPolyEval_ma3_cma_q_1_q, 18'b000000000000000000 };
    assign prodXY_uid163_pT2_uid148_invPolyEval_sums_align_1_q = prodXY_uid163_pT2_uid148_invPolyEval_sums_align_1_qint[41:0];

    // prodXY_uid163_pT2_uid148_invPolyEval_im9(MULT,317)@61 + 2
    assign prodXY_uid163_pT2_uid148_invPolyEval_im9_pr = signed'({1'b0, prodXY_uid163_pT2_uid148_invPolyEval_im9_a0[2:0]}) * signed'(prodXY_uid163_pT2_uid148_invPolyEval_im9_b0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid163_pT2_uid148_invPolyEval_im9_a0 <= 3'b0;
            prodXY_uid163_pT2_uid148_invPolyEval_im9_b0 <= 5'b0;
            prodXY_uid163_pT2_uid148_invPolyEval_im9_s1 <= 8'b0;
        end
        else
        begin
            prodXY_uid163_pT2_uid148_invPolyEval_im9_a0 <= prodXY_uid163_pT2_uid148_invPolyEval_bs1_merged_bit_select_c;
            prodXY_uid163_pT2_uid148_invPolyEval_im9_b0 <= $unsigned(prodXY_uid163_pT2_uid148_invPolyEval_bs2_merged_bit_select_c);
            prodXY_uid163_pT2_uid148_invPolyEval_im9_s1 <= $unsigned(prodXY_uid163_pT2_uid148_invPolyEval_im9_pr[7:0]);
        end
    end
    assign prodXY_uid163_pT2_uid148_invPolyEval_im9_q = prodXY_uid163_pT2_uid148_invPolyEval_im9_s1;

    // redist33_prodXY_uid163_pT2_uid148_invPolyEval_im9_q_1(DELAY,555)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_prodXY_uid163_pT2_uid148_invPolyEval_im9_q_1_q <= '0;
        end
        else
        begin
            redist33_prodXY_uid163_pT2_uid148_invPolyEval_im9_q_1_q <= $unsigned(prodXY_uid163_pT2_uid148_invPolyEval_im9_q);
        end
    end

    // prodXY_uid163_pT2_uid148_invPolyEval_im0_cma(CHAINMULTADD,330)@61 + 2
    assign prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_reset = ~ (resetn);
    assign prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_ena0 = 1'b1;
    assign prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_ena1 = prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_ena0;
    assign prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_p[0] = prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_a0[0] * prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_c0[0];
    assign prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_u[0] = prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_p[0][35:0];
    assign prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_w[0] = prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_u[0];
    assign prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_x[0] = prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_w[0];
    assign prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_y[0] = prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_a0 <= '{default: '0};
            prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_ena0 == 1'b1)
            begin
                prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_a0[0] <= prodXY_uid163_pT2_uid148_invPolyEval_bs1_merged_bit_select_b;
                prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_c0[0] <= prodXY_uid163_pT2_uid148_invPolyEval_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_ena1 == 1'b1)
            begin
                prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_s[0] <= prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_delay ( .xin(prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_s[0]), .xout(prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_q = $unsigned(prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_qq[35:0]);

    // redist31_prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_q_1(DELAY,553)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_q_1_q <= '0;
        end
        else
        begin
            redist31_prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_q_1_q <= $unsigned(prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_q);
        end
    end

    // prodXY_uid163_pT2_uid148_invPolyEval_sums_join_0(BITJOIN,320)@64
    assign prodXY_uid163_pT2_uid148_invPolyEval_sums_join_0_q = {redist33_prodXY_uid163_pT2_uid148_invPolyEval_im9_q_1_q, redist31_prodXY_uid163_pT2_uid148_invPolyEval_im0_cma_q_1_q};

    // prodXY_uid163_pT2_uid148_invPolyEval_sums_result_add_0_0(ADD,323)@64
    assign prodXY_uid163_pT2_uid148_invPolyEval_sums_result_add_0_0_a = $unsigned({{1{prodXY_uid163_pT2_uid148_invPolyEval_sums_join_0_q[43]}}, prodXY_uid163_pT2_uid148_invPolyEval_sums_join_0_q});
    assign prodXY_uid163_pT2_uid148_invPolyEval_sums_result_add_0_0_b = $unsigned({{3{prodXY_uid163_pT2_uid148_invPolyEval_sums_align_1_q[41]}}, prodXY_uid163_pT2_uid148_invPolyEval_sums_align_1_q});
    assign prodXY_uid163_pT2_uid148_invPolyEval_sums_result_add_0_0_o = $unsigned($signed(prodXY_uid163_pT2_uid148_invPolyEval_sums_result_add_0_0_a) + $signed(prodXY_uid163_pT2_uid148_invPolyEval_sums_result_add_0_0_b));
    assign prodXY_uid163_pT2_uid148_invPolyEval_sums_result_add_0_0_q = prodXY_uid163_pT2_uid148_invPolyEval_sums_result_add_0_0_o[44:0];

    // osig_uid164_pT2_uid148_invPolyEval(BITSELECT,163)@64
    assign osig_uid164_pT2_uid148_invPolyEval_in = $unsigned(prodXY_uid163_pT2_uid148_invPolyEval_sums_result_add_0_0_q[43:0]);
    assign osig_uid164_pT2_uid148_invPolyEval_b = $unsigned(osig_uid164_pT2_uid148_invPolyEval_in[43:21]);

    // highBBits_uid150_invPolyEval(BITSELECT,149)@64
    assign highBBits_uid150_invPolyEval_b = $unsigned(osig_uid164_pT2_uid148_invPolyEval_b[22:1]);

    // redist40_highBBits_uid150_invPolyEval_b_1(DELAY,562)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_highBBits_uid150_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist40_highBBits_uid150_invPolyEval_b_1_q <= $unsigned(highBBits_uid150_invPolyEval_b);
        end
    end

    // redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_inputreg0(DELAY,600)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_inputreg0_q <= '0;
        end
        else
        begin
            redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_inputreg0_q <= $unsigned(redist6_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_3_q);
        end
    end

    // redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8(DELAY,529)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_delay_0 <= '0;
            redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_delay_1 <= '0;
            redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_delay_2 <= '0;
            redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_q <= '0;
        end
        else
        begin
            redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_delay_0 <= $unsigned(redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_inputreg0_q);
            redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_delay_1 <= redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_delay_0;
            redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_delay_2 <= redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_delay_1;
            redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_q <= redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_delay_2;
        end
    end

    // memoryC1_uid128_invTabGen_lutmem(DUALMEM,305)@62 + 2
    // in j@20000000
    assign memoryC1_uid128_invTabGen_lutmem_aa = redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_q;
    assign memoryC1_uid128_invTabGen_lutmem_reset0 = ~ (resetn);
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
        .init_file("if_loop_3_i_sfc_logic_s_c1_in_for_body_s0000128_invTabGen_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC1_uid128_invTabGen_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC1_uid128_invTabGen_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC1_uid128_invTabGen_lutmem_aa),
        .q_a(memoryC1_uid128_invTabGen_lutmem_ir),
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
    assign memoryC1_uid128_invTabGen_lutmem_r = memoryC1_uid128_invTabGen_lutmem_ir[28:0];

    // redist36_memoryC1_uid128_invTabGen_lutmem_r_1(DELAY,558)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_memoryC1_uid128_invTabGen_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist36_memoryC1_uid128_invTabGen_lutmem_r_1_q <= $unsigned(memoryC1_uid128_invTabGen_lutmem_r);
        end
    end

    // s2sumAHighB_uid151_invPolyEval(ADD,150)@65 + 1
    assign s2sumAHighB_uid151_invPolyEval_a = $unsigned({{1{redist36_memoryC1_uid128_invTabGen_lutmem_r_1_q[28]}}, redist36_memoryC1_uid128_invTabGen_lutmem_r_1_q});
    assign s2sumAHighB_uid151_invPolyEval_b = $unsigned({{8{redist40_highBBits_uid150_invPolyEval_b_1_q[21]}}, redist40_highBBits_uid150_invPolyEval_b_1_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            s2sumAHighB_uid151_invPolyEval_o <= 30'b0;
        end
        else
        begin
            s2sumAHighB_uid151_invPolyEval_o <= $unsigned($signed(s2sumAHighB_uid151_invPolyEval_a) + $signed(s2sumAHighB_uid151_invPolyEval_b));
        end
    end
    assign s2sumAHighB_uid151_invPolyEval_q = s2sumAHighB_uid151_invPolyEval_o[29:0];

    // lowRangeB_uid149_invPolyEval(BITSELECT,148)@64
    assign lowRangeB_uid149_invPolyEval_in = osig_uid164_pT2_uid148_invPolyEval_b[0:0];
    assign lowRangeB_uid149_invPolyEval_b = lowRangeB_uid149_invPolyEval_in[0:0];

    // redist41_lowRangeB_uid149_invPolyEval_b_2(DELAY,563)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_lowRangeB_uid149_invPolyEval_b_2_delay_0 <= '0;
            redist41_lowRangeB_uid149_invPolyEval_b_2_q <= '0;
        end
        else
        begin
            redist41_lowRangeB_uid149_invPolyEval_b_2_delay_0 <= $unsigned(lowRangeB_uid149_invPolyEval_b);
            redist41_lowRangeB_uid149_invPolyEval_b_2_q <= redist41_lowRangeB_uid149_invPolyEval_b_2_delay_0;
        end
    end

    // s2_uid152_invPolyEval(BITJOIN,151)@66
    assign s2_uid152_invPolyEval_q = {s2sumAHighB_uid151_invPolyEval_q, redist41_lowRangeB_uid149_invPolyEval_b_2_q};

    // topRangeY_uid181_pT3_uid154_invPolyEval_merged_bit_select(BITSELECT,520)@66
    assign topRangeY_uid181_pT3_uid154_invPolyEval_merged_bit_select_b = $unsigned(s2_uid152_invPolyEval_q[30:13]);
    assign topRangeY_uid181_pT3_uid154_invPolyEval_merged_bit_select_c = $unsigned(s2_uid152_invPolyEval_q[12:0]);

    // rightBottomX_mergedSignalTM_uid189_pT3_uid154_invPolyEval(BITJOIN,188)@66
    assign rightBottomX_mergedSignalTM_uid189_pT3_uid154_invPolyEval_q = {topRangeX_uid180_pT3_uid154_invPolyEval_merged_bit_select_c, rightBottomX_bottomExtension_uid187_pT3_uid154_invPolyEval_q};

    // multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma(CHAINMULTADD,331)@66 + 2
    assign multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_reset = ~ (resetn);
    assign multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ena0 = 1'b1;
    assign multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ena1 = multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ena0;
    assign multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_l[0] = $signed({1'b0, multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_a0[0][17:0]});
    assign multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_l[1] = $signed({1'b0, multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_a0[1][17:0]});
    assign multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_p[0] = multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_l[0] * multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_c0[0];
    assign multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_p[1] = multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_l[1] * multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_c0[1];
    assign multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_u[0] = {{1{multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_p[0][36]}}, multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_p[0][36:0]};
    assign multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_u[1] = {{1{multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_p[1][36]}}, multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_p[1][36:0]};
    assign multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_w[0] = multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_u[0] + multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_u[1];
    assign multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_x[0] = multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_w[0];
    assign multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_y[0] = multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_a0 <= '{default: '0};
            multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ena0 == 1'b1)
            begin
                multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_a0[0] <= rightBottomX_mergedSignalTM_uid189_pT3_uid154_invPolyEval_q;
                multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_a0[1] <= aboveLeftY_mergedSignalTM_uid185_pT3_uid154_invPolyEval_q;
                multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_c0[0] <= topRangeY_uid181_pT3_uid154_invPolyEval_merged_bit_select_b;
                multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_c0[1] <= topRangeX_uid180_pT3_uid154_invPolyEval_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_s <= '{default: '0};
        end
        else
        begin
            if (multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_ena1 == 1'b1)
            begin
                multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_s[0] <= multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(38), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_delay ( .xin(multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_s[0]), .xout(multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_q = $unsigned(multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_qq[36:0]);

    // redist30_multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_q_1(DELAY,552)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_q_1_q <= '0;
        end
        else
        begin
            redist30_multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_q_1_q <= $unsigned(multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_q);
        end
    end

    // highBBits_uid196_pT3_uid154_invPolyEval(BITSELECT,195)@69
    assign highBBits_uid196_pT3_uid154_invPolyEval_b = $unsigned(redist30_multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_q_1_q[36:18]);

    // sm0_uid192_pT3_uid154_invPolyEval_cma(CHAINMULTADD,325)@66 + 2
    assign sm0_uid192_pT3_uid154_invPolyEval_cma_reset = ~ (resetn);
    assign sm0_uid192_pT3_uid154_invPolyEval_cma_ena0 = 1'b1;
    assign sm0_uid192_pT3_uid154_invPolyEval_cma_ena1 = sm0_uid192_pT3_uid154_invPolyEval_cma_ena0;
    assign sm0_uid192_pT3_uid154_invPolyEval_cma_p[0] = sm0_uid192_pT3_uid154_invPolyEval_cma_a0[0] * sm0_uid192_pT3_uid154_invPolyEval_cma_c0[0];
    assign sm0_uid192_pT3_uid154_invPolyEval_cma_u[0] = sm0_uid192_pT3_uid154_invPolyEval_cma_p[0][35:0];
    assign sm0_uid192_pT3_uid154_invPolyEval_cma_w[0] = sm0_uid192_pT3_uid154_invPolyEval_cma_u[0];
    assign sm0_uid192_pT3_uid154_invPolyEval_cma_x[0] = sm0_uid192_pT3_uid154_invPolyEval_cma_w[0];
    assign sm0_uid192_pT3_uid154_invPolyEval_cma_y[0] = sm0_uid192_pT3_uid154_invPolyEval_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sm0_uid192_pT3_uid154_invPolyEval_cma_a0 <= '{default: '0};
            sm0_uid192_pT3_uid154_invPolyEval_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (sm0_uid192_pT3_uid154_invPolyEval_cma_ena0 == 1'b1)
            begin
                sm0_uid192_pT3_uid154_invPolyEval_cma_a0[0] <= topRangeX_uid180_pT3_uid154_invPolyEval_merged_bit_select_b;
                sm0_uid192_pT3_uid154_invPolyEval_cma_c0[0] <= topRangeY_uid181_pT3_uid154_invPolyEval_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sm0_uid192_pT3_uid154_invPolyEval_cma_s <= '{default: '0};
        end
        else
        begin
            if (sm0_uid192_pT3_uid154_invPolyEval_cma_ena1 == 1'b1)
            begin
                sm0_uid192_pT3_uid154_invPolyEval_cma_s[0] <= sm0_uid192_pT3_uid154_invPolyEval_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sm0_uid192_pT3_uid154_invPolyEval_cma_delay ( .xin(sm0_uid192_pT3_uid154_invPolyEval_cma_s[0]), .xout(sm0_uid192_pT3_uid154_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign sm0_uid192_pT3_uid154_invPolyEval_cma_q = $unsigned(sm0_uid192_pT3_uid154_invPolyEval_cma_qq[35:0]);

    // redist32_sm0_uid192_pT3_uid154_invPolyEval_cma_q_1(DELAY,554)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sm0_uid192_pT3_uid154_invPolyEval_cma_q_1_q <= '0;
        end
        else
        begin
            redist32_sm0_uid192_pT3_uid154_invPolyEval_cma_q_1_q <= $unsigned(sm0_uid192_pT3_uid154_invPolyEval_cma_q);
        end
    end

    // lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval(ADD,196)@69
    assign lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_a = $unsigned({{1{redist32_sm0_uid192_pT3_uid154_invPolyEval_cma_q_1_q[35]}}, redist32_sm0_uid192_pT3_uid154_invPolyEval_cma_q_1_q});
    assign lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_b = $unsigned({{18{highBBits_uid196_pT3_uid154_invPolyEval_b[18]}}, highBBits_uid196_pT3_uid154_invPolyEval_b});
    assign lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_o = $unsigned($signed(lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_a) + $signed(lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_b));
    assign lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_q = lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_o[36:0];

    // lowRangeB_uid195_pT3_uid154_invPolyEval(BITSELECT,194)@69
    assign lowRangeB_uid195_pT3_uid154_invPolyEval_in = redist30_multSumOfTwoTS_uid193_pT3_uid154_invPolyEval_cma_q_1_q[17:0];
    assign lowRangeB_uid195_pT3_uid154_invPolyEval_b = lowRangeB_uid195_pT3_uid154_invPolyEval_in[17:0];

    // lev1_a0_uid198_pT3_uid154_invPolyEval(BITJOIN,197)@69
    assign lev1_a0_uid198_pT3_uid154_invPolyEval_q = {lev1_a0sumAHighB_uid197_pT3_uid154_invPolyEval_q, lowRangeB_uid195_pT3_uid154_invPolyEval_b};

    // os_uid199_pT3_uid154_invPolyEval(BITSELECT,198)@69
    assign os_uid199_pT3_uid154_invPolyEval_in = $unsigned(lev1_a0_uid198_pT3_uid154_invPolyEval_q[52:0]);
    assign os_uid199_pT3_uid154_invPolyEval_b = $unsigned(os_uid199_pT3_uid154_invPolyEval_in[52:21]);

    // highBBits_uid156_invPolyEval(BITSELECT,155)@69
    assign highBBits_uid156_invPolyEval_b = $unsigned(os_uid199_pT3_uid154_invPolyEval_b[31:2]);

    // redist38_highBBits_uid156_invPolyEval_b_1(DELAY,560)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_highBBits_uid156_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist38_highBBits_uid156_invPolyEval_b_1_q <= $unsigned(highBBits_uid156_invPolyEval_b);
        end
    end

    // redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13_inputreg0(DELAY,601)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13_inputreg0_q <= '0;
        end
        else
        begin
            redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13_inputreg0_q <= $unsigned(redist7_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_8_q);
        end
    end

    // redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13(DELAY,530)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13_delay_0 <= '0;
            redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13_delay_1 <= '0;
            redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13_delay_2 <= '0;
            redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13_q <= '0;
        end
        else
        begin
            redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13_delay_0 <= $unsigned(redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13_inputreg0_q);
            redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13_delay_1 <= redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13_delay_0;
            redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13_delay_2 <= redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13_delay_1;
            redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13_q <= redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13_delay_2;
        end
    end

    // memoryC0_uid125_invTabGen_lutmem(DUALMEM,304)@67 + 2
    // in j@20000000
    assign memoryC0_uid125_invTabGen_lutmem_aa = redist8_yAddr_uid41_i_div_if_loop_36_merged_bit_select_b_13_q;
    assign memoryC0_uid125_invTabGen_lutmem_reset0 = ~ (resetn);
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
        .init_file("if_loop_3_i_sfc_logic_s_c1_in_for_body_s0000125_invTabGen_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC0_uid125_invTabGen_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC0_uid125_invTabGen_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC0_uid125_invTabGen_lutmem_aa),
        .q_a(memoryC0_uid125_invTabGen_lutmem_ir),
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
    assign memoryC0_uid125_invTabGen_lutmem_r = memoryC0_uid125_invTabGen_lutmem_ir[37:0];

    // redist37_memoryC0_uid125_invTabGen_lutmem_r_1(DELAY,559)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_memoryC0_uid125_invTabGen_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist37_memoryC0_uid125_invTabGen_lutmem_r_1_q <= $unsigned(memoryC0_uid125_invTabGen_lutmem_r);
        end
    end

    // s3sumAHighB_uid157_invPolyEval(ADD,156)@70
    assign s3sumAHighB_uid157_invPolyEval_a = $unsigned({{1{redist37_memoryC0_uid125_invTabGen_lutmem_r_1_q[37]}}, redist37_memoryC0_uid125_invTabGen_lutmem_r_1_q});
    assign s3sumAHighB_uid157_invPolyEval_b = $unsigned({{9{redist38_highBBits_uid156_invPolyEval_b_1_q[29]}}, redist38_highBBits_uid156_invPolyEval_b_1_q});
    assign s3sumAHighB_uid157_invPolyEval_o = $unsigned($signed(s3sumAHighB_uid157_invPolyEval_a) + $signed(s3sumAHighB_uid157_invPolyEval_b));
    assign s3sumAHighB_uid157_invPolyEval_q = s3sumAHighB_uid157_invPolyEval_o[38:0];

    // lowRangeB_uid155_invPolyEval(BITSELECT,154)@69
    assign lowRangeB_uid155_invPolyEval_in = os_uid199_pT3_uid154_invPolyEval_b[1:0];
    assign lowRangeB_uid155_invPolyEval_b = lowRangeB_uid155_invPolyEval_in[1:0];

    // redist39_lowRangeB_uid155_invPolyEval_b_1(DELAY,561)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_lowRangeB_uid155_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist39_lowRangeB_uid155_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid155_invPolyEval_b);
        end
    end

    // s3_uid158_invPolyEval(BITJOIN,157)@70
    assign s3_uid158_invPolyEval_q = {s3sumAHighB_uid157_invPolyEval_q, redist39_lowRangeB_uid155_invPolyEval_b_1_q};

    // fxpInverseRes_uid44_i_div_if_loop_36(BITSELECT,43)@70
    assign fxpInverseRes_uid44_i_div_if_loop_36_in = s3_uid158_invPolyEval_q[38:0];
    assign fxpInverseRes_uid44_i_div_if_loop_36_b = fxpInverseRes_uid44_i_div_if_loop_36_in[38:6];

    // redist56_fxpInverseRes_uid44_i_div_if_loop_36_b_1(DELAY,578)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_fxpInverseRes_uid44_i_div_if_loop_36_b_1_q <= '0;
        end
        else
        begin
            redist56_fxpInverseRes_uid44_i_div_if_loop_36_b_1_q <= $unsigned(fxpInverseRes_uid44_i_div_if_loop_36_b);
        end
    end

    // paddingY_uid34_i_div_if_loop_36(CONSTANT,33)
    assign paddingY_uid34_i_div_if_loop_36_q = $unsigned(31'b0000000000000000000000000000000);

    // updatedY_uid35_i_div_if_loop_36(BITJOIN,34)@55
    assign updatedY_uid35_i_div_if_loop_36_q = {GND_q, paddingY_uid34_i_div_if_loop_36_q};

    // redist59_normYNoLeadOne_uid33_i_div_if_loop_36_b_1(DELAY,581)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_normYNoLeadOne_uid33_i_div_if_loop_36_b_1_q <= '0;
        end
        else
        begin
            redist59_normYNoLeadOne_uid33_i_div_if_loop_36_b_1_q <= $unsigned(normYNoLeadOne_uid33_i_div_if_loop_36_b);
        end
    end

    // normYIsOneC2_uid34_i_div_if_loop_36(LOGICAL,35)@55 + 1
    assign normYIsOneC2_uid34_i_div_if_loop_36_a = {1'b0, redist59_normYNoLeadOne_uid33_i_div_if_loop_36_b_1_q};
    assign normYIsOneC2_uid34_i_div_if_loop_36_qi = $unsigned(normYIsOneC2_uid34_i_div_if_loop_36_a == updatedY_uid35_i_div_if_loop_36_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    normYIsOneC2_uid34_i_div_if_loop_36_delay ( .xin(normYIsOneC2_uid34_i_div_if_loop_36_qi), .xout(normYIsOneC2_uid34_i_div_if_loop_36_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // normYIsOneC2_uid37_i_div_if_loop_36(BITSELECT,36)@54
    assign normYIsOneC2_uid37_i_div_if_loop_36_b = $unsigned(leftShiftStage2_uid232_normY_uid32_i_div_if_loop_36_q[31:31]);

    // redist58_normYIsOneC2_uid37_i_div_if_loop_36_b_2(DELAY,580)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_normYIsOneC2_uid37_i_div_if_loop_36_b_2_delay_0 <= '0;
            redist58_normYIsOneC2_uid37_i_div_if_loop_36_b_2_q <= '0;
        end
        else
        begin
            redist58_normYIsOneC2_uid37_i_div_if_loop_36_b_2_delay_0 <= $unsigned(normYIsOneC2_uid37_i_div_if_loop_36_b);
            redist58_normYIsOneC2_uid37_i_div_if_loop_36_b_2_q <= redist58_normYIsOneC2_uid37_i_div_if_loop_36_b_2_delay_0;
        end
    end

    // normYIsOne_uid38_i_div_if_loop_36(LOGICAL,37)@56 + 1
    assign normYIsOne_uid38_i_div_if_loop_36_qi = redist58_normYIsOneC2_uid37_i_div_if_loop_36_b_2_q & normYIsOneC2_uid34_i_div_if_loop_36_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    normYIsOne_uid38_i_div_if_loop_36_delay ( .xin(normYIsOne_uid38_i_div_if_loop_36_qi), .xout(normYIsOne_uid38_i_div_if_loop_36_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist57_normYIsOne_uid38_i_div_if_loop_36_q_15(DELAY,579)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist57_normYIsOne_uid38_i_div_if_loop_36_q_15 ( .xin(normYIsOne_uid38_i_div_if_loop_36_q), .xout(redist57_normYIsOne_uid38_i_div_if_loop_36_q_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invResPostOneHandling2_uid46_i_div_if_loop_36(MUX,45)@71
    assign invResPostOneHandling2_uid46_i_div_if_loop_36_s = redist57_normYIsOne_uid38_i_div_if_loop_36_q_15_q;
    always @(invResPostOneHandling2_uid46_i_div_if_loop_36_s or redist56_fxpInverseRes_uid44_i_div_if_loop_36_b_1_q or oneInvRes_uid45_i_div_if_loop_36_q)
    begin
        unique case (invResPostOneHandling2_uid46_i_div_if_loop_36_s)
            1'b0 : invResPostOneHandling2_uid46_i_div_if_loop_36_q = redist56_fxpInverseRes_uid44_i_div_if_loop_36_b_1_q;
            1'b1 : invResPostOneHandling2_uid46_i_div_if_loop_36_q = oneInvRes_uid45_i_div_if_loop_36_q;
            default : invResPostOneHandling2_uid46_i_div_if_loop_36_q = 33'b0;
        endcase
    end

    // prodXInvY_uid54_i_div_if_loop_36_bs2_merged_bit_select(BITSELECT,510)@71
    assign prodXInvY_uid54_i_div_if_loop_36_bs2_merged_bit_select_b = invResPostOneHandling2_uid46_i_div_if_loop_36_q[17:0];
    assign prodXInvY_uid54_i_div_if_loop_36_bs2_merged_bit_select_c = invResPostOneHandling2_uid46_i_div_if_loop_36_q[32:18];

    // zMsbY0_uid51_i_div_if_loop_36(BITJOIN,50)@71
    assign zMsbY0_uid51_i_div_if_loop_36_q = {GND_q, redist64_xMSB_uid25_i_div_if_loop_36_b_24_q};

    // xPSX_uid49_i_div_if_loop_36(LOGICAL,48)@71
    assign xPSX_uid49_i_div_if_loop_36_b = $unsigned({{31{redist64_xMSB_uid25_i_div_if_loop_36_b_24_q[0]}}, redist64_xMSB_uid25_i_div_if_loop_36_b_24_q});
    assign xPSX_uid49_i_div_if_loop_36_q = i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out ^ xPSX_uid49_i_div_if_loop_36_b;

    // xPSXE_uid52_i_div_if_loop_36(ADD,51)@71
    assign xPSXE_uid52_i_div_if_loop_36_a = $unsigned({{1{xPSX_uid49_i_div_if_loop_36_q[31]}}, xPSX_uid49_i_div_if_loop_36_q});
    assign xPSXE_uid52_i_div_if_loop_36_b = $unsigned({{31{zMsbY0_uid51_i_div_if_loop_36_q[1]}}, zMsbY0_uid51_i_div_if_loop_36_q});
    assign xPSXE_uid52_i_div_if_loop_36_o = $unsigned($signed(xPSXE_uid52_i_div_if_loop_36_a) + $signed(xPSXE_uid52_i_div_if_loop_36_b));
    assign xPSXE_uid52_i_div_if_loop_36_q = xPSXE_uid52_i_div_if_loop_36_o[32:0];

    // prodXInvY_uid54_i_div_if_loop_36_bs1_merged_bit_select(BITSELECT,512)@71
    assign prodXInvY_uid54_i_div_if_loop_36_bs1_merged_bit_select_b = $unsigned(xPSXE_uid52_i_div_if_loop_36_q[17:0]);
    assign prodXInvY_uid54_i_div_if_loop_36_bs1_merged_bit_select_c = $unsigned(xPSXE_uid52_i_div_if_loop_36_q[32:18]);

    // prodXInvY_uid54_i_div_if_loop_36_ma3_cma(CHAINMULTADD,332)@71 + 2
    assign prodXInvY_uid54_i_div_if_loop_36_ma3_cma_reset = ~ (resetn);
    assign prodXInvY_uid54_i_div_if_loop_36_ma3_cma_ena0 = 1'b1;
    assign prodXInvY_uid54_i_div_if_loop_36_ma3_cma_ena1 = prodXInvY_uid54_i_div_if_loop_36_ma3_cma_ena0;
    assign prodXInvY_uid54_i_div_if_loop_36_ma3_cma_r[0] = $signed({1'b0, prodXInvY_uid54_i_div_if_loop_36_ma3_cma_c0[0][17:0]});
    assign prodXInvY_uid54_i_div_if_loop_36_ma3_cma_r[1] = $signed({1'b0, prodXInvY_uid54_i_div_if_loop_36_ma3_cma_c0[1][17:0]});
    assign prodXInvY_uid54_i_div_if_loop_36_ma3_cma_p[0] = prodXInvY_uid54_i_div_if_loop_36_ma3_cma_a0[0] * prodXInvY_uid54_i_div_if_loop_36_ma3_cma_r[0];
    assign prodXInvY_uid54_i_div_if_loop_36_ma3_cma_p[1] = prodXInvY_uid54_i_div_if_loop_36_ma3_cma_a0[1] * prodXInvY_uid54_i_div_if_loop_36_ma3_cma_r[1];
    assign prodXInvY_uid54_i_div_if_loop_36_ma3_cma_u[0] = {{1{prodXInvY_uid54_i_div_if_loop_36_ma3_cma_p[0][34]}}, prodXInvY_uid54_i_div_if_loop_36_ma3_cma_p[0][34:0]};
    assign prodXInvY_uid54_i_div_if_loop_36_ma3_cma_u[1] = {{1{prodXInvY_uid54_i_div_if_loop_36_ma3_cma_p[1][34]}}, prodXInvY_uid54_i_div_if_loop_36_ma3_cma_p[1][34:0]};
    assign prodXInvY_uid54_i_div_if_loop_36_ma3_cma_w[0] = prodXInvY_uid54_i_div_if_loop_36_ma3_cma_u[0] + prodXInvY_uid54_i_div_if_loop_36_ma3_cma_u[1];
    assign prodXInvY_uid54_i_div_if_loop_36_ma3_cma_x[0] = prodXInvY_uid54_i_div_if_loop_36_ma3_cma_w[0];
    assign prodXInvY_uid54_i_div_if_loop_36_ma3_cma_y[0] = prodXInvY_uid54_i_div_if_loop_36_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXInvY_uid54_i_div_if_loop_36_ma3_cma_a0 <= '{default: '0};
            prodXInvY_uid54_i_div_if_loop_36_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXInvY_uid54_i_div_if_loop_36_ma3_cma_ena0 == 1'b1)
            begin
                prodXInvY_uid54_i_div_if_loop_36_ma3_cma_a0[0] <= {{1{prodXInvY_uid54_i_div_if_loop_36_bs1_merged_bit_select_c[14]}}, prodXInvY_uid54_i_div_if_loop_36_bs1_merged_bit_select_c[14:0]};
                prodXInvY_uid54_i_div_if_loop_36_ma3_cma_a0[1] <= prodXInvY_uid54_i_div_if_loop_36_bjB6_q;
                prodXInvY_uid54_i_div_if_loop_36_ma3_cma_c0[0] <= prodXInvY_uid54_i_div_if_loop_36_bs2_merged_bit_select_b;
                prodXInvY_uid54_i_div_if_loop_36_ma3_cma_c0[1] <= prodXInvY_uid54_i_div_if_loop_36_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXInvY_uid54_i_div_if_loop_36_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXInvY_uid54_i_div_if_loop_36_ma3_cma_ena1 == 1'b1)
            begin
                prodXInvY_uid54_i_div_if_loop_36_ma3_cma_s[0] <= prodXInvY_uid54_i_div_if_loop_36_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXInvY_uid54_i_div_if_loop_36_ma3_cma_delay ( .xin(prodXInvY_uid54_i_div_if_loop_36_ma3_cma_s[0]), .xout(prodXInvY_uid54_i_div_if_loop_36_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXInvY_uid54_i_div_if_loop_36_ma3_cma_q = $unsigned(prodXInvY_uid54_i_div_if_loop_36_ma3_cma_qq[34:0]);

    // prodXInvY_uid54_i_div_if_loop_36_sums_align_1(BITSHIFT,246)@73
    assign prodXInvY_uid54_i_div_if_loop_36_sums_align_1_qint = { prodXInvY_uid54_i_div_if_loop_36_ma3_cma_q, 18'b000000000000000000 };
    assign prodXInvY_uid54_i_div_if_loop_36_sums_align_1_q = prodXInvY_uid54_i_div_if_loop_36_sums_align_1_qint[52:0];

    // prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,477)@73
    assign prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodXInvY_uid54_i_div_if_loop_36_sums_align_1_q};

    // prodXInvY_uid54_i_div_if_loop_36_im9_cma(CHAINMULTADD,327)@71 + 2
    assign prodXInvY_uid54_i_div_if_loop_36_im9_cma_reset = ~ (resetn);
    assign prodXInvY_uid54_i_div_if_loop_36_im9_cma_ena0 = 1'b1;
    assign prodXInvY_uid54_i_div_if_loop_36_im9_cma_ena1 = prodXInvY_uid54_i_div_if_loop_36_im9_cma_ena0;
    assign prodXInvY_uid54_i_div_if_loop_36_im9_cma_l[0] = $signed({1'b0, prodXInvY_uid54_i_div_if_loop_36_im9_cma_a0[0][14:0]});
    assign prodXInvY_uid54_i_div_if_loop_36_im9_cma_p[0] = prodXInvY_uid54_i_div_if_loop_36_im9_cma_l[0] * prodXInvY_uid54_i_div_if_loop_36_im9_cma_c0[0];
    assign prodXInvY_uid54_i_div_if_loop_36_im9_cma_u[0] = prodXInvY_uid54_i_div_if_loop_36_im9_cma_p[0][30:0];
    assign prodXInvY_uid54_i_div_if_loop_36_im9_cma_w[0] = prodXInvY_uid54_i_div_if_loop_36_im9_cma_u[0];
    assign prodXInvY_uid54_i_div_if_loop_36_im9_cma_x[0] = prodXInvY_uid54_i_div_if_loop_36_im9_cma_w[0];
    assign prodXInvY_uid54_i_div_if_loop_36_im9_cma_y[0] = prodXInvY_uid54_i_div_if_loop_36_im9_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXInvY_uid54_i_div_if_loop_36_im9_cma_a0 <= '{default: '0};
            prodXInvY_uid54_i_div_if_loop_36_im9_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXInvY_uid54_i_div_if_loop_36_im9_cma_ena0 == 1'b1)
            begin
                prodXInvY_uid54_i_div_if_loop_36_im9_cma_a0[0] <= prodXInvY_uid54_i_div_if_loop_36_bs2_merged_bit_select_c;
                prodXInvY_uid54_i_div_if_loop_36_im9_cma_c0[0] <= prodXInvY_uid54_i_div_if_loop_36_bs1_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXInvY_uid54_i_div_if_loop_36_im9_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXInvY_uid54_i_div_if_loop_36_im9_cma_ena1 == 1'b1)
            begin
                prodXInvY_uid54_i_div_if_loop_36_im9_cma_s[0] <= prodXInvY_uid54_i_div_if_loop_36_im9_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(31), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXInvY_uid54_i_div_if_loop_36_im9_cma_delay ( .xin(prodXInvY_uid54_i_div_if_loop_36_im9_cma_s[0]), .xout(prodXInvY_uid54_i_div_if_loop_36_im9_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXInvY_uid54_i_div_if_loop_36_im9_cma_q = $unsigned(prodXInvY_uid54_i_div_if_loop_36_im9_cma_qq[29:0]);

    // prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel0_1(BITSELECT,464)@73
    assign prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b = $unsigned(prodXInvY_uid54_i_div_if_loop_36_im9_cma_q[23:0]);

    // prodXInvY_uid54_i_div_if_loop_36_im0_cma(CHAINMULTADD,326)@71 + 2
    assign prodXInvY_uid54_i_div_if_loop_36_im0_cma_reset = ~ (resetn);
    assign prodXInvY_uid54_i_div_if_loop_36_im0_cma_ena0 = 1'b1;
    assign prodXInvY_uid54_i_div_if_loop_36_im0_cma_ena1 = prodXInvY_uid54_i_div_if_loop_36_im0_cma_ena0;
    assign prodXInvY_uid54_i_div_if_loop_36_im0_cma_p[0] = prodXInvY_uid54_i_div_if_loop_36_im0_cma_a0[0] * prodXInvY_uid54_i_div_if_loop_36_im0_cma_c0[0];
    assign prodXInvY_uid54_i_div_if_loop_36_im0_cma_u[0] = prodXInvY_uid54_i_div_if_loop_36_im0_cma_p[0][35:0];
    assign prodXInvY_uid54_i_div_if_loop_36_im0_cma_w[0] = prodXInvY_uid54_i_div_if_loop_36_im0_cma_u[0];
    assign prodXInvY_uid54_i_div_if_loop_36_im0_cma_x[0] = prodXInvY_uid54_i_div_if_loop_36_im0_cma_w[0];
    assign prodXInvY_uid54_i_div_if_loop_36_im0_cma_y[0] = prodXInvY_uid54_i_div_if_loop_36_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXInvY_uid54_i_div_if_loop_36_im0_cma_a0 <= '{default: '0};
            prodXInvY_uid54_i_div_if_loop_36_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXInvY_uid54_i_div_if_loop_36_im0_cma_ena0 == 1'b1)
            begin
                prodXInvY_uid54_i_div_if_loop_36_im0_cma_a0[0] <= prodXInvY_uid54_i_div_if_loop_36_bs1_merged_bit_select_b;
                prodXInvY_uid54_i_div_if_loop_36_im0_cma_c0[0] <= prodXInvY_uid54_i_div_if_loop_36_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXInvY_uid54_i_div_if_loop_36_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXInvY_uid54_i_div_if_loop_36_im0_cma_ena1 == 1'b1)
            begin
                prodXInvY_uid54_i_div_if_loop_36_im0_cma_s[0] <= prodXInvY_uid54_i_div_if_loop_36_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXInvY_uid54_i_div_if_loop_36_im0_cma_delay ( .xin(prodXInvY_uid54_i_div_if_loop_36_im0_cma_s[0]), .xout(prodXInvY_uid54_i_div_if_loop_36_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXInvY_uid54_i_div_if_loop_36_im0_cma_q = $unsigned(prodXInvY_uid54_i_div_if_loop_36_im0_cma_qq[35:0]);

    // prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,465)@73
    assign prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b, prodXInvY_uid54_i_div_if_loop_36_im0_cma_q};

    // prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2(ADD,367)@73 + 1
    assign prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_a = {1'b0, prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q};
    assign prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_b = {1'b0, prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_o <= 61'b0;
        end
        else
        begin
            prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_o <= $unsigned(prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_a) + $unsigned(prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_c[0] = prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_o[60];
    assign prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_q = prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_o[59:0];

    // redist19_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1(DELAY,541)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1_q <= '0;
        end
        else
        begin
            redist19_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1_q <= $unsigned(prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b);
        end
    end

    // prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,485)@74
    assign prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q = {redist19_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1_q, redist19_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1_q, redist19_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1_q, redist19_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1_q, redist19_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1_q, redist19_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1_q, redist19_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel1_6_b_1_q};

    // prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_1(BITSELECT,467)@73
    assign prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b = $unsigned(prodXInvY_uid54_i_div_if_loop_36_im9_cma_q[29:29]);

    // redist26_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b_1(DELAY,548)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b_1_q <= '0;
        end
        else
        begin
            redist26_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b_1_q <= $unsigned(prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b);
        end
    end

    // prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_0(BITSELECT,466)@73
    assign prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b = $unsigned(prodXInvY_uid54_i_div_if_loop_36_im9_cma_q[29:24]);

    // redist27_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b_1(DELAY,549)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b_1_q <= '0;
        end
        else
        begin
            redist27_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b_1_q <= $unsigned(prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b);
        end
    end

    // prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,468)@74
    assign prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {redist26_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b_1_q, redist27_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b_1_q};

    // prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p2_of_2(ADD,368)@74 + 1
    assign prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_cin = prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_c;
    assign prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_a = $unsigned({ {{1{prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q[6]}}, prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 });
    assign prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_b = $unsigned({ {{1{prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q[6]}}, prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q}, prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_cin[0] });
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_o <= 9'b0;
        end
        else
        begin
            prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_o <= $unsigned($signed(prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_a) + $signed(prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_b));
        end
    end
    assign prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_q = prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_o[7:1];

    // redist28_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_q_1(DELAY,550)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist28_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_q_1_q <= $unsigned(prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_q);
        end
    end

    // prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitJoin_for_q(BITJOIN,369)@75
    assign prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitJoin_for_q_q = {prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_q, redist28_prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_q_1_q};

    // rightShiftInput_uid55_i_div_if_loop_36(BITSELECT,54)@75
    assign rightShiftInput_uid55_i_div_if_loop_36_in = $unsigned(prodXInvY_uid54_i_div_if_loop_36_sums_result_add_0_0_BitJoin_for_q_q[64:0]);
    assign rightShiftInput_uid55_i_div_if_loop_36_b = $unsigned(rightShiftInput_uid55_i_div_if_loop_36_in[64:0]);

    // xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36(BITSELECT,249)@75
    assign xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36_b = $unsigned(rightShiftInput_uid55_i_div_if_loop_36_b[64:64]);

    // seMsb_to64_uid284(BITSELECT,283)@75
    assign seMsb_to64_uid284_in = $unsigned({{63{xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36_b[0]}}, xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36_b});
    assign seMsb_to64_uid284_b = $unsigned(seMsb_to64_uid284_in[63:0]);

    // rightShiftStage3Idx1Rng64_uid285_prodPostRightShift_uid56_i_div_if_loop_36(BITSELECT,284)@75
    assign rightShiftStage3Idx1Rng64_uid285_prodPostRightShift_uid56_i_div_if_loop_36_b = $unsigned(rightShiftStage2_uid283_prodPostRightShift_uid56_i_div_if_loop_36_q[64:64]);

    // rightShiftStage3Idx1_uid286_prodPostRightShift_uid56_i_div_if_loop_36(BITJOIN,285)@75
    assign rightShiftStage3Idx1_uid286_prodPostRightShift_uid56_i_div_if_loop_36_q = {seMsb_to64_uid284_b, rightShiftStage3Idx1Rng64_uid285_prodPostRightShift_uid56_i_div_if_loop_36_b};

    // seMsb_to48_uid279(BITSELECT,278)@75
    assign seMsb_to48_uid279_in = $unsigned({{47{xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36_b[0]}}, xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36_b});
    assign seMsb_to48_uid279_b = $unsigned(seMsb_to48_uid279_in[47:0]);

    // rightShiftStage2Idx3Rng48_uid280_prodPostRightShift_uid56_i_div_if_loop_36(BITSELECT,279)@75
    assign rightShiftStage2Idx3Rng48_uid280_prodPostRightShift_uid56_i_div_if_loop_36_b = $unsigned(rightShiftStage1_uid272_prodPostRightShift_uid56_i_div_if_loop_36_q[64:48]);

    // rightShiftStage2Idx3_uid281_prodPostRightShift_uid56_i_div_if_loop_36(BITJOIN,280)@75
    assign rightShiftStage2Idx3_uid281_prodPostRightShift_uid56_i_div_if_loop_36_q = {seMsb_to48_uid279_b, rightShiftStage2Idx3Rng48_uid280_prodPostRightShift_uid56_i_div_if_loop_36_b};

    // seMsb_to32_uid276(BITSELECT,275)@75
    assign seMsb_to32_uid276_in = $unsigned({{31{xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36_b[0]}}, xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36_b});
    assign seMsb_to32_uid276_b = $unsigned(seMsb_to32_uid276_in[31:0]);

    // rightShiftStage2Idx2Rng32_uid277_prodPostRightShift_uid56_i_div_if_loop_36(BITSELECT,276)@75
    assign rightShiftStage2Idx2Rng32_uid277_prodPostRightShift_uid56_i_div_if_loop_36_b = $unsigned(rightShiftStage1_uid272_prodPostRightShift_uid56_i_div_if_loop_36_q[64:32]);

    // rightShiftStage2Idx2_uid278_prodPostRightShift_uid56_i_div_if_loop_36(BITJOIN,277)@75
    assign rightShiftStage2Idx2_uid278_prodPostRightShift_uid56_i_div_if_loop_36_q = {seMsb_to32_uid276_b, rightShiftStage2Idx2Rng32_uid277_prodPostRightShift_uid56_i_div_if_loop_36_b};

    // seMsb_to16_uid273(BITSELECT,272)@75
    assign seMsb_to16_uid273_in = $unsigned({{15{xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36_b[0]}}, xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36_b});
    assign seMsb_to16_uid273_b = $unsigned(seMsb_to16_uid273_in[15:0]);

    // rightShiftStage2Idx1Rng16_uid274_prodPostRightShift_uid56_i_div_if_loop_36(BITSELECT,273)@75
    assign rightShiftStage2Idx1Rng16_uid274_prodPostRightShift_uid56_i_div_if_loop_36_b = $unsigned(rightShiftStage1_uid272_prodPostRightShift_uid56_i_div_if_loop_36_q[64:16]);

    // rightShiftStage2Idx1_uid275_prodPostRightShift_uid56_i_div_if_loop_36(BITJOIN,274)@75
    assign rightShiftStage2Idx1_uid275_prodPostRightShift_uid56_i_div_if_loop_36_q = {seMsb_to16_uid273_b, rightShiftStage2Idx1Rng16_uid274_prodPostRightShift_uid56_i_div_if_loop_36_b};

    // seMsb_to12_uid268(BITSELECT,267)@75
    assign seMsb_to12_uid268_in = $unsigned({{11{xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36_b[0]}}, xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36_b});
    assign seMsb_to12_uid268_b = $unsigned(seMsb_to12_uid268_in[11:0]);

    // rightShiftStage1Idx3Rng12_uid269_prodPostRightShift_uid56_i_div_if_loop_36(BITSELECT,268)@75
    assign rightShiftStage1Idx3Rng12_uid269_prodPostRightShift_uid56_i_div_if_loop_36_b = $unsigned(rightShiftStage0_uid261_prodPostRightShift_uid56_i_div_if_loop_36_q[64:12]);

    // rightShiftStage1Idx3_uid270_prodPostRightShift_uid56_i_div_if_loop_36(BITJOIN,269)@75
    assign rightShiftStage1Idx3_uid270_prodPostRightShift_uid56_i_div_if_loop_36_q = {seMsb_to12_uid268_b, rightShiftStage1Idx3Rng12_uid269_prodPostRightShift_uid56_i_div_if_loop_36_b};

    // seMsb_to8_uid265(BITSELECT,264)@75
    assign seMsb_to8_uid265_in = $unsigned({{7{xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36_b[0]}}, xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36_b});
    assign seMsb_to8_uid265_b = $unsigned(seMsb_to8_uid265_in[7:0]);

    // rightShiftStage1Idx2Rng8_uid266_prodPostRightShift_uid56_i_div_if_loop_36(BITSELECT,265)@75
    assign rightShiftStage1Idx2Rng8_uid266_prodPostRightShift_uid56_i_div_if_loop_36_b = $unsigned(rightShiftStage0_uid261_prodPostRightShift_uid56_i_div_if_loop_36_q[64:8]);

    // rightShiftStage1Idx2_uid267_prodPostRightShift_uid56_i_div_if_loop_36(BITJOIN,266)@75
    assign rightShiftStage1Idx2_uid267_prodPostRightShift_uid56_i_div_if_loop_36_q = {seMsb_to8_uid265_b, rightShiftStage1Idx2Rng8_uid266_prodPostRightShift_uid56_i_div_if_loop_36_b};

    // seMsb_to4_uid262(BITSELECT,261)@75
    assign seMsb_to4_uid262_in = $unsigned({{3{xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36_b[0]}}, xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36_b});
    assign seMsb_to4_uid262_b = $unsigned(seMsb_to4_uid262_in[3:0]);

    // rightShiftStage1Idx1Rng4_uid263_prodPostRightShift_uid56_i_div_if_loop_36(BITSELECT,262)@75
    assign rightShiftStage1Idx1Rng4_uid263_prodPostRightShift_uid56_i_div_if_loop_36_b = $unsigned(rightShiftStage0_uid261_prodPostRightShift_uid56_i_div_if_loop_36_q[64:4]);

    // rightShiftStage1Idx1_uid264_prodPostRightShift_uid56_i_div_if_loop_36(BITJOIN,263)@75
    assign rightShiftStage1Idx1_uid264_prodPostRightShift_uid56_i_div_if_loop_36_q = {seMsb_to4_uid262_b, rightShiftStage1Idx1Rng4_uid263_prodPostRightShift_uid56_i_div_if_loop_36_b};

    // seMsb_to3_uid257(BITSELECT,256)@75
    assign seMsb_to3_uid257_in = $unsigned({{2{xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36_b[0]}}, xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36_b});
    assign seMsb_to3_uid257_b = $unsigned(seMsb_to3_uid257_in[2:0]);

    // rightShiftStage0Idx3Rng3_uid258_prodPostRightShift_uid56_i_div_if_loop_36(BITSELECT,257)@75
    assign rightShiftStage0Idx3Rng3_uid258_prodPostRightShift_uid56_i_div_if_loop_36_b = $unsigned(rightShiftInput_uid55_i_div_if_loop_36_b[64:3]);

    // rightShiftStage0Idx3_uid259_prodPostRightShift_uid56_i_div_if_loop_36(BITJOIN,258)@75
    assign rightShiftStage0Idx3_uid259_prodPostRightShift_uid56_i_div_if_loop_36_q = {seMsb_to3_uid257_b, rightShiftStage0Idx3Rng3_uid258_prodPostRightShift_uid56_i_div_if_loop_36_b};

    // seMsb_to2_uid254(BITSELECT,253)@75
    assign seMsb_to2_uid254_in = $unsigned({{1{xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36_b[0]}}, xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36_b});
    assign seMsb_to2_uid254_b = $unsigned(seMsb_to2_uid254_in[1:0]);

    // rightShiftStage0Idx2Rng2_uid255_prodPostRightShift_uid56_i_div_if_loop_36(BITSELECT,254)@75
    assign rightShiftStage0Idx2Rng2_uid255_prodPostRightShift_uid56_i_div_if_loop_36_b = $unsigned(rightShiftInput_uid55_i_div_if_loop_36_b[64:2]);

    // rightShiftStage0Idx2_uid256_prodPostRightShift_uid56_i_div_if_loop_36(BITJOIN,255)@75
    assign rightShiftStage0Idx2_uid256_prodPostRightShift_uid56_i_div_if_loop_36_q = {seMsb_to2_uid254_b, rightShiftStage0Idx2Rng2_uid255_prodPostRightShift_uid56_i_div_if_loop_36_b};

    // rightShiftStage0Idx1Rng1_uid252_prodPostRightShift_uid56_i_div_if_loop_36(BITSELECT,251)@75
    assign rightShiftStage0Idx1Rng1_uid252_prodPostRightShift_uid56_i_div_if_loop_36_b = $unsigned(rightShiftInput_uid55_i_div_if_loop_36_b[64:1]);

    // rightShiftStage0Idx1_uid253_prodPostRightShift_uid56_i_div_if_loop_36(BITJOIN,252)@75
    assign rightShiftStage0Idx1_uid253_prodPostRightShift_uid56_i_div_if_loop_36_q = {xMSB_uid250_prodPostRightShift_uid56_i_div_if_loop_36_b, rightShiftStage0Idx1Rng1_uid252_prodPostRightShift_uid56_i_div_if_loop_36_b};

    // rightShiftStage0_uid261_prodPostRightShift_uid56_i_div_if_loop_36(MUX,260)@75
    assign rightShiftStage0_uid261_prodPostRightShift_uid56_i_div_if_loop_36_s = rightShiftStageSel0Dto0_uid260_prodPostRightShift_uid56_i_div_if_loop_36_merged_bit_select_b;
    always @(rightShiftStage0_uid261_prodPostRightShift_uid56_i_div_if_loop_36_s or rightShiftInput_uid55_i_div_if_loop_36_b or rightShiftStage0Idx1_uid253_prodPostRightShift_uid56_i_div_if_loop_36_q or rightShiftStage0Idx2_uid256_prodPostRightShift_uid56_i_div_if_loop_36_q or rightShiftStage0Idx3_uid259_prodPostRightShift_uid56_i_div_if_loop_36_q)
    begin
        unique case (rightShiftStage0_uid261_prodPostRightShift_uid56_i_div_if_loop_36_s)
            2'b00 : rightShiftStage0_uid261_prodPostRightShift_uid56_i_div_if_loop_36_q = rightShiftInput_uid55_i_div_if_loop_36_b;
            2'b01 : rightShiftStage0_uid261_prodPostRightShift_uid56_i_div_if_loop_36_q = rightShiftStage0Idx1_uid253_prodPostRightShift_uid56_i_div_if_loop_36_q;
            2'b10 : rightShiftStage0_uid261_prodPostRightShift_uid56_i_div_if_loop_36_q = rightShiftStage0Idx2_uid256_prodPostRightShift_uid56_i_div_if_loop_36_q;
            2'b11 : rightShiftStage0_uid261_prodPostRightShift_uid56_i_div_if_loop_36_q = rightShiftStage0Idx3_uid259_prodPostRightShift_uid56_i_div_if_loop_36_q;
            default : rightShiftStage0_uid261_prodPostRightShift_uid56_i_div_if_loop_36_q = 65'b0;
        endcase
    end

    // rightShiftStage1_uid272_prodPostRightShift_uid56_i_div_if_loop_36(MUX,271)@75
    assign rightShiftStage1_uid272_prodPostRightShift_uid56_i_div_if_loop_36_s = rightShiftStageSel0Dto0_uid260_prodPostRightShift_uid56_i_div_if_loop_36_merged_bit_select_c;
    always @(rightShiftStage1_uid272_prodPostRightShift_uid56_i_div_if_loop_36_s or rightShiftStage0_uid261_prodPostRightShift_uid56_i_div_if_loop_36_q or rightShiftStage1Idx1_uid264_prodPostRightShift_uid56_i_div_if_loop_36_q or rightShiftStage1Idx2_uid267_prodPostRightShift_uid56_i_div_if_loop_36_q or rightShiftStage1Idx3_uid270_prodPostRightShift_uid56_i_div_if_loop_36_q)
    begin
        unique case (rightShiftStage1_uid272_prodPostRightShift_uid56_i_div_if_loop_36_s)
            2'b00 : rightShiftStage1_uid272_prodPostRightShift_uid56_i_div_if_loop_36_q = rightShiftStage0_uid261_prodPostRightShift_uid56_i_div_if_loop_36_q;
            2'b01 : rightShiftStage1_uid272_prodPostRightShift_uid56_i_div_if_loop_36_q = rightShiftStage1Idx1_uid264_prodPostRightShift_uid56_i_div_if_loop_36_q;
            2'b10 : rightShiftStage1_uid272_prodPostRightShift_uid56_i_div_if_loop_36_q = rightShiftStage1Idx2_uid267_prodPostRightShift_uid56_i_div_if_loop_36_q;
            2'b11 : rightShiftStage1_uid272_prodPostRightShift_uid56_i_div_if_loop_36_q = rightShiftStage1Idx3_uid270_prodPostRightShift_uid56_i_div_if_loop_36_q;
            default : rightShiftStage1_uid272_prodPostRightShift_uid56_i_div_if_loop_36_q = 65'b0;
        endcase
    end

    // rightShiftStage2_uid283_prodPostRightShift_uid56_i_div_if_loop_36(MUX,282)@75
    assign rightShiftStage2_uid283_prodPostRightShift_uid56_i_div_if_loop_36_s = rightShiftStageSel0Dto0_uid260_prodPostRightShift_uid56_i_div_if_loop_36_merged_bit_select_d;
    always @(rightShiftStage2_uid283_prodPostRightShift_uid56_i_div_if_loop_36_s or rightShiftStage1_uid272_prodPostRightShift_uid56_i_div_if_loop_36_q or rightShiftStage2Idx1_uid275_prodPostRightShift_uid56_i_div_if_loop_36_q or rightShiftStage2Idx2_uid278_prodPostRightShift_uid56_i_div_if_loop_36_q or rightShiftStage2Idx3_uid281_prodPostRightShift_uid56_i_div_if_loop_36_q)
    begin
        unique case (rightShiftStage2_uid283_prodPostRightShift_uid56_i_div_if_loop_36_s)
            2'b00 : rightShiftStage2_uid283_prodPostRightShift_uid56_i_div_if_loop_36_q = rightShiftStage1_uid272_prodPostRightShift_uid56_i_div_if_loop_36_q;
            2'b01 : rightShiftStage2_uid283_prodPostRightShift_uid56_i_div_if_loop_36_q = rightShiftStage2Idx1_uid275_prodPostRightShift_uid56_i_div_if_loop_36_q;
            2'b10 : rightShiftStage2_uid283_prodPostRightShift_uid56_i_div_if_loop_36_q = rightShiftStage2Idx2_uid278_prodPostRightShift_uid56_i_div_if_loop_36_q;
            2'b11 : rightShiftStage2_uid283_prodPostRightShift_uid56_i_div_if_loop_36_q = rightShiftStage2Idx3_uid281_prodPostRightShift_uid56_i_div_if_loop_36_q;
            default : rightShiftStage2_uid283_prodPostRightShift_uid56_i_div_if_loop_36_q = 65'b0;
        endcase
    end

    // redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_notEnable(LOGICAL,622)
    assign redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_notEnable_q = $unsigned(~ (VCC_q));

    // redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_nor(LOGICAL,623)
    assign redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_nor_q = ~ (redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_notEnable_q | redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_sticky_ena_q);

    // redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_last(CONSTANT,619)
    assign redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_last_q = $unsigned(6'b010000);

    // redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_cmp(LOGICAL,620)
    assign redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_cmp_b = {1'b0, redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_rdcnt_q};
    assign redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_cmp_q = $unsigned(redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_last_q == redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_cmp_b ? 1'b1 : 1'b0);

    // redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_cmpReg(REG,621)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_cmpReg_q <= $unsigned(redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_cmp_q);
        end
    end

    // redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_sticky_ena(REG,624)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_nor_q == 1'b1)
        begin
            redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_sticky_ena_q <= $unsigned(redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_cmpReg_q);
        end
    end

    // redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_enaAnd(LOGICAL,625)
    assign redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_enaAnd_q = redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_sticky_ena_q & VCC_q;

    // redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_rdcnt(COUNTER,617)
    // low=0, high=17, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_rdcnt_i <= 5'd0;
            redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_rdcnt_i == 5'd16)
            begin
                redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_rdcnt_eq <= 1'b0;
            end
            if (redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_rdcnt_eq == 1'b1)
            begin
                redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_rdcnt_i <= $unsigned(redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_rdcnt_i) + $unsigned(5'd15);
            end
            else
            begin
                redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_rdcnt_i <= $unsigned(redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_rdcnt_q = redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_rdcnt_i[4:0];

    // redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_inputreg0(DELAY,614)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_inputreg0_q <= '0;
        end
        else
        begin
            redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_inputreg0_q <= $unsigned(r_uid123_zCount_uid31_i_div_if_loop_36_q);
        end
    end

    // redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_wraddr(REG,618)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_wraddr_q <= $unsigned(5'b10001);
        end
        else
        begin
            redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_wraddr_q <= $unsigned(redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_rdcnt_q);
        end
    end

    // redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem(DUALMEM,616)
    assign redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_ia = $unsigned(redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_inputreg0_q);
    assign redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_aa = redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_wraddr_q;
    assign redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_ab = redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_rdcnt_q;
    assign redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(6),
        .widthad_a(5),
        .numwords_a(18),
        .width_b(6),
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
        .intended_device_family("Cyclone V")
    ) redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_dmem (
        .clocken1(redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_reset0),
        .clock1(clock),
        .address_a(redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_aa),
        .data_a(redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_ab),
        .q_b(redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_iq),
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
    assign redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_q = redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_iq[5:0];

    // redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_outputreg0(DELAY,615)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_outputreg0_q <= '0;
        end
        else
        begin
            redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_outputreg0_q <= $unsigned(redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_mem_q);
        end
    end

    // cWOut_uid47_i_div_if_loop_36(CONSTANT,46)
    assign cWOut_uid47_i_div_if_loop_36_q = $unsigned(6'b100000);

    // rShiftCount_uid48_i_div_if_loop_36(SUB,47)@74 + 1
    assign rShiftCount_uid48_i_div_if_loop_36_a = {1'b0, cWOut_uid47_i_div_if_loop_36_q};
    assign rShiftCount_uid48_i_div_if_loop_36_b = {1'b0, redist44_r_uid123_zCount_uid31_i_div_if_loop_36_q_21_outputreg0_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rShiftCount_uid48_i_div_if_loop_36_o <= 7'b0;
        end
        else
        begin
            rShiftCount_uid48_i_div_if_loop_36_o <= $unsigned(rShiftCount_uid48_i_div_if_loop_36_a) - $unsigned(rShiftCount_uid48_i_div_if_loop_36_b);
        end
    end
    assign rShiftCount_uid48_i_div_if_loop_36_q = rShiftCount_uid48_i_div_if_loop_36_o[6:0];

    // rightShiftStageSel0Dto0_uid260_prodPostRightShift_uid56_i_div_if_loop_36_merged_bit_select(BITSELECT,511)@75
    assign rightShiftStageSel0Dto0_uid260_prodPostRightShift_uid56_i_div_if_loop_36_merged_bit_select_b = rShiftCount_uid48_i_div_if_loop_36_q[1:0];
    assign rightShiftStageSel0Dto0_uid260_prodPostRightShift_uid56_i_div_if_loop_36_merged_bit_select_c = rShiftCount_uid48_i_div_if_loop_36_q[3:2];
    assign rightShiftStageSel0Dto0_uid260_prodPostRightShift_uid56_i_div_if_loop_36_merged_bit_select_d = rShiftCount_uid48_i_div_if_loop_36_q[5:4];
    assign rightShiftStageSel0Dto0_uid260_prodPostRightShift_uid56_i_div_if_loop_36_merged_bit_select_e = rShiftCount_uid48_i_div_if_loop_36_q[6:6];

    // rightShiftStage3_uid288_prodPostRightShift_uid56_i_div_if_loop_36(MUX,287)@75
    assign rightShiftStage3_uid288_prodPostRightShift_uid56_i_div_if_loop_36_s = rightShiftStageSel0Dto0_uid260_prodPostRightShift_uid56_i_div_if_loop_36_merged_bit_select_e;
    always @(rightShiftStage3_uid288_prodPostRightShift_uid56_i_div_if_loop_36_s or rightShiftStage2_uid283_prodPostRightShift_uid56_i_div_if_loop_36_q or rightShiftStage3Idx1_uid286_prodPostRightShift_uid56_i_div_if_loop_36_q)
    begin
        unique case (rightShiftStage3_uid288_prodPostRightShift_uid56_i_div_if_loop_36_s)
            1'b0 : rightShiftStage3_uid288_prodPostRightShift_uid56_i_div_if_loop_36_q = rightShiftStage2_uid283_prodPostRightShift_uid56_i_div_if_loop_36_q;
            1'b1 : rightShiftStage3_uid288_prodPostRightShift_uid56_i_div_if_loop_36_q = rightShiftStage3Idx1_uid286_prodPostRightShift_uid56_i_div_if_loop_36_q;
            default : rightShiftStage3_uid288_prodPostRightShift_uid56_i_div_if_loop_36_q = 65'b0;
        endcase
    end

    // prodPostRightShiftPost_uid57_i_div_if_loop_36(BITSELECT,56)@75
    assign prodPostRightShiftPost_uid57_i_div_if_loop_36_in = rightShiftStage3_uid288_prodPostRightShift_uid56_i_div_if_loop_36_q[62:0];
    assign prodPostRightShiftPost_uid57_i_div_if_loop_36_b = prodPostRightShiftPost_uid57_i_div_if_loop_36_in[62:30];

    // prodPostRightShiftPostRnd_uid59_i_div_if_loop_36(ADD,58)@75
    assign prodPostRightShiftPostRnd_uid59_i_div_if_loop_36_a = {1'b0, prodPostRightShiftPost_uid57_i_div_if_loop_36_b};
    assign prodPostRightShiftPostRnd_uid59_i_div_if_loop_36_b = {33'b000000000000000000000000000000000, VCC_q};
    assign prodPostRightShiftPostRnd_uid59_i_div_if_loop_36_o = $unsigned(prodPostRightShiftPostRnd_uid59_i_div_if_loop_36_a) + $unsigned(prodPostRightShiftPostRnd_uid59_i_div_if_loop_36_b);
    assign prodPostRightShiftPostRnd_uid59_i_div_if_loop_36_q = prodPostRightShiftPostRnd_uid59_i_div_if_loop_36_o[33:0];

    // prodPostRightShiftPostRndRange_uid60_i_div_if_loop_36(BITSELECT,59)@75
    assign prodPostRightShiftPostRndRange_uid60_i_div_if_loop_36_in = prodPostRightShiftPostRnd_uid59_i_div_if_loop_36_q[32:0];
    assign prodPostRightShiftPostRndRange_uid60_i_div_if_loop_36_b = prodPostRightShiftPostRndRange_uid60_i_div_if_loop_36_in[32:1];

    // redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_notEnable(LOGICAL,638)
    assign redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_notEnable_q = $unsigned(~ (VCC_q));

    // redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_nor(LOGICAL,639)
    assign redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_nor_q = ~ (redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_notEnable_q | redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_sticky_ena_q);

    // redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_last(CONSTANT,635)
    assign redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_last_q = $unsigned(6'b011000);

    // redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_cmp(LOGICAL,636)
    assign redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_cmp_b = {1'b0, redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_rdcnt_q};
    assign redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_cmp_q = $unsigned(redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_last_q == redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_cmp_b ? 1'b1 : 1'b0);

    // redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_cmpReg(REG,637)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_cmpReg_q <= $unsigned(redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_cmp_q);
        end
    end

    // redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_sticky_ena(REG,640)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_nor_q == 1'b1)
        begin
            redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_sticky_ena_q <= $unsigned(redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_cmpReg_q);
        end
    end

    // redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_enaAnd(LOGICAL,641)
    assign redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_enaAnd_q = redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_sticky_ena_q & VCC_q;

    // redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_rdcnt(COUNTER,633)
    // low=0, high=25, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_rdcnt_i <= 5'd0;
            redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_rdcnt_i == 5'd24)
            begin
                redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_rdcnt_eq <= 1'b0;
            end
            if (redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_rdcnt_eq == 1'b1)
            begin
                redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_rdcnt_i <= $unsigned(redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_rdcnt_i) + $unsigned(5'd7);
            end
            else
            begin
                redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_rdcnt_i <= $unsigned(redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_rdcnt_q = redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_rdcnt_i[4:0];

    // redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_wraddr(REG,634)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_wraddr_q <= $unsigned(5'b11001);
        end
        else
        begin
            redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_wraddr_q <= $unsigned(redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_rdcnt_q);
        end
    end

    // redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem(DUALMEM,632)
    assign redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_ia = $unsigned(redist76_bgTrunc_i_sub_if_loop_32_sel_x_b_1_q);
    assign redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_aa = redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_wraddr_q;
    assign redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_ab = redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_rdcnt_q;
    assign redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(26),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(26),
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
    ) redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_dmem (
        .clocken1(redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_reset0),
        .clock1(clock),
        .address_a(redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_aa),
        .data_a(redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_ab),
        .q_b(redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_iq),
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
    assign redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_q = redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_iq[31:0];

    // redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_outputreg0(DELAY,631)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_outputreg0_q <= '0;
        end
        else
        begin
            redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_outputreg0_q <= $unsigned(redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_mem_q);
        end
    end

    // yIsZero_uid39_i_div_if_loop_36(LOGICAL,38)@75
    assign yIsZero_uid39_i_div_if_loop_36_b = {31'b0000000000000000000000000000000, GND_q};
    assign yIsZero_uid39_i_div_if_loop_36_q = $unsigned(redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_outputreg0_q == yIsZero_uid39_i_div_if_loop_36_b ? 1'b1 : 1'b0);

    // resFinal_uid65_i_div_if_loop_36(MUX,64)@75
    assign resFinal_uid65_i_div_if_loop_36_s = yIsZero_uid39_i_div_if_loop_36_q;
    always @(resFinal_uid65_i_div_if_loop_36_s or prodPostRightShiftPostRndRange_uid60_i_div_if_loop_36_b or cstOvf_uid64_i_div_if_loop_36_q)
    begin
        unique case (resFinal_uid65_i_div_if_loop_36_s)
            1'b0 : resFinal_uid65_i_div_if_loop_36_q = prodPostRightShiftPostRndRange_uid60_i_div_if_loop_36_b;
            1'b1 : resFinal_uid65_i_div_if_loop_36_q = cstOvf_uid64_i_div_if_loop_36_q;
            default : resFinal_uid65_i_div_if_loop_36_q = 32'b0;
        endcase
    end

    // redist51_resFinal_uid65_i_div_if_loop_36_q_3_inputreg0(DELAY,626)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_resFinal_uid65_i_div_if_loop_36_q_3_inputreg0_q <= '0;
        end
        else
        begin
            redist51_resFinal_uid65_i_div_if_loop_36_q_3_inputreg0_q <= $unsigned(resFinal_uid65_i_div_if_loop_36_q);
        end
    end

    // redist51_resFinal_uid65_i_div_if_loop_36_q_3(DELAY,573)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_resFinal_uid65_i_div_if_loop_36_q_3_delay_0 <= '0;
            redist51_resFinal_uid65_i_div_if_loop_36_q_3_q <= '0;
        end
        else
        begin
            redist51_resFinal_uid65_i_div_if_loop_36_q_3_delay_0 <= $unsigned(redist51_resFinal_uid65_i_div_if_loop_36_q_3_inputreg0_q);
            redist51_resFinal_uid65_i_div_if_loop_36_q_3_q <= redist51_resFinal_uid65_i_div_if_loop_36_q_3_delay_0;
        end
    end

    // redist52_resFinal_uid65_i_div_if_loop_36_q_4(DELAY,574)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_resFinal_uid65_i_div_if_loop_36_q_4_q <= '0;
        end
        else
        begin
            redist52_resFinal_uid65_i_div_if_loop_36_q_4_q <= $unsigned(redist51_resFinal_uid65_i_div_if_loop_36_q_3_q);
        end
    end

    // resFinalMP1_uid82_i_div_if_loop_36(SUB,81)@79
    assign resFinalMP1_uid82_i_div_if_loop_36_a = $unsigned({{1{redist52_resFinal_uid65_i_div_if_loop_36_q_4_q[31]}}, redist52_resFinal_uid65_i_div_if_loop_36_q_4_q});
    assign resFinalMP1_uid82_i_div_if_loop_36_b = $unsigned({{31{cstSubFinal_uid81_i_div_if_loop_36_q[1]}}, cstSubFinal_uid81_i_div_if_loop_36_q});
    assign resFinalMP1_uid82_i_div_if_loop_36_o = $unsigned($signed(resFinalMP1_uid82_i_div_if_loop_36_a) - $signed(resFinalMP1_uid82_i_div_if_loop_36_b));
    assign resFinalMP1_uid82_i_div_if_loop_36_q = resFinalMP1_uid82_i_div_if_loop_36_o[32:0];

    // resFinalPostMux_uid83_i_div_if_loop_36(BITSELECT,82)@79
    assign resFinalPostMux_uid83_i_div_if_loop_36_in = $unsigned(resFinalMP1_uid82_i_div_if_loop_36_q[31:0]);
    assign resFinalPostMux_uid83_i_div_if_loop_36_b = $unsigned(resFinalPostMux_uid83_i_div_if_loop_36_in[31:0]);

    // redist49_resFinalPostMux_uid83_i_div_if_loop_36_b_1(DELAY,571)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_resFinalPostMux_uid83_i_div_if_loop_36_b_1_q <= '0;
        end
        else
        begin
            redist49_resFinalPostMux_uid83_i_div_if_loop_36_b_1_q <= $unsigned(resFinalPostMux_uid83_i_div_if_loop_36_b);
        end
    end

    // redist53_resFinal_uid65_i_div_if_loop_36_q_5(DELAY,575)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_resFinal_uid65_i_div_if_loop_36_q_5_q <= '0;
        end
        else
        begin
            redist53_resFinal_uid65_i_div_if_loop_36_q_5_q <= $unsigned(redist52_resFinal_uid65_i_div_if_loop_36_q_4_q);
        end
    end

    // signResFinal_uid74_i_div_if_loop_36(BITSELECT,73)@78
    assign signResFinal_uid74_i_div_if_loop_36_b = $unsigned(redist51_resFinal_uid65_i_div_if_loop_36_q_3_q[31:31]);

    // OverflowCond_uid75_i_div_if_loop_36(LOGICAL,74)@78 + 1
    assign OverflowCond_uid75_i_div_if_loop_36_qi = redist54_signX_uid63_i_div_if_loop_36_b_3_q & redist65_xMSB_uid25_i_div_if_loop_36_b_31_q & signResFinal_uid74_i_div_if_loop_36_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    OverflowCond_uid75_i_div_if_loop_36_delay ( .xin(OverflowCond_uid75_i_div_if_loop_36_qi), .xout(OverflowCond_uid75_i_div_if_loop_36_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist50_OverflowCond_uid75_i_div_if_loop_36_q_2(DELAY,572)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_OverflowCond_uid75_i_div_if_loop_36_q_2_q <= '0;
        end
        else
        begin
            redist50_OverflowCond_uid75_i_div_if_loop_36_q_2_q <= $unsigned(OverflowCond_uid75_i_div_if_loop_36_q);
        end
    end

    // redist55_signX_uid63_i_div_if_loop_36_b_5(DELAY,577)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_signX_uid63_i_div_if_loop_36_b_5_delay_0 <= '0;
            redist55_signX_uid63_i_div_if_loop_36_b_5_q <= '0;
        end
        else
        begin
            redist55_signX_uid63_i_div_if_loop_36_b_5_delay_0 <= $unsigned(redist54_signX_uid63_i_div_if_loop_36_b_3_q);
            redist55_signX_uid63_i_div_if_loop_36_b_5_q <= redist55_signX_uid63_i_div_if_loop_36_b_5_delay_0;
        end
    end

    // prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1(BITSELECT,382)@78
    assign prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b = $unsigned(redist67_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_7_q[31:31]);

    // redist67_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_7_inputreg0(DELAY,630)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_7_inputreg0_q <= '0;
        end
        else
        begin
            redist67_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_7_inputreg0_q <= $unsigned(redist66_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_4_outputreg0_q);
        end
    end

    // redist67_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_7(DELAY,589)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_7_delay_0 <= '0;
            redist67_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_7_q <= '0;
        end
        else
        begin
            redist67_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_7_delay_0 <= $unsigned(redist67_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_7_inputreg0_q);
            redist67_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_7_q <= redist67_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_7_delay_0;
        end
    end

    // prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_BitJoin_for_b(BITJOIN,410)@78
    assign prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_BitJoin_for_b_q = {prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel0_1_b, redist67_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_7_q};

    // prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1(BITSELECT,493)@77
    assign prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b = $unsigned(prodResY_uid66_i_div_if_loop_36_sums_align_1_q[50:50]);

    // prodResY_uid66_i_div_if_loop_36_bs1(BITSELECT,290)@75
    assign prodResY_uid66_i_div_if_loop_36_bs1_in = $unsigned(resFinal_uid65_i_div_if_loop_36_q[17:0]);
    assign prodResY_uid66_i_div_if_loop_36_bs1_b = $unsigned(prodResY_uid66_i_div_if_loop_36_bs1_in[17:0]);

    // prodResY_uid66_i_div_if_loop_36_bs5(BITSELECT,294)@75
    assign prodResY_uid66_i_div_if_loop_36_bs5_b = $unsigned(redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_outputreg0_q[31:18]);

    // prodResY_uid66_i_div_if_loop_36_bs2(BITSELECT,291)@75
    assign prodResY_uid66_i_div_if_loop_36_bs2_in = $unsigned(redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_outputreg0_q[17:0]);
    assign prodResY_uid66_i_div_if_loop_36_bs2_b = $unsigned(prodResY_uid66_i_div_if_loop_36_bs2_in[17:0]);

    // prodResY_uid66_i_div_if_loop_36_bs6(BITSELECT,295)@75
    assign prodResY_uid66_i_div_if_loop_36_bs6_b = $unsigned(resFinal_uid65_i_div_if_loop_36_q[31:18]);

    // prodResY_uid66_i_div_if_loop_36_ma3_cma(CHAINMULTADD,333)@75 + 2
    assign prodResY_uid66_i_div_if_loop_36_ma3_cma_reset = ~ (resetn);
    assign prodResY_uid66_i_div_if_loop_36_ma3_cma_ena0 = 1'b1;
    assign prodResY_uid66_i_div_if_loop_36_ma3_cma_ena1 = prodResY_uid66_i_div_if_loop_36_ma3_cma_ena0;
    assign prodResY_uid66_i_div_if_loop_36_ma3_cma_r[0] = $signed({1'b0, prodResY_uid66_i_div_if_loop_36_ma3_cma_c0[0][17:0]});
    assign prodResY_uid66_i_div_if_loop_36_ma3_cma_r[1] = $signed({1'b0, prodResY_uid66_i_div_if_loop_36_ma3_cma_c0[1][17:0]});
    assign prodResY_uid66_i_div_if_loop_36_ma3_cma_p[0] = prodResY_uid66_i_div_if_loop_36_ma3_cma_a0[0] * prodResY_uid66_i_div_if_loop_36_ma3_cma_r[0];
    assign prodResY_uid66_i_div_if_loop_36_ma3_cma_p[1] = prodResY_uid66_i_div_if_loop_36_ma3_cma_a0[1] * prodResY_uid66_i_div_if_loop_36_ma3_cma_r[1];
    assign prodResY_uid66_i_div_if_loop_36_ma3_cma_u[0] = {{1{prodResY_uid66_i_div_if_loop_36_ma3_cma_p[0][32]}}, prodResY_uid66_i_div_if_loop_36_ma3_cma_p[0][32:0]};
    assign prodResY_uid66_i_div_if_loop_36_ma3_cma_u[1] = {{1{prodResY_uid66_i_div_if_loop_36_ma3_cma_p[1][32]}}, prodResY_uid66_i_div_if_loop_36_ma3_cma_p[1][32:0]};
    assign prodResY_uid66_i_div_if_loop_36_ma3_cma_w[0] = prodResY_uid66_i_div_if_loop_36_ma3_cma_u[0] + prodResY_uid66_i_div_if_loop_36_ma3_cma_u[1];
    assign prodResY_uid66_i_div_if_loop_36_ma3_cma_x[0] = prodResY_uid66_i_div_if_loop_36_ma3_cma_w[0];
    assign prodResY_uid66_i_div_if_loop_36_ma3_cma_y[0] = prodResY_uid66_i_div_if_loop_36_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodResY_uid66_i_div_if_loop_36_ma3_cma_a0 <= '{default: '0};
            prodResY_uid66_i_div_if_loop_36_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodResY_uid66_i_div_if_loop_36_ma3_cma_ena0 == 1'b1)
            begin
                prodResY_uid66_i_div_if_loop_36_ma3_cma_a0[0] <= prodResY_uid66_i_div_if_loop_36_bs6_b;
                prodResY_uid66_i_div_if_loop_36_ma3_cma_a0[1] <= prodResY_uid66_i_div_if_loop_36_bs5_b;
                prodResY_uid66_i_div_if_loop_36_ma3_cma_c0[0] <= prodResY_uid66_i_div_if_loop_36_bs2_b;
                prodResY_uid66_i_div_if_loop_36_ma3_cma_c0[1] <= prodResY_uid66_i_div_if_loop_36_bs1_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodResY_uid66_i_div_if_loop_36_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodResY_uid66_i_div_if_loop_36_ma3_cma_ena1 == 1'b1)
            begin
                prodResY_uid66_i_div_if_loop_36_ma3_cma_s[0] <= prodResY_uid66_i_div_if_loop_36_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(34), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodResY_uid66_i_div_if_loop_36_ma3_cma_delay ( .xin(prodResY_uid66_i_div_if_loop_36_ma3_cma_s[0]), .xout(prodResY_uid66_i_div_if_loop_36_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodResY_uid66_i_div_if_loop_36_ma3_cma_q = $unsigned(prodResY_uid66_i_div_if_loop_36_ma3_cma_qq[32:0]);

    // prodResY_uid66_i_div_if_loop_36_sums_align_1(BITSHIFT,301)@77
    assign prodResY_uid66_i_div_if_loop_36_sums_align_1_qint = { prodResY_uid66_i_div_if_loop_36_ma3_cma_q, 18'b000000000000000000 };
    assign prodResY_uid66_i_div_if_loop_36_sums_align_1_q = prodResY_uid66_i_div_if_loop_36_sums_align_1_qint[50:0];

    // prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,502)@77
    assign prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b, prodResY_uid66_i_div_if_loop_36_sums_align_1_q};

    // prodResY_uid66_i_div_if_loop_36_im8_cma(CHAINMULTADD,329)@75 + 2
    assign prodResY_uid66_i_div_if_loop_36_im8_cma_reset = ~ (resetn);
    assign prodResY_uid66_i_div_if_loop_36_im8_cma_ena0 = 1'b1;
    assign prodResY_uid66_i_div_if_loop_36_im8_cma_ena1 = prodResY_uid66_i_div_if_loop_36_im8_cma_ena0;
    assign prodResY_uid66_i_div_if_loop_36_im8_cma_p[0] = prodResY_uid66_i_div_if_loop_36_im8_cma_a0[0] * prodResY_uid66_i_div_if_loop_36_im8_cma_c0[0];
    assign prodResY_uid66_i_div_if_loop_36_im8_cma_u[0] = prodResY_uid66_i_div_if_loop_36_im8_cma_p[0][27:0];
    assign prodResY_uid66_i_div_if_loop_36_im8_cma_w[0] = prodResY_uid66_i_div_if_loop_36_im8_cma_u[0];
    assign prodResY_uid66_i_div_if_loop_36_im8_cma_x[0] = prodResY_uid66_i_div_if_loop_36_im8_cma_w[0];
    assign prodResY_uid66_i_div_if_loop_36_im8_cma_y[0] = prodResY_uid66_i_div_if_loop_36_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodResY_uid66_i_div_if_loop_36_im8_cma_a0 <= '{default: '0};
            prodResY_uid66_i_div_if_loop_36_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodResY_uid66_i_div_if_loop_36_im8_cma_ena0 == 1'b1)
            begin
                prodResY_uid66_i_div_if_loop_36_im8_cma_a0[0] <= prodResY_uid66_i_div_if_loop_36_bs6_b;
                prodResY_uid66_i_div_if_loop_36_im8_cma_c0[0] <= prodResY_uid66_i_div_if_loop_36_bs5_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodResY_uid66_i_div_if_loop_36_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodResY_uid66_i_div_if_loop_36_im8_cma_ena1 == 1'b1)
            begin
                prodResY_uid66_i_div_if_loop_36_im8_cma_s[0] <= prodResY_uid66_i_div_if_loop_36_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodResY_uid66_i_div_if_loop_36_im8_cma_delay ( .xin(prodResY_uid66_i_div_if_loop_36_im8_cma_s[0]), .xout(prodResY_uid66_i_div_if_loop_36_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodResY_uid66_i_div_if_loop_36_im8_cma_q = $unsigned(prodResY_uid66_i_div_if_loop_36_im8_cma_qq[27:0]);

    // prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel0_1(BITSELECT,487)@77
    assign prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b = $unsigned(prodResY_uid66_i_div_if_loop_36_im8_cma_q[23:0]);

    // prodResY_uid66_i_div_if_loop_36_im0_cma(CHAINMULTADD,328)@75 + 2
    assign prodResY_uid66_i_div_if_loop_36_im0_cma_reset = ~ (resetn);
    assign prodResY_uid66_i_div_if_loop_36_im0_cma_ena0 = 1'b1;
    assign prodResY_uid66_i_div_if_loop_36_im0_cma_ena1 = prodResY_uid66_i_div_if_loop_36_im0_cma_ena0;
    assign prodResY_uid66_i_div_if_loop_36_im0_cma_p[0] = prodResY_uid66_i_div_if_loop_36_im0_cma_a0[0] * prodResY_uid66_i_div_if_loop_36_im0_cma_c0[0];
    assign prodResY_uid66_i_div_if_loop_36_im0_cma_u[0] = prodResY_uid66_i_div_if_loop_36_im0_cma_p[0][35:0];
    assign prodResY_uid66_i_div_if_loop_36_im0_cma_w[0] = prodResY_uid66_i_div_if_loop_36_im0_cma_u[0];
    assign prodResY_uid66_i_div_if_loop_36_im0_cma_x[0] = prodResY_uid66_i_div_if_loop_36_im0_cma_w[0];
    assign prodResY_uid66_i_div_if_loop_36_im0_cma_y[0] = prodResY_uid66_i_div_if_loop_36_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodResY_uid66_i_div_if_loop_36_im0_cma_a0 <= '{default: '0};
            prodResY_uid66_i_div_if_loop_36_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodResY_uid66_i_div_if_loop_36_im0_cma_ena0 == 1'b1)
            begin
                prodResY_uid66_i_div_if_loop_36_im0_cma_a0[0] <= prodResY_uid66_i_div_if_loop_36_bs1_b;
                prodResY_uid66_i_div_if_loop_36_im0_cma_c0[0] <= prodResY_uid66_i_div_if_loop_36_bs2_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodResY_uid66_i_div_if_loop_36_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodResY_uid66_i_div_if_loop_36_im0_cma_ena1 == 1'b1)
            begin
                prodResY_uid66_i_div_if_loop_36_im0_cma_s[0] <= prodResY_uid66_i_div_if_loop_36_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodResY_uid66_i_div_if_loop_36_im0_cma_delay ( .xin(prodResY_uid66_i_div_if_loop_36_im0_cma_s[0]), .xout(prodResY_uid66_i_div_if_loop_36_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodResY_uid66_i_div_if_loop_36_im0_cma_q = $unsigned(prodResY_uid66_i_div_if_loop_36_im0_cma_qq[35:0]);

    // prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,488)@77
    assign prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel0_1_b, prodResY_uid66_i_div_if_loop_36_im0_cma_q};

    // prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p1_of_2(ADD,378)@77 + 1
    assign prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_a = {1'b0, prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q};
    assign prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_b = {1'b0, prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_o <= 61'b0;
        end
        else
        begin
            prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_o <= $unsigned(prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_a) + $unsigned(prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_c[0] = prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_o[60];
    assign prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_q = prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_o[59:0];

    // prod_qy_LT_x_uid68_i_div_if_loop_36_p1_of_2(COMPARE,355)@78 + 1
    assign prod_qy_LT_x_uid68_i_div_if_loop_36_p1_of_2_a = {1'b0, prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_q};
    assign prod_qy_LT_x_uid68_i_div_if_loop_36_p1_of_2_b = {1'b0, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prod_qy_LT_x_uid68_i_div_if_loop_36_p1_of_2_o <= 61'b0;
        end
        else
        begin
            prod_qy_LT_x_uid68_i_div_if_loop_36_p1_of_2_o <= $unsigned(prod_qy_LT_x_uid68_i_div_if_loop_36_p1_of_2_a) - $unsigned(prod_qy_LT_x_uid68_i_div_if_loop_36_p1_of_2_b);
        end
    end
    assign prod_qy_LT_x_uid68_i_div_if_loop_36_p1_of_2_c[0] = prod_qy_LT_x_uid68_i_div_if_loop_36_p1_of_2_o[60];

    // redist68_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_8(DELAY,590)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_8_q <= '0;
        end
        else
        begin
            redist68_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_8_q <= $unsigned(redist67_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_7_q);
        end
    end

    // prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel1_0(BITSELECT,411)@79
    assign prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel1_0_b = $unsigned(redist68_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_8_q[31:31]);

    // prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_BitJoin_for_c(BITJOIN,416)@79
    assign prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_BitJoin_for_c_q = {prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel1_0_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel1_0_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel1_0_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel1_0_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_tessel1_0_b};

    // redist12_prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel1_4_b_1(DELAY,534)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel1_4_b_1_q <= '0;
        end
        else
        begin
            redist12_prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel1_4_b_1_q <= $unsigned(prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel0_1_b);
        end
    end

    // prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,508)@78
    assign prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q = {redist12_prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel1_4_b_1_q, redist12_prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel1_4_b_1_q, redist12_prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel1_4_b_1_q, redist12_prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel1_4_b_1_q, redist12_prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_tessel1_4_b_1_q};

    // prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_1(BITSELECT,490)@77
    assign prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b = $unsigned(prodResY_uid66_i_div_if_loop_36_im8_cma_q[27:27]);

    // redist17_prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b_1(DELAY,539)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b_1_q <= '0;
        end
        else
        begin
            redist17_prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b_1_q <= $unsigned(prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b);
        end
    end

    // prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_0(BITSELECT,489)@77
    assign prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b = $unsigned(prodResY_uid66_i_div_if_loop_36_im8_cma_q[27:24]);

    // redist18_prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b_1(DELAY,540)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b_1_q <= '0;
        end
        else
        begin
            redist18_prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b_1_q <= $unsigned(prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b);
        end
    end

    // prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,491)@78
    assign prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {redist17_prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_1_b_1_q, redist18_prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_tessel1_0_b_1_q};

    // prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p2_of_2(ADD,379)@78 + 1
    assign prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_cin = prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_c;
    assign prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_a = $unsigned({ {{1{prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q[4]}}, prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 });
    assign prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_b = $unsigned({ {{1{prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q[4]}}, prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q}, prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_cin[0] });
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_o <= 7'b0;
        end
        else
        begin
            prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_o <= $unsigned($signed(prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_a) + $signed(prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_b));
        end
    end
    assign prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_q = prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_o[5:1];

    // prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_b_tessel1_1(BITSELECT,420)@79
    assign prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_b_tessel1_1_b = $unsigned(prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_q[3:3]);

    // prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_b_tessel1_0(BITSELECT,419)@79
    assign prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_b_tessel1_0_b = $unsigned(prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p2_of_2_q[3:0]);

    // prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_b_BitJoin_for_c(BITJOIN,421)@79
    assign prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_b_BitJoin_for_c_q = {prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_b_tessel1_1_b, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_b_tessel1_0_b};

    // prod_qy_LT_x_uid68_i_div_if_loop_36_p2_of_2(COMPARE,356)@79 + 1
    assign prod_qy_LT_x_uid68_i_div_if_loop_36_p2_of_2_cin = prod_qy_LT_x_uid68_i_div_if_loop_36_p1_of_2_c;
    assign prod_qy_LT_x_uid68_i_div_if_loop_36_p2_of_2_a = $unsigned({ {{1{prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_b_BitJoin_for_c_q[4]}}, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_b_BitJoin_for_c_q}, 1'b0 });
    assign prod_qy_LT_x_uid68_i_div_if_loop_36_p2_of_2_b = $unsigned({ {{1{prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_BitJoin_for_c_q[4]}}, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_BitJoin_for_c_q}, prod_qy_LT_x_uid68_i_div_if_loop_36_p2_of_2_cin[0] });
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prod_qy_LT_x_uid68_i_div_if_loop_36_p2_of_2_o <= 7'b0;
        end
        else
        begin
            prod_qy_LT_x_uid68_i_div_if_loop_36_p2_of_2_o <= $unsigned($signed(prod_qy_LT_x_uid68_i_div_if_loop_36_p2_of_2_a) - $signed(prod_qy_LT_x_uid68_i_div_if_loop_36_p2_of_2_b));
        end
    end
    assign prod_qy_LT_x_uid68_i_div_if_loop_36_p2_of_2_c[0] = prod_qy_LT_x_uid68_i_div_if_loop_36_p2_of_2_o[6];

    // CondNegX_uid76_i_div_if_loop_36(LOGICAL,75)@80
    assign CondNegX_uid76_i_div_if_loop_36_q = prod_qy_LT_x_uid68_i_div_if_loop_36_p2_of_2_c & redist55_signX_uid63_i_div_if_loop_36_b_5_q;

    // invSignX_uid77_i_div_if_loop_36(LOGICAL,76)@80
    assign invSignX_uid77_i_div_if_loop_36_q = ~ (redist55_signX_uid63_i_div_if_loop_36_b_5_q);

    // prod_qy_GT_x_uid67_i_div_if_loop_36_p1_of_2(COMPARE,343)@78 + 1
    assign prod_qy_GT_x_uid67_i_div_if_loop_36_p1_of_2_a = {1'b0, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_BitJoin_for_b_q};
    assign prod_qy_GT_x_uid67_i_div_if_loop_36_p1_of_2_b = {1'b0, prodResY_uid66_i_div_if_loop_36_sums_result_add_0_0_p1_of_2_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prod_qy_GT_x_uid67_i_div_if_loop_36_p1_of_2_o <= 61'b0;
        end
        else
        begin
            prod_qy_GT_x_uid67_i_div_if_loop_36_p1_of_2_o <= $unsigned(prod_qy_GT_x_uid67_i_div_if_loop_36_p1_of_2_a) - $unsigned(prod_qy_GT_x_uid67_i_div_if_loop_36_p1_of_2_b);
        end
    end
    assign prod_qy_GT_x_uid67_i_div_if_loop_36_p1_of_2_c[0] = prod_qy_GT_x_uid67_i_div_if_loop_36_p1_of_2_o[60];

    // prod_qy_GT_x_uid67_i_div_if_loop_36_p2_of_2(COMPARE,344)@79 + 1
    assign prod_qy_GT_x_uid67_i_div_if_loop_36_p2_of_2_cin = prod_qy_GT_x_uid67_i_div_if_loop_36_p1_of_2_c;
    assign prod_qy_GT_x_uid67_i_div_if_loop_36_p2_of_2_a = $unsigned({ {{1{prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_BitJoin_for_c_q[4]}}, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_a_BitJoin_for_c_q}, 1'b0 });
    assign prod_qy_GT_x_uid67_i_div_if_loop_36_p2_of_2_b = $unsigned({ {{1{prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_b_BitJoin_for_c_q[4]}}, prod_qy_GT_x_uid67_i_div_if_loop_36_BitSelect_for_b_BitJoin_for_c_q}, prod_qy_GT_x_uid67_i_div_if_loop_36_p2_of_2_cin[0] });
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prod_qy_GT_x_uid67_i_div_if_loop_36_p2_of_2_o <= 7'b0;
        end
        else
        begin
            prod_qy_GT_x_uid67_i_div_if_loop_36_p2_of_2_o <= $unsigned($signed(prod_qy_GT_x_uid67_i_div_if_loop_36_p2_of_2_a) - $signed(prod_qy_GT_x_uid67_i_div_if_loop_36_p2_of_2_b));
        end
    end
    assign prod_qy_GT_x_uid67_i_div_if_loop_36_p2_of_2_c[0] = prod_qy_GT_x_uid67_i_div_if_loop_36_p2_of_2_o[6];

    // CondPosX_uid78_i_div_if_loop_36(LOGICAL,77)@80
    assign CondPosX_uid78_i_div_if_loop_36_q = prod_qy_GT_x_uid67_i_div_if_loop_36_p2_of_2_c & invSignX_uid77_i_div_if_loop_36_q;

    // postMuxSelect_uid79_i_div_if_loop_36(LOGICAL,78)@80
    assign postMuxSelect_uid79_i_div_if_loop_36_q = CondPosX_uid78_i_div_if_loop_36_q | CondNegX_uid76_i_div_if_loop_36_q | redist50_OverflowCond_uid75_i_div_if_loop_36_q_2_q;

    // resFinalIntDiv_uid84_i_div_if_loop_36(MUX,83)@80
    assign resFinalIntDiv_uid84_i_div_if_loop_36_s = postMuxSelect_uid79_i_div_if_loop_36_q;
    always @(resFinalIntDiv_uid84_i_div_if_loop_36_s or redist53_resFinal_uid65_i_div_if_loop_36_q_5_q or redist49_resFinalPostMux_uid83_i_div_if_loop_36_b_1_q)
    begin
        unique case (resFinalIntDiv_uid84_i_div_if_loop_36_s)
            1'b0 : resFinalIntDiv_uid84_i_div_if_loop_36_q = redist53_resFinal_uid65_i_div_if_loop_36_q_5_q;
            1'b1 : resFinalIntDiv_uid84_i_div_if_loop_36_q = redist49_resFinalPostMux_uid83_i_div_if_loop_36_b_1_q;
            default : resFinalIntDiv_uid84_i_div_if_loop_36_q = 32'b0;
        endcase
    end

    // redist69_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_9(DELAY,591)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_9_q <= '0;
        end
        else
        begin
            redist69_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_9_q <= $unsigned(redist68_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_8_q);
        end
    end

    // i_cmp2_if_loop_33(COMPARE,12)@75 + 1
    assign i_cmp2_if_loop_33_a = $unsigned({{2{c_i32_114_recast_x_q[31]}}, c_i32_114_recast_x_q});
    assign i_cmp2_if_loop_33_b = $unsigned({{2{redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_outputreg0_q[31]}}, redist77_bgTrunc_i_sub_if_loop_32_sel_x_b_29_outputreg0_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp2_if_loop_33_o <= 34'b0;
        end
        else
        begin
            i_cmp2_if_loop_33_o <= $unsigned($signed(i_cmp2_if_loop_33_a) - $signed(i_cmp2_if_loop_33_b));
        end
    end
    assign i_cmp2_if_loop_33_c[0] = i_cmp2_if_loop_33_o[33];

    // redist70_i_cmp2_if_loop_33_c_5(DELAY,592)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_i_cmp2_if_loop_33_c_5_delay_0 <= '0;
            redist70_i_cmp2_if_loop_33_c_5_delay_1 <= '0;
            redist70_i_cmp2_if_loop_33_c_5_delay_2 <= '0;
            redist70_i_cmp2_if_loop_33_c_5_q <= '0;
        end
        else
        begin
            redist70_i_cmp2_if_loop_33_c_5_delay_0 <= $unsigned(i_cmp2_if_loop_33_c);
            redist70_i_cmp2_if_loop_33_c_5_delay_1 <= redist70_i_cmp2_if_loop_33_c_5_delay_0;
            redist70_i_cmp2_if_loop_33_c_5_delay_2 <= redist70_i_cmp2_if_loop_33_c_5_delay_1;
            redist70_i_cmp2_if_loop_33_c_5_q <= redist70_i_cmp2_if_loop_33_c_5_delay_2;
        end
    end

    // i_acl_if_loop_37(MUX,11)@80
    assign i_acl_if_loop_37_s = redist70_i_cmp2_if_loop_33_c_5_q;
    always @(i_acl_if_loop_37_s or redist69_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_9_q or resFinalIntDiv_uid84_i_div_if_loop_36_q)
    begin
        unique case (i_acl_if_loop_37_s)
            1'b0 : i_acl_if_loop_37_q = redist69_i_llvm_fpga_pop_i32_sum_023_pop7_if_loop_35_out_data_out_9_q;
            1'b1 : i_acl_if_loop_37_q = resFinalIntDiv_uid84_i_div_if_loop_36_q;
            default : i_acl_if_loop_37_q = 32'b0;
        endcase
    end

    // redist73_sync_together18_aunroll_x_in_c1_eni5_5_tpl_34(DELAY,595)
    dspba_delay_ver #( .width(1), .depth(34), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist73_sync_together18_aunroll_x_in_c1_eni5_5_tpl_34 ( .xin(in_c1_eni5_5_tpl), .xout(redist73_sync_together18_aunroll_x_in_c1_eni5_5_tpl_34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_39_if_loop_39(BLACKBOX,15)@80
    // out out_intel_reserved_ffwd_4_0@20000000
    if_loop_3_i_llvm_fpga_ffwd_source_i32_unnamed_9_if_loop_30 thei_llvm_fpga_ffwd_source_i32_unnamed_if_loop_39_if_loop_39 (
        .in_predicate_in(redist73_sync_together18_aunroll_x_in_c1_eni5_5_tpl_34_q),
        .in_src_data_in_4_0(i_acl_if_loop_37_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_39_if_loop_39_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,21)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_39_if_loop_39_out_intel_reserved_ffwd_4_0;

endmodule
