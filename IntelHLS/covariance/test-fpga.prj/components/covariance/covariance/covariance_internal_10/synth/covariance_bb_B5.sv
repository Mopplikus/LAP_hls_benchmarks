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

// SystemVerilog created from bb_covariance_B5
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B5 (
    input wire [0:0] in_exitcond10134_0,
    input wire [0:0] in_exitcond10134_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked50_0,
    input wire [0:0] in_forked50_1,
    input wire [31:0] in_j_039_pop21136_0,
    input wire [31:0] in_j_039_pop21136_1,
    input wire [31:0] in_lim_ext113_0,
    input wire [31:0] in_lim_ext113_1,
    input wire [31:0] in_lim_ext75_pop23138_0,
    input wire [31:0] in_lim_ext75_pop23138_1,
    input wire [0:0] in_memdep_phi1_pop16118_0,
    input wire [0:0] in_memdep_phi1_pop16118_1,
    input wire [0:0] in_memdep_phi1_pop1681_pop24139_0,
    input wire [0:0] in_memdep_phi1_pop1681_pop24139_1,
    input wire [0:0] in_memdep_phi2_pop17123_0,
    input wire [0:0] in_memdep_phi2_pop17123_1,
    input wire [0:0] in_memdep_phi2_pop1784_pop25140_0,
    input wire [0:0] in_memdep_phi2_pop1784_pop25140_1,
    input wire [0:0] in_memdep_phi4_pop18128_0,
    input wire [0:0] in_memdep_phi4_pop18128_1,
    input wire [0:0] in_memdep_phi4_pop1887_pop26141_0,
    input wire [0:0] in_memdep_phi4_pop1887_pop26141_1,
    input wire [0:0] in_memdep_phi_pop22137_0,
    input wire [0:0] in_memdep_phi_pop22137_1,
    input wire [0:0] in_notcmp65135_0,
    input wire [0:0] in_notcmp65135_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_covariance2_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance2_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance2_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance2_covariance_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10249,
    output wire [31:0] out_c0_exe11250,
    output wire [0:0] out_c0_exe12251,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [63:0] out_c0_exe2241,
    output wire [0:0] out_c0_exe3242,
    output wire [31:0] out_c0_exe4243,
    output wire [31:0] out_c0_exe6245,
    output wire [0:0] out_c0_exe7246,
    output wire [0:0] out_c0_exe8247,
    output wire [0:0] out_c0_exe9248,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_covariance2_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance2_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance2_covariance_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_covariance_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_stall_out;
    wire [0:0] bb_covariance_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_valid_out;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe10249;
    wire [31:0] bb_covariance_B5_stall_region_out_c0_exe11250;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe12251;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe13;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe14;
    wire [63:0] bb_covariance_B5_stall_region_out_c0_exe2241;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe3242;
    wire [31:0] bb_covariance_B5_stall_region_out_c0_exe4243;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe5244;
    wire [31:0] bb_covariance_B5_stall_region_out_c0_exe6245;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe7246;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe8247;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe9248;
    wire [0:0] bb_covariance_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B5_stall_region_out_stall_out;
    wire [31:0] bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_address;
    wire [0:0] bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_enable;
    wire [0:0] bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_read;
    wire [0:0] bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_write;
    wire [31:0] bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_writedata;
    wire [0:0] bb_covariance_B5_stall_region_out_valid_out;
    wire [0:0] covariance_B5_branch_out_c0_exe10249;
    wire [31:0] covariance_B5_branch_out_c0_exe11250;
    wire [0:0] covariance_B5_branch_out_c0_exe12251;
    wire [0:0] covariance_B5_branch_out_c0_exe13;
    wire [0:0] covariance_B5_branch_out_c0_exe14;
    wire [63:0] covariance_B5_branch_out_c0_exe2241;
    wire [0:0] covariance_B5_branch_out_c0_exe3242;
    wire [31:0] covariance_B5_branch_out_c0_exe4243;
    wire [31:0] covariance_B5_branch_out_c0_exe6245;
    wire [0:0] covariance_B5_branch_out_c0_exe7246;
    wire [0:0] covariance_B5_branch_out_c0_exe8247;
    wire [0:0] covariance_B5_branch_out_c0_exe9248;
    wire [0:0] covariance_B5_branch_out_stall_out;
    wire [0:0] covariance_B5_branch_out_valid_out_0;
    wire [0:0] covariance_B5_branch_out_valid_out_1;
    wire [0:0] covariance_B5_merge_out_exitcond10134;
    wire [0:0] covariance_B5_merge_out_forked50;
    wire [31:0] covariance_B5_merge_out_j_039_pop21136;
    wire [31:0] covariance_B5_merge_out_lim_ext113;
    wire [31:0] covariance_B5_merge_out_lim_ext75_pop23138;
    wire [0:0] covariance_B5_merge_out_memdep_phi1_pop16118;
    wire [0:0] covariance_B5_merge_out_memdep_phi1_pop1681_pop24139;
    wire [0:0] covariance_B5_merge_out_memdep_phi2_pop17123;
    wire [0:0] covariance_B5_merge_out_memdep_phi2_pop1784_pop25140;
    wire [0:0] covariance_B5_merge_out_memdep_phi4_pop18128;
    wire [0:0] covariance_B5_merge_out_memdep_phi4_pop1887_pop26141;
    wire [0:0] covariance_B5_merge_out_memdep_phi_pop22137;
    wire [0:0] covariance_B5_merge_out_notcmp65135;
    wire [0:0] covariance_B5_merge_out_stall_out_0;
    wire [0:0] covariance_B5_merge_out_stall_out_1;
    wire [0:0] covariance_B5_merge_out_valid_out;


    // covariance_B5_merge(BLACKBOX,4)
    covariance_B5_merge thecovariance_B5_merge (
        .in_exitcond10134_0(in_exitcond10134_0),
        .in_exitcond10134_1(in_exitcond10134_1),
        .in_forked50_0(in_forked50_0),
        .in_forked50_1(in_forked50_1),
        .in_j_039_pop21136_0(in_j_039_pop21136_0),
        .in_j_039_pop21136_1(in_j_039_pop21136_1),
        .in_lim_ext113_0(in_lim_ext113_0),
        .in_lim_ext113_1(in_lim_ext113_1),
        .in_lim_ext75_pop23138_0(in_lim_ext75_pop23138_0),
        .in_lim_ext75_pop23138_1(in_lim_ext75_pop23138_1),
        .in_memdep_phi1_pop16118_0(in_memdep_phi1_pop16118_0),
        .in_memdep_phi1_pop16118_1(in_memdep_phi1_pop16118_1),
        .in_memdep_phi1_pop1681_pop24139_0(in_memdep_phi1_pop1681_pop24139_0),
        .in_memdep_phi1_pop1681_pop24139_1(in_memdep_phi1_pop1681_pop24139_1),
        .in_memdep_phi2_pop17123_0(in_memdep_phi2_pop17123_0),
        .in_memdep_phi2_pop17123_1(in_memdep_phi2_pop17123_1),
        .in_memdep_phi2_pop1784_pop25140_0(in_memdep_phi2_pop1784_pop25140_0),
        .in_memdep_phi2_pop1784_pop25140_1(in_memdep_phi2_pop1784_pop25140_1),
        .in_memdep_phi4_pop18128_0(in_memdep_phi4_pop18128_0),
        .in_memdep_phi4_pop18128_1(in_memdep_phi4_pop18128_1),
        .in_memdep_phi4_pop1887_pop26141_0(in_memdep_phi4_pop1887_pop26141_0),
        .in_memdep_phi4_pop1887_pop26141_1(in_memdep_phi4_pop1887_pop26141_1),
        .in_memdep_phi_pop22137_0(in_memdep_phi_pop22137_0),
        .in_memdep_phi_pop22137_1(in_memdep_phi_pop22137_1),
        .in_notcmp65135_0(in_notcmp65135_0),
        .in_notcmp65135_1(in_notcmp65135_1),
        .in_stall_in(bb_covariance_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond10134(covariance_B5_merge_out_exitcond10134),
        .out_forked50(covariance_B5_merge_out_forked50),
        .out_j_039_pop21136(covariance_B5_merge_out_j_039_pop21136),
        .out_lim_ext113(covariance_B5_merge_out_lim_ext113),
        .out_lim_ext75_pop23138(covariance_B5_merge_out_lim_ext75_pop23138),
        .out_memdep_phi1_pop16118(covariance_B5_merge_out_memdep_phi1_pop16118),
        .out_memdep_phi1_pop1681_pop24139(covariance_B5_merge_out_memdep_phi1_pop1681_pop24139),
        .out_memdep_phi2_pop17123(covariance_B5_merge_out_memdep_phi2_pop17123),
        .out_memdep_phi2_pop1784_pop25140(covariance_B5_merge_out_memdep_phi2_pop1784_pop25140),
        .out_memdep_phi4_pop18128(covariance_B5_merge_out_memdep_phi4_pop18128),
        .out_memdep_phi4_pop1887_pop26141(covariance_B5_merge_out_memdep_phi4_pop1887_pop26141),
        .out_memdep_phi_pop22137(covariance_B5_merge_out_memdep_phi_pop22137),
        .out_notcmp65135(covariance_B5_merge_out_notcmp65135),
        .out_stall_out_0(covariance_B5_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B5_merge_out_stall_out_1),
        .out_valid_out(covariance_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B5_stall_region(BLACKBOX,2)
    covariance_bb_B5_stall_region thebb_covariance_B5_stall_region (
        .in_exitcond10134(covariance_B5_merge_out_exitcond10134),
        .in_flush(in_flush),
        .in_forked50(covariance_B5_merge_out_forked50),
        .in_j_039_pop21136(covariance_B5_merge_out_j_039_pop21136),
        .in_lim_ext113(covariance_B5_merge_out_lim_ext113),
        .in_lim_ext75_pop23138(covariance_B5_merge_out_lim_ext75_pop23138),
        .in_memdep_phi1_pop16118(covariance_B5_merge_out_memdep_phi1_pop16118),
        .in_memdep_phi1_pop1681_pop24139(covariance_B5_merge_out_memdep_phi1_pop1681_pop24139),
        .in_memdep_phi2_pop17123(covariance_B5_merge_out_memdep_phi2_pop17123),
        .in_memdep_phi2_pop1784_pop25140(covariance_B5_merge_out_memdep_phi2_pop1784_pop25140),
        .in_memdep_phi4_pop18128(covariance_B5_merge_out_memdep_phi4_pop18128),
        .in_memdep_phi4_pop1887_pop26141(covariance_B5_merge_out_memdep_phi4_pop1887_pop26141),
        .in_memdep_phi_pop22137(covariance_B5_merge_out_memdep_phi_pop22137),
        .in_notcmp65135(covariance_B5_merge_out_notcmp65135),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(covariance_B5_branch_out_stall_out),
        .in_unnamed_covariance2_covariance_avm_readdata(in_unnamed_covariance2_covariance_avm_readdata),
        .in_unnamed_covariance2_covariance_avm_readdatavalid(in_unnamed_covariance2_covariance_avm_readdatavalid),
        .in_unnamed_covariance2_covariance_avm_waitrequest(in_unnamed_covariance2_covariance_avm_waitrequest),
        .in_unnamed_covariance2_covariance_avm_writeack(in_unnamed_covariance2_covariance_avm_writeack),
        .in_valid_in(covariance_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_stall_out(bb_covariance_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_valid_out(bb_covariance_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_valid_out),
        .out_c0_exe10249(bb_covariance_B5_stall_region_out_c0_exe10249),
        .out_c0_exe11250(bb_covariance_B5_stall_region_out_c0_exe11250),
        .out_c0_exe12251(bb_covariance_B5_stall_region_out_c0_exe12251),
        .out_c0_exe13(bb_covariance_B5_stall_region_out_c0_exe13),
        .out_c0_exe14(bb_covariance_B5_stall_region_out_c0_exe14),
        .out_c0_exe2241(bb_covariance_B5_stall_region_out_c0_exe2241),
        .out_c0_exe3242(bb_covariance_B5_stall_region_out_c0_exe3242),
        .out_c0_exe4243(bb_covariance_B5_stall_region_out_c0_exe4243),
        .out_c0_exe5244(bb_covariance_B5_stall_region_out_c0_exe5244),
        .out_c0_exe6245(bb_covariance_B5_stall_region_out_c0_exe6245),
        .out_c0_exe7246(bb_covariance_B5_stall_region_out_c0_exe7246),
        .out_c0_exe8247(bb_covariance_B5_stall_region_out_c0_exe8247),
        .out_c0_exe9248(bb_covariance_B5_stall_region_out_c0_exe9248),
        .out_pipeline_valid_out(bb_covariance_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_covariance_B5_stall_region_out_stall_out),
        .out_unnamed_covariance2_covariance_avm_address(bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_address),
        .out_unnamed_covariance2_covariance_avm_burstcount(bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_burstcount),
        .out_unnamed_covariance2_covariance_avm_byteenable(bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_byteenable),
        .out_unnamed_covariance2_covariance_avm_enable(bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_enable),
        .out_unnamed_covariance2_covariance_avm_read(bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_read),
        .out_unnamed_covariance2_covariance_avm_write(bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_write),
        .out_unnamed_covariance2_covariance_avm_writedata(bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_writedata),
        .out_valid_out(bb_covariance_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B5_branch(BLACKBOX,3)
    covariance_B5_branch thecovariance_B5_branch (
        .in_c0_exe10249(bb_covariance_B5_stall_region_out_c0_exe10249),
        .in_c0_exe11250(bb_covariance_B5_stall_region_out_c0_exe11250),
        .in_c0_exe12251(bb_covariance_B5_stall_region_out_c0_exe12251),
        .in_c0_exe13(bb_covariance_B5_stall_region_out_c0_exe13),
        .in_c0_exe14(bb_covariance_B5_stall_region_out_c0_exe14),
        .in_c0_exe2241(bb_covariance_B5_stall_region_out_c0_exe2241),
        .in_c0_exe3242(bb_covariance_B5_stall_region_out_c0_exe3242),
        .in_c0_exe4243(bb_covariance_B5_stall_region_out_c0_exe4243),
        .in_c0_exe5244(bb_covariance_B5_stall_region_out_c0_exe5244),
        .in_c0_exe6245(bb_covariance_B5_stall_region_out_c0_exe6245),
        .in_c0_exe7246(bb_covariance_B5_stall_region_out_c0_exe7246),
        .in_c0_exe8247(bb_covariance_B5_stall_region_out_c0_exe8247),
        .in_c0_exe9248(bb_covariance_B5_stall_region_out_c0_exe9248),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_covariance_B5_stall_region_out_valid_out),
        .out_c0_exe10249(covariance_B5_branch_out_c0_exe10249),
        .out_c0_exe11250(covariance_B5_branch_out_c0_exe11250),
        .out_c0_exe12251(covariance_B5_branch_out_c0_exe12251),
        .out_c0_exe13(covariance_B5_branch_out_c0_exe13),
        .out_c0_exe14(covariance_B5_branch_out_c0_exe14),
        .out_c0_exe2241(covariance_B5_branch_out_c0_exe2241),
        .out_c0_exe3242(covariance_B5_branch_out_c0_exe3242),
        .out_c0_exe4243(covariance_B5_branch_out_c0_exe4243),
        .out_c0_exe6245(covariance_B5_branch_out_c0_exe6245),
        .out_c0_exe7246(covariance_B5_branch_out_c0_exe7246),
        .out_c0_exe8247(covariance_B5_branch_out_c0_exe8247),
        .out_c0_exe9248(covariance_B5_branch_out_c0_exe9248),
        .out_stall_out(covariance_B5_branch_out_stall_out),
        .out_valid_out_0(covariance_B5_branch_out_valid_out_0),
        .out_valid_out_1(covariance_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10249(GPOUT,40)
    assign out_c0_exe10249 = covariance_B5_branch_out_c0_exe10249;

    // out_c0_exe11250(GPOUT,41)
    assign out_c0_exe11250 = covariance_B5_branch_out_c0_exe11250;

    // out_c0_exe12251(GPOUT,42)
    assign out_c0_exe12251 = covariance_B5_branch_out_c0_exe12251;

    // out_c0_exe13(GPOUT,43)
    assign out_c0_exe13 = covariance_B5_branch_out_c0_exe13;

    // out_c0_exe14(GPOUT,44)
    assign out_c0_exe14 = covariance_B5_branch_out_c0_exe14;

    // out_c0_exe2241(GPOUT,45)
    assign out_c0_exe2241 = covariance_B5_branch_out_c0_exe2241;

    // out_c0_exe3242(GPOUT,46)
    assign out_c0_exe3242 = covariance_B5_branch_out_c0_exe3242;

    // out_c0_exe4243(GPOUT,47)
    assign out_c0_exe4243 = covariance_B5_branch_out_c0_exe4243;

    // out_c0_exe6245(GPOUT,48)
    assign out_c0_exe6245 = covariance_B5_branch_out_c0_exe6245;

    // out_c0_exe7246(GPOUT,49)
    assign out_c0_exe7246 = covariance_B5_branch_out_c0_exe7246;

    // out_c0_exe8247(GPOUT,50)
    assign out_c0_exe8247 = covariance_B5_branch_out_c0_exe8247;

    // out_c0_exe9248(GPOUT,51)
    assign out_c0_exe9248 = covariance_B5_branch_out_c0_exe9248;

    // out_exiting_stall_out(GPOUT,52)
    assign out_exiting_stall_out = bb_covariance_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,53)
    assign out_exiting_valid_out = bb_covariance_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going53_covariance6_exiting_valid_out;

    // out_stall_in_0(GPOUT,54)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,55)
    assign out_stall_out_0 = covariance_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,56)
    assign out_stall_out_1 = covariance_B5_merge_out_stall_out_1;

    // out_unnamed_covariance2_covariance_avm_address(GPOUT,57)
    assign out_unnamed_covariance2_covariance_avm_address = bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_address;

    // out_unnamed_covariance2_covariance_avm_burstcount(GPOUT,58)
    assign out_unnamed_covariance2_covariance_avm_burstcount = bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_burstcount;

    // out_unnamed_covariance2_covariance_avm_byteenable(GPOUT,59)
    assign out_unnamed_covariance2_covariance_avm_byteenable = bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_byteenable;

    // out_unnamed_covariance2_covariance_avm_enable(GPOUT,60)
    assign out_unnamed_covariance2_covariance_avm_enable = bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_enable;

    // out_unnamed_covariance2_covariance_avm_read(GPOUT,61)
    assign out_unnamed_covariance2_covariance_avm_read = bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_read;

    // out_unnamed_covariance2_covariance_avm_write(GPOUT,62)
    assign out_unnamed_covariance2_covariance_avm_write = bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_write;

    // out_unnamed_covariance2_covariance_avm_writedata(GPOUT,63)
    assign out_unnamed_covariance2_covariance_avm_writedata = bb_covariance_B5_stall_region_out_unnamed_covariance2_covariance_avm_writedata;

    // out_valid_in_0(GPOUT,64)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,65)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,66)
    assign out_valid_out_0 = covariance_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,67)
    assign out_valid_out_1 = covariance_B5_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,69)
    assign out_pipeline_valid_out = bb_covariance_B5_stall_region_out_pipeline_valid_out;

endmodule
