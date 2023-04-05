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

// SystemVerilog created from bb_covariance_B13
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:05 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B13 (
    input wire [0:0] in_forked59_0,
    input wire [0:0] in_forked59_1,
    input wire [32:0] in_fpga_indvars_iv20_pop34209_0,
    input wire [32:0] in_fpga_indvars_iv20_pop34209_1,
    input wire [31:0] in_i56_057_pop35215_0,
    input wire [31:0] in_i56_057_pop35215_1,
    input wire [31:0] in_lim_ext136_pop61204_0,
    input wire [31:0] in_lim_ext136_pop61204_1,
    input wire [31:0] in_lim_ext137_pop36218_0,
    input wire [31:0] in_lim_ext137_pop36218_1,
    input wire [0:0] in_notcmp63212_0,
    input wire [0:0] in_notcmp63212_1,
    input wire [31:0] in_reorder_limiter_enter142_pop37221_0,
    input wire [31:0] in_reorder_limiter_enter142_pop37221_1,
    input wire [31:0] in_reorder_limiter_enter183_0,
    input wire [31:0] in_reorder_limiter_enter183_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10404,
    output wire [32:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [31:0] out_c0_exe13,
    output wire [31:0] out_c0_exe14,
    output wire [31:0] out_c0_exe15,
    output wire [0:0] out_c0_exe2396,
    output wire [31:0] out_c0_exe3397,
    output wire [31:0] out_c0_exe4398,
    output wire [31:0] out_c0_exe5399,
    output wire [0:0] out_c0_exe6400,
    output wire [31:0] out_c0_exe7401,
    output wire [0:0] out_c0_exe8402,
    output wire [31:0] out_c0_exe9403,
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

    wire [0:0] bb_covariance_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going60_covariance2_exiting_stall_out;
    wire [0:0] bb_covariance_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going60_covariance2_exiting_valid_out;
    wire [31:0] bb_covariance_B13_stall_region_out_c0_exe10404;
    wire [32:0] bb_covariance_B13_stall_region_out_c0_exe11;
    wire [0:0] bb_covariance_B13_stall_region_out_c0_exe12;
    wire [31:0] bb_covariance_B13_stall_region_out_c0_exe13;
    wire [31:0] bb_covariance_B13_stall_region_out_c0_exe14;
    wire [31:0] bb_covariance_B13_stall_region_out_c0_exe15;
    wire [0:0] bb_covariance_B13_stall_region_out_c0_exe2396;
    wire [31:0] bb_covariance_B13_stall_region_out_c0_exe3397;
    wire [31:0] bb_covariance_B13_stall_region_out_c0_exe4398;
    wire [31:0] bb_covariance_B13_stall_region_out_c0_exe5399;
    wire [0:0] bb_covariance_B13_stall_region_out_c0_exe6400;
    wire [31:0] bb_covariance_B13_stall_region_out_c0_exe7401;
    wire [0:0] bb_covariance_B13_stall_region_out_c0_exe8402;
    wire [31:0] bb_covariance_B13_stall_region_out_c0_exe9403;
    wire [0:0] bb_covariance_B13_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B13_stall_region_out_stall_out;
    wire [0:0] bb_covariance_B13_stall_region_out_valid_out;
    wire [31:0] covariance_B13_branch_out_c0_exe10404;
    wire [32:0] covariance_B13_branch_out_c0_exe11;
    wire [0:0] covariance_B13_branch_out_c0_exe12;
    wire [31:0] covariance_B13_branch_out_c0_exe13;
    wire [31:0] covariance_B13_branch_out_c0_exe14;
    wire [31:0] covariance_B13_branch_out_c0_exe15;
    wire [0:0] covariance_B13_branch_out_c0_exe2396;
    wire [31:0] covariance_B13_branch_out_c0_exe3397;
    wire [31:0] covariance_B13_branch_out_c0_exe4398;
    wire [31:0] covariance_B13_branch_out_c0_exe5399;
    wire [0:0] covariance_B13_branch_out_c0_exe6400;
    wire [31:0] covariance_B13_branch_out_c0_exe7401;
    wire [0:0] covariance_B13_branch_out_c0_exe8402;
    wire [31:0] covariance_B13_branch_out_c0_exe9403;
    wire [0:0] covariance_B13_branch_out_stall_out;
    wire [0:0] covariance_B13_branch_out_valid_out_0;
    wire [0:0] covariance_B13_merge_out_forked59;
    wire [32:0] covariance_B13_merge_out_fpga_indvars_iv20_pop34209;
    wire [31:0] covariance_B13_merge_out_i56_057_pop35215;
    wire [31:0] covariance_B13_merge_out_lim_ext136_pop61204;
    wire [31:0] covariance_B13_merge_out_lim_ext137_pop36218;
    wire [0:0] covariance_B13_merge_out_notcmp63212;
    wire [31:0] covariance_B13_merge_out_reorder_limiter_enter142_pop37221;
    wire [31:0] covariance_B13_merge_out_reorder_limiter_enter183;
    wire [0:0] covariance_B13_merge_out_stall_out_0;
    wire [0:0] covariance_B13_merge_out_stall_out_1;
    wire [0:0] covariance_B13_merge_out_valid_out;


    // covariance_B13_merge(BLACKBOX,4)
    covariance_B13_merge thecovariance_B13_merge (
        .in_forked59_0(in_forked59_0),
        .in_forked59_1(in_forked59_1),
        .in_fpga_indvars_iv20_pop34209_0(in_fpga_indvars_iv20_pop34209_0),
        .in_fpga_indvars_iv20_pop34209_1(in_fpga_indvars_iv20_pop34209_1),
        .in_i56_057_pop35215_0(in_i56_057_pop35215_0),
        .in_i56_057_pop35215_1(in_i56_057_pop35215_1),
        .in_lim_ext136_pop61204_0(in_lim_ext136_pop61204_0),
        .in_lim_ext136_pop61204_1(in_lim_ext136_pop61204_1),
        .in_lim_ext137_pop36218_0(in_lim_ext137_pop36218_0),
        .in_lim_ext137_pop36218_1(in_lim_ext137_pop36218_1),
        .in_notcmp63212_0(in_notcmp63212_0),
        .in_notcmp63212_1(in_notcmp63212_1),
        .in_reorder_limiter_enter142_pop37221_0(in_reorder_limiter_enter142_pop37221_0),
        .in_reorder_limiter_enter142_pop37221_1(in_reorder_limiter_enter142_pop37221_1),
        .in_reorder_limiter_enter183_0(in_reorder_limiter_enter183_0),
        .in_reorder_limiter_enter183_1(in_reorder_limiter_enter183_1),
        .in_stall_in(bb_covariance_B13_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked59(covariance_B13_merge_out_forked59),
        .out_fpga_indvars_iv20_pop34209(covariance_B13_merge_out_fpga_indvars_iv20_pop34209),
        .out_i56_057_pop35215(covariance_B13_merge_out_i56_057_pop35215),
        .out_lim_ext136_pop61204(covariance_B13_merge_out_lim_ext136_pop61204),
        .out_lim_ext137_pop36218(covariance_B13_merge_out_lim_ext137_pop36218),
        .out_notcmp63212(covariance_B13_merge_out_notcmp63212),
        .out_reorder_limiter_enter142_pop37221(covariance_B13_merge_out_reorder_limiter_enter142_pop37221),
        .out_reorder_limiter_enter183(covariance_B13_merge_out_reorder_limiter_enter183),
        .out_stall_out_0(covariance_B13_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B13_merge_out_stall_out_1),
        .out_valid_out(covariance_B13_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B13_stall_region(BLACKBOX,2)
    covariance_bb_B13_stall_region thebb_covariance_B13_stall_region (
        .in_forked59(covariance_B13_merge_out_forked59),
        .in_fpga_indvars_iv20_pop34209(covariance_B13_merge_out_fpga_indvars_iv20_pop34209),
        .in_i56_057_pop35215(covariance_B13_merge_out_i56_057_pop35215),
        .in_lim_ext136_pop61204(covariance_B13_merge_out_lim_ext136_pop61204),
        .in_lim_ext137_pop36218(covariance_B13_merge_out_lim_ext137_pop36218),
        .in_notcmp63212(covariance_B13_merge_out_notcmp63212),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_reorder_limiter_enter142_pop37221(covariance_B13_merge_out_reorder_limiter_enter142_pop37221),
        .in_reorder_limiter_enter183(covariance_B13_merge_out_reorder_limiter_enter183),
        .in_stall_in(covariance_B13_branch_out_stall_out),
        .in_valid_in(covariance_B13_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going60_covariance2_exiting_stall_out(bb_covariance_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going60_covariance2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going60_covariance2_exiting_valid_out(bb_covariance_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going60_covariance2_exiting_valid_out),
        .out_c0_exe10404(bb_covariance_B13_stall_region_out_c0_exe10404),
        .out_c0_exe11(bb_covariance_B13_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_covariance_B13_stall_region_out_c0_exe12),
        .out_c0_exe13(bb_covariance_B13_stall_region_out_c0_exe13),
        .out_c0_exe14(bb_covariance_B13_stall_region_out_c0_exe14),
        .out_c0_exe15(bb_covariance_B13_stall_region_out_c0_exe15),
        .out_c0_exe2396(bb_covariance_B13_stall_region_out_c0_exe2396),
        .out_c0_exe3397(bb_covariance_B13_stall_region_out_c0_exe3397),
        .out_c0_exe4398(bb_covariance_B13_stall_region_out_c0_exe4398),
        .out_c0_exe5399(bb_covariance_B13_stall_region_out_c0_exe5399),
        .out_c0_exe6400(bb_covariance_B13_stall_region_out_c0_exe6400),
        .out_c0_exe7401(bb_covariance_B13_stall_region_out_c0_exe7401),
        .out_c0_exe8402(bb_covariance_B13_stall_region_out_c0_exe8402),
        .out_c0_exe9403(bb_covariance_B13_stall_region_out_c0_exe9403),
        .out_pipeline_valid_out(bb_covariance_B13_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_covariance_B13_stall_region_out_stall_out),
        .out_valid_out(bb_covariance_B13_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B13_branch(BLACKBOX,3)
    covariance_B13_branch thecovariance_B13_branch (
        .in_c0_exe10404(bb_covariance_B13_stall_region_out_c0_exe10404),
        .in_c0_exe11(bb_covariance_B13_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_covariance_B13_stall_region_out_c0_exe12),
        .in_c0_exe13(bb_covariance_B13_stall_region_out_c0_exe13),
        .in_c0_exe14(bb_covariance_B13_stall_region_out_c0_exe14),
        .in_c0_exe15(bb_covariance_B13_stall_region_out_c0_exe15),
        .in_c0_exe2396(bb_covariance_B13_stall_region_out_c0_exe2396),
        .in_c0_exe3397(bb_covariance_B13_stall_region_out_c0_exe3397),
        .in_c0_exe4398(bb_covariance_B13_stall_region_out_c0_exe4398),
        .in_c0_exe5399(bb_covariance_B13_stall_region_out_c0_exe5399),
        .in_c0_exe6400(bb_covariance_B13_stall_region_out_c0_exe6400),
        .in_c0_exe7401(bb_covariance_B13_stall_region_out_c0_exe7401),
        .in_c0_exe8402(bb_covariance_B13_stall_region_out_c0_exe8402),
        .in_c0_exe9403(bb_covariance_B13_stall_region_out_c0_exe9403),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_covariance_B13_stall_region_out_valid_out),
        .out_c0_exe10404(covariance_B13_branch_out_c0_exe10404),
        .out_c0_exe11(covariance_B13_branch_out_c0_exe11),
        .out_c0_exe12(covariance_B13_branch_out_c0_exe12),
        .out_c0_exe13(covariance_B13_branch_out_c0_exe13),
        .out_c0_exe14(covariance_B13_branch_out_c0_exe14),
        .out_c0_exe15(covariance_B13_branch_out_c0_exe15),
        .out_c0_exe2396(covariance_B13_branch_out_c0_exe2396),
        .out_c0_exe3397(covariance_B13_branch_out_c0_exe3397),
        .out_c0_exe4398(covariance_B13_branch_out_c0_exe4398),
        .out_c0_exe5399(covariance_B13_branch_out_c0_exe5399),
        .out_c0_exe6400(covariance_B13_branch_out_c0_exe6400),
        .out_c0_exe7401(covariance_B13_branch_out_c0_exe7401),
        .out_c0_exe8402(covariance_B13_branch_out_c0_exe8402),
        .out_c0_exe9403(covariance_B13_branch_out_c0_exe9403),
        .out_stall_out(covariance_B13_branch_out_stall_out),
        .out_valid_out_0(covariance_B13_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10404(GPOUT,24)
    assign out_c0_exe10404 = covariance_B13_branch_out_c0_exe10404;

    // out_c0_exe11(GPOUT,25)
    assign out_c0_exe11 = covariance_B13_branch_out_c0_exe11;

    // out_c0_exe12(GPOUT,26)
    assign out_c0_exe12 = covariance_B13_branch_out_c0_exe12;

    // out_c0_exe13(GPOUT,27)
    assign out_c0_exe13 = covariance_B13_branch_out_c0_exe13;

    // out_c0_exe14(GPOUT,28)
    assign out_c0_exe14 = covariance_B13_branch_out_c0_exe14;

    // out_c0_exe15(GPOUT,29)
    assign out_c0_exe15 = covariance_B13_branch_out_c0_exe15;

    // out_c0_exe2396(GPOUT,30)
    assign out_c0_exe2396 = covariance_B13_branch_out_c0_exe2396;

    // out_c0_exe3397(GPOUT,31)
    assign out_c0_exe3397 = covariance_B13_branch_out_c0_exe3397;

    // out_c0_exe4398(GPOUT,32)
    assign out_c0_exe4398 = covariance_B13_branch_out_c0_exe4398;

    // out_c0_exe5399(GPOUT,33)
    assign out_c0_exe5399 = covariance_B13_branch_out_c0_exe5399;

    // out_c0_exe6400(GPOUT,34)
    assign out_c0_exe6400 = covariance_B13_branch_out_c0_exe6400;

    // out_c0_exe7401(GPOUT,35)
    assign out_c0_exe7401 = covariance_B13_branch_out_c0_exe7401;

    // out_c0_exe8402(GPOUT,36)
    assign out_c0_exe8402 = covariance_B13_branch_out_c0_exe8402;

    // out_c0_exe9403(GPOUT,37)
    assign out_c0_exe9403 = covariance_B13_branch_out_c0_exe9403;

    // out_exiting_stall_out(GPOUT,38)
    assign out_exiting_stall_out = bb_covariance_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going60_covariance2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,39)
    assign out_exiting_valid_out = bb_covariance_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going60_covariance2_exiting_valid_out;

    // out_stall_out_0(GPOUT,40)
    assign out_stall_out_0 = covariance_B13_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,41)
    assign out_stall_out_1 = covariance_B13_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,42)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,43)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,44)
    assign out_valid_out_0 = covariance_B13_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,46)
    assign out_pipeline_valid_out = bb_covariance_B13_stall_region_out_pipeline_valid_out;

endmodule
