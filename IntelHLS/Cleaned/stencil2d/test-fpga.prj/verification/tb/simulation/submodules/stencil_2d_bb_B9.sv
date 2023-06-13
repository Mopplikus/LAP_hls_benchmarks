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

// SystemVerilog created from bb_stencil_2d_B9
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Jun 13 03:01:28 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B9 (
    input wire [31:0] in_c_043_pop16102_0,
    input wire [31:0] in_c_043_pop16102_1,
    input wire [31:0] in_c_043_pop1658_pop32124_0,
    input wire [31:0] in_c_043_pop1658_pop32124_1,
    input wire [31:0] in_dot_prod_add125_0,
    input wire [31:0] in_dot_prod_add125_1,
    input wire [0:0] in_exitcond1145_pop20114_0,
    input wire [0:0] in_exitcond1145_pop20114_1,
    input wire [0:0] in_exitcond1146_pop27129_0,
    input wire [0:0] in_exitcond1146_pop27129_1,
    input wire [0:0] in_exitcond1182_0,
    input wire [0:0] in_exitcond1182_1,
    input wire [0:0] in_exitcond5126_0,
    input wire [0:0] in_exitcond5126_1,
    input wire [0:0] in_exitcond854_pop30132_0,
    input wire [0:0] in_exitcond854_pop30132_1,
    input wire [0:0] in_exitcond896_0,
    input wire [0:0] in_exitcond896_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked35121_0,
    input wire [0:0] in_forked35121_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_memdep_phi1_pop1451_pop22120_0,
    input wire [0:0] in_memdep_phi1_pop1451_pop22120_1,
    input wire [0:0] in_memdep_phi1_pop1452_pop29131_0,
    input wire [0:0] in_memdep_phi1_pop1452_pop29131_1,
    input wire [0:0] in_memdep_phi1_pop1492_0,
    input wire [0:0] in_memdep_phi1_pop1492_1,
    input wire [0:0] in_memdep_phi_pop17105_0,
    input wire [0:0] in_memdep_phi_pop17105_1,
    input wire [0:0] in_memdep_phi_pop1760_pop33134_0,
    input wire [0:0] in_memdep_phi_pop1760_pop33134_1,
    input wire [31:0] in_mul13_add13122_0,
    input wire [31:0] in_mul13_add13122_1,
    input wire [31:0] in_mul2442_pop19111_0,
    input wire [31:0] in_mul2442_pop19111_1,
    input wire [31:0] in_mul2443_pop26128_0,
    input wire [31:0] in_mul2443_pop26128_1,
    input wire [31:0] in_mul2477_0,
    input wire [31:0] in_mul2477_1,
    input wire [0:0] in_notcmp17127_0,
    input wire [0:0] in_notcmp17127_1,
    input wire [0:0] in_notcmp2256_pop31133_0,
    input wire [0:0] in_notcmp2256_pop31133_1,
    input wire [0:0] in_notcmp2299_0,
    input wire [0:0] in_notcmp2299_1,
    input wire [0:0] in_notcmp2748_pop21117_0,
    input wire [0:0] in_notcmp2748_pop21117_1,
    input wire [0:0] in_notcmp2749_pop28130_0,
    input wire [0:0] in_notcmp2749_pop28130_1,
    input wire [0:0] in_notcmp2787_0,
    input wire [0:0] in_notcmp2787_1,
    input wire [31:0] in_r_044_pop1339_pop18108_0,
    input wire [31:0] in_r_044_pop1339_pop18108_1,
    input wire [31:0] in_r_044_pop1340_pop25123_0,
    input wire [31:0] in_r_044_pop1340_pop25123_1,
    input wire [31:0] in_r_044_pop1372_0,
    input wire [31:0] in_r_044_pop1372_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_stencil_2d10_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d10_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_stencil_2d10_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d10_stencil_2d_avm_writeack,
    input wire [31:0] in_unnamed_stencil_2d11_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d11_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_stencil_2d11_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d11_stencil_2d_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10282,
    output wire [0:0] out_c0_exe11283,
    output wire [0:0] out_c0_exe12284,
    output wire [0:0] out_c0_exe13285,
    output wire [31:0] out_c0_exe14286,
    output wire [0:0] out_c0_exe15287,
    output wire [31:0] out_c0_exe9281,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_stencil_2d10_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d10_stencil_2d_avm_burstcount,
    output wire [3:0] out_unnamed_stencil_2d10_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d10_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d10_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d10_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d10_stencil_2d_avm_writedata,
    output wire [31:0] out_unnamed_stencil_2d11_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d11_stencil_2d_avm_burstcount,
    output wire [3:0] out_unnamed_stencil_2d11_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d11_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d11_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d11_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d11_stencil_2d_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_c0_exe10282;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_c0_exe11283;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_c0_exe12284;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_c0_exe13285;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_c0_exe14286;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_c0_exe15287;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_c0_exe8280;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_c0_exe9281;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_c1_exe1;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_stall_out;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d10_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d10_stencil_2d_avm_burstcount;
    wire [3:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d10_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d10_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d10_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d10_stencil_2d_avm_write;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d10_stencil_2d_avm_writedata;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d11_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d11_stencil_2d_avm_burstcount;
    wire [3:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d11_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d11_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d11_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d11_stencil_2d_avm_write;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d11_stencil_2d_avm_writedata;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_valid_out;
    wire [0:0] stencil_2d_B9_branch_out_c0_exe10282;
    wire [0:0] stencil_2d_B9_branch_out_c0_exe11283;
    wire [0:0] stencil_2d_B9_branch_out_c0_exe12284;
    wire [0:0] stencil_2d_B9_branch_out_c0_exe13285;
    wire [31:0] stencil_2d_B9_branch_out_c0_exe14286;
    wire [0:0] stencil_2d_B9_branch_out_c0_exe15287;
    wire [31:0] stencil_2d_B9_branch_out_c0_exe9281;
    wire [31:0] stencil_2d_B9_branch_out_c1_exe1;
    wire [0:0] stencil_2d_B9_branch_out_stall_out;
    wire [0:0] stencil_2d_B9_branch_out_valid_out_0;
    wire [0:0] stencil_2d_B9_branch_out_valid_out_1;
    wire [31:0] stencil_2d_B9_merge_out_c_043_pop16102;
    wire [31:0] stencil_2d_B9_merge_out_c_043_pop1658_pop32124;
    wire [31:0] stencil_2d_B9_merge_out_dot_prod_add125;
    wire [0:0] stencil_2d_B9_merge_out_exitcond1145_pop20114;
    wire [0:0] stencil_2d_B9_merge_out_exitcond1146_pop27129;
    wire [0:0] stencil_2d_B9_merge_out_exitcond1182;
    wire [0:0] stencil_2d_B9_merge_out_exitcond5126;
    wire [0:0] stencil_2d_B9_merge_out_exitcond854_pop30132;
    wire [0:0] stencil_2d_B9_merge_out_exitcond896;
    wire [0:0] stencil_2d_B9_merge_out_forked;
    wire [0:0] stencil_2d_B9_merge_out_forked35121;
    wire [0:0] stencil_2d_B9_merge_out_memdep_phi1_pop1451_pop22120;
    wire [0:0] stencil_2d_B9_merge_out_memdep_phi1_pop1452_pop29131;
    wire [0:0] stencil_2d_B9_merge_out_memdep_phi1_pop1492;
    wire [0:0] stencil_2d_B9_merge_out_memdep_phi_pop17105;
    wire [0:0] stencil_2d_B9_merge_out_memdep_phi_pop1760_pop33134;
    wire [31:0] stencil_2d_B9_merge_out_mul13_add13122;
    wire [31:0] stencil_2d_B9_merge_out_mul2442_pop19111;
    wire [31:0] stencil_2d_B9_merge_out_mul2443_pop26128;
    wire [31:0] stencil_2d_B9_merge_out_mul2477;
    wire [0:0] stencil_2d_B9_merge_out_notcmp17127;
    wire [0:0] stencil_2d_B9_merge_out_notcmp2256_pop31133;
    wire [0:0] stencil_2d_B9_merge_out_notcmp2299;
    wire [0:0] stencil_2d_B9_merge_out_notcmp2748_pop21117;
    wire [0:0] stencil_2d_B9_merge_out_notcmp2749_pop28130;
    wire [0:0] stencil_2d_B9_merge_out_notcmp2787;
    wire [31:0] stencil_2d_B9_merge_out_r_044_pop1339_pop18108;
    wire [31:0] stencil_2d_B9_merge_out_r_044_pop1340_pop25123;
    wire [31:0] stencil_2d_B9_merge_out_r_044_pop1372;
    wire [0:0] stencil_2d_B9_merge_out_stall_out_0;
    wire [0:0] stencil_2d_B9_merge_out_stall_out_1;
    wire [0:0] stencil_2d_B9_merge_out_valid_out;


    // stencil_2d_B9_merge(BLACKBOX,110)
    stencil_2d_B9_merge thestencil_2d_B9_merge (
        .in_c_043_pop16102_0(in_c_043_pop16102_0),
        .in_c_043_pop16102_1(in_c_043_pop16102_1),
        .in_c_043_pop1658_pop32124_0(in_c_043_pop1658_pop32124_0),
        .in_c_043_pop1658_pop32124_1(in_c_043_pop1658_pop32124_1),
        .in_dot_prod_add125_0(in_dot_prod_add125_0),
        .in_dot_prod_add125_1(in_dot_prod_add125_1),
        .in_exitcond1145_pop20114_0(in_exitcond1145_pop20114_0),
        .in_exitcond1145_pop20114_1(in_exitcond1145_pop20114_1),
        .in_exitcond1146_pop27129_0(in_exitcond1146_pop27129_0),
        .in_exitcond1146_pop27129_1(in_exitcond1146_pop27129_1),
        .in_exitcond1182_0(in_exitcond1182_0),
        .in_exitcond1182_1(in_exitcond1182_1),
        .in_exitcond5126_0(in_exitcond5126_0),
        .in_exitcond5126_1(in_exitcond5126_1),
        .in_exitcond854_pop30132_0(in_exitcond854_pop30132_0),
        .in_exitcond854_pop30132_1(in_exitcond854_pop30132_1),
        .in_exitcond896_0(in_exitcond896_0),
        .in_exitcond896_1(in_exitcond896_1),
        .in_forked35121_0(in_forked35121_0),
        .in_forked35121_1(in_forked35121_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_memdep_phi1_pop1451_pop22120_0(in_memdep_phi1_pop1451_pop22120_0),
        .in_memdep_phi1_pop1451_pop22120_1(in_memdep_phi1_pop1451_pop22120_1),
        .in_memdep_phi1_pop1452_pop29131_0(in_memdep_phi1_pop1452_pop29131_0),
        .in_memdep_phi1_pop1452_pop29131_1(in_memdep_phi1_pop1452_pop29131_1),
        .in_memdep_phi1_pop1492_0(in_memdep_phi1_pop1492_0),
        .in_memdep_phi1_pop1492_1(in_memdep_phi1_pop1492_1),
        .in_memdep_phi_pop17105_0(in_memdep_phi_pop17105_0),
        .in_memdep_phi_pop17105_1(in_memdep_phi_pop17105_1),
        .in_memdep_phi_pop1760_pop33134_0(in_memdep_phi_pop1760_pop33134_0),
        .in_memdep_phi_pop1760_pop33134_1(in_memdep_phi_pop1760_pop33134_1),
        .in_mul13_add13122_0(in_mul13_add13122_0),
        .in_mul13_add13122_1(in_mul13_add13122_1),
        .in_mul2442_pop19111_0(in_mul2442_pop19111_0),
        .in_mul2442_pop19111_1(in_mul2442_pop19111_1),
        .in_mul2443_pop26128_0(in_mul2443_pop26128_0),
        .in_mul2443_pop26128_1(in_mul2443_pop26128_1),
        .in_mul2477_0(in_mul2477_0),
        .in_mul2477_1(in_mul2477_1),
        .in_notcmp17127_0(in_notcmp17127_0),
        .in_notcmp17127_1(in_notcmp17127_1),
        .in_notcmp2256_pop31133_0(in_notcmp2256_pop31133_0),
        .in_notcmp2256_pop31133_1(in_notcmp2256_pop31133_1),
        .in_notcmp2299_0(in_notcmp2299_0),
        .in_notcmp2299_1(in_notcmp2299_1),
        .in_notcmp2748_pop21117_0(in_notcmp2748_pop21117_0),
        .in_notcmp2748_pop21117_1(in_notcmp2748_pop21117_1),
        .in_notcmp2749_pop28130_0(in_notcmp2749_pop28130_0),
        .in_notcmp2749_pop28130_1(in_notcmp2749_pop28130_1),
        .in_notcmp2787_0(in_notcmp2787_0),
        .in_notcmp2787_1(in_notcmp2787_1),
        .in_r_044_pop1339_pop18108_0(in_r_044_pop1339_pop18108_0),
        .in_r_044_pop1339_pop18108_1(in_r_044_pop1339_pop18108_1),
        .in_r_044_pop1340_pop25123_0(in_r_044_pop1340_pop25123_0),
        .in_r_044_pop1340_pop25123_1(in_r_044_pop1340_pop25123_1),
        .in_r_044_pop1372_0(in_r_044_pop1372_0),
        .in_r_044_pop1372_1(in_r_044_pop1372_1),
        .in_stall_in(bb_stencil_2d_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_c_043_pop16102(stencil_2d_B9_merge_out_c_043_pop16102),
        .out_c_043_pop1658_pop32124(stencil_2d_B9_merge_out_c_043_pop1658_pop32124),
        .out_dot_prod_add125(stencil_2d_B9_merge_out_dot_prod_add125),
        .out_exitcond1145_pop20114(stencil_2d_B9_merge_out_exitcond1145_pop20114),
        .out_exitcond1146_pop27129(stencil_2d_B9_merge_out_exitcond1146_pop27129),
        .out_exitcond1182(stencil_2d_B9_merge_out_exitcond1182),
        .out_exitcond5126(stencil_2d_B9_merge_out_exitcond5126),
        .out_exitcond854_pop30132(stencil_2d_B9_merge_out_exitcond854_pop30132),
        .out_exitcond896(stencil_2d_B9_merge_out_exitcond896),
        .out_forked(stencil_2d_B9_merge_out_forked),
        .out_forked35121(stencil_2d_B9_merge_out_forked35121),
        .out_memdep_phi1_pop1451_pop22120(stencil_2d_B9_merge_out_memdep_phi1_pop1451_pop22120),
        .out_memdep_phi1_pop1452_pop29131(stencil_2d_B9_merge_out_memdep_phi1_pop1452_pop29131),
        .out_memdep_phi1_pop1492(stencil_2d_B9_merge_out_memdep_phi1_pop1492),
        .out_memdep_phi_pop17105(stencil_2d_B9_merge_out_memdep_phi_pop17105),
        .out_memdep_phi_pop1760_pop33134(stencil_2d_B9_merge_out_memdep_phi_pop1760_pop33134),
        .out_mul13_add13122(stencil_2d_B9_merge_out_mul13_add13122),
        .out_mul2442_pop19111(stencil_2d_B9_merge_out_mul2442_pop19111),
        .out_mul2443_pop26128(stencil_2d_B9_merge_out_mul2443_pop26128),
        .out_mul2477(stencil_2d_B9_merge_out_mul2477),
        .out_notcmp17127(stencil_2d_B9_merge_out_notcmp17127),
        .out_notcmp2256_pop31133(stencil_2d_B9_merge_out_notcmp2256_pop31133),
        .out_notcmp2299(stencil_2d_B9_merge_out_notcmp2299),
        .out_notcmp2748_pop21117(stencil_2d_B9_merge_out_notcmp2748_pop21117),
        .out_notcmp2749_pop28130(stencil_2d_B9_merge_out_notcmp2749_pop28130),
        .out_notcmp2787(stencil_2d_B9_merge_out_notcmp2787),
        .out_r_044_pop1339_pop18108(stencil_2d_B9_merge_out_r_044_pop1339_pop18108),
        .out_r_044_pop1340_pop25123(stencil_2d_B9_merge_out_r_044_pop1340_pop25123),
        .out_r_044_pop1372(stencil_2d_B9_merge_out_r_044_pop1372),
        .out_stall_out_0(stencil_2d_B9_merge_out_stall_out_0),
        .out_stall_out_1(stencil_2d_B9_merge_out_stall_out_1),
        .out_valid_out(stencil_2d_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B9_stall_region(BLACKBOX,2)
    stencil_2d_bb_B9_stall_region thebb_stencil_2d_B9_stall_region (
        .in_c_043_pop16102(stencil_2d_B9_merge_out_c_043_pop16102),
        .in_c_043_pop1658_pop32124(stencil_2d_B9_merge_out_c_043_pop1658_pop32124),
        .in_dot_prod_add125(stencil_2d_B9_merge_out_dot_prod_add125),
        .in_exitcond1145_pop20114(stencil_2d_B9_merge_out_exitcond1145_pop20114),
        .in_exitcond1146_pop27129(stencil_2d_B9_merge_out_exitcond1146_pop27129),
        .in_exitcond1182(stencil_2d_B9_merge_out_exitcond1182),
        .in_exitcond5126(stencil_2d_B9_merge_out_exitcond5126),
        .in_exitcond854_pop30132(stencil_2d_B9_merge_out_exitcond854_pop30132),
        .in_exitcond896(stencil_2d_B9_merge_out_exitcond896),
        .in_flush(in_flush),
        .in_forked(stencil_2d_B9_merge_out_forked),
        .in_forked35121(stencil_2d_B9_merge_out_forked35121),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_memdep_phi1_pop1451_pop22120(stencil_2d_B9_merge_out_memdep_phi1_pop1451_pop22120),
        .in_memdep_phi1_pop1452_pop29131(stencil_2d_B9_merge_out_memdep_phi1_pop1452_pop29131),
        .in_memdep_phi1_pop1492(stencil_2d_B9_merge_out_memdep_phi1_pop1492),
        .in_memdep_phi_pop17105(stencil_2d_B9_merge_out_memdep_phi_pop17105),
        .in_memdep_phi_pop1760_pop33134(stencil_2d_B9_merge_out_memdep_phi_pop1760_pop33134),
        .in_mul13_add13122(stencil_2d_B9_merge_out_mul13_add13122),
        .in_mul2442_pop19111(stencil_2d_B9_merge_out_mul2442_pop19111),
        .in_mul2443_pop26128(stencil_2d_B9_merge_out_mul2443_pop26128),
        .in_mul2477(stencil_2d_B9_merge_out_mul2477),
        .in_notcmp17127(stencil_2d_B9_merge_out_notcmp17127),
        .in_notcmp2256_pop31133(stencil_2d_B9_merge_out_notcmp2256_pop31133),
        .in_notcmp2299(stencil_2d_B9_merge_out_notcmp2299),
        .in_notcmp2748_pop21117(stencil_2d_B9_merge_out_notcmp2748_pop21117),
        .in_notcmp2749_pop28130(stencil_2d_B9_merge_out_notcmp2749_pop28130),
        .in_notcmp2787(stencil_2d_B9_merge_out_notcmp2787),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_r_044_pop1339_pop18108(stencil_2d_B9_merge_out_r_044_pop1339_pop18108),
        .in_r_044_pop1340_pop25123(stencil_2d_B9_merge_out_r_044_pop1340_pop25123),
        .in_r_044_pop1372(stencil_2d_B9_merge_out_r_044_pop1372),
        .in_stall_in(stencil_2d_B9_branch_out_stall_out),
        .in_unnamed_stencil_2d10_stencil_2d_avm_readdata(in_unnamed_stencil_2d10_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d10_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d10_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d10_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d10_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d10_stencil_2d_avm_writeack(in_unnamed_stencil_2d10_stencil_2d_avm_writeack),
        .in_unnamed_stencil_2d11_stencil_2d_avm_readdata(in_unnamed_stencil_2d11_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d11_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d11_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d11_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d11_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d11_stencil_2d_avm_writeack(in_unnamed_stencil_2d11_stencil_2d_avm_writeack),
        .in_valid_in(stencil_2d_B9_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out(bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out(bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out),
        .out_c0_exe10282(bb_stencil_2d_B9_stall_region_out_c0_exe10282),
        .out_c0_exe11283(bb_stencil_2d_B9_stall_region_out_c0_exe11283),
        .out_c0_exe12284(bb_stencil_2d_B9_stall_region_out_c0_exe12284),
        .out_c0_exe13285(bb_stencil_2d_B9_stall_region_out_c0_exe13285),
        .out_c0_exe14286(bb_stencil_2d_B9_stall_region_out_c0_exe14286),
        .out_c0_exe15287(bb_stencil_2d_B9_stall_region_out_c0_exe15287),
        .out_c0_exe8280(bb_stencil_2d_B9_stall_region_out_c0_exe8280),
        .out_c0_exe9281(bb_stencil_2d_B9_stall_region_out_c0_exe9281),
        .out_c1_exe1(bb_stencil_2d_B9_stall_region_out_c1_exe1),
        .out_pipeline_valid_out(bb_stencil_2d_B9_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_stencil_2d_B9_stall_region_out_stall_out),
        .out_unnamed_stencil_2d10_stencil_2d_avm_address(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d10_stencil_2d_avm_address),
        .out_unnamed_stencil_2d10_stencil_2d_avm_burstcount(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d10_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d10_stencil_2d_avm_byteenable(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d10_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d10_stencil_2d_avm_enable(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d10_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d10_stencil_2d_avm_read(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d10_stencil_2d_avm_read),
        .out_unnamed_stencil_2d10_stencil_2d_avm_write(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d10_stencil_2d_avm_write),
        .out_unnamed_stencil_2d10_stencil_2d_avm_writedata(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d10_stencil_2d_avm_writedata),
        .out_unnamed_stencil_2d11_stencil_2d_avm_address(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d11_stencil_2d_avm_address),
        .out_unnamed_stencil_2d11_stencil_2d_avm_burstcount(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d11_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d11_stencil_2d_avm_byteenable(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d11_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d11_stencil_2d_avm_enable(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d11_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d11_stencil_2d_avm_read(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d11_stencil_2d_avm_read),
        .out_unnamed_stencil_2d11_stencil_2d_avm_write(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d11_stencil_2d_avm_write),
        .out_unnamed_stencil_2d11_stencil_2d_avm_writedata(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d11_stencil_2d_avm_writedata),
        .out_valid_out(bb_stencil_2d_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B9_branch(BLACKBOX,109)
    stencil_2d_B9_branch thestencil_2d_B9_branch (
        .in_c0_exe10282(bb_stencil_2d_B9_stall_region_out_c0_exe10282),
        .in_c0_exe11283(bb_stencil_2d_B9_stall_region_out_c0_exe11283),
        .in_c0_exe12284(bb_stencil_2d_B9_stall_region_out_c0_exe12284),
        .in_c0_exe13285(bb_stencil_2d_B9_stall_region_out_c0_exe13285),
        .in_c0_exe14286(bb_stencil_2d_B9_stall_region_out_c0_exe14286),
        .in_c0_exe15287(bb_stencil_2d_B9_stall_region_out_c0_exe15287),
        .in_c0_exe8280(bb_stencil_2d_B9_stall_region_out_c0_exe8280),
        .in_c0_exe9281(bb_stencil_2d_B9_stall_region_out_c0_exe9281),
        .in_c1_exe1(bb_stencil_2d_B9_stall_region_out_c1_exe1),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_stencil_2d_B9_stall_region_out_valid_out),
        .out_c0_exe10282(stencil_2d_B9_branch_out_c0_exe10282),
        .out_c0_exe11283(stencil_2d_B9_branch_out_c0_exe11283),
        .out_c0_exe12284(stencil_2d_B9_branch_out_c0_exe12284),
        .out_c0_exe13285(stencil_2d_B9_branch_out_c0_exe13285),
        .out_c0_exe14286(stencil_2d_B9_branch_out_c0_exe14286),
        .out_c0_exe15287(stencil_2d_B9_branch_out_c0_exe15287),
        .out_c0_exe9281(stencil_2d_B9_branch_out_c0_exe9281),
        .out_c1_exe1(stencil_2d_B9_branch_out_c1_exe1),
        .out_stall_out(stencil_2d_B9_branch_out_stall_out),
        .out_valid_out_0(stencil_2d_B9_branch_out_valid_out_0),
        .out_valid_out_1(stencil_2d_B9_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10282(GPOUT,76)
    assign out_c0_exe10282 = stencil_2d_B9_branch_out_c0_exe10282;

    // out_c0_exe11283(GPOUT,77)
    assign out_c0_exe11283 = stencil_2d_B9_branch_out_c0_exe11283;

    // out_c0_exe12284(GPOUT,78)
    assign out_c0_exe12284 = stencil_2d_B9_branch_out_c0_exe12284;

    // out_c0_exe13285(GPOUT,79)
    assign out_c0_exe13285 = stencil_2d_B9_branch_out_c0_exe13285;

    // out_c0_exe14286(GPOUT,80)
    assign out_c0_exe14286 = stencil_2d_B9_branch_out_c0_exe14286;

    // out_c0_exe15287(GPOUT,81)
    assign out_c0_exe15287 = stencil_2d_B9_branch_out_c0_exe15287;

    // out_c0_exe9281(GPOUT,82)
    assign out_c0_exe9281 = stencil_2d_B9_branch_out_c0_exe9281;

    // out_c1_exe1(GPOUT,83)
    assign out_c1_exe1 = stencil_2d_B9_branch_out_c1_exe1;

    // out_exiting_stall_out(GPOUT,84)
    assign out_exiting_stall_out = bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,85)
    assign out_exiting_valid_out = bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out;

    // out_stall_in_0(GPOUT,86)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,87)
    assign out_stall_out_0 = stencil_2d_B9_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,88)
    assign out_stall_out_1 = stencil_2d_B9_merge_out_stall_out_1;

    // out_unnamed_stencil_2d10_stencil_2d_avm_address(GPOUT,89)
    assign out_unnamed_stencil_2d10_stencil_2d_avm_address = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d10_stencil_2d_avm_address;

    // out_unnamed_stencil_2d10_stencil_2d_avm_burstcount(GPOUT,90)
    assign out_unnamed_stencil_2d10_stencil_2d_avm_burstcount = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d10_stencil_2d_avm_burstcount;

    // out_unnamed_stencil_2d10_stencil_2d_avm_byteenable(GPOUT,91)
    assign out_unnamed_stencil_2d10_stencil_2d_avm_byteenable = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d10_stencil_2d_avm_byteenable;

    // out_unnamed_stencil_2d10_stencil_2d_avm_enable(GPOUT,92)
    assign out_unnamed_stencil_2d10_stencil_2d_avm_enable = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d10_stencil_2d_avm_enable;

    // out_unnamed_stencil_2d10_stencil_2d_avm_read(GPOUT,93)
    assign out_unnamed_stencil_2d10_stencil_2d_avm_read = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d10_stencil_2d_avm_read;

    // out_unnamed_stencil_2d10_stencil_2d_avm_write(GPOUT,94)
    assign out_unnamed_stencil_2d10_stencil_2d_avm_write = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d10_stencil_2d_avm_write;

    // out_unnamed_stencil_2d10_stencil_2d_avm_writedata(GPOUT,95)
    assign out_unnamed_stencil_2d10_stencil_2d_avm_writedata = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d10_stencil_2d_avm_writedata;

    // out_unnamed_stencil_2d11_stencil_2d_avm_address(GPOUT,96)
    assign out_unnamed_stencil_2d11_stencil_2d_avm_address = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d11_stencil_2d_avm_address;

    // out_unnamed_stencil_2d11_stencil_2d_avm_burstcount(GPOUT,97)
    assign out_unnamed_stencil_2d11_stencil_2d_avm_burstcount = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d11_stencil_2d_avm_burstcount;

    // out_unnamed_stencil_2d11_stencil_2d_avm_byteenable(GPOUT,98)
    assign out_unnamed_stencil_2d11_stencil_2d_avm_byteenable = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d11_stencil_2d_avm_byteenable;

    // out_unnamed_stencil_2d11_stencil_2d_avm_enable(GPOUT,99)
    assign out_unnamed_stencil_2d11_stencil_2d_avm_enable = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d11_stencil_2d_avm_enable;

    // out_unnamed_stencil_2d11_stencil_2d_avm_read(GPOUT,100)
    assign out_unnamed_stencil_2d11_stencil_2d_avm_read = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d11_stencil_2d_avm_read;

    // out_unnamed_stencil_2d11_stencil_2d_avm_write(GPOUT,101)
    assign out_unnamed_stencil_2d11_stencil_2d_avm_write = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d11_stencil_2d_avm_write;

    // out_unnamed_stencil_2d11_stencil_2d_avm_writedata(GPOUT,102)
    assign out_unnamed_stencil_2d11_stencil_2d_avm_writedata = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d11_stencil_2d_avm_writedata;

    // out_valid_in_0(GPOUT,103)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,104)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,105)
    assign out_valid_out_0 = stencil_2d_B9_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,106)
    assign out_valid_out_1 = stencil_2d_B9_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,108)
    assign out_pipeline_valid_out = bb_stencil_2d_B9_stall_region_out_pipeline_valid_out;

endmodule
