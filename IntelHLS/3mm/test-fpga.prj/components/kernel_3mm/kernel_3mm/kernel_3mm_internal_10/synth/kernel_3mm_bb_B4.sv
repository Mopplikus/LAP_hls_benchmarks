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

// SystemVerilog created from bb_kernel_3mm_B4
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B4 (
    input wire [63:0] in_arrayidx121185_0,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked117_0,
    input wire [0:0] in_forked60_pop24161_0,
    input wire [0:0] in_forked61_pop34188_0,
    input wire [31:0] in_i_060_pop23151_0,
    input wire [31:0] in_i_060_pop2385_pop39182_0,
    input wire [63:0] in_idxprom11184_0,
    input wire [63:0] in_idxprom183_0,
    input wire [0:0] in_memdep_phi2_pop18131_0,
    input wire [0:0] in_memdep_phi2_pop1868_pop26171_0,
    input wire [0:0] in_memdep_phi2_pop1869_pop36189_0,
    input wire [0:0] in_memdep_phi3_pop19138_0,
    input wire [0:0] in_memdep_phi3_pop1972_pop27176_0,
    input wire [0:0] in_memdep_phi3_pop1973_pop37190_0,
    input wire [0:0] in_memdep_phi5_pop20145_0,
    input wire [0:0] in_memdep_phi5_pop2076_pop28181_0,
    input wire [0:0] in_memdep_phi5_pop2077_pop38191_0,
    input wire [0:0] in_memdep_phi_pop17124_0,
    input wire [0:0] in_memdep_phi_pop1764_pop25166_0,
    input wire [0:0] in_memdep_phi_pop1765_pop35186_0,
    input wire [0:0] in_notcmp46187_0,
    input wire [0:0] in_notcmp51156_0,
    input wire [0:0] in_notcmp5188_pop40192_0,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_kernel_3mm2_0,
    input wire [31:0] in_unnamed_kernel_3mm3_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm3_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm3_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm3_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe10375,
    output wire [31:0] out_c0_exe11376,
    output wire [0:0] out_c0_exe12377,
    output wire [63:0] out_c0_exe13378,
    output wire [63:0] out_c0_exe1366,
    output wire [0:0] out_c0_exe14379,
    output wire [0:0] out_c0_exe15380,
    output wire [0:0] out_c0_exe16381,
    output wire [0:0] out_c0_exe17382,
    output wire [0:0] out_c0_exe18383,
    output wire [0:0] out_c0_exe19384,
    output wire [31:0] out_c0_exe20385,
    output wire [0:0] out_c0_exe21386,
    output wire [0:0] out_c0_exe22387,
    output wire [0:0] out_c0_exe23388,
    output wire [63:0] out_c0_exe2367,
    output wire [0:0] out_c0_exe24389,
    output wire [0:0] out_c0_exe25390,
    output wire [0:0] out_c0_exe26,
    output wire [31:0] out_c0_exe3368,
    output wire [0:0] out_c0_exe6371,
    output wire [0:0] out_c0_exe7372,
    output wire [0:0] out_c0_exe8373,
    output wire [0:0] out_c0_exe9374,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B4_stall_region_out_almost_empty_out;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe10375;
    wire [31:0] bb_kernel_3mm_B4_stall_region_out_c0_exe11376;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe12377;
    wire [63:0] bb_kernel_3mm_B4_stall_region_out_c0_exe13378;
    wire [63:0] bb_kernel_3mm_B4_stall_region_out_c0_exe1366;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe14379;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe15380;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe16381;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe17382;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe18383;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe19384;
    wire [31:0] bb_kernel_3mm_B4_stall_region_out_c0_exe20385;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe21386;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe22387;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe23388;
    wire [63:0] bb_kernel_3mm_B4_stall_region_out_c0_exe2367;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe24389;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe25390;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe26;
    wire [31:0] bb_kernel_3mm_B4_stall_region_out_c0_exe3368;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe5370;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe6371;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe7372;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe8373;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_c0_exe9374;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_empty_out;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_stall_out;
    wire [31:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm3_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm3_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm3_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm3_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B4_stall_region_out_valid_out;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe10375;
    wire [31:0] kernel_3mm_B4_branch_out_c0_exe11376;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe12377;
    wire [63:0] kernel_3mm_B4_branch_out_c0_exe13378;
    wire [63:0] kernel_3mm_B4_branch_out_c0_exe1366;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe14379;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe15380;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe16381;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe17382;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe18383;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe19384;
    wire [31:0] kernel_3mm_B4_branch_out_c0_exe20385;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe21386;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe22387;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe23388;
    wire [63:0] kernel_3mm_B4_branch_out_c0_exe2367;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe24389;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe25390;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe26;
    wire [31:0] kernel_3mm_B4_branch_out_c0_exe3368;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe6371;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe7372;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe8373;
    wire [0:0] kernel_3mm_B4_branch_out_c0_exe9374;
    wire [0:0] kernel_3mm_B4_branch_out_stall_out;
    wire [0:0] kernel_3mm_B4_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B4_merge_out_almost_empty_out;
    wire [63:0] kernel_3mm_B4_merge_out_arrayidx121185;
    wire [0:0] kernel_3mm_B4_merge_out_empty_out;
    wire [0:0] kernel_3mm_B4_merge_out_forked117;
    wire [0:0] kernel_3mm_B4_merge_out_forked60_pop24161;
    wire [0:0] kernel_3mm_B4_merge_out_forked61_pop34188;
    wire [31:0] kernel_3mm_B4_merge_out_i_060_pop23151;
    wire [31:0] kernel_3mm_B4_merge_out_i_060_pop2385_pop39182;
    wire [63:0] kernel_3mm_B4_merge_out_idxprom11184;
    wire [63:0] kernel_3mm_B4_merge_out_idxprom183;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi2_pop18131;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi2_pop1868_pop26171;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi2_pop1869_pop36189;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi3_pop19138;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi3_pop1972_pop27176;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi3_pop1973_pop37190;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi5_pop20145;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi5_pop2076_pop28181;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi5_pop2077_pop38191;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi_pop17124;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi_pop1764_pop25166;
    wire [0:0] kernel_3mm_B4_merge_out_memdep_phi_pop1765_pop35186;
    wire [0:0] kernel_3mm_B4_merge_out_notcmp46187;
    wire [0:0] kernel_3mm_B4_merge_out_notcmp51156;
    wire [0:0] kernel_3mm_B4_merge_out_notcmp5188_pop40192;
    wire [0:0] kernel_3mm_B4_merge_out_stall_out_0;
    wire [31:0] kernel_3mm_B4_merge_out_unnamed_kernel_3mm2;
    wire [0:0] kernel_3mm_B4_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // kernel_3mm_B4_merge(BLACKBOX,39)
    kernel_3mm_B4_merge thekernel_3mm_B4_merge (
        .in_arrayidx121185_0(in_arrayidx121185_0),
        .in_forked117_0(in_forked117_0),
        .in_forked60_pop24161_0(in_forked60_pop24161_0),
        .in_forked61_pop34188_0(in_forked61_pop34188_0),
        .in_i_060_pop23151_0(in_i_060_pop23151_0),
        .in_i_060_pop2385_pop39182_0(in_i_060_pop2385_pop39182_0),
        .in_idxprom11184_0(in_idxprom11184_0),
        .in_idxprom183_0(in_idxprom183_0),
        .in_memdep_phi2_pop18131_0(in_memdep_phi2_pop18131_0),
        .in_memdep_phi2_pop1868_pop26171_0(in_memdep_phi2_pop1868_pop26171_0),
        .in_memdep_phi2_pop1869_pop36189_0(in_memdep_phi2_pop1869_pop36189_0),
        .in_memdep_phi3_pop19138_0(in_memdep_phi3_pop19138_0),
        .in_memdep_phi3_pop1972_pop27176_0(in_memdep_phi3_pop1972_pop27176_0),
        .in_memdep_phi3_pop1973_pop37190_0(in_memdep_phi3_pop1973_pop37190_0),
        .in_memdep_phi5_pop20145_0(in_memdep_phi5_pop20145_0),
        .in_memdep_phi5_pop2076_pop28181_0(in_memdep_phi5_pop2076_pop28181_0),
        .in_memdep_phi5_pop2077_pop38191_0(in_memdep_phi5_pop2077_pop38191_0),
        .in_memdep_phi_pop17124_0(in_memdep_phi_pop17124_0),
        .in_memdep_phi_pop1764_pop25166_0(in_memdep_phi_pop1764_pop25166_0),
        .in_memdep_phi_pop1765_pop35186_0(in_memdep_phi_pop1765_pop35186_0),
        .in_notcmp46187_0(in_notcmp46187_0),
        .in_notcmp51156_0(in_notcmp51156_0),
        .in_notcmp5188_pop40192_0(in_notcmp5188_pop40192_0),
        .in_stall_in(bb_kernel_3mm_B4_stall_region_out_stall_out),
        .in_unnamed_kernel_3mm2_0(in_unnamed_kernel_3mm2_0),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(kernel_3mm_B4_merge_out_almost_empty_out),
        .out_arrayidx121185(kernel_3mm_B4_merge_out_arrayidx121185),
        .out_empty_out(kernel_3mm_B4_merge_out_empty_out),
        .out_forked117(kernel_3mm_B4_merge_out_forked117),
        .out_forked60_pop24161(kernel_3mm_B4_merge_out_forked60_pop24161),
        .out_forked61_pop34188(kernel_3mm_B4_merge_out_forked61_pop34188),
        .out_i_060_pop23151(kernel_3mm_B4_merge_out_i_060_pop23151),
        .out_i_060_pop2385_pop39182(kernel_3mm_B4_merge_out_i_060_pop2385_pop39182),
        .out_idxprom11184(kernel_3mm_B4_merge_out_idxprom11184),
        .out_idxprom183(kernel_3mm_B4_merge_out_idxprom183),
        .out_memdep_phi2_pop18131(kernel_3mm_B4_merge_out_memdep_phi2_pop18131),
        .out_memdep_phi2_pop1868_pop26171(kernel_3mm_B4_merge_out_memdep_phi2_pop1868_pop26171),
        .out_memdep_phi2_pop1869_pop36189(kernel_3mm_B4_merge_out_memdep_phi2_pop1869_pop36189),
        .out_memdep_phi3_pop19138(kernel_3mm_B4_merge_out_memdep_phi3_pop19138),
        .out_memdep_phi3_pop1972_pop27176(kernel_3mm_B4_merge_out_memdep_phi3_pop1972_pop27176),
        .out_memdep_phi3_pop1973_pop37190(kernel_3mm_B4_merge_out_memdep_phi3_pop1973_pop37190),
        .out_memdep_phi5_pop20145(kernel_3mm_B4_merge_out_memdep_phi5_pop20145),
        .out_memdep_phi5_pop2076_pop28181(kernel_3mm_B4_merge_out_memdep_phi5_pop2076_pop28181),
        .out_memdep_phi5_pop2077_pop38191(kernel_3mm_B4_merge_out_memdep_phi5_pop2077_pop38191),
        .out_memdep_phi_pop17124(kernel_3mm_B4_merge_out_memdep_phi_pop17124),
        .out_memdep_phi_pop1764_pop25166(kernel_3mm_B4_merge_out_memdep_phi_pop1764_pop25166),
        .out_memdep_phi_pop1765_pop35186(kernel_3mm_B4_merge_out_memdep_phi_pop1765_pop35186),
        .out_notcmp46187(kernel_3mm_B4_merge_out_notcmp46187),
        .out_notcmp51156(kernel_3mm_B4_merge_out_notcmp51156),
        .out_notcmp5188_pop40192(kernel_3mm_B4_merge_out_notcmp5188_pop40192),
        .out_stall_out_0(kernel_3mm_B4_merge_out_stall_out_0),
        .out_unnamed_kernel_3mm2(kernel_3mm_B4_merge_out_unnamed_kernel_3mm2),
        .out_valid_out(kernel_3mm_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B4_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B4_stall_region thebb_kernel_3mm_B4_stall_region (
        .in_almost_empty_in(kernel_3mm_B4_merge_out_almost_empty_out),
        .in_arrayidx121185(kernel_3mm_B4_merge_out_arrayidx121185),
        .in_empty_in(kernel_3mm_B4_merge_out_empty_out),
        .in_flush(in_flush),
        .in_forked117(kernel_3mm_B4_merge_out_forked117),
        .in_forked60_pop24161(kernel_3mm_B4_merge_out_forked60_pop24161),
        .in_forked61_pop34188(kernel_3mm_B4_merge_out_forked61_pop34188),
        .in_i_060_pop23151(kernel_3mm_B4_merge_out_i_060_pop23151),
        .in_i_060_pop2385_pop39182(kernel_3mm_B4_merge_out_i_060_pop2385_pop39182),
        .in_idxprom11184(kernel_3mm_B4_merge_out_idxprom11184),
        .in_idxprom183(kernel_3mm_B4_merge_out_idxprom183),
        .in_memdep_phi2_pop18131(kernel_3mm_B4_merge_out_memdep_phi2_pop18131),
        .in_memdep_phi2_pop1868_pop26171(kernel_3mm_B4_merge_out_memdep_phi2_pop1868_pop26171),
        .in_memdep_phi2_pop1869_pop36189(kernel_3mm_B4_merge_out_memdep_phi2_pop1869_pop36189),
        .in_memdep_phi3_pop19138(kernel_3mm_B4_merge_out_memdep_phi3_pop19138),
        .in_memdep_phi3_pop1972_pop27176(kernel_3mm_B4_merge_out_memdep_phi3_pop1972_pop27176),
        .in_memdep_phi3_pop1973_pop37190(kernel_3mm_B4_merge_out_memdep_phi3_pop1973_pop37190),
        .in_memdep_phi5_pop20145(kernel_3mm_B4_merge_out_memdep_phi5_pop20145),
        .in_memdep_phi5_pop2076_pop28181(kernel_3mm_B4_merge_out_memdep_phi5_pop2076_pop28181),
        .in_memdep_phi5_pop2077_pop38191(kernel_3mm_B4_merge_out_memdep_phi5_pop2077_pop38191),
        .in_memdep_phi_pop17124(kernel_3mm_B4_merge_out_memdep_phi_pop17124),
        .in_memdep_phi_pop1764_pop25166(kernel_3mm_B4_merge_out_memdep_phi_pop1764_pop25166),
        .in_memdep_phi_pop1765_pop35186(kernel_3mm_B4_merge_out_memdep_phi_pop1765_pop35186),
        .in_notcmp46187(kernel_3mm_B4_merge_out_notcmp46187),
        .in_notcmp51156(kernel_3mm_B4_merge_out_notcmp51156),
        .in_notcmp5188_pop40192(kernel_3mm_B4_merge_out_notcmp5188_pop40192),
        .in_stall_in(kernel_3mm_B4_branch_out_stall_out),
        .in_unnamed_kernel_3mm2(kernel_3mm_B4_merge_out_unnamed_kernel_3mm2),
        .in_unnamed_kernel_3mm3_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm3_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm3_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm3_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm3_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm3_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm3_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm3_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack),
        .in_valid_in(kernel_3mm_B4_merge_out_valid_out),
        .out_almost_empty_out(bb_kernel_3mm_B4_stall_region_out_almost_empty_out),
        .out_c0_exe10375(bb_kernel_3mm_B4_stall_region_out_c0_exe10375),
        .out_c0_exe11376(bb_kernel_3mm_B4_stall_region_out_c0_exe11376),
        .out_c0_exe12377(bb_kernel_3mm_B4_stall_region_out_c0_exe12377),
        .out_c0_exe13378(bb_kernel_3mm_B4_stall_region_out_c0_exe13378),
        .out_c0_exe1366(bb_kernel_3mm_B4_stall_region_out_c0_exe1366),
        .out_c0_exe14379(bb_kernel_3mm_B4_stall_region_out_c0_exe14379),
        .out_c0_exe15380(bb_kernel_3mm_B4_stall_region_out_c0_exe15380),
        .out_c0_exe16381(bb_kernel_3mm_B4_stall_region_out_c0_exe16381),
        .out_c0_exe17382(bb_kernel_3mm_B4_stall_region_out_c0_exe17382),
        .out_c0_exe18383(bb_kernel_3mm_B4_stall_region_out_c0_exe18383),
        .out_c0_exe19384(bb_kernel_3mm_B4_stall_region_out_c0_exe19384),
        .out_c0_exe20385(bb_kernel_3mm_B4_stall_region_out_c0_exe20385),
        .out_c0_exe21386(bb_kernel_3mm_B4_stall_region_out_c0_exe21386),
        .out_c0_exe22387(bb_kernel_3mm_B4_stall_region_out_c0_exe22387),
        .out_c0_exe23388(bb_kernel_3mm_B4_stall_region_out_c0_exe23388),
        .out_c0_exe2367(bb_kernel_3mm_B4_stall_region_out_c0_exe2367),
        .out_c0_exe24389(bb_kernel_3mm_B4_stall_region_out_c0_exe24389),
        .out_c0_exe25390(bb_kernel_3mm_B4_stall_region_out_c0_exe25390),
        .out_c0_exe26(bb_kernel_3mm_B4_stall_region_out_c0_exe26),
        .out_c0_exe3368(bb_kernel_3mm_B4_stall_region_out_c0_exe3368),
        .out_c0_exe5370(bb_kernel_3mm_B4_stall_region_out_c0_exe5370),
        .out_c0_exe6371(bb_kernel_3mm_B4_stall_region_out_c0_exe6371),
        .out_c0_exe7372(bb_kernel_3mm_B4_stall_region_out_c0_exe7372),
        .out_c0_exe8373(bb_kernel_3mm_B4_stall_region_out_c0_exe8373),
        .out_c0_exe9374(bb_kernel_3mm_B4_stall_region_out_c0_exe9374),
        .out_empty_out(bb_kernel_3mm_B4_stall_region_out_empty_out),
        .out_profile_loop_o_valid(bb_kernel_3mm_B4_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_kernel_3mm_B4_stall_region_out_stall_out),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_address(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm3_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_enable(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm3_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_read(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm3_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_write(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm3_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_address(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_enable(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_read(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_write(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata(bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata),
        .out_valid_out(bb_kernel_3mm_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B4_branch(BLACKBOX,38)
    kernel_3mm_B4_branch thekernel_3mm_B4_branch (
        .in_almost_empty_in(bb_kernel_3mm_B4_stall_region_out_almost_empty_out),
        .in_c0_exe10375(bb_kernel_3mm_B4_stall_region_out_c0_exe10375),
        .in_c0_exe11376(bb_kernel_3mm_B4_stall_region_out_c0_exe11376),
        .in_c0_exe12377(bb_kernel_3mm_B4_stall_region_out_c0_exe12377),
        .in_c0_exe13378(bb_kernel_3mm_B4_stall_region_out_c0_exe13378),
        .in_c0_exe1366(bb_kernel_3mm_B4_stall_region_out_c0_exe1366),
        .in_c0_exe14379(bb_kernel_3mm_B4_stall_region_out_c0_exe14379),
        .in_c0_exe15380(bb_kernel_3mm_B4_stall_region_out_c0_exe15380),
        .in_c0_exe16381(bb_kernel_3mm_B4_stall_region_out_c0_exe16381),
        .in_c0_exe17382(bb_kernel_3mm_B4_stall_region_out_c0_exe17382),
        .in_c0_exe18383(bb_kernel_3mm_B4_stall_region_out_c0_exe18383),
        .in_c0_exe19384(bb_kernel_3mm_B4_stall_region_out_c0_exe19384),
        .in_c0_exe20385(bb_kernel_3mm_B4_stall_region_out_c0_exe20385),
        .in_c0_exe21386(bb_kernel_3mm_B4_stall_region_out_c0_exe21386),
        .in_c0_exe22387(bb_kernel_3mm_B4_stall_region_out_c0_exe22387),
        .in_c0_exe23388(bb_kernel_3mm_B4_stall_region_out_c0_exe23388),
        .in_c0_exe2367(bb_kernel_3mm_B4_stall_region_out_c0_exe2367),
        .in_c0_exe24389(bb_kernel_3mm_B4_stall_region_out_c0_exe24389),
        .in_c0_exe25390(bb_kernel_3mm_B4_stall_region_out_c0_exe25390),
        .in_c0_exe26(bb_kernel_3mm_B4_stall_region_out_c0_exe26),
        .in_c0_exe3368(bb_kernel_3mm_B4_stall_region_out_c0_exe3368),
        .in_c0_exe5370(bb_kernel_3mm_B4_stall_region_out_c0_exe5370),
        .in_c0_exe6371(bb_kernel_3mm_B4_stall_region_out_c0_exe6371),
        .in_c0_exe7372(bb_kernel_3mm_B4_stall_region_out_c0_exe7372),
        .in_c0_exe8373(bb_kernel_3mm_B4_stall_region_out_c0_exe8373),
        .in_c0_exe9374(bb_kernel_3mm_B4_stall_region_out_c0_exe9374),
        .in_empty_in(bb_kernel_3mm_B4_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_3mm_B4_stall_region_out_valid_out),
        .out_c0_exe10375(kernel_3mm_B4_branch_out_c0_exe10375),
        .out_c0_exe11376(kernel_3mm_B4_branch_out_c0_exe11376),
        .out_c0_exe12377(kernel_3mm_B4_branch_out_c0_exe12377),
        .out_c0_exe13378(kernel_3mm_B4_branch_out_c0_exe13378),
        .out_c0_exe1366(kernel_3mm_B4_branch_out_c0_exe1366),
        .out_c0_exe14379(kernel_3mm_B4_branch_out_c0_exe14379),
        .out_c0_exe15380(kernel_3mm_B4_branch_out_c0_exe15380),
        .out_c0_exe16381(kernel_3mm_B4_branch_out_c0_exe16381),
        .out_c0_exe17382(kernel_3mm_B4_branch_out_c0_exe17382),
        .out_c0_exe18383(kernel_3mm_B4_branch_out_c0_exe18383),
        .out_c0_exe19384(kernel_3mm_B4_branch_out_c0_exe19384),
        .out_c0_exe20385(kernel_3mm_B4_branch_out_c0_exe20385),
        .out_c0_exe21386(kernel_3mm_B4_branch_out_c0_exe21386),
        .out_c0_exe22387(kernel_3mm_B4_branch_out_c0_exe22387),
        .out_c0_exe23388(kernel_3mm_B4_branch_out_c0_exe23388),
        .out_c0_exe2367(kernel_3mm_B4_branch_out_c0_exe2367),
        .out_c0_exe24389(kernel_3mm_B4_branch_out_c0_exe24389),
        .out_c0_exe25390(kernel_3mm_B4_branch_out_c0_exe25390),
        .out_c0_exe26(kernel_3mm_B4_branch_out_c0_exe26),
        .out_c0_exe3368(kernel_3mm_B4_branch_out_c0_exe3368),
        .out_c0_exe6371(kernel_3mm_B4_branch_out_c0_exe6371),
        .out_c0_exe7372(kernel_3mm_B4_branch_out_c0_exe7372),
        .out_c0_exe8373(kernel_3mm_B4_branch_out_c0_exe8373),
        .out_c0_exe9374(kernel_3mm_B4_branch_out_c0_exe9374),
        .out_stall_out(kernel_3mm_B4_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10375(GPOUT,40)
    assign out_c0_exe10375 = kernel_3mm_B4_branch_out_c0_exe10375;

    // out_c0_exe11376(GPOUT,41)
    assign out_c0_exe11376 = kernel_3mm_B4_branch_out_c0_exe11376;

    // out_c0_exe12377(GPOUT,42)
    assign out_c0_exe12377 = kernel_3mm_B4_branch_out_c0_exe12377;

    // out_c0_exe13378(GPOUT,43)
    assign out_c0_exe13378 = kernel_3mm_B4_branch_out_c0_exe13378;

    // out_c0_exe1366(GPOUT,44)
    assign out_c0_exe1366 = kernel_3mm_B4_branch_out_c0_exe1366;

    // out_c0_exe14379(GPOUT,45)
    assign out_c0_exe14379 = kernel_3mm_B4_branch_out_c0_exe14379;

    // out_c0_exe15380(GPOUT,46)
    assign out_c0_exe15380 = kernel_3mm_B4_branch_out_c0_exe15380;

    // out_c0_exe16381(GPOUT,47)
    assign out_c0_exe16381 = kernel_3mm_B4_branch_out_c0_exe16381;

    // out_c0_exe17382(GPOUT,48)
    assign out_c0_exe17382 = kernel_3mm_B4_branch_out_c0_exe17382;

    // out_c0_exe18383(GPOUT,49)
    assign out_c0_exe18383 = kernel_3mm_B4_branch_out_c0_exe18383;

    // out_c0_exe19384(GPOUT,50)
    assign out_c0_exe19384 = kernel_3mm_B4_branch_out_c0_exe19384;

    // out_c0_exe20385(GPOUT,51)
    assign out_c0_exe20385 = kernel_3mm_B4_branch_out_c0_exe20385;

    // out_c0_exe21386(GPOUT,52)
    assign out_c0_exe21386 = kernel_3mm_B4_branch_out_c0_exe21386;

    // out_c0_exe22387(GPOUT,53)
    assign out_c0_exe22387 = kernel_3mm_B4_branch_out_c0_exe22387;

    // out_c0_exe23388(GPOUT,54)
    assign out_c0_exe23388 = kernel_3mm_B4_branch_out_c0_exe23388;

    // out_c0_exe2367(GPOUT,55)
    assign out_c0_exe2367 = kernel_3mm_B4_branch_out_c0_exe2367;

    // out_c0_exe24389(GPOUT,56)
    assign out_c0_exe24389 = kernel_3mm_B4_branch_out_c0_exe24389;

    // out_c0_exe25390(GPOUT,57)
    assign out_c0_exe25390 = kernel_3mm_B4_branch_out_c0_exe25390;

    // out_c0_exe26(GPOUT,58)
    assign out_c0_exe26 = kernel_3mm_B4_branch_out_c0_exe26;

    // out_c0_exe3368(GPOUT,59)
    assign out_c0_exe3368 = kernel_3mm_B4_branch_out_c0_exe3368;

    // out_c0_exe6371(GPOUT,60)
    assign out_c0_exe6371 = kernel_3mm_B4_branch_out_c0_exe6371;

    // out_c0_exe7372(GPOUT,61)
    assign out_c0_exe7372 = kernel_3mm_B4_branch_out_c0_exe7372;

    // out_c0_exe8373(GPOUT,62)
    assign out_c0_exe8373 = kernel_3mm_B4_branch_out_c0_exe8373;

    // out_c0_exe9374(GPOUT,63)
    assign out_c0_exe9374 = kernel_3mm_B4_branch_out_c0_exe9374;

    // out_profile_loop_o_valid(GPOUT,64)
    assign out_profile_loop_o_valid = bb_kernel_3mm_B4_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,65)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,66)
    assign out_stall_out_0 = kernel_3mm_B4_merge_out_stall_out_0;

    // out_unnamed_kernel_3mm3_kernel_3mm_avm_address(GPOUT,67)
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_address = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm3_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount(GPOUT,68)
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable(GPOUT,69)
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm3_kernel_3mm_avm_enable(GPOUT,70)
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_enable = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm3_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm3_kernel_3mm_avm_read(GPOUT,71)
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_read = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm3_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm3_kernel_3mm_avm_write(GPOUT,72)
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_write = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm3_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata(GPOUT,73)
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_address(GPOUT,74)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_address = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount(GPOUT,75)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable(GPOUT,76)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_enable(GPOUT,77)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_enable = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_read(GPOUT,78)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_read = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_write(GPOUT,79)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_write = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata(GPOUT,80)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata = bb_kernel_3mm_B4_stall_region_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata;

    // out_valid_in_0(GPOUT,81)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,82)
    assign out_valid_out_0 = kernel_3mm_B4_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,83)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
