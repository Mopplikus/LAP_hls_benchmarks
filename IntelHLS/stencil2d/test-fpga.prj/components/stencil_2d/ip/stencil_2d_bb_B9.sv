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
// SystemVerilog created on Wed Mar 29 16:57:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B9 (
    input wire [31:0] in_c_025_pop16104_0,
    input wire [31:0] in_c_025_pop16104_1,
    input wire [31:0] in_c_025_pop1660_pop32126_0,
    input wire [31:0] in_c_025_pop1660_pop32126_1,
    input wire [31:0] in_dot_prod_add127_0,
    input wire [31:0] in_dot_prod_add127_1,
    input wire [0:0] in_exitcond1147_pop20116_0,
    input wire [0:0] in_exitcond1147_pop20116_1,
    input wire [0:0] in_exitcond1148_pop27131_0,
    input wire [0:0] in_exitcond1148_pop27131_1,
    input wire [0:0] in_exitcond1184_0,
    input wire [0:0] in_exitcond1184_1,
    input wire [0:0] in_exitcond5128_0,
    input wire [0:0] in_exitcond5128_1,
    input wire [0:0] in_exitcond856_pop30134_0,
    input wire [0:0] in_exitcond856_pop30134_1,
    input wire [0:0] in_exitcond898_0,
    input wire [0:0] in_exitcond898_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked37123_0,
    input wire [0:0] in_forked37123_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_memdep_phi1_pop1453_pop22122_0,
    input wire [0:0] in_memdep_phi1_pop1453_pop22122_1,
    input wire [0:0] in_memdep_phi1_pop1454_pop29133_0,
    input wire [0:0] in_memdep_phi1_pop1454_pop29133_1,
    input wire [0:0] in_memdep_phi1_pop1494_0,
    input wire [0:0] in_memdep_phi1_pop1494_1,
    input wire [0:0] in_memdep_phi_pop17107_0,
    input wire [0:0] in_memdep_phi_pop17107_1,
    input wire [0:0] in_memdep_phi_pop1762_pop33136_0,
    input wire [0:0] in_memdep_phi_pop1762_pop33136_1,
    input wire [31:0] in_mul13_add13124_0,
    input wire [31:0] in_mul13_add13124_1,
    input wire [31:0] in_mul2544_pop19113_0,
    input wire [31:0] in_mul2544_pop19113_1,
    input wire [31:0] in_mul2545_pop26130_0,
    input wire [31:0] in_mul2545_pop26130_1,
    input wire [31:0] in_mul2579_0,
    input wire [31:0] in_mul2579_1,
    input wire [0:0] in_notcmp19129_0,
    input wire [0:0] in_notcmp19129_1,
    input wire [0:0] in_notcmp24101_0,
    input wire [0:0] in_notcmp24101_1,
    input wire [0:0] in_notcmp2458_pop31135_0,
    input wire [0:0] in_notcmp2458_pop31135_1,
    input wire [0:0] in_notcmp2950_pop21119_0,
    input wire [0:0] in_notcmp2950_pop21119_1,
    input wire [0:0] in_notcmp2951_pop28132_0,
    input wire [0:0] in_notcmp2951_pop28132_1,
    input wire [0:0] in_notcmp2989_0,
    input wire [0:0] in_notcmp2989_1,
    input wire [31:0] in_r_026_pop1341_pop18110_0,
    input wire [31:0] in_r_026_pop1341_pop18110_1,
    input wire [31:0] in_r_026_pop1342_pop25125_0,
    input wire [31:0] in_r_026_pop1342_pop25125_1,
    input wire [31:0] in_r_026_pop1374_0,
    input wire [31:0] in_r_026_pop1374_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [63:0] in_unnamed_stencil_2d7_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d7_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_stencil_2d7_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d7_stencil_2d_avm_writeack,
    input wire [63:0] in_unnamed_stencil_2d8_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d8_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_stencil_2d8_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d8_stencil_2d_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10284,
    output wire [0:0] out_c0_exe11285,
    output wire [0:0] out_c0_exe12286,
    output wire [0:0] out_c0_exe13287,
    output wire [31:0] out_c0_exe14288,
    output wire [0:0] out_c0_exe15289,
    output wire [31:0] out_c0_exe9283,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [63:0] out_unnamed_stencil_2d7_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d7_stencil_2d_avm_burstcount,
    output wire [7:0] out_unnamed_stencil_2d7_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d7_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d7_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d7_stencil_2d_avm_write,
    output wire [63:0] out_unnamed_stencil_2d7_stencil_2d_avm_writedata,
    output wire [63:0] out_unnamed_stencil_2d8_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d8_stencil_2d_avm_burstcount,
    output wire [7:0] out_unnamed_stencil_2d8_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d8_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d8_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d8_stencil_2d_avm_write,
    output wire [63:0] out_unnamed_stencil_2d8_stencil_2d_avm_writedata,
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
    wire [0:0] bb_stencil_2d_B9_stall_region_out_c0_exe10284;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_c0_exe11285;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_c0_exe12286;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_c0_exe13287;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_c0_exe14288;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_c0_exe15289;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_c0_exe8282;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_c0_exe9283;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_c1_exe1;
    wire [31:0] bb_stencil_2d_B9_stall_region_out_intel_reserved_ffwd_3_0;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_stall_out;
    wire [63:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_burstcount;
    wire [7:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_write;
    wire [63:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_writedata;
    wire [63:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_burstcount;
    wire [7:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_write;
    wire [63:0] bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_writedata;
    wire [0:0] bb_stencil_2d_B9_stall_region_out_valid_out;
    wire [0:0] stencil_2d_B9_branch_out_c0_exe10284;
    wire [0:0] stencil_2d_B9_branch_out_c0_exe11285;
    wire [0:0] stencil_2d_B9_branch_out_c0_exe12286;
    wire [0:0] stencil_2d_B9_branch_out_c0_exe13287;
    wire [31:0] stencil_2d_B9_branch_out_c0_exe14288;
    wire [0:0] stencil_2d_B9_branch_out_c0_exe15289;
    wire [31:0] stencil_2d_B9_branch_out_c0_exe9283;
    wire [31:0] stencil_2d_B9_branch_out_c1_exe1;
    wire [0:0] stencil_2d_B9_branch_out_stall_out;
    wire [0:0] stencil_2d_B9_branch_out_valid_out_0;
    wire [0:0] stencil_2d_B9_branch_out_valid_out_1;
    wire [31:0] stencil_2d_B9_merge_out_c_025_pop16104;
    wire [31:0] stencil_2d_B9_merge_out_c_025_pop1660_pop32126;
    wire [31:0] stencil_2d_B9_merge_out_dot_prod_add127;
    wire [0:0] stencil_2d_B9_merge_out_exitcond1147_pop20116;
    wire [0:0] stencil_2d_B9_merge_out_exitcond1148_pop27131;
    wire [0:0] stencil_2d_B9_merge_out_exitcond1184;
    wire [0:0] stencil_2d_B9_merge_out_exitcond5128;
    wire [0:0] stencil_2d_B9_merge_out_exitcond856_pop30134;
    wire [0:0] stencil_2d_B9_merge_out_exitcond898;
    wire [0:0] stencil_2d_B9_merge_out_forked;
    wire [0:0] stencil_2d_B9_merge_out_forked37123;
    wire [0:0] stencil_2d_B9_merge_out_memdep_phi1_pop1453_pop22122;
    wire [0:0] stencil_2d_B9_merge_out_memdep_phi1_pop1454_pop29133;
    wire [0:0] stencil_2d_B9_merge_out_memdep_phi1_pop1494;
    wire [0:0] stencil_2d_B9_merge_out_memdep_phi_pop17107;
    wire [0:0] stencil_2d_B9_merge_out_memdep_phi_pop1762_pop33136;
    wire [31:0] stencil_2d_B9_merge_out_mul13_add13124;
    wire [31:0] stencil_2d_B9_merge_out_mul2544_pop19113;
    wire [31:0] stencil_2d_B9_merge_out_mul2545_pop26130;
    wire [31:0] stencil_2d_B9_merge_out_mul2579;
    wire [0:0] stencil_2d_B9_merge_out_notcmp19129;
    wire [0:0] stencil_2d_B9_merge_out_notcmp24101;
    wire [0:0] stencil_2d_B9_merge_out_notcmp2458_pop31135;
    wire [0:0] stencil_2d_B9_merge_out_notcmp2950_pop21119;
    wire [0:0] stencil_2d_B9_merge_out_notcmp2951_pop28132;
    wire [0:0] stencil_2d_B9_merge_out_notcmp2989;
    wire [31:0] stencil_2d_B9_merge_out_r_026_pop1341_pop18110;
    wire [31:0] stencil_2d_B9_merge_out_r_026_pop1342_pop25125;
    wire [31:0] stencil_2d_B9_merge_out_r_026_pop1374;
    wire [0:0] stencil_2d_B9_merge_out_stall_out_0;
    wire [0:0] stencil_2d_B9_merge_out_stall_out_1;
    wire [0:0] stencil_2d_B9_merge_out_valid_out;


    // stencil_2d_B9_merge(BLACKBOX,111)
    stencil_2d_B9_merge thestencil_2d_B9_merge (
        .in_c_025_pop16104_0(in_c_025_pop16104_0),
        .in_c_025_pop16104_1(in_c_025_pop16104_1),
        .in_c_025_pop1660_pop32126_0(in_c_025_pop1660_pop32126_0),
        .in_c_025_pop1660_pop32126_1(in_c_025_pop1660_pop32126_1),
        .in_dot_prod_add127_0(in_dot_prod_add127_0),
        .in_dot_prod_add127_1(in_dot_prod_add127_1),
        .in_exitcond1147_pop20116_0(in_exitcond1147_pop20116_0),
        .in_exitcond1147_pop20116_1(in_exitcond1147_pop20116_1),
        .in_exitcond1148_pop27131_0(in_exitcond1148_pop27131_0),
        .in_exitcond1148_pop27131_1(in_exitcond1148_pop27131_1),
        .in_exitcond1184_0(in_exitcond1184_0),
        .in_exitcond1184_1(in_exitcond1184_1),
        .in_exitcond5128_0(in_exitcond5128_0),
        .in_exitcond5128_1(in_exitcond5128_1),
        .in_exitcond856_pop30134_0(in_exitcond856_pop30134_0),
        .in_exitcond856_pop30134_1(in_exitcond856_pop30134_1),
        .in_exitcond898_0(in_exitcond898_0),
        .in_exitcond898_1(in_exitcond898_1),
        .in_forked37123_0(in_forked37123_0),
        .in_forked37123_1(in_forked37123_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_memdep_phi1_pop1453_pop22122_0(in_memdep_phi1_pop1453_pop22122_0),
        .in_memdep_phi1_pop1453_pop22122_1(in_memdep_phi1_pop1453_pop22122_1),
        .in_memdep_phi1_pop1454_pop29133_0(in_memdep_phi1_pop1454_pop29133_0),
        .in_memdep_phi1_pop1454_pop29133_1(in_memdep_phi1_pop1454_pop29133_1),
        .in_memdep_phi1_pop1494_0(in_memdep_phi1_pop1494_0),
        .in_memdep_phi1_pop1494_1(in_memdep_phi1_pop1494_1),
        .in_memdep_phi_pop17107_0(in_memdep_phi_pop17107_0),
        .in_memdep_phi_pop17107_1(in_memdep_phi_pop17107_1),
        .in_memdep_phi_pop1762_pop33136_0(in_memdep_phi_pop1762_pop33136_0),
        .in_memdep_phi_pop1762_pop33136_1(in_memdep_phi_pop1762_pop33136_1),
        .in_mul13_add13124_0(in_mul13_add13124_0),
        .in_mul13_add13124_1(in_mul13_add13124_1),
        .in_mul2544_pop19113_0(in_mul2544_pop19113_0),
        .in_mul2544_pop19113_1(in_mul2544_pop19113_1),
        .in_mul2545_pop26130_0(in_mul2545_pop26130_0),
        .in_mul2545_pop26130_1(in_mul2545_pop26130_1),
        .in_mul2579_0(in_mul2579_0),
        .in_mul2579_1(in_mul2579_1),
        .in_notcmp19129_0(in_notcmp19129_0),
        .in_notcmp19129_1(in_notcmp19129_1),
        .in_notcmp24101_0(in_notcmp24101_0),
        .in_notcmp24101_1(in_notcmp24101_1),
        .in_notcmp2458_pop31135_0(in_notcmp2458_pop31135_0),
        .in_notcmp2458_pop31135_1(in_notcmp2458_pop31135_1),
        .in_notcmp2950_pop21119_0(in_notcmp2950_pop21119_0),
        .in_notcmp2950_pop21119_1(in_notcmp2950_pop21119_1),
        .in_notcmp2951_pop28132_0(in_notcmp2951_pop28132_0),
        .in_notcmp2951_pop28132_1(in_notcmp2951_pop28132_1),
        .in_notcmp2989_0(in_notcmp2989_0),
        .in_notcmp2989_1(in_notcmp2989_1),
        .in_r_026_pop1341_pop18110_0(in_r_026_pop1341_pop18110_0),
        .in_r_026_pop1341_pop18110_1(in_r_026_pop1341_pop18110_1),
        .in_r_026_pop1342_pop25125_0(in_r_026_pop1342_pop25125_0),
        .in_r_026_pop1342_pop25125_1(in_r_026_pop1342_pop25125_1),
        .in_r_026_pop1374_0(in_r_026_pop1374_0),
        .in_r_026_pop1374_1(in_r_026_pop1374_1),
        .in_stall_in(bb_stencil_2d_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_c_025_pop16104(stencil_2d_B9_merge_out_c_025_pop16104),
        .out_c_025_pop1660_pop32126(stencil_2d_B9_merge_out_c_025_pop1660_pop32126),
        .out_dot_prod_add127(stencil_2d_B9_merge_out_dot_prod_add127),
        .out_exitcond1147_pop20116(stencil_2d_B9_merge_out_exitcond1147_pop20116),
        .out_exitcond1148_pop27131(stencil_2d_B9_merge_out_exitcond1148_pop27131),
        .out_exitcond1184(stencil_2d_B9_merge_out_exitcond1184),
        .out_exitcond5128(stencil_2d_B9_merge_out_exitcond5128),
        .out_exitcond856_pop30134(stencil_2d_B9_merge_out_exitcond856_pop30134),
        .out_exitcond898(stencil_2d_B9_merge_out_exitcond898),
        .out_forked(stencil_2d_B9_merge_out_forked),
        .out_forked37123(stencil_2d_B9_merge_out_forked37123),
        .out_memdep_phi1_pop1453_pop22122(stencil_2d_B9_merge_out_memdep_phi1_pop1453_pop22122),
        .out_memdep_phi1_pop1454_pop29133(stencil_2d_B9_merge_out_memdep_phi1_pop1454_pop29133),
        .out_memdep_phi1_pop1494(stencil_2d_B9_merge_out_memdep_phi1_pop1494),
        .out_memdep_phi_pop17107(stencil_2d_B9_merge_out_memdep_phi_pop17107),
        .out_memdep_phi_pop1762_pop33136(stencil_2d_B9_merge_out_memdep_phi_pop1762_pop33136),
        .out_mul13_add13124(stencil_2d_B9_merge_out_mul13_add13124),
        .out_mul2544_pop19113(stencil_2d_B9_merge_out_mul2544_pop19113),
        .out_mul2545_pop26130(stencil_2d_B9_merge_out_mul2545_pop26130),
        .out_mul2579(stencil_2d_B9_merge_out_mul2579),
        .out_notcmp19129(stencil_2d_B9_merge_out_notcmp19129),
        .out_notcmp24101(stencil_2d_B9_merge_out_notcmp24101),
        .out_notcmp2458_pop31135(stencil_2d_B9_merge_out_notcmp2458_pop31135),
        .out_notcmp2950_pop21119(stencil_2d_B9_merge_out_notcmp2950_pop21119),
        .out_notcmp2951_pop28132(stencil_2d_B9_merge_out_notcmp2951_pop28132),
        .out_notcmp2989(stencil_2d_B9_merge_out_notcmp2989),
        .out_r_026_pop1341_pop18110(stencil_2d_B9_merge_out_r_026_pop1341_pop18110),
        .out_r_026_pop1342_pop25125(stencil_2d_B9_merge_out_r_026_pop1342_pop25125),
        .out_r_026_pop1374(stencil_2d_B9_merge_out_r_026_pop1374),
        .out_stall_out_0(stencil_2d_B9_merge_out_stall_out_0),
        .out_stall_out_1(stencil_2d_B9_merge_out_stall_out_1),
        .out_valid_out(stencil_2d_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B9_stall_region(BLACKBOX,2)
    stencil_2d_bb_B9_stall_region thebb_stencil_2d_B9_stall_region (
        .in_c_025_pop16104(stencil_2d_B9_merge_out_c_025_pop16104),
        .in_c_025_pop1660_pop32126(stencil_2d_B9_merge_out_c_025_pop1660_pop32126),
        .in_dot_prod_add127(stencil_2d_B9_merge_out_dot_prod_add127),
        .in_exitcond1147_pop20116(stencil_2d_B9_merge_out_exitcond1147_pop20116),
        .in_exitcond1148_pop27131(stencil_2d_B9_merge_out_exitcond1148_pop27131),
        .in_exitcond1184(stencil_2d_B9_merge_out_exitcond1184),
        .in_exitcond5128(stencil_2d_B9_merge_out_exitcond5128),
        .in_exitcond856_pop30134(stencil_2d_B9_merge_out_exitcond856_pop30134),
        .in_exitcond898(stencil_2d_B9_merge_out_exitcond898),
        .in_flush(in_flush),
        .in_forked(stencil_2d_B9_merge_out_forked),
        .in_forked37123(stencil_2d_B9_merge_out_forked37123),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_memdep_phi1_pop1453_pop22122(stencil_2d_B9_merge_out_memdep_phi1_pop1453_pop22122),
        .in_memdep_phi1_pop1454_pop29133(stencil_2d_B9_merge_out_memdep_phi1_pop1454_pop29133),
        .in_memdep_phi1_pop1494(stencil_2d_B9_merge_out_memdep_phi1_pop1494),
        .in_memdep_phi_pop17107(stencil_2d_B9_merge_out_memdep_phi_pop17107),
        .in_memdep_phi_pop1762_pop33136(stencil_2d_B9_merge_out_memdep_phi_pop1762_pop33136),
        .in_mul13_add13124(stencil_2d_B9_merge_out_mul13_add13124),
        .in_mul2544_pop19113(stencil_2d_B9_merge_out_mul2544_pop19113),
        .in_mul2545_pop26130(stencil_2d_B9_merge_out_mul2545_pop26130),
        .in_mul2579(stencil_2d_B9_merge_out_mul2579),
        .in_notcmp19129(stencil_2d_B9_merge_out_notcmp19129),
        .in_notcmp24101(stencil_2d_B9_merge_out_notcmp24101),
        .in_notcmp2458_pop31135(stencil_2d_B9_merge_out_notcmp2458_pop31135),
        .in_notcmp2950_pop21119(stencil_2d_B9_merge_out_notcmp2950_pop21119),
        .in_notcmp2951_pop28132(stencil_2d_B9_merge_out_notcmp2951_pop28132),
        .in_notcmp2989(stencil_2d_B9_merge_out_notcmp2989),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_r_026_pop1341_pop18110(stencil_2d_B9_merge_out_r_026_pop1341_pop18110),
        .in_r_026_pop1342_pop25125(stencil_2d_B9_merge_out_r_026_pop1342_pop25125),
        .in_r_026_pop1374(stencil_2d_B9_merge_out_r_026_pop1374),
        .in_stall_in(stencil_2d_B9_branch_out_stall_out),
        .in_unnamed_stencil_2d7_stencil_2d_avm_readdata(in_unnamed_stencil_2d7_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d7_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d7_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d7_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d7_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d7_stencil_2d_avm_writeack(in_unnamed_stencil_2d7_stencil_2d_avm_writeack),
        .in_unnamed_stencil_2d8_stencil_2d_avm_readdata(in_unnamed_stencil_2d8_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d8_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d8_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d8_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d8_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d8_stencil_2d_avm_writeack(in_unnamed_stencil_2d8_stencil_2d_avm_writeack),
        .in_valid_in(stencil_2d_B9_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out(bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out(bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out),
        .out_c0_exe10284(bb_stencil_2d_B9_stall_region_out_c0_exe10284),
        .out_c0_exe11285(bb_stencil_2d_B9_stall_region_out_c0_exe11285),
        .out_c0_exe12286(bb_stencil_2d_B9_stall_region_out_c0_exe12286),
        .out_c0_exe13287(bb_stencil_2d_B9_stall_region_out_c0_exe13287),
        .out_c0_exe14288(bb_stencil_2d_B9_stall_region_out_c0_exe14288),
        .out_c0_exe15289(bb_stencil_2d_B9_stall_region_out_c0_exe15289),
        .out_c0_exe8282(bb_stencil_2d_B9_stall_region_out_c0_exe8282),
        .out_c0_exe9283(bb_stencil_2d_B9_stall_region_out_c0_exe9283),
        .out_c1_exe1(bb_stencil_2d_B9_stall_region_out_c1_exe1),
        .out_intel_reserved_ffwd_3_0(bb_stencil_2d_B9_stall_region_out_intel_reserved_ffwd_3_0),
        .out_pipeline_valid_out(bb_stencil_2d_B9_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_stencil_2d_B9_stall_region_out_stall_out),
        .out_unnamed_stencil_2d7_stencil_2d_avm_address(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_address),
        .out_unnamed_stencil_2d7_stencil_2d_avm_burstcount(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d7_stencil_2d_avm_byteenable(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d7_stencil_2d_avm_enable(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d7_stencil_2d_avm_read(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_read),
        .out_unnamed_stencil_2d7_stencil_2d_avm_write(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_write),
        .out_unnamed_stencil_2d7_stencil_2d_avm_writedata(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_writedata),
        .out_unnamed_stencil_2d8_stencil_2d_avm_address(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_address),
        .out_unnamed_stencil_2d8_stencil_2d_avm_burstcount(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d8_stencil_2d_avm_byteenable(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d8_stencil_2d_avm_enable(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d8_stencil_2d_avm_read(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_read),
        .out_unnamed_stencil_2d8_stencil_2d_avm_write(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_write),
        .out_unnamed_stencil_2d8_stencil_2d_avm_writedata(bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_writedata),
        .out_valid_out(bb_stencil_2d_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B9_branch(BLACKBOX,110)
    stencil_2d_B9_branch thestencil_2d_B9_branch (
        .in_c0_exe10284(bb_stencil_2d_B9_stall_region_out_c0_exe10284),
        .in_c0_exe11285(bb_stencil_2d_B9_stall_region_out_c0_exe11285),
        .in_c0_exe12286(bb_stencil_2d_B9_stall_region_out_c0_exe12286),
        .in_c0_exe13287(bb_stencil_2d_B9_stall_region_out_c0_exe13287),
        .in_c0_exe14288(bb_stencil_2d_B9_stall_region_out_c0_exe14288),
        .in_c0_exe15289(bb_stencil_2d_B9_stall_region_out_c0_exe15289),
        .in_c0_exe8282(bb_stencil_2d_B9_stall_region_out_c0_exe8282),
        .in_c0_exe9283(bb_stencil_2d_B9_stall_region_out_c0_exe9283),
        .in_c1_exe1(bb_stencil_2d_B9_stall_region_out_c1_exe1),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_stencil_2d_B9_stall_region_out_valid_out),
        .out_c0_exe10284(stencil_2d_B9_branch_out_c0_exe10284),
        .out_c0_exe11285(stencil_2d_B9_branch_out_c0_exe11285),
        .out_c0_exe12286(stencil_2d_B9_branch_out_c0_exe12286),
        .out_c0_exe13287(stencil_2d_B9_branch_out_c0_exe13287),
        .out_c0_exe14288(stencil_2d_B9_branch_out_c0_exe14288),
        .out_c0_exe15289(stencil_2d_B9_branch_out_c0_exe15289),
        .out_c0_exe9283(stencil_2d_B9_branch_out_c0_exe9283),
        .out_c1_exe1(stencil_2d_B9_branch_out_c1_exe1),
        .out_stall_out(stencil_2d_B9_branch_out_stall_out),
        .out_valid_out_0(stencil_2d_B9_branch_out_valid_out_0),
        .out_valid_out_1(stencil_2d_B9_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10284(GPOUT,76)
    assign out_c0_exe10284 = stencil_2d_B9_branch_out_c0_exe10284;

    // out_c0_exe11285(GPOUT,77)
    assign out_c0_exe11285 = stencil_2d_B9_branch_out_c0_exe11285;

    // out_c0_exe12286(GPOUT,78)
    assign out_c0_exe12286 = stencil_2d_B9_branch_out_c0_exe12286;

    // out_c0_exe13287(GPOUT,79)
    assign out_c0_exe13287 = stencil_2d_B9_branch_out_c0_exe13287;

    // out_c0_exe14288(GPOUT,80)
    assign out_c0_exe14288 = stencil_2d_B9_branch_out_c0_exe14288;

    // out_c0_exe15289(GPOUT,81)
    assign out_c0_exe15289 = stencil_2d_B9_branch_out_c0_exe15289;

    // out_c0_exe9283(GPOUT,82)
    assign out_c0_exe9283 = stencil_2d_B9_branch_out_c0_exe9283;

    // out_c1_exe1(GPOUT,83)
    assign out_c1_exe1 = stencil_2d_B9_branch_out_c1_exe1;

    // out_exiting_stall_out(GPOUT,84)
    assign out_exiting_stall_out = bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,85)
    assign out_exiting_valid_out = bb_stencil_2d_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out;

    // out_intel_reserved_ffwd_3_0(GPOUT,86)
    assign out_intel_reserved_ffwd_3_0 = bb_stencil_2d_B9_stall_region_out_intel_reserved_ffwd_3_0;

    // out_stall_in_0(GPOUT,87)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,88)
    assign out_stall_out_0 = stencil_2d_B9_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,89)
    assign out_stall_out_1 = stencil_2d_B9_merge_out_stall_out_1;

    // out_unnamed_stencil_2d7_stencil_2d_avm_address(GPOUT,90)
    assign out_unnamed_stencil_2d7_stencil_2d_avm_address = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_address;

    // out_unnamed_stencil_2d7_stencil_2d_avm_burstcount(GPOUT,91)
    assign out_unnamed_stencil_2d7_stencil_2d_avm_burstcount = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_burstcount;

    // out_unnamed_stencil_2d7_stencil_2d_avm_byteenable(GPOUT,92)
    assign out_unnamed_stencil_2d7_stencil_2d_avm_byteenable = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_byteenable;

    // out_unnamed_stencil_2d7_stencil_2d_avm_enable(GPOUT,93)
    assign out_unnamed_stencil_2d7_stencil_2d_avm_enable = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_enable;

    // out_unnamed_stencil_2d7_stencil_2d_avm_read(GPOUT,94)
    assign out_unnamed_stencil_2d7_stencil_2d_avm_read = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_read;

    // out_unnamed_stencil_2d7_stencil_2d_avm_write(GPOUT,95)
    assign out_unnamed_stencil_2d7_stencil_2d_avm_write = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_write;

    // out_unnamed_stencil_2d7_stencil_2d_avm_writedata(GPOUT,96)
    assign out_unnamed_stencil_2d7_stencil_2d_avm_writedata = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d7_stencil_2d_avm_writedata;

    // out_unnamed_stencil_2d8_stencil_2d_avm_address(GPOUT,97)
    assign out_unnamed_stencil_2d8_stencil_2d_avm_address = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_address;

    // out_unnamed_stencil_2d8_stencil_2d_avm_burstcount(GPOUT,98)
    assign out_unnamed_stencil_2d8_stencil_2d_avm_burstcount = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_burstcount;

    // out_unnamed_stencil_2d8_stencil_2d_avm_byteenable(GPOUT,99)
    assign out_unnamed_stencil_2d8_stencil_2d_avm_byteenable = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_byteenable;

    // out_unnamed_stencil_2d8_stencil_2d_avm_enable(GPOUT,100)
    assign out_unnamed_stencil_2d8_stencil_2d_avm_enable = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_enable;

    // out_unnamed_stencil_2d8_stencil_2d_avm_read(GPOUT,101)
    assign out_unnamed_stencil_2d8_stencil_2d_avm_read = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_read;

    // out_unnamed_stencil_2d8_stencil_2d_avm_write(GPOUT,102)
    assign out_unnamed_stencil_2d8_stencil_2d_avm_write = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_write;

    // out_unnamed_stencil_2d8_stencil_2d_avm_writedata(GPOUT,103)
    assign out_unnamed_stencil_2d8_stencil_2d_avm_writedata = bb_stencil_2d_B9_stall_region_out_unnamed_stencil_2d8_stencil_2d_avm_writedata;

    // out_valid_in_0(GPOUT,104)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,105)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,106)
    assign out_valid_out_0 = stencil_2d_B9_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,107)
    assign out_valid_out_1 = stencil_2d_B9_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,109)
    assign out_pipeline_valid_out = bb_stencil_2d_B9_stall_region_out_pipeline_valid_out;

endmodule
