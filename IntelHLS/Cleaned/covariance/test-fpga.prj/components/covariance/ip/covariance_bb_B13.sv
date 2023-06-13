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

// SystemVerilog created from bb_covariance_B13
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B13 (
    input wire [0:0] in_exitcond18175_0,
    input wire [0:0] in_exitcond18175_1,
    input wire [0:0] in_exitcond21102_pop55183_0,
    input wire [0:0] in_exitcond21102_pop55183_1,
    input wire [0:0] in_exitcond21161_0,
    input wire [0:0] in_exitcond21161_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked27174_0,
    input wire [0:0] in_forked27174_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [32:0] in_fpga_indvars_iv14_pop23158_0,
    input wire [32:0] in_fpga_indvars_iv14_pop23158_1,
    input wire [31:0] in_i21_072_pop24152_0,
    input wire [31:0] in_i21_072_pop24152_1,
    input wire [31:0] in_i21_072_pop2498_pop53181_0,
    input wire [31:0] in_i21_072_pop2498_pop53181_1,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_j26_071_pop49177_0,
    input wire [31:0] in_j26_071_pop49177_1,
    input wire [31:0] in_lim_ext81_pop42144_0,
    input wire [31:0] in_lim_ext81_pop42144_1,
    input wire [31:0] in_lim_ext82_pop26170_0,
    input wire [31:0] in_lim_ext82_pop26170_1,
    input wire [31:0] in_lim_ext83_pop51179_0,
    input wire [31:0] in_lim_ext83_pop51179_1,
    input wire [0:0] in_memdep_phi2_pop50178_0,
    input wire [0:0] in_memdep_phi2_pop50178_1,
    input wire [0:0] in_memdep_phi3_pop25106_pop57185_0,
    input wire [0:0] in_memdep_phi3_pop25106_pop57185_1,
    input wire [0:0] in_memdep_phi3_pop25167_0,
    input wire [0:0] in_memdep_phi3_pop25167_1,
    input wire [31:0] in_mul47100_pop54182_0,
    input wire [31:0] in_mul47100_pop54182_1,
    input wire [31:0] in_mul47155_0,
    input wire [31:0] in_mul47155_1,
    input wire [0:0] in_notcmp26176_0,
    input wire [0:0] in_notcmp26176_1,
    input wire [0:0] in_notcmp31104_pop56184_0,
    input wire [0:0] in_notcmp31104_pop56184_1,
    input wire [0:0] in_notcmp31164_0,
    input wire [0:0] in_notcmp31164_1,
    input wire [31:0] in_reorder_limiter_enter121_0,
    input wire [31:0] in_reorder_limiter_enter121_1,
    input wire [31:0] in_reorder_limiter_enter86_pop27173_0,
    input wire [31:0] in_reorder_limiter_enter86_pop27173_1,
    input wire [31:0] in_reorder_limiter_enter87_pop52180_0,
    input wire [31:0] in_reorder_limiter_enter87_pop52180_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_covariance16_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance16_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance16_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance16_covariance_avm_writeack,
    input wire [31:0] in_unnamed_covariance17_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance17_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance17_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance17_covariance_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10415,
    output wire [0:0] out_c0_exe11416,
    output wire [0:0] out_c0_exe12417,
    output wire [0:0] out_c0_exe13418,
    output wire [0:0] out_c0_exe14419,
    output wire [0:0] out_c0_exe15420,
    output wire [31:0] out_c0_exe5410,
    output wire [31:0] out_c0_exe8413,
    output wire [31:0] out_c0_exe9414,
    output wire [31:0] out_c1_exe1438,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_covariance16_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance16_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance16_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance16_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance16_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance16_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance16_covariance_avm_writedata,
    output wire [31:0] out_unnamed_covariance17_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance17_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance17_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance17_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance17_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance17_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance17_covariance_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_covariance_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_stall_out;
    wire [0:0] bb_covariance_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_valid_out;
    wire [31:0] bb_covariance_B13_stall_region_out_c0_exe10415;
    wire [0:0] bb_covariance_B13_stall_region_out_c0_exe11416;
    wire [0:0] bb_covariance_B13_stall_region_out_c0_exe12417;
    wire [0:0] bb_covariance_B13_stall_region_out_c0_exe13418;
    wire [0:0] bb_covariance_B13_stall_region_out_c0_exe14419;
    wire [0:0] bb_covariance_B13_stall_region_out_c0_exe15420;
    wire [31:0] bb_covariance_B13_stall_region_out_c0_exe5410;
    wire [0:0] bb_covariance_B13_stall_region_out_c0_exe7412;
    wire [31:0] bb_covariance_B13_stall_region_out_c0_exe8413;
    wire [31:0] bb_covariance_B13_stall_region_out_c0_exe9414;
    wire [31:0] bb_covariance_B13_stall_region_out_c1_exe1438;
    wire [0:0] bb_covariance_B13_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B13_stall_region_out_stall_out;
    wire [31:0] bb_covariance_B13_stall_region_out_unnamed_covariance16_covariance_avm_address;
    wire [0:0] bb_covariance_B13_stall_region_out_unnamed_covariance16_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B13_stall_region_out_unnamed_covariance16_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B13_stall_region_out_unnamed_covariance16_covariance_avm_enable;
    wire [0:0] bb_covariance_B13_stall_region_out_unnamed_covariance16_covariance_avm_read;
    wire [0:0] bb_covariance_B13_stall_region_out_unnamed_covariance16_covariance_avm_write;
    wire [31:0] bb_covariance_B13_stall_region_out_unnamed_covariance16_covariance_avm_writedata;
    wire [31:0] bb_covariance_B13_stall_region_out_unnamed_covariance17_covariance_avm_address;
    wire [0:0] bb_covariance_B13_stall_region_out_unnamed_covariance17_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B13_stall_region_out_unnamed_covariance17_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B13_stall_region_out_unnamed_covariance17_covariance_avm_enable;
    wire [0:0] bb_covariance_B13_stall_region_out_unnamed_covariance17_covariance_avm_read;
    wire [0:0] bb_covariance_B13_stall_region_out_unnamed_covariance17_covariance_avm_write;
    wire [31:0] bb_covariance_B13_stall_region_out_unnamed_covariance17_covariance_avm_writedata;
    wire [0:0] bb_covariance_B13_stall_region_out_valid_out;
    wire [31:0] covariance_B13_branch_out_c0_exe10415;
    wire [0:0] covariance_B13_branch_out_c0_exe11416;
    wire [0:0] covariance_B13_branch_out_c0_exe12417;
    wire [0:0] covariance_B13_branch_out_c0_exe13418;
    wire [0:0] covariance_B13_branch_out_c0_exe14419;
    wire [0:0] covariance_B13_branch_out_c0_exe15420;
    wire [31:0] covariance_B13_branch_out_c0_exe5410;
    wire [31:0] covariance_B13_branch_out_c0_exe8413;
    wire [31:0] covariance_B13_branch_out_c0_exe9414;
    wire [31:0] covariance_B13_branch_out_c1_exe1438;
    wire [0:0] covariance_B13_branch_out_stall_out;
    wire [0:0] covariance_B13_branch_out_valid_out_0;
    wire [0:0] covariance_B13_branch_out_valid_out_1;
    wire [0:0] covariance_B13_merge_out_exitcond18175;
    wire [0:0] covariance_B13_merge_out_exitcond21102_pop55183;
    wire [0:0] covariance_B13_merge_out_exitcond21161;
    wire [0:0] covariance_B13_merge_out_forked;
    wire [0:0] covariance_B13_merge_out_forked27174;
    wire [32:0] covariance_B13_merge_out_fpga_indvars_iv14_pop23158;
    wire [31:0] covariance_B13_merge_out_i21_072_pop24152;
    wire [31:0] covariance_B13_merge_out_i21_072_pop2498_pop53181;
    wire [31:0] covariance_B13_merge_out_j26_071_pop49177;
    wire [31:0] covariance_B13_merge_out_lim_ext81_pop42144;
    wire [31:0] covariance_B13_merge_out_lim_ext82_pop26170;
    wire [31:0] covariance_B13_merge_out_lim_ext83_pop51179;
    wire [0:0] covariance_B13_merge_out_memdep_phi2_pop50178;
    wire [0:0] covariance_B13_merge_out_memdep_phi3_pop25106_pop57185;
    wire [0:0] covariance_B13_merge_out_memdep_phi3_pop25167;
    wire [31:0] covariance_B13_merge_out_mul47100_pop54182;
    wire [31:0] covariance_B13_merge_out_mul47155;
    wire [0:0] covariance_B13_merge_out_notcmp26176;
    wire [0:0] covariance_B13_merge_out_notcmp31104_pop56184;
    wire [0:0] covariance_B13_merge_out_notcmp31164;
    wire [31:0] covariance_B13_merge_out_reorder_limiter_enter121;
    wire [31:0] covariance_B13_merge_out_reorder_limiter_enter86_pop27173;
    wire [31:0] covariance_B13_merge_out_reorder_limiter_enter87_pop52180;
    wire [0:0] covariance_B13_merge_out_stall_out_0;
    wire [0:0] covariance_B13_merge_out_stall_out_1;
    wire [0:0] covariance_B13_merge_out_valid_out;


    // covariance_B13_merge(BLACKBOX,4)
    covariance_B13_merge thecovariance_B13_merge (
        .in_exitcond18175_0(in_exitcond18175_0),
        .in_exitcond18175_1(in_exitcond18175_1),
        .in_exitcond21102_pop55183_0(in_exitcond21102_pop55183_0),
        .in_exitcond21102_pop55183_1(in_exitcond21102_pop55183_1),
        .in_exitcond21161_0(in_exitcond21161_0),
        .in_exitcond21161_1(in_exitcond21161_1),
        .in_forked27174_0(in_forked27174_0),
        .in_forked27174_1(in_forked27174_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_fpga_indvars_iv14_pop23158_0(in_fpga_indvars_iv14_pop23158_0),
        .in_fpga_indvars_iv14_pop23158_1(in_fpga_indvars_iv14_pop23158_1),
        .in_i21_072_pop24152_0(in_i21_072_pop24152_0),
        .in_i21_072_pop24152_1(in_i21_072_pop24152_1),
        .in_i21_072_pop2498_pop53181_0(in_i21_072_pop2498_pop53181_0),
        .in_i21_072_pop2498_pop53181_1(in_i21_072_pop2498_pop53181_1),
        .in_j26_071_pop49177_0(in_j26_071_pop49177_0),
        .in_j26_071_pop49177_1(in_j26_071_pop49177_1),
        .in_lim_ext81_pop42144_0(in_lim_ext81_pop42144_0),
        .in_lim_ext81_pop42144_1(in_lim_ext81_pop42144_1),
        .in_lim_ext82_pop26170_0(in_lim_ext82_pop26170_0),
        .in_lim_ext82_pop26170_1(in_lim_ext82_pop26170_1),
        .in_lim_ext83_pop51179_0(in_lim_ext83_pop51179_0),
        .in_lim_ext83_pop51179_1(in_lim_ext83_pop51179_1),
        .in_memdep_phi2_pop50178_0(in_memdep_phi2_pop50178_0),
        .in_memdep_phi2_pop50178_1(in_memdep_phi2_pop50178_1),
        .in_memdep_phi3_pop25106_pop57185_0(in_memdep_phi3_pop25106_pop57185_0),
        .in_memdep_phi3_pop25106_pop57185_1(in_memdep_phi3_pop25106_pop57185_1),
        .in_memdep_phi3_pop25167_0(in_memdep_phi3_pop25167_0),
        .in_memdep_phi3_pop25167_1(in_memdep_phi3_pop25167_1),
        .in_mul47100_pop54182_0(in_mul47100_pop54182_0),
        .in_mul47100_pop54182_1(in_mul47100_pop54182_1),
        .in_mul47155_0(in_mul47155_0),
        .in_mul47155_1(in_mul47155_1),
        .in_notcmp26176_0(in_notcmp26176_0),
        .in_notcmp26176_1(in_notcmp26176_1),
        .in_notcmp31104_pop56184_0(in_notcmp31104_pop56184_0),
        .in_notcmp31104_pop56184_1(in_notcmp31104_pop56184_1),
        .in_notcmp31164_0(in_notcmp31164_0),
        .in_notcmp31164_1(in_notcmp31164_1),
        .in_reorder_limiter_enter121_0(in_reorder_limiter_enter121_0),
        .in_reorder_limiter_enter121_1(in_reorder_limiter_enter121_1),
        .in_reorder_limiter_enter86_pop27173_0(in_reorder_limiter_enter86_pop27173_0),
        .in_reorder_limiter_enter86_pop27173_1(in_reorder_limiter_enter86_pop27173_1),
        .in_reorder_limiter_enter87_pop52180_0(in_reorder_limiter_enter87_pop52180_0),
        .in_reorder_limiter_enter87_pop52180_1(in_reorder_limiter_enter87_pop52180_1),
        .in_stall_in(bb_covariance_B13_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond18175(covariance_B13_merge_out_exitcond18175),
        .out_exitcond21102_pop55183(covariance_B13_merge_out_exitcond21102_pop55183),
        .out_exitcond21161(covariance_B13_merge_out_exitcond21161),
        .out_forked(covariance_B13_merge_out_forked),
        .out_forked27174(covariance_B13_merge_out_forked27174),
        .out_fpga_indvars_iv14_pop23158(covariance_B13_merge_out_fpga_indvars_iv14_pop23158),
        .out_i21_072_pop24152(covariance_B13_merge_out_i21_072_pop24152),
        .out_i21_072_pop2498_pop53181(covariance_B13_merge_out_i21_072_pop2498_pop53181),
        .out_j26_071_pop49177(covariance_B13_merge_out_j26_071_pop49177),
        .out_lim_ext81_pop42144(covariance_B13_merge_out_lim_ext81_pop42144),
        .out_lim_ext82_pop26170(covariance_B13_merge_out_lim_ext82_pop26170),
        .out_lim_ext83_pop51179(covariance_B13_merge_out_lim_ext83_pop51179),
        .out_memdep_phi2_pop50178(covariance_B13_merge_out_memdep_phi2_pop50178),
        .out_memdep_phi3_pop25106_pop57185(covariance_B13_merge_out_memdep_phi3_pop25106_pop57185),
        .out_memdep_phi3_pop25167(covariance_B13_merge_out_memdep_phi3_pop25167),
        .out_mul47100_pop54182(covariance_B13_merge_out_mul47100_pop54182),
        .out_mul47155(covariance_B13_merge_out_mul47155),
        .out_notcmp26176(covariance_B13_merge_out_notcmp26176),
        .out_notcmp31104_pop56184(covariance_B13_merge_out_notcmp31104_pop56184),
        .out_notcmp31164(covariance_B13_merge_out_notcmp31164),
        .out_reorder_limiter_enter121(covariance_B13_merge_out_reorder_limiter_enter121),
        .out_reorder_limiter_enter86_pop27173(covariance_B13_merge_out_reorder_limiter_enter86_pop27173),
        .out_reorder_limiter_enter87_pop52180(covariance_B13_merge_out_reorder_limiter_enter87_pop52180),
        .out_stall_out_0(covariance_B13_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B13_merge_out_stall_out_1),
        .out_valid_out(covariance_B13_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B13_stall_region(BLACKBOX,2)
    covariance_bb_B13_stall_region thebb_covariance_B13_stall_region (
        .in_exitcond18175(covariance_B13_merge_out_exitcond18175),
        .in_exitcond21102_pop55183(covariance_B13_merge_out_exitcond21102_pop55183),
        .in_exitcond21161(covariance_B13_merge_out_exitcond21161),
        .in_flush(in_flush),
        .in_forked(covariance_B13_merge_out_forked),
        .in_forked27174(covariance_B13_merge_out_forked27174),
        .in_fpga_indvars_iv14_pop23158(covariance_B13_merge_out_fpga_indvars_iv14_pop23158),
        .in_i21_072_pop24152(covariance_B13_merge_out_i21_072_pop24152),
        .in_i21_072_pop2498_pop53181(covariance_B13_merge_out_i21_072_pop2498_pop53181),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_j26_071_pop49177(covariance_B13_merge_out_j26_071_pop49177),
        .in_lim_ext81_pop42144(covariance_B13_merge_out_lim_ext81_pop42144),
        .in_lim_ext82_pop26170(covariance_B13_merge_out_lim_ext82_pop26170),
        .in_lim_ext83_pop51179(covariance_B13_merge_out_lim_ext83_pop51179),
        .in_memdep_phi2_pop50178(covariance_B13_merge_out_memdep_phi2_pop50178),
        .in_memdep_phi3_pop25106_pop57185(covariance_B13_merge_out_memdep_phi3_pop25106_pop57185),
        .in_memdep_phi3_pop25167(covariance_B13_merge_out_memdep_phi3_pop25167),
        .in_mul47100_pop54182(covariance_B13_merge_out_mul47100_pop54182),
        .in_mul47155(covariance_B13_merge_out_mul47155),
        .in_notcmp26176(covariance_B13_merge_out_notcmp26176),
        .in_notcmp31104_pop56184(covariance_B13_merge_out_notcmp31104_pop56184),
        .in_notcmp31164(covariance_B13_merge_out_notcmp31164),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_reorder_limiter_enter121(covariance_B13_merge_out_reorder_limiter_enter121),
        .in_reorder_limiter_enter86_pop27173(covariance_B13_merge_out_reorder_limiter_enter86_pop27173),
        .in_reorder_limiter_enter87_pop52180(covariance_B13_merge_out_reorder_limiter_enter87_pop52180),
        .in_stall_in(covariance_B13_branch_out_stall_out),
        .in_unnamed_covariance16_covariance_avm_readdata(in_unnamed_covariance16_covariance_avm_readdata),
        .in_unnamed_covariance16_covariance_avm_readdatavalid(in_unnamed_covariance16_covariance_avm_readdatavalid),
        .in_unnamed_covariance16_covariance_avm_waitrequest(in_unnamed_covariance16_covariance_avm_waitrequest),
        .in_unnamed_covariance16_covariance_avm_writeack(in_unnamed_covariance16_covariance_avm_writeack),
        .in_unnamed_covariance17_covariance_avm_readdata(in_unnamed_covariance17_covariance_avm_readdata),
        .in_unnamed_covariance17_covariance_avm_readdatavalid(in_unnamed_covariance17_covariance_avm_readdatavalid),
        .in_unnamed_covariance17_covariance_avm_waitrequest(in_unnamed_covariance17_covariance_avm_waitrequest),
        .in_unnamed_covariance17_covariance_avm_writeack(in_unnamed_covariance17_covariance_avm_writeack),
        .in_valid_in(covariance_B13_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_stall_out(bb_covariance_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_valid_out(bb_covariance_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_valid_out),
        .out_c0_exe10415(bb_covariance_B13_stall_region_out_c0_exe10415),
        .out_c0_exe11416(bb_covariance_B13_stall_region_out_c0_exe11416),
        .out_c0_exe12417(bb_covariance_B13_stall_region_out_c0_exe12417),
        .out_c0_exe13418(bb_covariance_B13_stall_region_out_c0_exe13418),
        .out_c0_exe14419(bb_covariance_B13_stall_region_out_c0_exe14419),
        .out_c0_exe15420(bb_covariance_B13_stall_region_out_c0_exe15420),
        .out_c0_exe5410(bb_covariance_B13_stall_region_out_c0_exe5410),
        .out_c0_exe7412(bb_covariance_B13_stall_region_out_c0_exe7412),
        .out_c0_exe8413(bb_covariance_B13_stall_region_out_c0_exe8413),
        .out_c0_exe9414(bb_covariance_B13_stall_region_out_c0_exe9414),
        .out_c1_exe1438(bb_covariance_B13_stall_region_out_c1_exe1438),
        .out_pipeline_valid_out(bb_covariance_B13_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_covariance_B13_stall_region_out_stall_out),
        .out_unnamed_covariance16_covariance_avm_address(bb_covariance_B13_stall_region_out_unnamed_covariance16_covariance_avm_address),
        .out_unnamed_covariance16_covariance_avm_burstcount(bb_covariance_B13_stall_region_out_unnamed_covariance16_covariance_avm_burstcount),
        .out_unnamed_covariance16_covariance_avm_byteenable(bb_covariance_B13_stall_region_out_unnamed_covariance16_covariance_avm_byteenable),
        .out_unnamed_covariance16_covariance_avm_enable(bb_covariance_B13_stall_region_out_unnamed_covariance16_covariance_avm_enable),
        .out_unnamed_covariance16_covariance_avm_read(bb_covariance_B13_stall_region_out_unnamed_covariance16_covariance_avm_read),
        .out_unnamed_covariance16_covariance_avm_write(bb_covariance_B13_stall_region_out_unnamed_covariance16_covariance_avm_write),
        .out_unnamed_covariance16_covariance_avm_writedata(bb_covariance_B13_stall_region_out_unnamed_covariance16_covariance_avm_writedata),
        .out_unnamed_covariance17_covariance_avm_address(bb_covariance_B13_stall_region_out_unnamed_covariance17_covariance_avm_address),
        .out_unnamed_covariance17_covariance_avm_burstcount(bb_covariance_B13_stall_region_out_unnamed_covariance17_covariance_avm_burstcount),
        .out_unnamed_covariance17_covariance_avm_byteenable(bb_covariance_B13_stall_region_out_unnamed_covariance17_covariance_avm_byteenable),
        .out_unnamed_covariance17_covariance_avm_enable(bb_covariance_B13_stall_region_out_unnamed_covariance17_covariance_avm_enable),
        .out_unnamed_covariance17_covariance_avm_read(bb_covariance_B13_stall_region_out_unnamed_covariance17_covariance_avm_read),
        .out_unnamed_covariance17_covariance_avm_write(bb_covariance_B13_stall_region_out_unnamed_covariance17_covariance_avm_write),
        .out_unnamed_covariance17_covariance_avm_writedata(bb_covariance_B13_stall_region_out_unnamed_covariance17_covariance_avm_writedata),
        .out_valid_out(bb_covariance_B13_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B13_branch(BLACKBOX,3)
    covariance_B13_branch thecovariance_B13_branch (
        .in_c0_exe10415(bb_covariance_B13_stall_region_out_c0_exe10415),
        .in_c0_exe11416(bb_covariance_B13_stall_region_out_c0_exe11416),
        .in_c0_exe12417(bb_covariance_B13_stall_region_out_c0_exe12417),
        .in_c0_exe13418(bb_covariance_B13_stall_region_out_c0_exe13418),
        .in_c0_exe14419(bb_covariance_B13_stall_region_out_c0_exe14419),
        .in_c0_exe15420(bb_covariance_B13_stall_region_out_c0_exe15420),
        .in_c0_exe5410(bb_covariance_B13_stall_region_out_c0_exe5410),
        .in_c0_exe7412(bb_covariance_B13_stall_region_out_c0_exe7412),
        .in_c0_exe8413(bb_covariance_B13_stall_region_out_c0_exe8413),
        .in_c0_exe9414(bb_covariance_B13_stall_region_out_c0_exe9414),
        .in_c1_exe1438(bb_covariance_B13_stall_region_out_c1_exe1438),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_covariance_B13_stall_region_out_valid_out),
        .out_c0_exe10415(covariance_B13_branch_out_c0_exe10415),
        .out_c0_exe11416(covariance_B13_branch_out_c0_exe11416),
        .out_c0_exe12417(covariance_B13_branch_out_c0_exe12417),
        .out_c0_exe13418(covariance_B13_branch_out_c0_exe13418),
        .out_c0_exe14419(covariance_B13_branch_out_c0_exe14419),
        .out_c0_exe15420(covariance_B13_branch_out_c0_exe15420),
        .out_c0_exe5410(covariance_B13_branch_out_c0_exe5410),
        .out_c0_exe8413(covariance_B13_branch_out_c0_exe8413),
        .out_c0_exe9414(covariance_B13_branch_out_c0_exe9414),
        .out_c1_exe1438(covariance_B13_branch_out_c1_exe1438),
        .out_stall_out(covariance_B13_branch_out_stall_out),
        .out_valid_out_0(covariance_B13_branch_out_valid_out_0),
        .out_valid_out_1(covariance_B13_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10415(GPOUT,65)
    assign out_c0_exe10415 = covariance_B13_branch_out_c0_exe10415;

    // out_c0_exe11416(GPOUT,66)
    assign out_c0_exe11416 = covariance_B13_branch_out_c0_exe11416;

    // out_c0_exe12417(GPOUT,67)
    assign out_c0_exe12417 = covariance_B13_branch_out_c0_exe12417;

    // out_c0_exe13418(GPOUT,68)
    assign out_c0_exe13418 = covariance_B13_branch_out_c0_exe13418;

    // out_c0_exe14419(GPOUT,69)
    assign out_c0_exe14419 = covariance_B13_branch_out_c0_exe14419;

    // out_c0_exe15420(GPOUT,70)
    assign out_c0_exe15420 = covariance_B13_branch_out_c0_exe15420;

    // out_c0_exe5410(GPOUT,71)
    assign out_c0_exe5410 = covariance_B13_branch_out_c0_exe5410;

    // out_c0_exe8413(GPOUT,72)
    assign out_c0_exe8413 = covariance_B13_branch_out_c0_exe8413;

    // out_c0_exe9414(GPOUT,73)
    assign out_c0_exe9414 = covariance_B13_branch_out_c0_exe9414;

    // out_c1_exe1438(GPOUT,74)
    assign out_c1_exe1438 = covariance_B13_branch_out_c1_exe1438;

    // out_exiting_stall_out(GPOUT,75)
    assign out_exiting_stall_out = bb_covariance_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,76)
    assign out_exiting_valid_out = bb_covariance_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_valid_out;

    // out_stall_in_0(GPOUT,77)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,78)
    assign out_stall_out_0 = covariance_B13_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,79)
    assign out_stall_out_1 = covariance_B13_merge_out_stall_out_1;

    // out_unnamed_covariance16_covariance_avm_address(GPOUT,80)
    assign out_unnamed_covariance16_covariance_avm_address = bb_covariance_B13_stall_region_out_unnamed_covariance16_covariance_avm_address;

    // out_unnamed_covariance16_covariance_avm_burstcount(GPOUT,81)
    assign out_unnamed_covariance16_covariance_avm_burstcount = bb_covariance_B13_stall_region_out_unnamed_covariance16_covariance_avm_burstcount;

    // out_unnamed_covariance16_covariance_avm_byteenable(GPOUT,82)
    assign out_unnamed_covariance16_covariance_avm_byteenable = bb_covariance_B13_stall_region_out_unnamed_covariance16_covariance_avm_byteenable;

    // out_unnamed_covariance16_covariance_avm_enable(GPOUT,83)
    assign out_unnamed_covariance16_covariance_avm_enable = bb_covariance_B13_stall_region_out_unnamed_covariance16_covariance_avm_enable;

    // out_unnamed_covariance16_covariance_avm_read(GPOUT,84)
    assign out_unnamed_covariance16_covariance_avm_read = bb_covariance_B13_stall_region_out_unnamed_covariance16_covariance_avm_read;

    // out_unnamed_covariance16_covariance_avm_write(GPOUT,85)
    assign out_unnamed_covariance16_covariance_avm_write = bb_covariance_B13_stall_region_out_unnamed_covariance16_covariance_avm_write;

    // out_unnamed_covariance16_covariance_avm_writedata(GPOUT,86)
    assign out_unnamed_covariance16_covariance_avm_writedata = bb_covariance_B13_stall_region_out_unnamed_covariance16_covariance_avm_writedata;

    // out_unnamed_covariance17_covariance_avm_address(GPOUT,87)
    assign out_unnamed_covariance17_covariance_avm_address = bb_covariance_B13_stall_region_out_unnamed_covariance17_covariance_avm_address;

    // out_unnamed_covariance17_covariance_avm_burstcount(GPOUT,88)
    assign out_unnamed_covariance17_covariance_avm_burstcount = bb_covariance_B13_stall_region_out_unnamed_covariance17_covariance_avm_burstcount;

    // out_unnamed_covariance17_covariance_avm_byteenable(GPOUT,89)
    assign out_unnamed_covariance17_covariance_avm_byteenable = bb_covariance_B13_stall_region_out_unnamed_covariance17_covariance_avm_byteenable;

    // out_unnamed_covariance17_covariance_avm_enable(GPOUT,90)
    assign out_unnamed_covariance17_covariance_avm_enable = bb_covariance_B13_stall_region_out_unnamed_covariance17_covariance_avm_enable;

    // out_unnamed_covariance17_covariance_avm_read(GPOUT,91)
    assign out_unnamed_covariance17_covariance_avm_read = bb_covariance_B13_stall_region_out_unnamed_covariance17_covariance_avm_read;

    // out_unnamed_covariance17_covariance_avm_write(GPOUT,92)
    assign out_unnamed_covariance17_covariance_avm_write = bb_covariance_B13_stall_region_out_unnamed_covariance17_covariance_avm_write;

    // out_unnamed_covariance17_covariance_avm_writedata(GPOUT,93)
    assign out_unnamed_covariance17_covariance_avm_writedata = bb_covariance_B13_stall_region_out_unnamed_covariance17_covariance_avm_writedata;

    // out_valid_in_0(GPOUT,94)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,95)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,96)
    assign out_valid_out_0 = covariance_B13_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,97)
    assign out_valid_out_1 = covariance_B13_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,99)
    assign out_pipeline_valid_out = bb_covariance_B13_stall_region_out_pipeline_valid_out;

endmodule
