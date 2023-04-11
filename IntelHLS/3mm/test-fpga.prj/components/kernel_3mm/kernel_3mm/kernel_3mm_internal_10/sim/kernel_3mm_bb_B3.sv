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

// SystemVerilog created from bb_kernel_3mm_B3
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B3 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked107_0,
    input wire [0:0] in_forked107_1,
    input wire [0:0] in_forked81138_0,
    input wire [0:0] in_forked81138_1,
    input wire [0:0] in_forked8183_pop24177_0,
    input wire [0:0] in_forked8183_pop24177_1,
    input wire [31:0] in_i_060_pop23167_0,
    input wire [31:0] in_i_060_pop23167_1,
    input wire [0:0] in_memdep_phi2_pop18152_0,
    input wire [0:0] in_memdep_phi2_pop18152_1,
    input wire [0:0] in_memdep_phi2_pop1891_pop26187_0,
    input wire [0:0] in_memdep_phi2_pop1891_pop26187_1,
    input wire [0:0] in_memdep_phi3_pop19159_0,
    input wire [0:0] in_memdep_phi3_pop19159_1,
    input wire [0:0] in_memdep_phi3_pop1995_pop27192_0,
    input wire [0:0] in_memdep_phi3_pop1995_pop27192_1,
    input wire [0:0] in_memdep_phi5_pop20166_0,
    input wire [0:0] in_memdep_phi5_pop20166_1,
    input wire [0:0] in_memdep_phi5_pop2099_pop28197_0,
    input wire [0:0] in_memdep_phi5_pop2099_pop28197_1,
    input wire [0:0] in_memdep_phi_pop17145_0,
    input wire [0:0] in_memdep_phi_pop17145_1,
    input wire [0:0] in_memdep_phi_pop1787_pop25182_0,
    input wire [0:0] in_memdep_phi_pop1787_pop25182_1,
    input wire [0:0] in_notcmp73172_0,
    input wire [0:0] in_notcmp73172_1,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_kernel_3mm2_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm2_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm2_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm2_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10329,
    output wire [0:0] out_c0_exe11330,
    output wire [0:0] out_c0_exe12331,
    output wire [31:0] out_c0_exe1320,
    output wire [0:0] out_c0_exe13332,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_c0_exe15,
    output wire [0:0] out_c0_exe16,
    output wire [0:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [31:0] out_c0_exe19,
    output wire [0:0] out_c0_exe20,
    output wire [0:0] out_c0_exe21,
    output wire [0:0] out_c0_exe22,
    output wire [0:0] out_c0_exe23,
    output wire [63:0] out_c0_exe2321,
    output wire [0:0] out_c0_exe24,
    output wire [0:0] out_c0_exe25,
    output wire [63:0] out_c0_exe3322,
    output wire [63:0] out_c0_exe4323,
    output wire [0:0] out_c0_exe5324,
    output wire [31:0] out_c0_exe6325,
    output wire [0:0] out_c0_exe8327,
    output wire [0:0] out_c0_exe9328,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_3mm2_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm2_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm2_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm2_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe10329;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe11330;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe12331;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_c0_exe1320;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe13332;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe14;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe15;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe16;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe17;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe18;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_c0_exe19;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe20;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe21;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe22;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe23;
    wire [63:0] bb_kernel_3mm_B3_stall_region_out_c0_exe2321;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe24;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe25;
    wire [63:0] bb_kernel_3mm_B3_stall_region_out_c0_exe3322;
    wire [63:0] bb_kernel_3mm_B3_stall_region_out_c0_exe4323;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe5324;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_c0_exe6325;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe8327;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe9328;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_stall_out;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm2_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm2_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm2_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm2_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_valid_out;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe10329;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe11330;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe12331;
    wire [31:0] kernel_3mm_B3_branch_out_c0_exe1320;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe13332;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe14;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe15;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe16;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe17;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe18;
    wire [31:0] kernel_3mm_B3_branch_out_c0_exe19;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe20;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe21;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe22;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe23;
    wire [63:0] kernel_3mm_B3_branch_out_c0_exe2321;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe24;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe25;
    wire [63:0] kernel_3mm_B3_branch_out_c0_exe3322;
    wire [63:0] kernel_3mm_B3_branch_out_c0_exe4323;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe5324;
    wire [31:0] kernel_3mm_B3_branch_out_c0_exe6325;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe8327;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe9328;
    wire [0:0] kernel_3mm_B3_branch_out_stall_out;
    wire [0:0] kernel_3mm_B3_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B3_merge_out_forked107;
    wire [0:0] kernel_3mm_B3_merge_out_forked81138;
    wire [0:0] kernel_3mm_B3_merge_out_forked8183_pop24177;
    wire [31:0] kernel_3mm_B3_merge_out_i_060_pop23167;
    wire [0:0] kernel_3mm_B3_merge_out_memdep_phi2_pop18152;
    wire [0:0] kernel_3mm_B3_merge_out_memdep_phi2_pop1891_pop26187;
    wire [0:0] kernel_3mm_B3_merge_out_memdep_phi3_pop19159;
    wire [0:0] kernel_3mm_B3_merge_out_memdep_phi3_pop1995_pop27192;
    wire [0:0] kernel_3mm_B3_merge_out_memdep_phi5_pop20166;
    wire [0:0] kernel_3mm_B3_merge_out_memdep_phi5_pop2099_pop28197;
    wire [0:0] kernel_3mm_B3_merge_out_memdep_phi_pop17145;
    wire [0:0] kernel_3mm_B3_merge_out_memdep_phi_pop1787_pop25182;
    wire [0:0] kernel_3mm_B3_merge_out_notcmp73172;
    wire [0:0] kernel_3mm_B3_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B3_merge_out_stall_out_1;
    wire [0:0] kernel_3mm_B3_merge_out_valid_out;


    // kernel_3mm_B3_merge(BLACKBOX,38)
    kernel_3mm_B3_merge thekernel_3mm_B3_merge (
        .in_forked107_0(in_forked107_0),
        .in_forked107_1(in_forked107_1),
        .in_forked81138_0(in_forked81138_0),
        .in_forked81138_1(in_forked81138_1),
        .in_forked8183_pop24177_0(in_forked8183_pop24177_0),
        .in_forked8183_pop24177_1(in_forked8183_pop24177_1),
        .in_i_060_pop23167_0(in_i_060_pop23167_0),
        .in_i_060_pop23167_1(in_i_060_pop23167_1),
        .in_memdep_phi2_pop18152_0(in_memdep_phi2_pop18152_0),
        .in_memdep_phi2_pop18152_1(in_memdep_phi2_pop18152_1),
        .in_memdep_phi2_pop1891_pop26187_0(in_memdep_phi2_pop1891_pop26187_0),
        .in_memdep_phi2_pop1891_pop26187_1(in_memdep_phi2_pop1891_pop26187_1),
        .in_memdep_phi3_pop19159_0(in_memdep_phi3_pop19159_0),
        .in_memdep_phi3_pop19159_1(in_memdep_phi3_pop19159_1),
        .in_memdep_phi3_pop1995_pop27192_0(in_memdep_phi3_pop1995_pop27192_0),
        .in_memdep_phi3_pop1995_pop27192_1(in_memdep_phi3_pop1995_pop27192_1),
        .in_memdep_phi5_pop20166_0(in_memdep_phi5_pop20166_0),
        .in_memdep_phi5_pop20166_1(in_memdep_phi5_pop20166_1),
        .in_memdep_phi5_pop2099_pop28197_0(in_memdep_phi5_pop2099_pop28197_0),
        .in_memdep_phi5_pop2099_pop28197_1(in_memdep_phi5_pop2099_pop28197_1),
        .in_memdep_phi_pop17145_0(in_memdep_phi_pop17145_0),
        .in_memdep_phi_pop17145_1(in_memdep_phi_pop17145_1),
        .in_memdep_phi_pop1787_pop25182_0(in_memdep_phi_pop1787_pop25182_0),
        .in_memdep_phi_pop1787_pop25182_1(in_memdep_phi_pop1787_pop25182_1),
        .in_notcmp73172_0(in_notcmp73172_0),
        .in_notcmp73172_1(in_notcmp73172_1),
        .in_stall_in(bb_kernel_3mm_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked107(kernel_3mm_B3_merge_out_forked107),
        .out_forked81138(kernel_3mm_B3_merge_out_forked81138),
        .out_forked8183_pop24177(kernel_3mm_B3_merge_out_forked8183_pop24177),
        .out_i_060_pop23167(kernel_3mm_B3_merge_out_i_060_pop23167),
        .out_memdep_phi2_pop18152(kernel_3mm_B3_merge_out_memdep_phi2_pop18152),
        .out_memdep_phi2_pop1891_pop26187(kernel_3mm_B3_merge_out_memdep_phi2_pop1891_pop26187),
        .out_memdep_phi3_pop19159(kernel_3mm_B3_merge_out_memdep_phi3_pop19159),
        .out_memdep_phi3_pop1995_pop27192(kernel_3mm_B3_merge_out_memdep_phi3_pop1995_pop27192),
        .out_memdep_phi5_pop20166(kernel_3mm_B3_merge_out_memdep_phi5_pop20166),
        .out_memdep_phi5_pop2099_pop28197(kernel_3mm_B3_merge_out_memdep_phi5_pop2099_pop28197),
        .out_memdep_phi_pop17145(kernel_3mm_B3_merge_out_memdep_phi_pop17145),
        .out_memdep_phi_pop1787_pop25182(kernel_3mm_B3_merge_out_memdep_phi_pop1787_pop25182),
        .out_notcmp73172(kernel_3mm_B3_merge_out_notcmp73172),
        .out_stall_out_0(kernel_3mm_B3_merge_out_stall_out_0),
        .out_stall_out_1(kernel_3mm_B3_merge_out_stall_out_1),
        .out_valid_out(kernel_3mm_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B3_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B3_stall_region thebb_kernel_3mm_B3_stall_region (
        .in_flush(in_flush),
        .in_forked107(kernel_3mm_B3_merge_out_forked107),
        .in_forked81138(kernel_3mm_B3_merge_out_forked81138),
        .in_forked8183_pop24177(kernel_3mm_B3_merge_out_forked8183_pop24177),
        .in_i_060_pop23167(kernel_3mm_B3_merge_out_i_060_pop23167),
        .in_memdep_phi2_pop18152(kernel_3mm_B3_merge_out_memdep_phi2_pop18152),
        .in_memdep_phi2_pop1891_pop26187(kernel_3mm_B3_merge_out_memdep_phi2_pop1891_pop26187),
        .in_memdep_phi3_pop19159(kernel_3mm_B3_merge_out_memdep_phi3_pop19159),
        .in_memdep_phi3_pop1995_pop27192(kernel_3mm_B3_merge_out_memdep_phi3_pop1995_pop27192),
        .in_memdep_phi5_pop20166(kernel_3mm_B3_merge_out_memdep_phi5_pop20166),
        .in_memdep_phi5_pop2099_pop28197(kernel_3mm_B3_merge_out_memdep_phi5_pop2099_pop28197),
        .in_memdep_phi_pop17145(kernel_3mm_B3_merge_out_memdep_phi_pop17145),
        .in_memdep_phi_pop1787_pop25182(kernel_3mm_B3_merge_out_memdep_phi_pop1787_pop25182),
        .in_notcmp73172(kernel_3mm_B3_merge_out_notcmp73172),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_3mm_B3_branch_out_stall_out),
        .in_unnamed_kernel_3mm2_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm2_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm2_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm2_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm2_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm2_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm2_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm2_kernel_3mm_avm_writeack),
        .in_valid_in(kernel_3mm_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_exiting_stall_out(bb_kernel_3mm_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_exiting_valid_out(bb_kernel_3mm_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_exiting_valid_out),
        .out_c0_exe10329(bb_kernel_3mm_B3_stall_region_out_c0_exe10329),
        .out_c0_exe11330(bb_kernel_3mm_B3_stall_region_out_c0_exe11330),
        .out_c0_exe12331(bb_kernel_3mm_B3_stall_region_out_c0_exe12331),
        .out_c0_exe1320(bb_kernel_3mm_B3_stall_region_out_c0_exe1320),
        .out_c0_exe13332(bb_kernel_3mm_B3_stall_region_out_c0_exe13332),
        .out_c0_exe14(bb_kernel_3mm_B3_stall_region_out_c0_exe14),
        .out_c0_exe15(bb_kernel_3mm_B3_stall_region_out_c0_exe15),
        .out_c0_exe16(bb_kernel_3mm_B3_stall_region_out_c0_exe16),
        .out_c0_exe17(bb_kernel_3mm_B3_stall_region_out_c0_exe17),
        .out_c0_exe18(bb_kernel_3mm_B3_stall_region_out_c0_exe18),
        .out_c0_exe19(bb_kernel_3mm_B3_stall_region_out_c0_exe19),
        .out_c0_exe20(bb_kernel_3mm_B3_stall_region_out_c0_exe20),
        .out_c0_exe21(bb_kernel_3mm_B3_stall_region_out_c0_exe21),
        .out_c0_exe22(bb_kernel_3mm_B3_stall_region_out_c0_exe22),
        .out_c0_exe23(bb_kernel_3mm_B3_stall_region_out_c0_exe23),
        .out_c0_exe2321(bb_kernel_3mm_B3_stall_region_out_c0_exe2321),
        .out_c0_exe24(bb_kernel_3mm_B3_stall_region_out_c0_exe24),
        .out_c0_exe25(bb_kernel_3mm_B3_stall_region_out_c0_exe25),
        .out_c0_exe3322(bb_kernel_3mm_B3_stall_region_out_c0_exe3322),
        .out_c0_exe4323(bb_kernel_3mm_B3_stall_region_out_c0_exe4323),
        .out_c0_exe5324(bb_kernel_3mm_B3_stall_region_out_c0_exe5324),
        .out_c0_exe6325(bb_kernel_3mm_B3_stall_region_out_c0_exe6325),
        .out_c0_exe8327(bb_kernel_3mm_B3_stall_region_out_c0_exe8327),
        .out_c0_exe9328(bb_kernel_3mm_B3_stall_region_out_c0_exe9328),
        .out_pipeline_valid_out(bb_kernel_3mm_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_3mm_B3_stall_region_out_stall_out),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_address(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm2_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_enable(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm2_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_read(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm2_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_write(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm2_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata),
        .out_valid_out(bb_kernel_3mm_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B3_branch(BLACKBOX,37)
    kernel_3mm_B3_branch thekernel_3mm_B3_branch (
        .in_c0_exe10329(bb_kernel_3mm_B3_stall_region_out_c0_exe10329),
        .in_c0_exe11330(bb_kernel_3mm_B3_stall_region_out_c0_exe11330),
        .in_c0_exe12331(bb_kernel_3mm_B3_stall_region_out_c0_exe12331),
        .in_c0_exe1320(bb_kernel_3mm_B3_stall_region_out_c0_exe1320),
        .in_c0_exe13332(bb_kernel_3mm_B3_stall_region_out_c0_exe13332),
        .in_c0_exe14(bb_kernel_3mm_B3_stall_region_out_c0_exe14),
        .in_c0_exe15(bb_kernel_3mm_B3_stall_region_out_c0_exe15),
        .in_c0_exe16(bb_kernel_3mm_B3_stall_region_out_c0_exe16),
        .in_c0_exe17(bb_kernel_3mm_B3_stall_region_out_c0_exe17),
        .in_c0_exe18(bb_kernel_3mm_B3_stall_region_out_c0_exe18),
        .in_c0_exe19(bb_kernel_3mm_B3_stall_region_out_c0_exe19),
        .in_c0_exe20(bb_kernel_3mm_B3_stall_region_out_c0_exe20),
        .in_c0_exe21(bb_kernel_3mm_B3_stall_region_out_c0_exe21),
        .in_c0_exe22(bb_kernel_3mm_B3_stall_region_out_c0_exe22),
        .in_c0_exe23(bb_kernel_3mm_B3_stall_region_out_c0_exe23),
        .in_c0_exe2321(bb_kernel_3mm_B3_stall_region_out_c0_exe2321),
        .in_c0_exe24(bb_kernel_3mm_B3_stall_region_out_c0_exe24),
        .in_c0_exe25(bb_kernel_3mm_B3_stall_region_out_c0_exe25),
        .in_c0_exe3322(bb_kernel_3mm_B3_stall_region_out_c0_exe3322),
        .in_c0_exe4323(bb_kernel_3mm_B3_stall_region_out_c0_exe4323),
        .in_c0_exe5324(bb_kernel_3mm_B3_stall_region_out_c0_exe5324),
        .in_c0_exe6325(bb_kernel_3mm_B3_stall_region_out_c0_exe6325),
        .in_c0_exe8327(bb_kernel_3mm_B3_stall_region_out_c0_exe8327),
        .in_c0_exe9328(bb_kernel_3mm_B3_stall_region_out_c0_exe9328),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_3mm_B3_stall_region_out_valid_out),
        .out_c0_exe10329(kernel_3mm_B3_branch_out_c0_exe10329),
        .out_c0_exe11330(kernel_3mm_B3_branch_out_c0_exe11330),
        .out_c0_exe12331(kernel_3mm_B3_branch_out_c0_exe12331),
        .out_c0_exe1320(kernel_3mm_B3_branch_out_c0_exe1320),
        .out_c0_exe13332(kernel_3mm_B3_branch_out_c0_exe13332),
        .out_c0_exe14(kernel_3mm_B3_branch_out_c0_exe14),
        .out_c0_exe15(kernel_3mm_B3_branch_out_c0_exe15),
        .out_c0_exe16(kernel_3mm_B3_branch_out_c0_exe16),
        .out_c0_exe17(kernel_3mm_B3_branch_out_c0_exe17),
        .out_c0_exe18(kernel_3mm_B3_branch_out_c0_exe18),
        .out_c0_exe19(kernel_3mm_B3_branch_out_c0_exe19),
        .out_c0_exe20(kernel_3mm_B3_branch_out_c0_exe20),
        .out_c0_exe21(kernel_3mm_B3_branch_out_c0_exe21),
        .out_c0_exe22(kernel_3mm_B3_branch_out_c0_exe22),
        .out_c0_exe23(kernel_3mm_B3_branch_out_c0_exe23),
        .out_c0_exe2321(kernel_3mm_B3_branch_out_c0_exe2321),
        .out_c0_exe24(kernel_3mm_B3_branch_out_c0_exe24),
        .out_c0_exe25(kernel_3mm_B3_branch_out_c0_exe25),
        .out_c0_exe3322(kernel_3mm_B3_branch_out_c0_exe3322),
        .out_c0_exe4323(kernel_3mm_B3_branch_out_c0_exe4323),
        .out_c0_exe5324(kernel_3mm_B3_branch_out_c0_exe5324),
        .out_c0_exe6325(kernel_3mm_B3_branch_out_c0_exe6325),
        .out_c0_exe8327(kernel_3mm_B3_branch_out_c0_exe8327),
        .out_c0_exe9328(kernel_3mm_B3_branch_out_c0_exe9328),
        .out_stall_out(kernel_3mm_B3_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10329(GPOUT,39)
    assign out_c0_exe10329 = kernel_3mm_B3_branch_out_c0_exe10329;

    // out_c0_exe11330(GPOUT,40)
    assign out_c0_exe11330 = kernel_3mm_B3_branch_out_c0_exe11330;

    // out_c0_exe12331(GPOUT,41)
    assign out_c0_exe12331 = kernel_3mm_B3_branch_out_c0_exe12331;

    // out_c0_exe1320(GPOUT,42)
    assign out_c0_exe1320 = kernel_3mm_B3_branch_out_c0_exe1320;

    // out_c0_exe13332(GPOUT,43)
    assign out_c0_exe13332 = kernel_3mm_B3_branch_out_c0_exe13332;

    // out_c0_exe14(GPOUT,44)
    assign out_c0_exe14 = kernel_3mm_B3_branch_out_c0_exe14;

    // out_c0_exe15(GPOUT,45)
    assign out_c0_exe15 = kernel_3mm_B3_branch_out_c0_exe15;

    // out_c0_exe16(GPOUT,46)
    assign out_c0_exe16 = kernel_3mm_B3_branch_out_c0_exe16;

    // out_c0_exe17(GPOUT,47)
    assign out_c0_exe17 = kernel_3mm_B3_branch_out_c0_exe17;

    // out_c0_exe18(GPOUT,48)
    assign out_c0_exe18 = kernel_3mm_B3_branch_out_c0_exe18;

    // out_c0_exe19(GPOUT,49)
    assign out_c0_exe19 = kernel_3mm_B3_branch_out_c0_exe19;

    // out_c0_exe20(GPOUT,50)
    assign out_c0_exe20 = kernel_3mm_B3_branch_out_c0_exe20;

    // out_c0_exe21(GPOUT,51)
    assign out_c0_exe21 = kernel_3mm_B3_branch_out_c0_exe21;

    // out_c0_exe22(GPOUT,52)
    assign out_c0_exe22 = kernel_3mm_B3_branch_out_c0_exe22;

    // out_c0_exe23(GPOUT,53)
    assign out_c0_exe23 = kernel_3mm_B3_branch_out_c0_exe23;

    // out_c0_exe2321(GPOUT,54)
    assign out_c0_exe2321 = kernel_3mm_B3_branch_out_c0_exe2321;

    // out_c0_exe24(GPOUT,55)
    assign out_c0_exe24 = kernel_3mm_B3_branch_out_c0_exe24;

    // out_c0_exe25(GPOUT,56)
    assign out_c0_exe25 = kernel_3mm_B3_branch_out_c0_exe25;

    // out_c0_exe3322(GPOUT,57)
    assign out_c0_exe3322 = kernel_3mm_B3_branch_out_c0_exe3322;

    // out_c0_exe4323(GPOUT,58)
    assign out_c0_exe4323 = kernel_3mm_B3_branch_out_c0_exe4323;

    // out_c0_exe5324(GPOUT,59)
    assign out_c0_exe5324 = kernel_3mm_B3_branch_out_c0_exe5324;

    // out_c0_exe6325(GPOUT,60)
    assign out_c0_exe6325 = kernel_3mm_B3_branch_out_c0_exe6325;

    // out_c0_exe8327(GPOUT,61)
    assign out_c0_exe8327 = kernel_3mm_B3_branch_out_c0_exe8327;

    // out_c0_exe9328(GPOUT,62)
    assign out_c0_exe9328 = kernel_3mm_B3_branch_out_c0_exe9328;

    // out_exiting_stall_out(GPOUT,63)
    assign out_exiting_stall_out = bb_kernel_3mm_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,64)
    assign out_exiting_valid_out = bb_kernel_3mm_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_exiting_valid_out;

    // out_stall_out_0(GPOUT,65)
    assign out_stall_out_0 = kernel_3mm_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,66)
    assign out_stall_out_1 = kernel_3mm_B3_merge_out_stall_out_1;

    // out_unnamed_kernel_3mm2_kernel_3mm_avm_address(GPOUT,67)
    assign out_unnamed_kernel_3mm2_kernel_3mm_avm_address = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm2_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount(GPOUT,68)
    assign out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable(GPOUT,69)
    assign out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm2_kernel_3mm_avm_enable(GPOUT,70)
    assign out_unnamed_kernel_3mm2_kernel_3mm_avm_enable = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm2_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm2_kernel_3mm_avm_read(GPOUT,71)
    assign out_unnamed_kernel_3mm2_kernel_3mm_avm_read = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm2_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm2_kernel_3mm_avm_write(GPOUT,72)
    assign out_unnamed_kernel_3mm2_kernel_3mm_avm_write = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm2_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata(GPOUT,73)
    assign out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata;

    // out_valid_in_0(GPOUT,74)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,75)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,76)
    assign out_valid_out_0 = kernel_3mm_B3_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,78)
    assign out_pipeline_valid_out = bb_kernel_3mm_B3_stall_region_out_pipeline_valid_out;

endmodule
