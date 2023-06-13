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

// SystemVerilog created from bb_covariance_B8
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B8 (
    input wire [0:0] in_feedback_in_25,
    output wire [0:0] out_feedback_stall_out_25,
    input wire [0:0] in_feedback_valid_in_25,
    input wire [0:0] in_forked85_0,
    input wire [0:0] in_forked85_1,
    input wire [31:0] in_lim_ext81_pop42141_0,
    input wire [31:0] in_lim_ext81_pop42141_1,
    input wire [31:0] in_reorder_limiter_enter118_0,
    input wire [31:0] in_reorder_limiter_enter118_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10306,
    output wire [31:0] out_c0_exe1297,
    output wire [31:0] out_c0_exe2298,
    output wire [32:0] out_c0_exe3299,
    output wire [0:0] out_c0_exe4300,
    output wire [0:0] out_c0_exe5301,
    output wire [31:0] out_c0_exe6302,
    output wire [31:0] out_c0_exe7303,
    output wire [31:0] out_c0_exe9305,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi3_pop25,
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

    wire [0:0] bb_covariance_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_stall_out;
    wire [0:0] bb_covariance_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_valid_out;
    wire [31:0] bb_covariance_B8_stall_region_out_c0_exe10306;
    wire [31:0] bb_covariance_B8_stall_region_out_c0_exe1297;
    wire [31:0] bb_covariance_B8_stall_region_out_c0_exe2298;
    wire [32:0] bb_covariance_B8_stall_region_out_c0_exe3299;
    wire [0:0] bb_covariance_B8_stall_region_out_c0_exe4300;
    wire [0:0] bb_covariance_B8_stall_region_out_c0_exe5301;
    wire [31:0] bb_covariance_B8_stall_region_out_c0_exe6302;
    wire [31:0] bb_covariance_B8_stall_region_out_c0_exe7303;
    wire [31:0] bb_covariance_B8_stall_region_out_c0_exe9305;
    wire [0:0] bb_covariance_B8_stall_region_out_feedback_stall_out_25;
    wire [0:0] bb_covariance_B8_stall_region_out_memdep_phi3_pop25;
    wire [0:0] bb_covariance_B8_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B8_stall_region_out_stall_out;
    wire [0:0] bb_covariance_B8_stall_region_out_valid_out;
    wire [31:0] covariance_B8_branch_out_c0_exe10306;
    wire [31:0] covariance_B8_branch_out_c0_exe1297;
    wire [31:0] covariance_B8_branch_out_c0_exe2298;
    wire [32:0] covariance_B8_branch_out_c0_exe3299;
    wire [0:0] covariance_B8_branch_out_c0_exe4300;
    wire [0:0] covariance_B8_branch_out_c0_exe5301;
    wire [31:0] covariance_B8_branch_out_c0_exe6302;
    wire [31:0] covariance_B8_branch_out_c0_exe7303;
    wire [31:0] covariance_B8_branch_out_c0_exe9305;
    wire [0:0] covariance_B8_branch_out_memdep_phi3_pop25;
    wire [0:0] covariance_B8_branch_out_stall_out;
    wire [0:0] covariance_B8_branch_out_valid_out_0;
    wire [0:0] covariance_B8_merge_out_forked85;
    wire [31:0] covariance_B8_merge_out_lim_ext81_pop42141;
    wire [31:0] covariance_B8_merge_out_reorder_limiter_enter118;
    wire [0:0] covariance_B8_merge_out_stall_out_0;
    wire [0:0] covariance_B8_merge_out_stall_out_1;
    wire [0:0] covariance_B8_merge_out_valid_out;


    // covariance_B8_branch(BLACKBOX,3)
    covariance_B8_branch thecovariance_B8_branch (
        .in_c0_exe10306(bb_covariance_B8_stall_region_out_c0_exe10306),
        .in_c0_exe1297(bb_covariance_B8_stall_region_out_c0_exe1297),
        .in_c0_exe2298(bb_covariance_B8_stall_region_out_c0_exe2298),
        .in_c0_exe3299(bb_covariance_B8_stall_region_out_c0_exe3299),
        .in_c0_exe4300(bb_covariance_B8_stall_region_out_c0_exe4300),
        .in_c0_exe5301(bb_covariance_B8_stall_region_out_c0_exe5301),
        .in_c0_exe6302(bb_covariance_B8_stall_region_out_c0_exe6302),
        .in_c0_exe7303(bb_covariance_B8_stall_region_out_c0_exe7303),
        .in_c0_exe9305(bb_covariance_B8_stall_region_out_c0_exe9305),
        .in_memdep_phi3_pop25(bb_covariance_B8_stall_region_out_memdep_phi3_pop25),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_covariance_B8_stall_region_out_valid_out),
        .out_c0_exe10306(covariance_B8_branch_out_c0_exe10306),
        .out_c0_exe1297(covariance_B8_branch_out_c0_exe1297),
        .out_c0_exe2298(covariance_B8_branch_out_c0_exe2298),
        .out_c0_exe3299(covariance_B8_branch_out_c0_exe3299),
        .out_c0_exe4300(covariance_B8_branch_out_c0_exe4300),
        .out_c0_exe5301(covariance_B8_branch_out_c0_exe5301),
        .out_c0_exe6302(covariance_B8_branch_out_c0_exe6302),
        .out_c0_exe7303(covariance_B8_branch_out_c0_exe7303),
        .out_c0_exe9305(covariance_B8_branch_out_c0_exe9305),
        .out_memdep_phi3_pop25(covariance_B8_branch_out_memdep_phi3_pop25),
        .out_stall_out(covariance_B8_branch_out_stall_out),
        .out_valid_out_0(covariance_B8_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B8_merge(BLACKBOX,4)
    covariance_B8_merge thecovariance_B8_merge (
        .in_forked85_0(in_forked85_0),
        .in_forked85_1(in_forked85_1),
        .in_lim_ext81_pop42141_0(in_lim_ext81_pop42141_0),
        .in_lim_ext81_pop42141_1(in_lim_ext81_pop42141_1),
        .in_reorder_limiter_enter118_0(in_reorder_limiter_enter118_0),
        .in_reorder_limiter_enter118_1(in_reorder_limiter_enter118_1),
        .in_stall_in(bb_covariance_B8_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked85(covariance_B8_merge_out_forked85),
        .out_lim_ext81_pop42141(covariance_B8_merge_out_lim_ext81_pop42141),
        .out_reorder_limiter_enter118(covariance_B8_merge_out_reorder_limiter_enter118),
        .out_stall_out_0(covariance_B8_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B8_merge_out_stall_out_1),
        .out_valid_out(covariance_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B8_stall_region(BLACKBOX,2)
    covariance_bb_B8_stall_region thebb_covariance_B8_stall_region (
        .in_feedback_in_25(in_feedback_in_25),
        .in_feedback_valid_in_25(in_feedback_valid_in_25),
        .in_forked85(covariance_B8_merge_out_forked85),
        .in_lim_ext81_pop42141(covariance_B8_merge_out_lim_ext81_pop42141),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_reorder_limiter_enter118(covariance_B8_merge_out_reorder_limiter_enter118),
        .in_stall_in(covariance_B8_branch_out_stall_out),
        .in_valid_in(covariance_B8_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_stall_out(bb_covariance_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_valid_out(bb_covariance_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_valid_out),
        .out_c0_exe10306(bb_covariance_B8_stall_region_out_c0_exe10306),
        .out_c0_exe1297(bb_covariance_B8_stall_region_out_c0_exe1297),
        .out_c0_exe2298(bb_covariance_B8_stall_region_out_c0_exe2298),
        .out_c0_exe3299(bb_covariance_B8_stall_region_out_c0_exe3299),
        .out_c0_exe4300(bb_covariance_B8_stall_region_out_c0_exe4300),
        .out_c0_exe5301(bb_covariance_B8_stall_region_out_c0_exe5301),
        .out_c0_exe6302(bb_covariance_B8_stall_region_out_c0_exe6302),
        .out_c0_exe7303(bb_covariance_B8_stall_region_out_c0_exe7303),
        .out_c0_exe9305(bb_covariance_B8_stall_region_out_c0_exe9305),
        .out_feedback_stall_out_25(bb_covariance_B8_stall_region_out_feedback_stall_out_25),
        .out_memdep_phi3_pop25(bb_covariance_B8_stall_region_out_memdep_phi3_pop25),
        .out_pipeline_valid_out(bb_covariance_B8_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_covariance_B8_stall_region_out_stall_out),
        .out_valid_out(bb_covariance_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_25_sync(GPOUT,6)
    assign out_feedback_stall_out_25 = bb_covariance_B8_stall_region_out_feedback_stall_out_25;

    // out_c0_exe10306(GPOUT,17)
    assign out_c0_exe10306 = covariance_B8_branch_out_c0_exe10306;

    // out_c0_exe1297(GPOUT,18)
    assign out_c0_exe1297 = covariance_B8_branch_out_c0_exe1297;

    // out_c0_exe2298(GPOUT,19)
    assign out_c0_exe2298 = covariance_B8_branch_out_c0_exe2298;

    // out_c0_exe3299(GPOUT,20)
    assign out_c0_exe3299 = covariance_B8_branch_out_c0_exe3299;

    // out_c0_exe4300(GPOUT,21)
    assign out_c0_exe4300 = covariance_B8_branch_out_c0_exe4300;

    // out_c0_exe5301(GPOUT,22)
    assign out_c0_exe5301 = covariance_B8_branch_out_c0_exe5301;

    // out_c0_exe6302(GPOUT,23)
    assign out_c0_exe6302 = covariance_B8_branch_out_c0_exe6302;

    // out_c0_exe7303(GPOUT,24)
    assign out_c0_exe7303 = covariance_B8_branch_out_c0_exe7303;

    // out_c0_exe9305(GPOUT,25)
    assign out_c0_exe9305 = covariance_B8_branch_out_c0_exe9305;

    // out_exiting_stall_out(GPOUT,26)
    assign out_exiting_stall_out = bb_covariance_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,27)
    assign out_exiting_valid_out = bb_covariance_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_valid_out;

    // out_memdep_phi3_pop25(GPOUT,28)
    assign out_memdep_phi3_pop25 = covariance_B8_branch_out_memdep_phi3_pop25;

    // out_stall_out_0(GPOUT,29)
    assign out_stall_out_0 = covariance_B8_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,30)
    assign out_stall_out_1 = covariance_B8_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,31)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,32)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,33)
    assign out_valid_out_0 = covariance_B8_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,35)
    assign out_pipeline_valid_out = bb_covariance_B8_stall_region_out_pipeline_valid_out;

endmodule
