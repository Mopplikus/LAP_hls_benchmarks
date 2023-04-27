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
// SystemVerilog created on Thu Apr 27 14:28:38 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B9 (
    input wire [32:0] in_fpga_indvars_iv14_pop28149_0,
    input wire [32:0] in_fpga_indvars_iv14_pop28149_1,
    input wire [31:0] in_i24_034_pop29155_0,
    input wire [31:0] in_i24_034_pop29155_1,
    input wire [31:0] in_lim_ext54_pop45144_0,
    input wire [31:0] in_lim_ext54_pop45144_1,
    input wire [31:0] in_lim_ext55_pop30158_0,
    input wire [31:0] in_lim_ext55_pop30158_1,
    input wire [0:0] in_notcmp27152_0,
    input wire [0:0] in_notcmp27152_1,
    input wire [31:0] in_reorder_limiter_enter113_0,
    input wire [31:0] in_reorder_limiter_enter113_1,
    input wire [31:0] in_reorder_limiter_enter68_pop31161_0,
    input wire [31:0] in_reorder_limiter_enter68_pop31161_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10351,
    output wire [32:0] out_c0_exe11352,
    output wire [0:0] out_c0_exe12353,
    output wire [31:0] out_c0_exe13354,
    output wire [31:0] out_c0_exe14355,
    output wire [31:0] out_c0_exe15,
    output wire [0:0] out_c0_exe2343,
    output wire [31:0] out_c0_exe3344,
    output wire [31:0] out_c0_exe4345,
    output wire [31:0] out_c0_exe5346,
    output wire [0:0] out_c0_exe6347,
    output wire [31:0] out_c0_exe7348,
    output wire [0:0] out_c0_exe8349,
    output wire [31:0] out_c0_exe9350,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_covariance_B9_stall_region_out_c0_exe10351;
    wire [32:0] bb_covariance_B9_stall_region_out_c0_exe11352;
    wire [0:0] bb_covariance_B9_stall_region_out_c0_exe12353;
    wire [31:0] bb_covariance_B9_stall_region_out_c0_exe13354;
    wire [31:0] bb_covariance_B9_stall_region_out_c0_exe14355;
    wire [31:0] bb_covariance_B9_stall_region_out_c0_exe15;
    wire [0:0] bb_covariance_B9_stall_region_out_c0_exe2343;
    wire [31:0] bb_covariance_B9_stall_region_out_c0_exe3344;
    wire [31:0] bb_covariance_B9_stall_region_out_c0_exe4345;
    wire [31:0] bb_covariance_B9_stall_region_out_c0_exe5346;
    wire [0:0] bb_covariance_B9_stall_region_out_c0_exe6347;
    wire [31:0] bb_covariance_B9_stall_region_out_c0_exe7348;
    wire [0:0] bb_covariance_B9_stall_region_out_c0_exe8349;
    wire [31:0] bb_covariance_B9_stall_region_out_c0_exe9350;
    wire [0:0] bb_covariance_B9_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_covariance_B9_stall_region_out_stall_out;
    wire [0:0] bb_covariance_B9_stall_region_out_valid_out;
    wire [31:0] covariance_B9_branch_out_c0_exe10351;
    wire [32:0] covariance_B9_branch_out_c0_exe11352;
    wire [0:0] covariance_B9_branch_out_c0_exe12353;
    wire [31:0] covariance_B9_branch_out_c0_exe13354;
    wire [31:0] covariance_B9_branch_out_c0_exe14355;
    wire [31:0] covariance_B9_branch_out_c0_exe15;
    wire [0:0] covariance_B9_branch_out_c0_exe2343;
    wire [31:0] covariance_B9_branch_out_c0_exe3344;
    wire [31:0] covariance_B9_branch_out_c0_exe4345;
    wire [31:0] covariance_B9_branch_out_c0_exe5346;
    wire [0:0] covariance_B9_branch_out_c0_exe6347;
    wire [31:0] covariance_B9_branch_out_c0_exe7348;
    wire [0:0] covariance_B9_branch_out_c0_exe8349;
    wire [31:0] covariance_B9_branch_out_c0_exe9350;
    wire [0:0] covariance_B9_branch_out_stall_out;
    wire [0:0] covariance_B9_branch_out_valid_out_0;
    wire [32:0] covariance_B9_merge_out_fpga_indvars_iv14_pop28149;
    wire [31:0] covariance_B9_merge_out_i24_034_pop29155;
    wire [31:0] covariance_B9_merge_out_lim_ext54_pop45144;
    wire [31:0] covariance_B9_merge_out_lim_ext55_pop30158;
    wire [0:0] covariance_B9_merge_out_notcmp27152;
    wire [31:0] covariance_B9_merge_out_reorder_limiter_enter113;
    wire [31:0] covariance_B9_merge_out_reorder_limiter_enter68_pop31161;
    wire [0:0] covariance_B9_merge_out_stall_out_0;
    wire [0:0] covariance_B9_merge_out_stall_out_1;
    wire [0:0] covariance_B9_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // covariance_B9_merge(BLACKBOX,4)
    covariance_B9_merge thecovariance_B9_merge (
        .in_fpga_indvars_iv14_pop28149_0(in_fpga_indvars_iv14_pop28149_0),
        .in_fpga_indvars_iv14_pop28149_1(in_fpga_indvars_iv14_pop28149_1),
        .in_i24_034_pop29155_0(in_i24_034_pop29155_0),
        .in_i24_034_pop29155_1(in_i24_034_pop29155_1),
        .in_lim_ext54_pop45144_0(in_lim_ext54_pop45144_0),
        .in_lim_ext54_pop45144_1(in_lim_ext54_pop45144_1),
        .in_lim_ext55_pop30158_0(in_lim_ext55_pop30158_0),
        .in_lim_ext55_pop30158_1(in_lim_ext55_pop30158_1),
        .in_notcmp27152_0(in_notcmp27152_0),
        .in_notcmp27152_1(in_notcmp27152_1),
        .in_reorder_limiter_enter113_0(in_reorder_limiter_enter113_0),
        .in_reorder_limiter_enter113_1(in_reorder_limiter_enter113_1),
        .in_reorder_limiter_enter68_pop31161_0(in_reorder_limiter_enter68_pop31161_0),
        .in_reorder_limiter_enter68_pop31161_1(in_reorder_limiter_enter68_pop31161_1),
        .in_stall_in(bb_covariance_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_fpga_indvars_iv14_pop28149(covariance_B9_merge_out_fpga_indvars_iv14_pop28149),
        .out_i24_034_pop29155(covariance_B9_merge_out_i24_034_pop29155),
        .out_lim_ext54_pop45144(covariance_B9_merge_out_lim_ext54_pop45144),
        .out_lim_ext55_pop30158(covariance_B9_merge_out_lim_ext55_pop30158),
        .out_notcmp27152(covariance_B9_merge_out_notcmp27152),
        .out_reorder_limiter_enter113(covariance_B9_merge_out_reorder_limiter_enter113),
        .out_reorder_limiter_enter68_pop31161(covariance_B9_merge_out_reorder_limiter_enter68_pop31161),
        .out_stall_out_0(covariance_B9_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B9_merge_out_stall_out_1),
        .out_valid_out(covariance_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B9_stall_region(BLACKBOX,2)
    covariance_bb_B9_stall_region thebb_covariance_B9_stall_region (
        .in_fpga_indvars_iv14_pop28149(covariance_B9_merge_out_fpga_indvars_iv14_pop28149),
        .in_i24_034_pop29155(covariance_B9_merge_out_i24_034_pop29155),
        .in_lim_ext54_pop45144(covariance_B9_merge_out_lim_ext54_pop45144),
        .in_lim_ext55_pop30158(covariance_B9_merge_out_lim_ext55_pop30158),
        .in_notcmp27152(covariance_B9_merge_out_notcmp27152),
        .in_reorder_limiter_enter113(covariance_B9_merge_out_reorder_limiter_enter113),
        .in_reorder_limiter_enter68_pop31161(covariance_B9_merge_out_reorder_limiter_enter68_pop31161),
        .in_stall_in(covariance_B9_branch_out_stall_out),
        .in_valid_in(covariance_B9_merge_out_valid_out),
        .out_c0_exe10351(bb_covariance_B9_stall_region_out_c0_exe10351),
        .out_c0_exe11352(bb_covariance_B9_stall_region_out_c0_exe11352),
        .out_c0_exe12353(bb_covariance_B9_stall_region_out_c0_exe12353),
        .out_c0_exe13354(bb_covariance_B9_stall_region_out_c0_exe13354),
        .out_c0_exe14355(bb_covariance_B9_stall_region_out_c0_exe14355),
        .out_c0_exe15(bb_covariance_B9_stall_region_out_c0_exe15),
        .out_c0_exe2343(bb_covariance_B9_stall_region_out_c0_exe2343),
        .out_c0_exe3344(bb_covariance_B9_stall_region_out_c0_exe3344),
        .out_c0_exe4345(bb_covariance_B9_stall_region_out_c0_exe4345),
        .out_c0_exe5346(bb_covariance_B9_stall_region_out_c0_exe5346),
        .out_c0_exe6347(bb_covariance_B9_stall_region_out_c0_exe6347),
        .out_c0_exe7348(bb_covariance_B9_stall_region_out_c0_exe7348),
        .out_c0_exe8349(bb_covariance_B9_stall_region_out_c0_exe8349),
        .out_c0_exe9350(bb_covariance_B9_stall_region_out_c0_exe9350),
        .out_profile_loop_o_valid(bb_covariance_B9_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_covariance_B9_stall_region_out_stall_out),
        .out_valid_out(bb_covariance_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B9_branch(BLACKBOX,3)
    covariance_B9_branch thecovariance_B9_branch (
        .in_c0_exe10351(bb_covariance_B9_stall_region_out_c0_exe10351),
        .in_c0_exe11352(bb_covariance_B9_stall_region_out_c0_exe11352),
        .in_c0_exe12353(bb_covariance_B9_stall_region_out_c0_exe12353),
        .in_c0_exe13354(bb_covariance_B9_stall_region_out_c0_exe13354),
        .in_c0_exe14355(bb_covariance_B9_stall_region_out_c0_exe14355),
        .in_c0_exe15(bb_covariance_B9_stall_region_out_c0_exe15),
        .in_c0_exe2343(bb_covariance_B9_stall_region_out_c0_exe2343),
        .in_c0_exe3344(bb_covariance_B9_stall_region_out_c0_exe3344),
        .in_c0_exe4345(bb_covariance_B9_stall_region_out_c0_exe4345),
        .in_c0_exe5346(bb_covariance_B9_stall_region_out_c0_exe5346),
        .in_c0_exe6347(bb_covariance_B9_stall_region_out_c0_exe6347),
        .in_c0_exe7348(bb_covariance_B9_stall_region_out_c0_exe7348),
        .in_c0_exe8349(bb_covariance_B9_stall_region_out_c0_exe8349),
        .in_c0_exe9350(bb_covariance_B9_stall_region_out_c0_exe9350),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_covariance_B9_stall_region_out_valid_out),
        .out_c0_exe10351(covariance_B9_branch_out_c0_exe10351),
        .out_c0_exe11352(covariance_B9_branch_out_c0_exe11352),
        .out_c0_exe12353(covariance_B9_branch_out_c0_exe12353),
        .out_c0_exe13354(covariance_B9_branch_out_c0_exe13354),
        .out_c0_exe14355(covariance_B9_branch_out_c0_exe14355),
        .out_c0_exe15(covariance_B9_branch_out_c0_exe15),
        .out_c0_exe2343(covariance_B9_branch_out_c0_exe2343),
        .out_c0_exe3344(covariance_B9_branch_out_c0_exe3344),
        .out_c0_exe4345(covariance_B9_branch_out_c0_exe4345),
        .out_c0_exe5346(covariance_B9_branch_out_c0_exe5346),
        .out_c0_exe6347(covariance_B9_branch_out_c0_exe6347),
        .out_c0_exe7348(covariance_B9_branch_out_c0_exe7348),
        .out_c0_exe8349(covariance_B9_branch_out_c0_exe8349),
        .out_c0_exe9350(covariance_B9_branch_out_c0_exe9350),
        .out_stall_out(covariance_B9_branch_out_stall_out),
        .out_valid_out_0(covariance_B9_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10351(GPOUT,22)
    assign out_c0_exe10351 = covariance_B9_branch_out_c0_exe10351;

    // out_c0_exe11352(GPOUT,23)
    assign out_c0_exe11352 = covariance_B9_branch_out_c0_exe11352;

    // out_c0_exe12353(GPOUT,24)
    assign out_c0_exe12353 = covariance_B9_branch_out_c0_exe12353;

    // out_c0_exe13354(GPOUT,25)
    assign out_c0_exe13354 = covariance_B9_branch_out_c0_exe13354;

    // out_c0_exe14355(GPOUT,26)
    assign out_c0_exe14355 = covariance_B9_branch_out_c0_exe14355;

    // out_c0_exe15(GPOUT,27)
    assign out_c0_exe15 = covariance_B9_branch_out_c0_exe15;

    // out_c0_exe2343(GPOUT,28)
    assign out_c0_exe2343 = covariance_B9_branch_out_c0_exe2343;

    // out_c0_exe3344(GPOUT,29)
    assign out_c0_exe3344 = covariance_B9_branch_out_c0_exe3344;

    // out_c0_exe4345(GPOUT,30)
    assign out_c0_exe4345 = covariance_B9_branch_out_c0_exe4345;

    // out_c0_exe5346(GPOUT,31)
    assign out_c0_exe5346 = covariance_B9_branch_out_c0_exe5346;

    // out_c0_exe6347(GPOUT,32)
    assign out_c0_exe6347 = covariance_B9_branch_out_c0_exe6347;

    // out_c0_exe7348(GPOUT,33)
    assign out_c0_exe7348 = covariance_B9_branch_out_c0_exe7348;

    // out_c0_exe8349(GPOUT,34)
    assign out_c0_exe8349 = covariance_B9_branch_out_c0_exe8349;

    // out_c0_exe9350(GPOUT,35)
    assign out_c0_exe9350 = covariance_B9_branch_out_c0_exe9350;

    // out_profile_loop_o_valid(GPOUT,36)
    assign out_profile_loop_o_valid = bb_covariance_B9_stall_region_out_profile_loop_o_valid;

    // out_stall_out_0(GPOUT,37)
    assign out_stall_out_0 = covariance_B9_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,38)
    assign out_stall_out_1 = covariance_B9_merge_out_stall_out_1;

    // out_valid_in_1(GPOUT,39)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,40)
    assign out_valid_out_0 = covariance_B9_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,41)
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
