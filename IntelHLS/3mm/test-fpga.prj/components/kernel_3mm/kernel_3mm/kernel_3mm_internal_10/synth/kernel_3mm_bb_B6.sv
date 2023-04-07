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

// SystemVerilog created from bb_kernel_3mm_B6
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:08 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B6 (
    input wire [63:0] in_arrayidx444236_0,
    input wire [63:0] in_arrayidx444236_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked37_0,
    input wire [0:0] in_forked37_1,
    input wire [0:0] in_forked81135_0,
    input wire [0:0] in_forked81135_1,
    input wire [0:0] in_forked8183_pop24179_0,
    input wire [0:0] in_forked8183_pop24179_1,
    input wire [0:0] in_forked8185_pop51218_0,
    input wire [0:0] in_forked8185_pop51218_1,
    input wire [31:0] in_i_060_pop23109_pop56228_0,
    input wire [31:0] in_i_060_pop23109_pop56228_1,
    input wire [31:0] in_i_060_pop23169_0,
    input wire [31:0] in_i_060_pop23169_1,
    input wire [63:0] in_idxprom11121_pop59215_0,
    input wire [63:0] in_idxprom11121_pop59215_1,
    input wire [63:0] in_idxprom119_pop58213_0,
    input wire [63:0] in_idxprom119_pop58213_1,
    input wire [0:0] in_memdep_235_0,
    input wire [0:0] in_memdep_235_1,
    input wire [0:0] in_memdep_phi2_pop18149_0,
    input wire [0:0] in_memdep_phi2_pop18149_1,
    input wire [0:0] in_memdep_phi2_pop1891_pop26189_0,
    input wire [0:0] in_memdep_phi2_pop1891_pop26189_1,
    input wire [0:0] in_memdep_phi2_pop1893_pop53222_0,
    input wire [0:0] in_memdep_phi2_pop1893_pop53222_1,
    input wire [0:0] in_memdep_phi3_pop19156_0,
    input wire [0:0] in_memdep_phi3_pop19156_1,
    input wire [0:0] in_memdep_phi3_pop1995_pop27194_0,
    input wire [0:0] in_memdep_phi3_pop1995_pop27194_1,
    input wire [0:0] in_memdep_phi3_pop1997_pop54224_0,
    input wire [0:0] in_memdep_phi3_pop1997_pop54224_1,
    input wire [0:0] in_memdep_phi5_pop20101_pop55226_0,
    input wire [0:0] in_memdep_phi5_pop20101_pop55226_1,
    input wire [0:0] in_memdep_phi5_pop20163_0,
    input wire [0:0] in_memdep_phi5_pop20163_1,
    input wire [0:0] in_memdep_phi5_pop2099_pop28199_0,
    input wire [0:0] in_memdep_phi5_pop2099_pop28199_1,
    input wire [0:0] in_memdep_phi_pop17142_0,
    input wire [0:0] in_memdep_phi_pop17142_1,
    input wire [0:0] in_memdep_phi_pop1787_pop25184_0,
    input wire [0:0] in_memdep_phi_pop1787_pop25184_1,
    input wire [0:0] in_memdep_phi_pop1789_pop52220_0,
    input wire [0:0] in_memdep_phi_pop1789_pop52220_1,
    input wire [0:0] in_notcmp68124_pop61233_0,
    input wire [0:0] in_notcmp68124_pop61233_1,
    input wire [0:0] in_notcmp73112_pop57230_0,
    input wire [0:0] in_notcmp73112_pop57230_1,
    input wire [0:0] in_notcmp73174_0,
    input wire [0:0] in_notcmp73174_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_kernel_3mm7_0,
    input wire [31:0] in_unnamed_kernel_3mm7_1,
    input wire [31:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe2497,
    output wire [0:0] out_c0_exe4499,
    output wire [0:0] out_c0_exe5500,
    output wire [0:0] out_c0_exe6501,
    output wire [0:0] out_c0_exe7502,
    output wire [63:0] out_c0_exe9504,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_valid_out;
    wire [31:0] bb_kernel_3mm_B6_stall_region_out_c0_exe2497;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_c0_exe3498;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_c0_exe4499;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_c0_exe5500;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_c0_exe6501;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_c0_exe7502;
    wire [63:0] bb_kernel_3mm_B6_stall_region_out_c0_exe9504;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_stall_out;
    wire [31:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_valid_out;
    wire [31:0] kernel_3mm_B6_branch_out_c0_exe2497;
    wire [0:0] kernel_3mm_B6_branch_out_c0_exe4499;
    wire [0:0] kernel_3mm_B6_branch_out_c0_exe5500;
    wire [0:0] kernel_3mm_B6_branch_out_c0_exe6501;
    wire [0:0] kernel_3mm_B6_branch_out_c0_exe7502;
    wire [63:0] kernel_3mm_B6_branch_out_c0_exe9504;
    wire [0:0] kernel_3mm_B6_branch_out_stall_out;
    wire [0:0] kernel_3mm_B6_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B6_branch_out_valid_out_1;
    wire [63:0] kernel_3mm_B6_merge_out_arrayidx444236;
    wire [0:0] kernel_3mm_B6_merge_out_forked37;
    wire [0:0] kernel_3mm_B6_merge_out_forked81135;
    wire [0:0] kernel_3mm_B6_merge_out_forked8183_pop24179;
    wire [0:0] kernel_3mm_B6_merge_out_forked8185_pop51218;
    wire [31:0] kernel_3mm_B6_merge_out_i_060_pop23109_pop56228;
    wire [31:0] kernel_3mm_B6_merge_out_i_060_pop23169;
    wire [63:0] kernel_3mm_B6_merge_out_idxprom11121_pop59215;
    wire [63:0] kernel_3mm_B6_merge_out_idxprom119_pop58213;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_235;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi2_pop18149;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi2_pop1891_pop26189;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi2_pop1893_pop53222;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi3_pop19156;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi3_pop1995_pop27194;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi3_pop1997_pop54224;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi5_pop20101_pop55226;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi5_pop20163;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi5_pop2099_pop28199;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi_pop17142;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi_pop1787_pop25184;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi_pop1789_pop52220;
    wire [0:0] kernel_3mm_B6_merge_out_notcmp68124_pop61233;
    wire [0:0] kernel_3mm_B6_merge_out_notcmp73112_pop57230;
    wire [0:0] kernel_3mm_B6_merge_out_notcmp73174;
    wire [0:0] kernel_3mm_B6_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B6_merge_out_stall_out_1;
    wire [31:0] kernel_3mm_B6_merge_out_unnamed_kernel_3mm7;
    wire [0:0] kernel_3mm_B6_merge_out_valid_out;


    // kernel_3mm_B6_merge(BLACKBOX,69)
    kernel_3mm_B6_merge thekernel_3mm_B6_merge (
        .in_arrayidx444236_0(in_arrayidx444236_0),
        .in_arrayidx444236_1(in_arrayidx444236_1),
        .in_forked37_0(in_forked37_0),
        .in_forked37_1(in_forked37_1),
        .in_forked81135_0(in_forked81135_0),
        .in_forked81135_1(in_forked81135_1),
        .in_forked8183_pop24179_0(in_forked8183_pop24179_0),
        .in_forked8183_pop24179_1(in_forked8183_pop24179_1),
        .in_forked8185_pop51218_0(in_forked8185_pop51218_0),
        .in_forked8185_pop51218_1(in_forked8185_pop51218_1),
        .in_i_060_pop23109_pop56228_0(in_i_060_pop23109_pop56228_0),
        .in_i_060_pop23109_pop56228_1(in_i_060_pop23109_pop56228_1),
        .in_i_060_pop23169_0(in_i_060_pop23169_0),
        .in_i_060_pop23169_1(in_i_060_pop23169_1),
        .in_idxprom11121_pop59215_0(in_idxprom11121_pop59215_0),
        .in_idxprom11121_pop59215_1(in_idxprom11121_pop59215_1),
        .in_idxprom119_pop58213_0(in_idxprom119_pop58213_0),
        .in_idxprom119_pop58213_1(in_idxprom119_pop58213_1),
        .in_memdep_235_0(in_memdep_235_0),
        .in_memdep_235_1(in_memdep_235_1),
        .in_memdep_phi2_pop18149_0(in_memdep_phi2_pop18149_0),
        .in_memdep_phi2_pop18149_1(in_memdep_phi2_pop18149_1),
        .in_memdep_phi2_pop1891_pop26189_0(in_memdep_phi2_pop1891_pop26189_0),
        .in_memdep_phi2_pop1891_pop26189_1(in_memdep_phi2_pop1891_pop26189_1),
        .in_memdep_phi2_pop1893_pop53222_0(in_memdep_phi2_pop1893_pop53222_0),
        .in_memdep_phi2_pop1893_pop53222_1(in_memdep_phi2_pop1893_pop53222_1),
        .in_memdep_phi3_pop19156_0(in_memdep_phi3_pop19156_0),
        .in_memdep_phi3_pop19156_1(in_memdep_phi3_pop19156_1),
        .in_memdep_phi3_pop1995_pop27194_0(in_memdep_phi3_pop1995_pop27194_0),
        .in_memdep_phi3_pop1995_pop27194_1(in_memdep_phi3_pop1995_pop27194_1),
        .in_memdep_phi3_pop1997_pop54224_0(in_memdep_phi3_pop1997_pop54224_0),
        .in_memdep_phi3_pop1997_pop54224_1(in_memdep_phi3_pop1997_pop54224_1),
        .in_memdep_phi5_pop20101_pop55226_0(in_memdep_phi5_pop20101_pop55226_0),
        .in_memdep_phi5_pop20101_pop55226_1(in_memdep_phi5_pop20101_pop55226_1),
        .in_memdep_phi5_pop20163_0(in_memdep_phi5_pop20163_0),
        .in_memdep_phi5_pop20163_1(in_memdep_phi5_pop20163_1),
        .in_memdep_phi5_pop2099_pop28199_0(in_memdep_phi5_pop2099_pop28199_0),
        .in_memdep_phi5_pop2099_pop28199_1(in_memdep_phi5_pop2099_pop28199_1),
        .in_memdep_phi_pop17142_0(in_memdep_phi_pop17142_0),
        .in_memdep_phi_pop17142_1(in_memdep_phi_pop17142_1),
        .in_memdep_phi_pop1787_pop25184_0(in_memdep_phi_pop1787_pop25184_0),
        .in_memdep_phi_pop1787_pop25184_1(in_memdep_phi_pop1787_pop25184_1),
        .in_memdep_phi_pop1789_pop52220_0(in_memdep_phi_pop1789_pop52220_0),
        .in_memdep_phi_pop1789_pop52220_1(in_memdep_phi_pop1789_pop52220_1),
        .in_notcmp68124_pop61233_0(in_notcmp68124_pop61233_0),
        .in_notcmp68124_pop61233_1(in_notcmp68124_pop61233_1),
        .in_notcmp73112_pop57230_0(in_notcmp73112_pop57230_0),
        .in_notcmp73112_pop57230_1(in_notcmp73112_pop57230_1),
        .in_notcmp73174_0(in_notcmp73174_0),
        .in_notcmp73174_1(in_notcmp73174_1),
        .in_stall_in(bb_kernel_3mm_B6_stall_region_out_stall_out),
        .in_unnamed_kernel_3mm7_0(in_unnamed_kernel_3mm7_0),
        .in_unnamed_kernel_3mm7_1(in_unnamed_kernel_3mm7_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_arrayidx444236(kernel_3mm_B6_merge_out_arrayidx444236),
        .out_forked37(kernel_3mm_B6_merge_out_forked37),
        .out_forked81135(kernel_3mm_B6_merge_out_forked81135),
        .out_forked8183_pop24179(kernel_3mm_B6_merge_out_forked8183_pop24179),
        .out_forked8185_pop51218(kernel_3mm_B6_merge_out_forked8185_pop51218),
        .out_i_060_pop23109_pop56228(kernel_3mm_B6_merge_out_i_060_pop23109_pop56228),
        .out_i_060_pop23169(kernel_3mm_B6_merge_out_i_060_pop23169),
        .out_idxprom11121_pop59215(kernel_3mm_B6_merge_out_idxprom11121_pop59215),
        .out_idxprom119_pop58213(kernel_3mm_B6_merge_out_idxprom119_pop58213),
        .out_memdep_235(kernel_3mm_B6_merge_out_memdep_235),
        .out_memdep_phi2_pop18149(kernel_3mm_B6_merge_out_memdep_phi2_pop18149),
        .out_memdep_phi2_pop1891_pop26189(kernel_3mm_B6_merge_out_memdep_phi2_pop1891_pop26189),
        .out_memdep_phi2_pop1893_pop53222(kernel_3mm_B6_merge_out_memdep_phi2_pop1893_pop53222),
        .out_memdep_phi3_pop19156(kernel_3mm_B6_merge_out_memdep_phi3_pop19156),
        .out_memdep_phi3_pop1995_pop27194(kernel_3mm_B6_merge_out_memdep_phi3_pop1995_pop27194),
        .out_memdep_phi3_pop1997_pop54224(kernel_3mm_B6_merge_out_memdep_phi3_pop1997_pop54224),
        .out_memdep_phi5_pop20101_pop55226(kernel_3mm_B6_merge_out_memdep_phi5_pop20101_pop55226),
        .out_memdep_phi5_pop20163(kernel_3mm_B6_merge_out_memdep_phi5_pop20163),
        .out_memdep_phi5_pop2099_pop28199(kernel_3mm_B6_merge_out_memdep_phi5_pop2099_pop28199),
        .out_memdep_phi_pop17142(kernel_3mm_B6_merge_out_memdep_phi_pop17142),
        .out_memdep_phi_pop1787_pop25184(kernel_3mm_B6_merge_out_memdep_phi_pop1787_pop25184),
        .out_memdep_phi_pop1789_pop52220(kernel_3mm_B6_merge_out_memdep_phi_pop1789_pop52220),
        .out_notcmp68124_pop61233(kernel_3mm_B6_merge_out_notcmp68124_pop61233),
        .out_notcmp73112_pop57230(kernel_3mm_B6_merge_out_notcmp73112_pop57230),
        .out_notcmp73174(kernel_3mm_B6_merge_out_notcmp73174),
        .out_stall_out_0(kernel_3mm_B6_merge_out_stall_out_0),
        .out_stall_out_1(kernel_3mm_B6_merge_out_stall_out_1),
        .out_unnamed_kernel_3mm7(kernel_3mm_B6_merge_out_unnamed_kernel_3mm7),
        .out_valid_out(kernel_3mm_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B6_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B6_stall_region thebb_kernel_3mm_B6_stall_region (
        .in_arrayidx444236(kernel_3mm_B6_merge_out_arrayidx444236),
        .in_flush(in_flush),
        .in_forked37(kernel_3mm_B6_merge_out_forked37),
        .in_forked81135(kernel_3mm_B6_merge_out_forked81135),
        .in_forked8183_pop24179(kernel_3mm_B6_merge_out_forked8183_pop24179),
        .in_forked8185_pop51218(kernel_3mm_B6_merge_out_forked8185_pop51218),
        .in_i_060_pop23109_pop56228(kernel_3mm_B6_merge_out_i_060_pop23109_pop56228),
        .in_i_060_pop23169(kernel_3mm_B6_merge_out_i_060_pop23169),
        .in_idxprom11121_pop59215(kernel_3mm_B6_merge_out_idxprom11121_pop59215),
        .in_idxprom119_pop58213(kernel_3mm_B6_merge_out_idxprom119_pop58213),
        .in_memdep_235(kernel_3mm_B6_merge_out_memdep_235),
        .in_memdep_phi2_pop18149(kernel_3mm_B6_merge_out_memdep_phi2_pop18149),
        .in_memdep_phi2_pop1891_pop26189(kernel_3mm_B6_merge_out_memdep_phi2_pop1891_pop26189),
        .in_memdep_phi2_pop1893_pop53222(kernel_3mm_B6_merge_out_memdep_phi2_pop1893_pop53222),
        .in_memdep_phi3_pop19156(kernel_3mm_B6_merge_out_memdep_phi3_pop19156),
        .in_memdep_phi3_pop1995_pop27194(kernel_3mm_B6_merge_out_memdep_phi3_pop1995_pop27194),
        .in_memdep_phi3_pop1997_pop54224(kernel_3mm_B6_merge_out_memdep_phi3_pop1997_pop54224),
        .in_memdep_phi5_pop20101_pop55226(kernel_3mm_B6_merge_out_memdep_phi5_pop20101_pop55226),
        .in_memdep_phi5_pop20163(kernel_3mm_B6_merge_out_memdep_phi5_pop20163),
        .in_memdep_phi5_pop2099_pop28199(kernel_3mm_B6_merge_out_memdep_phi5_pop2099_pop28199),
        .in_memdep_phi_pop17142(kernel_3mm_B6_merge_out_memdep_phi_pop17142),
        .in_memdep_phi_pop1787_pop25184(kernel_3mm_B6_merge_out_memdep_phi_pop1787_pop25184),
        .in_memdep_phi_pop1789_pop52220(kernel_3mm_B6_merge_out_memdep_phi_pop1789_pop52220),
        .in_notcmp68124_pop61233(kernel_3mm_B6_merge_out_notcmp68124_pop61233),
        .in_notcmp73112_pop57230(kernel_3mm_B6_merge_out_notcmp73112_pop57230),
        .in_notcmp73174(kernel_3mm_B6_merge_out_notcmp73174),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_3mm_B6_branch_out_stall_out),
        .in_unnamed_kernel_3mm7(kernel_3mm_B6_merge_out_unnamed_kernel_3mm7),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack),
        .in_valid_in(kernel_3mm_B6_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_stall_out(bb_kernel_3mm_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_valid_out(bb_kernel_3mm_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_valid_out),
        .out_c0_exe2497(bb_kernel_3mm_B6_stall_region_out_c0_exe2497),
        .out_c0_exe3498(bb_kernel_3mm_B6_stall_region_out_c0_exe3498),
        .out_c0_exe4499(bb_kernel_3mm_B6_stall_region_out_c0_exe4499),
        .out_c0_exe5500(bb_kernel_3mm_B6_stall_region_out_c0_exe5500),
        .out_c0_exe6501(bb_kernel_3mm_B6_stall_region_out_c0_exe6501),
        .out_c0_exe7502(bb_kernel_3mm_B6_stall_region_out_c0_exe7502),
        .out_c0_exe9504(bb_kernel_3mm_B6_stall_region_out_c0_exe9504),
        .out_pipeline_valid_out(bb_kernel_3mm_B6_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_3mm_B6_stall_region_out_stall_out),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_address(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_enable(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_read(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_write(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_address(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_enable(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_read(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_write(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata),
        .out_valid_out(bb_kernel_3mm_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B6_branch(BLACKBOX,68)
    kernel_3mm_B6_branch thekernel_3mm_B6_branch (
        .in_c0_exe2497(bb_kernel_3mm_B6_stall_region_out_c0_exe2497),
        .in_c0_exe3498(bb_kernel_3mm_B6_stall_region_out_c0_exe3498),
        .in_c0_exe4499(bb_kernel_3mm_B6_stall_region_out_c0_exe4499),
        .in_c0_exe5500(bb_kernel_3mm_B6_stall_region_out_c0_exe5500),
        .in_c0_exe6501(bb_kernel_3mm_B6_stall_region_out_c0_exe6501),
        .in_c0_exe7502(bb_kernel_3mm_B6_stall_region_out_c0_exe7502),
        .in_c0_exe9504(bb_kernel_3mm_B6_stall_region_out_c0_exe9504),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_3mm_B6_stall_region_out_valid_out),
        .out_c0_exe2497(kernel_3mm_B6_branch_out_c0_exe2497),
        .out_c0_exe4499(kernel_3mm_B6_branch_out_c0_exe4499),
        .out_c0_exe5500(kernel_3mm_B6_branch_out_c0_exe5500),
        .out_c0_exe6501(kernel_3mm_B6_branch_out_c0_exe6501),
        .out_c0_exe7502(kernel_3mm_B6_branch_out_c0_exe7502),
        .out_c0_exe9504(kernel_3mm_B6_branch_out_c0_exe9504),
        .out_stall_out(kernel_3mm_B6_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B6_branch_out_valid_out_0),
        .out_valid_out_1(kernel_3mm_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2497(GPOUT,70)
    assign out_c0_exe2497 = kernel_3mm_B6_branch_out_c0_exe2497;

    // out_c0_exe4499(GPOUT,71)
    assign out_c0_exe4499 = kernel_3mm_B6_branch_out_c0_exe4499;

    // out_c0_exe5500(GPOUT,72)
    assign out_c0_exe5500 = kernel_3mm_B6_branch_out_c0_exe5500;

    // out_c0_exe6501(GPOUT,73)
    assign out_c0_exe6501 = kernel_3mm_B6_branch_out_c0_exe6501;

    // out_c0_exe7502(GPOUT,74)
    assign out_c0_exe7502 = kernel_3mm_B6_branch_out_c0_exe7502;

    // out_c0_exe9504(GPOUT,75)
    assign out_c0_exe9504 = kernel_3mm_B6_branch_out_c0_exe9504;

    // out_exiting_stall_out(GPOUT,76)
    assign out_exiting_stall_out = bb_kernel_3mm_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,77)
    assign out_exiting_valid_out = bb_kernel_3mm_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_exiting_valid_out;

    // out_stall_in_0(GPOUT,78)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,79)
    assign out_stall_out_0 = kernel_3mm_B6_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,80)
    assign out_stall_out_1 = kernel_3mm_B6_merge_out_stall_out_1;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_address(GPOUT,81)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_address = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount(GPOUT,82)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable(GPOUT,83)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_enable(GPOUT,84)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_enable = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_read(GPOUT,85)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_read = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_write(GPOUT,86)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_write = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata(GPOUT,87)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_address(GPOUT,88)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_address = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount(GPOUT,89)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable(GPOUT,90)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_enable(GPOUT,91)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_enable = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_read(GPOUT,92)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_read = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_write(GPOUT,93)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_write = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata(GPOUT,94)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata;

    // out_valid_in_0(GPOUT,95)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,96)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,97)
    assign out_valid_out_0 = kernel_3mm_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,98)
    assign out_valid_out_1 = kernel_3mm_B6_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,100)
    assign out_pipeline_valid_out = bb_kernel_3mm_B6_stall_region_out_pipeline_valid_out;

endmodule
