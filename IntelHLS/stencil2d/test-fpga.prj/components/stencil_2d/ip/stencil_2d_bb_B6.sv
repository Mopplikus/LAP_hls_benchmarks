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
// SystemVerilog created on Wed Mar 29 16:57:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B6 (
    input wire [31:0] in_c_025_pop16102_0,
    input wire [31:0] in_c_025_pop16102_1,
    input wire [0:0] in_exitcond1147_pop20114_0,
    input wire [0:0] in_exitcond1147_pop20114_1,
    input wire [0:0] in_exitcond1185_0,
    input wire [0:0] in_exitcond1185_1,
    input wire [0:0] in_exitcond896_0,
    input wire [0:0] in_exitcond896_1,
    input wire [0:0] in_forked37_0,
    input wire [0:0] in_forked37_1,
    input wire [0:0] in_memdep_phi1_pop1453_pop22120_0,
    input wire [0:0] in_memdep_phi1_pop1453_pop22120_1,
    input wire [0:0] in_memdep_phi1_pop1495_0,
    input wire [0:0] in_memdep_phi1_pop1495_1,
    input wire [0:0] in_memdep_phi_pop17105_0,
    input wire [0:0] in_memdep_phi_pop17105_1,
    input wire [31:0] in_mul2544_pop19111_0,
    input wire [31:0] in_mul2544_pop19111_1,
    input wire [31:0] in_mul2580_0,
    input wire [31:0] in_mul2580_1,
    input wire [0:0] in_notcmp2499_0,
    input wire [0:0] in_notcmp2499_1,
    input wire [0:0] in_notcmp2950_pop21117_0,
    input wire [0:0] in_notcmp2950_pop21117_1,
    input wire [0:0] in_notcmp2990_0,
    input wire [0:0] in_notcmp2990_1,
    input wire [31:0] in_r_026_pop1341_pop18108_0,
    input wire [31:0] in_r_026_pop1341_pop18108_1,
    input wire [31:0] in_r_026_pop1375_0,
    input wire [31:0] in_r_026_pop1375_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10210,
    output wire [0:0] out_c0_exe11211,
    output wire [31:0] out_c0_exe1201,
    output wire [0:0] out_c0_exe12212,
    output wire [0:0] out_c0_exe13213,
    output wire [0:0] out_c0_exe14214,
    output wire [31:0] out_c0_exe15,
    output wire [31:0] out_c0_exe16,
    output wire [0:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [0:0] out_c0_exe19,
    output wire [0:0] out_c0_exe20,
    output wire [0:0] out_c0_exe21,
    output wire [31:0] out_c0_exe22,
    output wire [31:0] out_c0_exe2202,
    output wire [0:0] out_c0_exe23,
    output wire [31:0] out_c0_exe24,
    output wire [31:0] out_c0_exe25,
    output wire [0:0] out_c0_exe26,
    output wire [0:0] out_c0_exe27,
    output wire [0:0] out_c0_exe28,
    output wire [31:0] out_c0_exe3203,
    output wire [31:0] out_c0_exe4204,
    output wire [0:0] out_c0_exe5205,
    output wire [0:0] out_c0_exe6206,
    output wire [31:0] out_c0_exe7207,
    output wire [0:0] out_c0_exe8208,
    output wire [0:0] out_c0_exe9209,
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

    wire [0:0] bb_stencil_2d_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_valid_out;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe10210;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe11211;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe1201;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe12212;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe13213;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe14214;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe15;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe16;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe17;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe18;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe19;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe20;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe21;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe22;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe2202;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe23;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe24;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe25;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe26;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe27;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe28;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe3203;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe4204;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe5205;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe6206;
    wire [31:0] bb_stencil_2d_B6_stall_region_out_c0_exe7207;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe8208;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_c0_exe9209;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_stall_out;
    wire [0:0] bb_stencil_2d_B6_stall_region_out_valid_out;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe10210;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe11211;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe1201;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe12212;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe13213;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe14214;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe15;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe16;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe17;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe18;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe19;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe20;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe21;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe22;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe2202;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe23;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe24;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe25;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe26;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe27;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe28;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe3203;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe4204;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe5205;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe6206;
    wire [31:0] stencil_2d_B6_branch_out_c0_exe7207;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe8208;
    wire [0:0] stencil_2d_B6_branch_out_c0_exe9209;
    wire [0:0] stencil_2d_B6_branch_out_stall_out;
    wire [0:0] stencil_2d_B6_branch_out_valid_out_0;
    wire [31:0] stencil_2d_B6_merge_out_c_025_pop16102;
    wire [0:0] stencil_2d_B6_merge_out_exitcond1147_pop20114;
    wire [0:0] stencil_2d_B6_merge_out_exitcond1185;
    wire [0:0] stencil_2d_B6_merge_out_exitcond896;
    wire [0:0] stencil_2d_B6_merge_out_forked37;
    wire [0:0] stencil_2d_B6_merge_out_memdep_phi1_pop1453_pop22120;
    wire [0:0] stencil_2d_B6_merge_out_memdep_phi1_pop1495;
    wire [0:0] stencil_2d_B6_merge_out_memdep_phi_pop17105;
    wire [31:0] stencil_2d_B6_merge_out_mul2544_pop19111;
    wire [31:0] stencil_2d_B6_merge_out_mul2580;
    wire [0:0] stencil_2d_B6_merge_out_notcmp2499;
    wire [0:0] stencil_2d_B6_merge_out_notcmp2950_pop21117;
    wire [0:0] stencil_2d_B6_merge_out_notcmp2990;
    wire [31:0] stencil_2d_B6_merge_out_r_026_pop1341_pop18108;
    wire [31:0] stencil_2d_B6_merge_out_r_026_pop1375;
    wire [0:0] stencil_2d_B6_merge_out_stall_out_0;
    wire [0:0] stencil_2d_B6_merge_out_stall_out_1;
    wire [0:0] stencil_2d_B6_merge_out_valid_out;


    // stencil_2d_B6_merge(BLACKBOX,74)
    stencil_2d_B6_merge thestencil_2d_B6_merge (
        .in_c_025_pop16102_0(in_c_025_pop16102_0),
        .in_c_025_pop16102_1(in_c_025_pop16102_1),
        .in_exitcond1147_pop20114_0(in_exitcond1147_pop20114_0),
        .in_exitcond1147_pop20114_1(in_exitcond1147_pop20114_1),
        .in_exitcond1185_0(in_exitcond1185_0),
        .in_exitcond1185_1(in_exitcond1185_1),
        .in_exitcond896_0(in_exitcond896_0),
        .in_exitcond896_1(in_exitcond896_1),
        .in_forked37_0(in_forked37_0),
        .in_forked37_1(in_forked37_1),
        .in_memdep_phi1_pop1453_pop22120_0(in_memdep_phi1_pop1453_pop22120_0),
        .in_memdep_phi1_pop1453_pop22120_1(in_memdep_phi1_pop1453_pop22120_1),
        .in_memdep_phi1_pop1495_0(in_memdep_phi1_pop1495_0),
        .in_memdep_phi1_pop1495_1(in_memdep_phi1_pop1495_1),
        .in_memdep_phi_pop17105_0(in_memdep_phi_pop17105_0),
        .in_memdep_phi_pop17105_1(in_memdep_phi_pop17105_1),
        .in_mul2544_pop19111_0(in_mul2544_pop19111_0),
        .in_mul2544_pop19111_1(in_mul2544_pop19111_1),
        .in_mul2580_0(in_mul2580_0),
        .in_mul2580_1(in_mul2580_1),
        .in_notcmp2499_0(in_notcmp2499_0),
        .in_notcmp2499_1(in_notcmp2499_1),
        .in_notcmp2950_pop21117_0(in_notcmp2950_pop21117_0),
        .in_notcmp2950_pop21117_1(in_notcmp2950_pop21117_1),
        .in_notcmp2990_0(in_notcmp2990_0),
        .in_notcmp2990_1(in_notcmp2990_1),
        .in_r_026_pop1341_pop18108_0(in_r_026_pop1341_pop18108_0),
        .in_r_026_pop1341_pop18108_1(in_r_026_pop1341_pop18108_1),
        .in_r_026_pop1375_0(in_r_026_pop1375_0),
        .in_r_026_pop1375_1(in_r_026_pop1375_1),
        .in_stall_in(bb_stencil_2d_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_c_025_pop16102(stencil_2d_B6_merge_out_c_025_pop16102),
        .out_exitcond1147_pop20114(stencil_2d_B6_merge_out_exitcond1147_pop20114),
        .out_exitcond1185(stencil_2d_B6_merge_out_exitcond1185),
        .out_exitcond896(stencil_2d_B6_merge_out_exitcond896),
        .out_forked37(stencil_2d_B6_merge_out_forked37),
        .out_memdep_phi1_pop1453_pop22120(stencil_2d_B6_merge_out_memdep_phi1_pop1453_pop22120),
        .out_memdep_phi1_pop1495(stencil_2d_B6_merge_out_memdep_phi1_pop1495),
        .out_memdep_phi_pop17105(stencil_2d_B6_merge_out_memdep_phi_pop17105),
        .out_mul2544_pop19111(stencil_2d_B6_merge_out_mul2544_pop19111),
        .out_mul2580(stencil_2d_B6_merge_out_mul2580),
        .out_notcmp2499(stencil_2d_B6_merge_out_notcmp2499),
        .out_notcmp2950_pop21117(stencil_2d_B6_merge_out_notcmp2950_pop21117),
        .out_notcmp2990(stencil_2d_B6_merge_out_notcmp2990),
        .out_r_026_pop1341_pop18108(stencil_2d_B6_merge_out_r_026_pop1341_pop18108),
        .out_r_026_pop1375(stencil_2d_B6_merge_out_r_026_pop1375),
        .out_stall_out_0(stencil_2d_B6_merge_out_stall_out_0),
        .out_stall_out_1(stencil_2d_B6_merge_out_stall_out_1),
        .out_valid_out(stencil_2d_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B6_stall_region(BLACKBOX,2)
    stencil_2d_bb_B6_stall_region thebb_stencil_2d_B6_stall_region (
        .in_c_025_pop16102(stencil_2d_B6_merge_out_c_025_pop16102),
        .in_exitcond1147_pop20114(stencil_2d_B6_merge_out_exitcond1147_pop20114),
        .in_exitcond1185(stencil_2d_B6_merge_out_exitcond1185),
        .in_exitcond896(stencil_2d_B6_merge_out_exitcond896),
        .in_forked37(stencil_2d_B6_merge_out_forked37),
        .in_memdep_phi1_pop1453_pop22120(stencil_2d_B6_merge_out_memdep_phi1_pop1453_pop22120),
        .in_memdep_phi1_pop1495(stencil_2d_B6_merge_out_memdep_phi1_pop1495),
        .in_memdep_phi_pop17105(stencil_2d_B6_merge_out_memdep_phi_pop17105),
        .in_mul2544_pop19111(stencil_2d_B6_merge_out_mul2544_pop19111),
        .in_mul2580(stencil_2d_B6_merge_out_mul2580),
        .in_notcmp2499(stencil_2d_B6_merge_out_notcmp2499),
        .in_notcmp2950_pop21117(stencil_2d_B6_merge_out_notcmp2950_pop21117),
        .in_notcmp2990(stencil_2d_B6_merge_out_notcmp2990),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_r_026_pop1341_pop18108(stencil_2d_B6_merge_out_r_026_pop1341_pop18108),
        .in_r_026_pop1375(stencil_2d_B6_merge_out_r_026_pop1375),
        .in_stall_in(stencil_2d_B6_branch_out_stall_out),
        .in_valid_in(stencil_2d_B6_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_stall_out(bb_stencil_2d_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_valid_out(bb_stencil_2d_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_valid_out),
        .out_c0_exe10210(bb_stencil_2d_B6_stall_region_out_c0_exe10210),
        .out_c0_exe11211(bb_stencil_2d_B6_stall_region_out_c0_exe11211),
        .out_c0_exe1201(bb_stencil_2d_B6_stall_region_out_c0_exe1201),
        .out_c0_exe12212(bb_stencil_2d_B6_stall_region_out_c0_exe12212),
        .out_c0_exe13213(bb_stencil_2d_B6_stall_region_out_c0_exe13213),
        .out_c0_exe14214(bb_stencil_2d_B6_stall_region_out_c0_exe14214),
        .out_c0_exe15(bb_stencil_2d_B6_stall_region_out_c0_exe15),
        .out_c0_exe16(bb_stencil_2d_B6_stall_region_out_c0_exe16),
        .out_c0_exe17(bb_stencil_2d_B6_stall_region_out_c0_exe17),
        .out_c0_exe18(bb_stencil_2d_B6_stall_region_out_c0_exe18),
        .out_c0_exe19(bb_stencil_2d_B6_stall_region_out_c0_exe19),
        .out_c0_exe20(bb_stencil_2d_B6_stall_region_out_c0_exe20),
        .out_c0_exe21(bb_stencil_2d_B6_stall_region_out_c0_exe21),
        .out_c0_exe22(bb_stencil_2d_B6_stall_region_out_c0_exe22),
        .out_c0_exe2202(bb_stencil_2d_B6_stall_region_out_c0_exe2202),
        .out_c0_exe23(bb_stencil_2d_B6_stall_region_out_c0_exe23),
        .out_c0_exe24(bb_stencil_2d_B6_stall_region_out_c0_exe24),
        .out_c0_exe25(bb_stencil_2d_B6_stall_region_out_c0_exe25),
        .out_c0_exe26(bb_stencil_2d_B6_stall_region_out_c0_exe26),
        .out_c0_exe27(bb_stencil_2d_B6_stall_region_out_c0_exe27),
        .out_c0_exe28(bb_stencil_2d_B6_stall_region_out_c0_exe28),
        .out_c0_exe3203(bb_stencil_2d_B6_stall_region_out_c0_exe3203),
        .out_c0_exe4204(bb_stencil_2d_B6_stall_region_out_c0_exe4204),
        .out_c0_exe5205(bb_stencil_2d_B6_stall_region_out_c0_exe5205),
        .out_c0_exe6206(bb_stencil_2d_B6_stall_region_out_c0_exe6206),
        .out_c0_exe7207(bb_stencil_2d_B6_stall_region_out_c0_exe7207),
        .out_c0_exe8208(bb_stencil_2d_B6_stall_region_out_c0_exe8208),
        .out_c0_exe9209(bb_stencil_2d_B6_stall_region_out_c0_exe9209),
        .out_pipeline_valid_out(bb_stencil_2d_B6_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_stencil_2d_B6_stall_region_out_stall_out),
        .out_valid_out(bb_stencil_2d_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B6_branch(BLACKBOX,73)
    stencil_2d_B6_branch thestencil_2d_B6_branch (
        .in_c0_exe10210(bb_stencil_2d_B6_stall_region_out_c0_exe10210),
        .in_c0_exe11211(bb_stencil_2d_B6_stall_region_out_c0_exe11211),
        .in_c0_exe1201(bb_stencil_2d_B6_stall_region_out_c0_exe1201),
        .in_c0_exe12212(bb_stencil_2d_B6_stall_region_out_c0_exe12212),
        .in_c0_exe13213(bb_stencil_2d_B6_stall_region_out_c0_exe13213),
        .in_c0_exe14214(bb_stencil_2d_B6_stall_region_out_c0_exe14214),
        .in_c0_exe15(bb_stencil_2d_B6_stall_region_out_c0_exe15),
        .in_c0_exe16(bb_stencil_2d_B6_stall_region_out_c0_exe16),
        .in_c0_exe17(bb_stencil_2d_B6_stall_region_out_c0_exe17),
        .in_c0_exe18(bb_stencil_2d_B6_stall_region_out_c0_exe18),
        .in_c0_exe19(bb_stencil_2d_B6_stall_region_out_c0_exe19),
        .in_c0_exe20(bb_stencil_2d_B6_stall_region_out_c0_exe20),
        .in_c0_exe21(bb_stencil_2d_B6_stall_region_out_c0_exe21),
        .in_c0_exe22(bb_stencil_2d_B6_stall_region_out_c0_exe22),
        .in_c0_exe2202(bb_stencil_2d_B6_stall_region_out_c0_exe2202),
        .in_c0_exe23(bb_stencil_2d_B6_stall_region_out_c0_exe23),
        .in_c0_exe24(bb_stencil_2d_B6_stall_region_out_c0_exe24),
        .in_c0_exe25(bb_stencil_2d_B6_stall_region_out_c0_exe25),
        .in_c0_exe26(bb_stencil_2d_B6_stall_region_out_c0_exe26),
        .in_c0_exe27(bb_stencil_2d_B6_stall_region_out_c0_exe27),
        .in_c0_exe28(bb_stencil_2d_B6_stall_region_out_c0_exe28),
        .in_c0_exe3203(bb_stencil_2d_B6_stall_region_out_c0_exe3203),
        .in_c0_exe4204(bb_stencil_2d_B6_stall_region_out_c0_exe4204),
        .in_c0_exe5205(bb_stencil_2d_B6_stall_region_out_c0_exe5205),
        .in_c0_exe6206(bb_stencil_2d_B6_stall_region_out_c0_exe6206),
        .in_c0_exe7207(bb_stencil_2d_B6_stall_region_out_c0_exe7207),
        .in_c0_exe8208(bb_stencil_2d_B6_stall_region_out_c0_exe8208),
        .in_c0_exe9209(bb_stencil_2d_B6_stall_region_out_c0_exe9209),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_stencil_2d_B6_stall_region_out_valid_out),
        .out_c0_exe10210(stencil_2d_B6_branch_out_c0_exe10210),
        .out_c0_exe11211(stencil_2d_B6_branch_out_c0_exe11211),
        .out_c0_exe1201(stencil_2d_B6_branch_out_c0_exe1201),
        .out_c0_exe12212(stencil_2d_B6_branch_out_c0_exe12212),
        .out_c0_exe13213(stencil_2d_B6_branch_out_c0_exe13213),
        .out_c0_exe14214(stencil_2d_B6_branch_out_c0_exe14214),
        .out_c0_exe15(stencil_2d_B6_branch_out_c0_exe15),
        .out_c0_exe16(stencil_2d_B6_branch_out_c0_exe16),
        .out_c0_exe17(stencil_2d_B6_branch_out_c0_exe17),
        .out_c0_exe18(stencil_2d_B6_branch_out_c0_exe18),
        .out_c0_exe19(stencil_2d_B6_branch_out_c0_exe19),
        .out_c0_exe20(stencil_2d_B6_branch_out_c0_exe20),
        .out_c0_exe21(stencil_2d_B6_branch_out_c0_exe21),
        .out_c0_exe22(stencil_2d_B6_branch_out_c0_exe22),
        .out_c0_exe2202(stencil_2d_B6_branch_out_c0_exe2202),
        .out_c0_exe23(stencil_2d_B6_branch_out_c0_exe23),
        .out_c0_exe24(stencil_2d_B6_branch_out_c0_exe24),
        .out_c0_exe25(stencil_2d_B6_branch_out_c0_exe25),
        .out_c0_exe26(stencil_2d_B6_branch_out_c0_exe26),
        .out_c0_exe27(stencil_2d_B6_branch_out_c0_exe27),
        .out_c0_exe28(stencil_2d_B6_branch_out_c0_exe28),
        .out_c0_exe3203(stencil_2d_B6_branch_out_c0_exe3203),
        .out_c0_exe4204(stencil_2d_B6_branch_out_c0_exe4204),
        .out_c0_exe5205(stencil_2d_B6_branch_out_c0_exe5205),
        .out_c0_exe6206(stencil_2d_B6_branch_out_c0_exe6206),
        .out_c0_exe7207(stencil_2d_B6_branch_out_c0_exe7207),
        .out_c0_exe8208(stencil_2d_B6_branch_out_c0_exe8208),
        .out_c0_exe9209(stencil_2d_B6_branch_out_c0_exe9209),
        .out_stall_out(stencil_2d_B6_branch_out_stall_out),
        .out_valid_out_0(stencil_2d_B6_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10210(GPOUT,36)
    assign out_c0_exe10210 = stencil_2d_B6_branch_out_c0_exe10210;

    // out_c0_exe11211(GPOUT,37)
    assign out_c0_exe11211 = stencil_2d_B6_branch_out_c0_exe11211;

    // out_c0_exe1201(GPOUT,38)
    assign out_c0_exe1201 = stencil_2d_B6_branch_out_c0_exe1201;

    // out_c0_exe12212(GPOUT,39)
    assign out_c0_exe12212 = stencil_2d_B6_branch_out_c0_exe12212;

    // out_c0_exe13213(GPOUT,40)
    assign out_c0_exe13213 = stencil_2d_B6_branch_out_c0_exe13213;

    // out_c0_exe14214(GPOUT,41)
    assign out_c0_exe14214 = stencil_2d_B6_branch_out_c0_exe14214;

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

    // out_c0_exe2202(GPOUT,50)
    assign out_c0_exe2202 = stencil_2d_B6_branch_out_c0_exe2202;

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

    // out_c0_exe3203(GPOUT,57)
    assign out_c0_exe3203 = stencil_2d_B6_branch_out_c0_exe3203;

    // out_c0_exe4204(GPOUT,58)
    assign out_c0_exe4204 = stencil_2d_B6_branch_out_c0_exe4204;

    // out_c0_exe5205(GPOUT,59)
    assign out_c0_exe5205 = stencil_2d_B6_branch_out_c0_exe5205;

    // out_c0_exe6206(GPOUT,60)
    assign out_c0_exe6206 = stencil_2d_B6_branch_out_c0_exe6206;

    // out_c0_exe7207(GPOUT,61)
    assign out_c0_exe7207 = stencil_2d_B6_branch_out_c0_exe7207;

    // out_c0_exe8208(GPOUT,62)
    assign out_c0_exe8208 = stencil_2d_B6_branch_out_c0_exe8208;

    // out_c0_exe9209(GPOUT,63)
    assign out_c0_exe9209 = stencil_2d_B6_branch_out_c0_exe9209;

    // out_exiting_stall_out(GPOUT,64)
    assign out_exiting_stall_out = bb_stencil_2d_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,65)
    assign out_exiting_valid_out = bb_stencil_2d_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_valid_out;

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
