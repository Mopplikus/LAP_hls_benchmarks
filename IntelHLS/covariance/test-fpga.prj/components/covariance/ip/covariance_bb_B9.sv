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

// SystemVerilog created from bb_covariance_B9
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:03 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B9 (
    input wire [0:0] in_forked23_0,
    input wire [0:0] in_forked23_1,
    input wire [32:0] in_fpga_indvars_iv14_pop28169_0,
    input wire [32:0] in_fpga_indvars_iv14_pop28169_1,
    input wire [31:0] in_i24_034_pop29175_0,
    input wire [31:0] in_i24_034_pop29175_1,
    input wire [31:0] in_lim_ext77_pop49164_0,
    input wire [31:0] in_lim_ext77_pop49164_1,
    input wire [31:0] in_lim_ext78_pop30178_0,
    input wire [31:0] in_lim_ext78_pop30178_1,
    input wire [0:0] in_notcmp27172_0,
    input wire [0:0] in_notcmp27172_1,
    input wire [31:0] in_reorder_limiter_enter133_0,
    input wire [31:0] in_reorder_limiter_enter133_1,
    input wire [31:0] in_reorder_limiter_enter91_pop31181_0,
    input wire [31:0] in_reorder_limiter_enter91_pop31181_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10365,
    output wire [32:0] out_c0_exe11366,
    output wire [0:0] out_c0_exe12367,
    output wire [31:0] out_c0_exe13368,
    output wire [31:0] out_c0_exe14369,
    output wire [31:0] out_c0_exe15,
    output wire [0:0] out_c0_exe2357,
    output wire [31:0] out_c0_exe3358,
    output wire [31:0] out_c0_exe4359,
    output wire [31:0] out_c0_exe5360,
    output wire [0:0] out_c0_exe6361,
    output wire [31:0] out_c0_exe7362,
    output wire [0:0] out_c0_exe8363,
    output wire [31:0] out_c0_exe9364,
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

    wire [0:0] bb_covariance_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_stall_out;
    wire [0:0] bb_covariance_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_valid_out;
    wire [31:0] bb_covariance_B9_stall_region_out_c0_exe10365;
    wire [32:0] bb_covariance_B9_stall_region_out_c0_exe11366;
    wire [0:0] bb_covariance_B9_stall_region_out_c0_exe12367;
    wire [31:0] bb_covariance_B9_stall_region_out_c0_exe13368;
    wire [31:0] bb_covariance_B9_stall_region_out_c0_exe14369;
    wire [31:0] bb_covariance_B9_stall_region_out_c0_exe15;
    wire [0:0] bb_covariance_B9_stall_region_out_c0_exe2357;
    wire [31:0] bb_covariance_B9_stall_region_out_c0_exe3358;
    wire [31:0] bb_covariance_B9_stall_region_out_c0_exe4359;
    wire [31:0] bb_covariance_B9_stall_region_out_c0_exe5360;
    wire [0:0] bb_covariance_B9_stall_region_out_c0_exe6361;
    wire [31:0] bb_covariance_B9_stall_region_out_c0_exe7362;
    wire [0:0] bb_covariance_B9_stall_region_out_c0_exe8363;
    wire [31:0] bb_covariance_B9_stall_region_out_c0_exe9364;
    wire [0:0] bb_covariance_B9_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B9_stall_region_out_stall_out;
    wire [0:0] bb_covariance_B9_stall_region_out_valid_out;
    wire [31:0] covariance_B9_branch_out_c0_exe10365;
    wire [32:0] covariance_B9_branch_out_c0_exe11366;
    wire [0:0] covariance_B9_branch_out_c0_exe12367;
    wire [31:0] covariance_B9_branch_out_c0_exe13368;
    wire [31:0] covariance_B9_branch_out_c0_exe14369;
    wire [31:0] covariance_B9_branch_out_c0_exe15;
    wire [0:0] covariance_B9_branch_out_c0_exe2357;
    wire [31:0] covariance_B9_branch_out_c0_exe3358;
    wire [31:0] covariance_B9_branch_out_c0_exe4359;
    wire [31:0] covariance_B9_branch_out_c0_exe5360;
    wire [0:0] covariance_B9_branch_out_c0_exe6361;
    wire [31:0] covariance_B9_branch_out_c0_exe7362;
    wire [0:0] covariance_B9_branch_out_c0_exe8363;
    wire [31:0] covariance_B9_branch_out_c0_exe9364;
    wire [0:0] covariance_B9_branch_out_stall_out;
    wire [0:0] covariance_B9_branch_out_valid_out_0;
    wire [0:0] covariance_B9_merge_out_forked23;
    wire [32:0] covariance_B9_merge_out_fpga_indvars_iv14_pop28169;
    wire [31:0] covariance_B9_merge_out_i24_034_pop29175;
    wire [31:0] covariance_B9_merge_out_lim_ext77_pop49164;
    wire [31:0] covariance_B9_merge_out_lim_ext78_pop30178;
    wire [0:0] covariance_B9_merge_out_notcmp27172;
    wire [31:0] covariance_B9_merge_out_reorder_limiter_enter133;
    wire [31:0] covariance_B9_merge_out_reorder_limiter_enter91_pop31181;
    wire [0:0] covariance_B9_merge_out_stall_out_0;
    wire [0:0] covariance_B9_merge_out_stall_out_1;
    wire [0:0] covariance_B9_merge_out_valid_out;


    // covariance_B9_merge(BLACKBOX,4)
    covariance_B9_merge thecovariance_B9_merge (
        .in_forked23_0(in_forked23_0),
        .in_forked23_1(in_forked23_1),
        .in_fpga_indvars_iv14_pop28169_0(in_fpga_indvars_iv14_pop28169_0),
        .in_fpga_indvars_iv14_pop28169_1(in_fpga_indvars_iv14_pop28169_1),
        .in_i24_034_pop29175_0(in_i24_034_pop29175_0),
        .in_i24_034_pop29175_1(in_i24_034_pop29175_1),
        .in_lim_ext77_pop49164_0(in_lim_ext77_pop49164_0),
        .in_lim_ext77_pop49164_1(in_lim_ext77_pop49164_1),
        .in_lim_ext78_pop30178_0(in_lim_ext78_pop30178_0),
        .in_lim_ext78_pop30178_1(in_lim_ext78_pop30178_1),
        .in_notcmp27172_0(in_notcmp27172_0),
        .in_notcmp27172_1(in_notcmp27172_1),
        .in_reorder_limiter_enter133_0(in_reorder_limiter_enter133_0),
        .in_reorder_limiter_enter133_1(in_reorder_limiter_enter133_1),
        .in_reorder_limiter_enter91_pop31181_0(in_reorder_limiter_enter91_pop31181_0),
        .in_reorder_limiter_enter91_pop31181_1(in_reorder_limiter_enter91_pop31181_1),
        .in_stall_in(bb_covariance_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked23(covariance_B9_merge_out_forked23),
        .out_fpga_indvars_iv14_pop28169(covariance_B9_merge_out_fpga_indvars_iv14_pop28169),
        .out_i24_034_pop29175(covariance_B9_merge_out_i24_034_pop29175),
        .out_lim_ext77_pop49164(covariance_B9_merge_out_lim_ext77_pop49164),
        .out_lim_ext78_pop30178(covariance_B9_merge_out_lim_ext78_pop30178),
        .out_notcmp27172(covariance_B9_merge_out_notcmp27172),
        .out_reorder_limiter_enter133(covariance_B9_merge_out_reorder_limiter_enter133),
        .out_reorder_limiter_enter91_pop31181(covariance_B9_merge_out_reorder_limiter_enter91_pop31181),
        .out_stall_out_0(covariance_B9_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B9_merge_out_stall_out_1),
        .out_valid_out(covariance_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B9_stall_region(BLACKBOX,2)
    covariance_bb_B9_stall_region thebb_covariance_B9_stall_region (
        .in_forked23(covariance_B9_merge_out_forked23),
        .in_fpga_indvars_iv14_pop28169(covariance_B9_merge_out_fpga_indvars_iv14_pop28169),
        .in_i24_034_pop29175(covariance_B9_merge_out_i24_034_pop29175),
        .in_lim_ext77_pop49164(covariance_B9_merge_out_lim_ext77_pop49164),
        .in_lim_ext78_pop30178(covariance_B9_merge_out_lim_ext78_pop30178),
        .in_notcmp27172(covariance_B9_merge_out_notcmp27172),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_reorder_limiter_enter133(covariance_B9_merge_out_reorder_limiter_enter133),
        .in_reorder_limiter_enter91_pop31181(covariance_B9_merge_out_reorder_limiter_enter91_pop31181),
        .in_stall_in(covariance_B9_branch_out_stall_out),
        .in_valid_in(covariance_B9_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_stall_out(bb_covariance_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_valid_out(bb_covariance_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_valid_out),
        .out_c0_exe10365(bb_covariance_B9_stall_region_out_c0_exe10365),
        .out_c0_exe11366(bb_covariance_B9_stall_region_out_c0_exe11366),
        .out_c0_exe12367(bb_covariance_B9_stall_region_out_c0_exe12367),
        .out_c0_exe13368(bb_covariance_B9_stall_region_out_c0_exe13368),
        .out_c0_exe14369(bb_covariance_B9_stall_region_out_c0_exe14369),
        .out_c0_exe15(bb_covariance_B9_stall_region_out_c0_exe15),
        .out_c0_exe2357(bb_covariance_B9_stall_region_out_c0_exe2357),
        .out_c0_exe3358(bb_covariance_B9_stall_region_out_c0_exe3358),
        .out_c0_exe4359(bb_covariance_B9_stall_region_out_c0_exe4359),
        .out_c0_exe5360(bb_covariance_B9_stall_region_out_c0_exe5360),
        .out_c0_exe6361(bb_covariance_B9_stall_region_out_c0_exe6361),
        .out_c0_exe7362(bb_covariance_B9_stall_region_out_c0_exe7362),
        .out_c0_exe8363(bb_covariance_B9_stall_region_out_c0_exe8363),
        .out_c0_exe9364(bb_covariance_B9_stall_region_out_c0_exe9364),
        .out_pipeline_valid_out(bb_covariance_B9_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_covariance_B9_stall_region_out_stall_out),
        .out_valid_out(bb_covariance_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B9_branch(BLACKBOX,3)
    covariance_B9_branch thecovariance_B9_branch (
        .in_c0_exe10365(bb_covariance_B9_stall_region_out_c0_exe10365),
        .in_c0_exe11366(bb_covariance_B9_stall_region_out_c0_exe11366),
        .in_c0_exe12367(bb_covariance_B9_stall_region_out_c0_exe12367),
        .in_c0_exe13368(bb_covariance_B9_stall_region_out_c0_exe13368),
        .in_c0_exe14369(bb_covariance_B9_stall_region_out_c0_exe14369),
        .in_c0_exe15(bb_covariance_B9_stall_region_out_c0_exe15),
        .in_c0_exe2357(bb_covariance_B9_stall_region_out_c0_exe2357),
        .in_c0_exe3358(bb_covariance_B9_stall_region_out_c0_exe3358),
        .in_c0_exe4359(bb_covariance_B9_stall_region_out_c0_exe4359),
        .in_c0_exe5360(bb_covariance_B9_stall_region_out_c0_exe5360),
        .in_c0_exe6361(bb_covariance_B9_stall_region_out_c0_exe6361),
        .in_c0_exe7362(bb_covariance_B9_stall_region_out_c0_exe7362),
        .in_c0_exe8363(bb_covariance_B9_stall_region_out_c0_exe8363),
        .in_c0_exe9364(bb_covariance_B9_stall_region_out_c0_exe9364),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_covariance_B9_stall_region_out_valid_out),
        .out_c0_exe10365(covariance_B9_branch_out_c0_exe10365),
        .out_c0_exe11366(covariance_B9_branch_out_c0_exe11366),
        .out_c0_exe12367(covariance_B9_branch_out_c0_exe12367),
        .out_c0_exe13368(covariance_B9_branch_out_c0_exe13368),
        .out_c0_exe14369(covariance_B9_branch_out_c0_exe14369),
        .out_c0_exe15(covariance_B9_branch_out_c0_exe15),
        .out_c0_exe2357(covariance_B9_branch_out_c0_exe2357),
        .out_c0_exe3358(covariance_B9_branch_out_c0_exe3358),
        .out_c0_exe4359(covariance_B9_branch_out_c0_exe4359),
        .out_c0_exe5360(covariance_B9_branch_out_c0_exe5360),
        .out_c0_exe6361(covariance_B9_branch_out_c0_exe6361),
        .out_c0_exe7362(covariance_B9_branch_out_c0_exe7362),
        .out_c0_exe8363(covariance_B9_branch_out_c0_exe8363),
        .out_c0_exe9364(covariance_B9_branch_out_c0_exe9364),
        .out_stall_out(covariance_B9_branch_out_stall_out),
        .out_valid_out_0(covariance_B9_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10365(GPOUT,24)
    assign out_c0_exe10365 = covariance_B9_branch_out_c0_exe10365;

    // out_c0_exe11366(GPOUT,25)
    assign out_c0_exe11366 = covariance_B9_branch_out_c0_exe11366;

    // out_c0_exe12367(GPOUT,26)
    assign out_c0_exe12367 = covariance_B9_branch_out_c0_exe12367;

    // out_c0_exe13368(GPOUT,27)
    assign out_c0_exe13368 = covariance_B9_branch_out_c0_exe13368;

    // out_c0_exe14369(GPOUT,28)
    assign out_c0_exe14369 = covariance_B9_branch_out_c0_exe14369;

    // out_c0_exe15(GPOUT,29)
    assign out_c0_exe15 = covariance_B9_branch_out_c0_exe15;

    // out_c0_exe2357(GPOUT,30)
    assign out_c0_exe2357 = covariance_B9_branch_out_c0_exe2357;

    // out_c0_exe3358(GPOUT,31)
    assign out_c0_exe3358 = covariance_B9_branch_out_c0_exe3358;

    // out_c0_exe4359(GPOUT,32)
    assign out_c0_exe4359 = covariance_B9_branch_out_c0_exe4359;

    // out_c0_exe5360(GPOUT,33)
    assign out_c0_exe5360 = covariance_B9_branch_out_c0_exe5360;

    // out_c0_exe6361(GPOUT,34)
    assign out_c0_exe6361 = covariance_B9_branch_out_c0_exe6361;

    // out_c0_exe7362(GPOUT,35)
    assign out_c0_exe7362 = covariance_B9_branch_out_c0_exe7362;

    // out_c0_exe8363(GPOUT,36)
    assign out_c0_exe8363 = covariance_B9_branch_out_c0_exe8363;

    // out_c0_exe9364(GPOUT,37)
    assign out_c0_exe9364 = covariance_B9_branch_out_c0_exe9364;

    // out_exiting_stall_out(GPOUT,38)
    assign out_exiting_stall_out = bb_covariance_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,39)
    assign out_exiting_valid_out = bb_covariance_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_valid_out;

    // out_stall_out_0(GPOUT,40)
    assign out_stall_out_0 = covariance_B9_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,41)
    assign out_stall_out_1 = covariance_B9_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,42)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,43)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,44)
    assign out_valid_out_0 = covariance_B9_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,46)
    assign out_pipeline_valid_out = bb_covariance_B9_stall_region_out_pipeline_valid_out;

endmodule
