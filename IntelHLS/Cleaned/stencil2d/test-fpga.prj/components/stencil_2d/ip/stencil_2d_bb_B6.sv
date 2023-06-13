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

// SystemVerilog created from bb_stencil_2d_B6
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Jun 13 03:01:27 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B6 (
    input wire [31:0] in_c_043_pop16100_0,
    input wire [31:0] in_c_043_pop16100_1,
    input wire [0:0] in_exitcond1145_pop20112_0,
    input wire [0:0] in_exitcond1145_pop20112_1,
    input wire [0:0] in_exitcond1183_0,
    input wire [0:0] in_exitcond1183_1,
    input wire [0:0] in_exitcond894_0,
    input wire [0:0] in_exitcond894_1,
    input wire [0:0] in_forked35_0,
    input wire [0:0] in_forked35_1,
    input wire [0:0] in_memdep_phi1_pop1451_pop22118_0,
    input wire [0:0] in_memdep_phi1_pop1451_pop22118_1,
    input wire [0:0] in_memdep_phi1_pop1493_0,
    input wire [0:0] in_memdep_phi1_pop1493_1,
    input wire [0:0] in_memdep_phi_pop17103_0,
    input wire [0:0] in_memdep_phi_pop17103_1,
    input wire [31:0] in_mul2442_pop19109_0,
    input wire [31:0] in_mul2442_pop19109_1,
    input wire [31:0] in_mul2478_0,
    input wire [31:0] in_mul2478_1,
    input wire [0:0] in_notcmp2297_0,
    input wire [0:0] in_notcmp2297_1,
    input wire [0:0] in_notcmp2748_pop21115_0,
    input wire [0:0] in_notcmp2748_pop21115_1,
    input wire [0:0] in_notcmp2788_0,
    input wire [0:0] in_notcmp2788_1,
    input wire [31:0] in_r_044_pop1339_pop18106_0,
    input wire [31:0] in_r_044_pop1339_pop18106_1,
    input wire [31:0] in_r_044_pop1373_0,
    input wire [31:0] in_r_044_pop1373_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10208,
    output wire [0:0] out_c0_exe11209,
    output wire [31:0] out_c0_exe1199,
    output wire [0:0] out_c0_exe12210,
    output wire [0:0] out_c0_exe13211,
    output wire [0:0] out_c0_exe14212,
    output wire [31:0] out_c0_exe15,
    output wire [31:0] out_c0_exe16,
    output wire [0:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [0:0] out_c0_exe19,
    output wire [0:0] out_c0_exe20,
    output wire [0:0] out_c0_exe21,
    output wire [31:0] out_c0_exe22,
    output wire [31:0] out_c0_exe2200,
    output wire [0:0] out_c0_exe23,
    output wire [31:0] out_c0_exe24,
    output wire [31:0] out_c0_exe25,
    output wire [0:0] out_c0_exe26,
    output wire [0:0] out_c0_exe27,
    output wire [0:0] out_c0_exe28,
    output wire [31:0] out_c0_exe3201,
    output wire [31:0] out_c0_exe4202,
    output wire [0:0] out_c0_exe5203,
    output wire [0:0] out_c0_exe6204,
    output wire [31:0] out_c0_exe7205,
    output wire [0:0] out_c0_exe8206,
    output wire [0:0] out_c0_exe9207,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_stencil_2d_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_stencil_2d2_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_stencil_2d2_exiting_valid_out;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe10208;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe11209;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe1199;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe12210;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe13211;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe14212;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe15;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe16;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe17;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe18;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe19;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe20;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe21;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe22;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe2200;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe23;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe24;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe25;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe26;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe27;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe28;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe3201;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe4202;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe5203;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe6204;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe7205;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe8206;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe9207;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_stall_out;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_valid_out;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe10208;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe11209;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe1199;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe12210;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe13211;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe14212;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe15;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe16;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe17;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe18;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe19;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe20;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe21;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe22;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe2200;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe23;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe24;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe25;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe26;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe27;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe28;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe3201;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe4202;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe5203;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe6204;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe7205;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe8206;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe9207;
    wire [0:0] stencil_2d_B6_branch_out_stall_out;
    wire [0:0] stencil_2d_B6_branch_out_valid_out_0;
    wire [31:0] stencil_2d_B6_merge_out_c_043_pop16100;
    wire [0:0] stencil_2d_B6_merge_out_exitcond1145_pop20112;
    wire [0:0] stencil_2d_B6_merge_out_exitcond1183;
    wire [0:0] stencil_2d_B6_merge_out_exitcond894;
    wire [0:0] stencil_2d_B6_merge_out_forked35;
    wire [0:0] stencil_2d_B6_merge_out_memdep_phi1_pop1451_pop22118;
    wire [0:0] stencil_2d_B6_merge_out_memdep_phi1_pop1493;
    wire [0:0] stencil_2d_B6_merge_out_memdep_phi_pop17103;
    wire [31:0] stencil_2d_B6_merge_out_mul2442_pop19109;
    wire [31:0] stencil_2d_B6_merge_out_mul2478;
    wire [0:0] stencil_2d_B6_merge_out_notcmp2297;
    wire [0:0] stencil_2d_B6_merge_out_notcmp2748_pop21115;
    wire [0:0] stencil_2d_B6_merge_out_notcmp2788;
    wire [31:0] stencil_2d_B6_merge_out_r_044_pop1339_pop18106;
    wire [31:0] stencil_2d_B6_merge_out_r_044_pop1373;
    wire [0:0] stencil_2d_B6_merge_out_stall_out_0;
    wire [0:0] stencil_2d_B6_merge_out_stall_out_1;
    wire [0:0] stencil_2d_B6_merge_out_valid_out;


    // stencil_2d_B6_merge(BLACKBOX,74)
    stencil_2d_B6_merge thestencil_2d_B6_merge (
        .in_c_043_pop16100_0(in_c_043_pop16100_0),
        .in_c_043_pop16100_1(in_c_043_pop16100_1),
        .in_exitcond1145_pop20112_0(in_exitcond1145_pop20112_0),
        .in_exitcond1145_pop20112_1(in_exitcond1145_pop20112_1),
        .in_exitcond1183_0(in_exitcond1183_0),
        .in_exitcond1183_1(in_exitcond1183_1),
        .in_exitcond894_0(in_exitcond894_0),
        .in_exitcond894_1(in_exitcond894_1),
        .in_forked35_0(in_forked35_0),
        .in_forked35_1(in_forked35_1),
        .in_memdep_phi1_pop1451_pop22118_0(in_memdep_phi1_pop1451_pop22118_0),
        .in_memdep_phi1_pop1451_pop22118_1(in_memdep_phi1_pop1451_pop22118_1),
        .in_memdep_phi1_pop1493_0(in_memdep_phi1_pop1493_0),
        .in_memdep_phi1_pop1493_1(in_memdep_phi1_pop1493_1),
        .in_memdep_phi_pop17103_0(in_memdep_phi_pop17103_0),
        .in_memdep_phi_pop17103_1(in_memdep_phi_pop17103_1),
        .in_mul2442_pop19109_0(in_mul2442_pop19109_0),
        .in_mul2442_pop19109_1(in_mul2442_pop19109_1),
        .in_mul2478_0(in_mul2478_0),
        .in_mul2478_1(in_mul2478_1),
        .in_notcmp2297_0(in_notcmp2297_0),
        .in_notcmp2297_1(in_notcmp2297_1),
        .in_notcmp2748_pop21115_0(in_notcmp2748_pop21115_0),
        .in_notcmp2748_pop21115_1(in_notcmp2748_pop21115_1),
        .in_notcmp2788_0(in_notcmp2788_0),
        .in_notcmp2788_1(in_notcmp2788_1),
        .in_r_044_pop1339_pop18106_0(in_r_044_pop1339_pop18106_0),
        .in_r_044_pop1339_pop18106_1(in_r_044_pop1339_pop18106_1),
        .in_r_044_pop1373_0(in_r_044_pop1373_0),
        .in_r_044_pop1373_1(in_r_044_pop1373_1),
        .in_stall_in(bb_stencil_2d_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_c_043_pop16100(stencil_2d_B6_merge_out_c_043_pop16100),
        .out_exitcond1145_pop20112(stencil_2d_B6_merge_out_exitcond1145_pop20112),
        .out_exitcond1183(stencil_2d_B6_merge_out_exitcond1183),
        .out_exitcond894(stencil_2d_B6_merge_out_exitcond894),
        .out_forked35(stencil_2d_B6_merge_out_forked35),
        .out_memdep_phi1_pop1451_pop22118(stencil_2d_B6_merge_out_memdep_phi1_pop1451_pop22118),
        .out_memdep_phi1_pop1493(stencil_2d_B6_merge_out_memdep_phi1_pop1493),
        .out_memdep_phi_pop17103(stencil_2d_B6_merge_out_memdep_phi_pop17103),
        .out_mul2442_pop19109(stencil_2d_B6_merge_out_mul2442_pop19109),
        .out_mul2478(stencil_2d_B6_merge_out_mul2478),
        .out_notcmp2297(stencil_2d_B6_merge_out_notcmp2297),
        .out_notcmp2748_pop21115(stencil_2d_B6_merge_out_notcmp2748_pop21115),
        .out_notcmp2788(stencil_2d_B6_merge_out_notcmp2788),
        .out_r_044_pop1339_pop18106(stencil_2d_B6_merge_out_r_044_pop1339_pop18106),
        .out_r_044_pop1373(stencil_2d_B6_merge_out_r_044_pop1373),
        .out_stall_out_0(stencil_2d_B6_merge_out_stall_out_0),
        .out_stall_out_1(stencil_2d_B6_merge_out_stall_out_1),
        .out_valid_out(stencil_2d_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B6_stall_region(BLACKBOX,2)
    stencil_2d_bb_B6_stall_region thebb_stencil_2d_B6_stall_region (
        .in_c_043_pop16100(stencil_2d_B6_merge_out_c_043_pop16100),
        .in_exitcond1145_pop20112(stencil_2d_B6_merge_out_exitcond1145_pop20112),
        .in_exitcond1183(stencil_2d_B6_merge_out_exitcond1183),
        .in_exitcond894(stencil_2d_B6_merge_out_exitcond894),
        .in_forked35(stencil_2d_B6_merge_out_forked35),
        .in_memdep_phi1_pop1451_pop22118(stencil_2d_B6_merge_out_memdep_phi1_pop1451_pop22118),
        .in_memdep_phi1_pop1493(stencil_2d_B6_merge_out_memdep_phi1_pop1493),
        .in_memdep_phi_pop17103(stencil_2d_B6_merge_out_memdep_phi_pop17103),
        .in_mul2442_pop19109(stencil_2d_B6_merge_out_mul2442_pop19109),
        .in_mul2478(stencil_2d_B6_merge_out_mul2478),
        .in_notcmp2297(stencil_2d_B6_merge_out_notcmp2297),
        .in_notcmp2748_pop21115(stencil_2d_B6_merge_out_notcmp2748_pop21115),
        .in_notcmp2788(stencil_2d_B6_merge_out_notcmp2788),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_r_044_pop1339_pop18106(stencil_2d_B6_merge_out_r_044_pop1339_pop18106),
        .in_r_044_pop1373(stencil_2d_B6_merge_out_r_044_pop1373),
        .in_stall_in(stencil_2d_B6_branch_out_stall_out),
        .in_valid_in(stencil_2d_B6_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_stencil_2d2_exiting_stall_out(bb_stencil_2d_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_stencil_2d2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_stencil_2d2_exiting_valid_out(bb_stencil_2d_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_stencil_2d2_exiting_valid_out),
        .out_c0_exe10208(bb_stencil_2d_B6_stall_region_out_c0_exe10208),
        .out_c0_exe11209(bb_stencil_2d_B6_stall_region_out_c0_exe11209),
        .out_c0_exe1199(bb_stencil_2d_B6_stall_region_out_c0_exe1199),
        .out_c0_exe12210(bb_stencil_2d_B6_stall_region_out_c0_exe12210),
        .out_c0_exe13211(bb_stencil_2d_B6_stall_region_out_c0_exe13211),
        .out_c0_exe14212(bb_stencil_2d_B6_stall_region_out_c0_exe14212),
        .out_c0_exe15(bb_stencil_2d_B6_stall_region_out_c0_exe15),
        .out_c0_exe16(bb_stencil_2d_B6_stall_region_out_c0_exe16),
        .out_c0_exe17(bb_stencil_2d_B6_stall_region_out_c0_exe17),
        .out_c0_exe18(bb_stencil_2d_B6_stall_region_out_c0_exe18),
        .out_c0_exe19(bb_stencil_2d_B6_stall_region_out_c0_exe19),
        .out_c0_exe20(bb_stencil_2d_B6_stall_region_out_c0_exe20),
        .out_c0_exe21(bb_stencil_2d_B6_stall_region_out_c0_exe21),
        .out_c0_exe22(bb_stencil_2d_B6_stall_region_out_c0_exe22),
        .out_c0_exe2200(bb_stencil_2d_B6_stall_region_out_c0_exe2200),
        .out_c0_exe23(bb_stencil_2d_B6_stall_region_out_c0_exe23),
        .out_c0_exe24(bb_stencil_2d_B6_stall_region_out_c0_exe24),
        .out_c0_exe25(bb_stencil_2d_B6_stall_region_out_c0_exe25),
        .out_c0_exe26(bb_stencil_2d_B6_stall_region_out_c0_exe26),
        .out_c0_exe27(bb_stencil_2d_B6_stall_region_out_c0_exe27),
        .out_c0_exe28(bb_stencil_2d_B6_stall_region_out_c0_exe28),
        .out_c0_exe3201(bb_stencil_2d_B6_stall_region_out_c0_exe3201),
        .out_c0_exe4202(bb_stencil_2d_B6_stall_region_out_c0_exe4202),
        .out_c0_exe5203(bb_stencil_2d_B6_stall_region_out_c0_exe5203),
        .out_c0_exe6204(bb_stencil_2d_B6_stall_region_out_c0_exe6204),
        .out_c0_exe7205(bb_stencil_2d_B6_stall_region_out_c0_exe7205),
        .out_c0_exe8206(bb_stencil_2d_B6_stall_region_out_c0_exe8206),
        .out_c0_exe9207(bb_stencil_2d_B6_stall_region_out_c0_exe9207),
        .out_pipeline_valid_out(bb_stencil_2d_B6_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_stencil_2d_B6_stall_region_out_stall_out),
        .out_valid_out(bb_stencil_2d_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B6_branch(BLACKBOX,73)
    stencil_2d_B6_branch thestencil_2d_B6_branch (
        .in_c0_exe10208(bb_stencil_2d_B6_stall_region_out_c0_exe10208),
        .in_c0_exe11209(bb_stencil_2d_B6_stall_region_out_c0_exe11209),
        .in_c0_exe1199(bb_stencil_2d_B6_stall_region_out_c0_exe1199),
        .in_c0_exe12210(bb_stencil_2d_B6_stall_region_out_c0_exe12210),
        .in_c0_exe13211(bb_stencil_2d_B6_stall_region_out_c0_exe13211),
        .in_c0_exe14212(bb_stencil_2d_B6_stall_region_out_c0_exe14212),
        .in_c0_exe15(bb_stencil_2d_B6_stall_region_out_c0_exe15),
        .in_c0_exe16(bb_stencil_2d_B6_stall_region_out_c0_exe16),
        .in_c0_exe17(bb_stencil_2d_B6_stall_region_out_c0_exe17),
        .in_c0_exe18(bb_stencil_2d_B6_stall_region_out_c0_exe18),
        .in_c0_exe19(bb_stencil_2d_B6_stall_region_out_c0_exe19),
        .in_c0_exe20(bb_stencil_2d_B6_stall_region_out_c0_exe20),
        .in_c0_exe21(bb_stencil_2d_B6_stall_region_out_c0_exe21),
        .in_c0_exe22(bb_stencil_2d_B6_stall_region_out_c0_exe22),
        .in_c0_exe2200(bb_stencil_2d_B6_stall_region_out_c0_exe2200),
        .in_c0_exe23(bb_stencil_2d_B6_stall_region_out_c0_exe23),
        .in_c0_exe24(bb_stencil_2d_B6_stall_region_out_c0_exe24),
        .in_c0_exe25(bb_stencil_2d_B6_stall_region_out_c0_exe25),
        .in_c0_exe26(bb_stencil_2d_B6_stall_region_out_c0_exe26),
        .in_c0_exe27(bb_stencil_2d_B6_stall_region_out_c0_exe27),
        .in_c0_exe28(bb_stencil_2d_B6_stall_region_out_c0_exe28),
        .in_c0_exe3201(bb_stencil_2d_B6_stall_region_out_c0_exe3201),
        .in_c0_exe4202(bb_stencil_2d_B6_stall_region_out_c0_exe4202),
        .in_c0_exe5203(bb_stencil_2d_B6_stall_region_out_c0_exe5203),
        .in_c0_exe6204(bb_stencil_2d_B6_stall_region_out_c0_exe6204),
        .in_c0_exe7205(bb_stencil_2d_B6_stall_region_out_c0_exe7205),
        .in_c0_exe8206(bb_stencil_2d_B6_stall_region_out_c0_exe8206),
        .in_c0_exe9207(bb_stencil_2d_B6_stall_region_out_c0_exe9207),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_stencil_2d_B6_stall_region_out_valid_out),
        .out_c0_exe10208(stencil_2d_B6_branch_out_c0_exe10208),
        .out_c0_exe11209(stencil_2d_B6_branch_out_c0_exe11209),
        .out_c0_exe1199(stencil_2d_B6_branch_out_c0_exe1199),
        .out_c0_exe12210(stencil_2d_B6_branch_out_c0_exe12210),
        .out_c0_exe13211(stencil_2d_B6_branch_out_c0_exe13211),
        .out_c0_exe14212(stencil_2d_B6_branch_out_c0_exe14212),
        .out_c0_exe15(stencil_2d_B6_branch_out_c0_exe15),
        .out_c0_exe16(stencil_2d_B6_branch_out_c0_exe16),
        .out_c0_exe17(stencil_2d_B6_branch_out_c0_exe17),
        .out_c0_exe18(stencil_2d_B6_branch_out_c0_exe18),
        .out_c0_exe19(stencil_2d_B6_branch_out_c0_exe19),
        .out_c0_exe20(stencil_2d_B6_branch_out_c0_exe20),
        .out_c0_exe21(stencil_2d_B6_branch_out_c0_exe21),
        .out_c0_exe22(stencil_2d_B6_branch_out_c0_exe22),
        .out_c0_exe2200(stencil_2d_B6_branch_out_c0_exe2200),
        .out_c0_exe23(stencil_2d_B6_branch_out_c0_exe23),
        .out_c0_exe24(stencil_2d_B6_branch_out_c0_exe24),
        .out_c0_exe25(stencil_2d_B6_branch_out_c0_exe25),
        .out_c0_exe26(stencil_2d_B6_branch_out_c0_exe26),
        .out_c0_exe27(stencil_2d_B6_branch_out_c0_exe27),
        .out_c0_exe28(stencil_2d_B6_branch_out_c0_exe28),
        .out_c0_exe3201(stencil_2d_B6_branch_out_c0_exe3201),
        .out_c0_exe4202(stencil_2d_B6_branch_out_c0_exe4202),
        .out_c0_exe5203(stencil_2d_B6_branch_out_c0_exe5203),
        .out_c0_exe6204(stencil_2d_B6_branch_out_c0_exe6204),
        .out_c0_exe7205(stencil_2d_B6_branch_out_c0_exe7205),
        .out_c0_exe8206(stencil_2d_B6_branch_out_c0_exe8206),
        .out_c0_exe9207(stencil_2d_B6_branch_out_c0_exe9207),
        .out_stall_out(stencil_2d_B6_branch_out_stall_out),
        .out_valid_out_0(stencil_2d_B6_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10208(GPOUT,36)
    assign out_c0_exe10208 = stencil_2d_B6_branch_out_c0_exe10208;

    // out_c0_exe11209(GPOUT,37)
    assign out_c0_exe11209 = stencil_2d_B6_branch_out_c0_exe11209;

    // out_c0_exe1199(GPOUT,38)
    assign out_c0_exe1199 = stencil_2d_B6_branch_out_c0_exe1199;

    // out_c0_exe12210(GPOUT,39)
    assign out_c0_exe12210 = stencil_2d_B6_branch_out_c0_exe12210;

    // out_c0_exe13211(GPOUT,40)
    assign out_c0_exe13211 = stencil_2d_B6_branch_out_c0_exe13211;

    // out_c0_exe14212(GPOUT,41)
    assign out_c0_exe14212 = stencil_2d_B6_branch_out_c0_exe14212;

    // out_c0_exe15(GPOUT,42)
    assign out_c0_exe15 = stencil_2d_B6_branch_out_c0_exe15;

    // out_c0_exe16(GPOUT,43)
    assign out_c0_exe16 = stencil_2d_B6_branch_out_c0_exe16;

    // out_c0_exe17(GPOUT,44)
    assign out_c0_exe17 = stencil_2d_B6_branch_out_c0_exe17;

    // out_c0_exe18(GPOUT,45)
    assign out_c0_exe18 = stencil_2d_B6_branch_out_c0_exe18;

    // out_c0_exe19(GPOUT,46)
    assign out_c0_exe19 = stencil_2d_B6_branch_out_c0_exe19;

    // out_c0_exe20(GPOUT,47)
    assign out_c0_exe20 = stencil_2d_B6_branch_out_c0_exe20;

    // out_c0_exe21(GPOUT,48)
    assign out_c0_exe21 = stencil_2d_B6_branch_out_c0_exe21;

    // out_c0_exe22(GPOUT,49)
    assign out_c0_exe22 = stencil_2d_B6_branch_out_c0_exe22;

    // out_c0_exe2200(GPOUT,50)
    assign out_c0_exe2200 = stencil_2d_B6_branch_out_c0_exe2200;

    // out_c0_exe23(GPOUT,51)
    assign out_c0_exe23 = stencil_2d_B6_branch_out_c0_exe23;

    // out_c0_exe24(GPOUT,52)
    assign out_c0_exe24 = stencil_2d_B6_branch_out_c0_exe24;

    // out_c0_exe25(GPOUT,53)
    assign out_c0_exe25 = stencil_2d_B6_branch_out_c0_exe25;

    // out_c0_exe26(GPOUT,54)
    assign out_c0_exe26 = stencil_2d_B6_branch_out_c0_exe26;

    // out_c0_exe27(GPOUT,55)
    assign out_c0_exe27 = stencil_2d_B6_branch_out_c0_exe27;

    // out_c0_exe28(GPOUT,56)
    assign out_c0_exe28 = stencil_2d_B6_branch_out_c0_exe28;

    // out_c0_exe3201(GPOUT,57)
    assign out_c0_exe3201 = stencil_2d_B6_branch_out_c0_exe3201;

    // out_c0_exe4202(GPOUT,58)
    assign out_c0_exe4202 = stencil_2d_B6_branch_out_c0_exe4202;

    // out_c0_exe5203(GPOUT,59)
    assign out_c0_exe5203 = stencil_2d_B6_branch_out_c0_exe5203;

    // out_c0_exe6204(GPOUT,60)
    assign out_c0_exe6204 = stencil_2d_B6_branch_out_c0_exe6204;

    // out_c0_exe7205(GPOUT,61)
    assign out_c0_exe7205 = stencil_2d_B6_branch_out_c0_exe7205;

    // out_c0_exe8206(GPOUT,62)
    assign out_c0_exe8206 = stencil_2d_B6_branch_out_c0_exe8206;

    // out_c0_exe9207(GPOUT,63)
    assign out_c0_exe9207 = stencil_2d_B6_branch_out_c0_exe9207;

    // out_exiting_stall_out(GPOUT,64)
    assign out_exiting_stall_out = bb_stencil_2d_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_stencil_2d2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,65)
    assign out_exiting_valid_out = bb_stencil_2d_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_stencil_2d2_exiting_valid_out;

    // out_stall_out_0(GPOUT,66)
    assign out_stall_out_0 = stencil_2d_B6_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,67)
    assign out_stall_out_1 = stencil_2d_B6_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,68)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,69)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,70)
    assign out_valid_out_0 = stencil_2d_B6_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,72)
    assign out_pipeline_valid_out = bb_stencil_2d_B6_stall_region_out_pipeline_valid_out;

endmodule
