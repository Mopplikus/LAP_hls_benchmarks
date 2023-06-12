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
// SystemVerilog created on Thu Apr 27 14:28:38 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B8 (
    input wire [31:0] in_lim_ext54_pop45140_0,
    input wire [31:0] in_lim_ext54_pop45140_1,
    input wire [31:0] in_reorder_limiter_enter109_0,
    input wire [31:0] in_reorder_limiter_enter109_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [32:0] out_c0_exe1302,
    output wire [0:0] out_c0_exe3304,
    output wire [31:0] out_c0_exe4305,
    output wire [31:0] out_c0_exe5306,
    output wire [31:0] out_c0_exe6307,
    output wire [31:0] out_c0_exe7308,
    output wire [31:0] out_c0_exe8309,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [32:0] bb_covariance_B8_stall_region_out_c0_exe1302;
    wire [0:0] bb_covariance_B8_stall_region_out_c0_exe3304;
    wire [31:0] bb_covariance_B8_stall_region_out_c0_exe4305;
    wire [31:0] bb_covariance_B8_stall_region_out_c0_exe5306;
    wire [31:0] bb_covariance_B8_stall_region_out_c0_exe6307;
    wire [31:0] bb_covariance_B8_stall_region_out_c0_exe7308;
    wire [31:0] bb_covariance_B8_stall_region_out_c0_exe8309;
    wire [0:0] bb_covariance_B8_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_covariance_B8_stall_region_out_stall_out;
    wire [0:0] bb_covariance_B8_stall_region_out_valid_out;
    wire [32:0] covariance_B8_branch_out_c0_exe1302;
    wire [0:0] covariance_B8_branch_out_c0_exe3304;
    wire [31:0] covariance_B8_branch_out_c0_exe4305;
    wire [31:0] covariance_B8_branch_out_c0_exe5306;
    wire [31:0] covariance_B8_branch_out_c0_exe6307;
    wire [31:0] covariance_B8_branch_out_c0_exe7308;
    wire [31:0] covariance_B8_branch_out_c0_exe8309;
    wire [0:0] covariance_B8_branch_out_stall_out;
    wire [0:0] covariance_B8_branch_out_valid_out_0;
    wire [31:0] covariance_B8_merge_out_lim_ext54_pop45140;
    wire [31:0] covariance_B8_merge_out_reorder_limiter_enter109;
    wire [0:0] covariance_B8_merge_out_stall_out_0;
    wire [0:0] covariance_B8_merge_out_stall_out_1;
    wire [0:0] covariance_B8_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // covariance_B8_merge(BLACKBOX,4)
    covariance_B8_merge thecovariance_B8_merge (
        .in_lim_ext54_pop45140_0(in_lim_ext54_pop45140_0),
        .in_lim_ext54_pop45140_1(in_lim_ext54_pop45140_1),
        .in_reorder_limiter_enter109_0(in_reorder_limiter_enter109_0),
        .in_reorder_limiter_enter109_1(in_reorder_limiter_enter109_1),
        .in_stall_in(bb_covariance_B8_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_lim_ext54_pop45140(covariance_B8_merge_out_lim_ext54_pop45140),
        .out_reorder_limiter_enter109(covariance_B8_merge_out_reorder_limiter_enter109),
        .out_stall_out_0(covariance_B8_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B8_merge_out_stall_out_1),
        .out_valid_out(covariance_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B8_stall_region(BLACKBOX,2)
    covariance_bb_B8_stall_region thebb_covariance_B8_stall_region (
        .in_lim_ext54_pop45140(covariance_B8_merge_out_lim_ext54_pop45140),
        .in_reorder_limiter_enter109(covariance_B8_merge_out_reorder_limiter_enter109),
        .in_stall_in(covariance_B8_branch_out_stall_out),
        .in_valid_in(covariance_B8_merge_out_valid_out),
        .out_c0_exe1302(bb_covariance_B8_stall_region_out_c0_exe1302),
        .out_c0_exe3304(bb_covariance_B8_stall_region_out_c0_exe3304),
        .out_c0_exe4305(bb_covariance_B8_stall_region_out_c0_exe4305),
        .out_c0_exe5306(bb_covariance_B8_stall_region_out_c0_exe5306),
        .out_c0_exe6307(bb_covariance_B8_stall_region_out_c0_exe6307),
        .out_c0_exe7308(bb_covariance_B8_stall_region_out_c0_exe7308),
        .out_c0_exe8309(bb_covariance_B8_stall_region_out_c0_exe8309),
        .out_profile_loop_o_valid(bb_covariance_B8_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_covariance_B8_stall_region_out_stall_out),
        .out_valid_out(bb_covariance_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B8_branch(BLACKBOX,3)
    covariance_B8_branch thecovariance_B8_branch (
        .in_c0_exe1302(bb_covariance_B8_stall_region_out_c0_exe1302),
        .in_c0_exe3304(bb_covariance_B8_stall_region_out_c0_exe3304),
        .in_c0_exe4305(bb_covariance_B8_stall_region_out_c0_exe4305),
        .in_c0_exe5306(bb_covariance_B8_stall_region_out_c0_exe5306),
        .in_c0_exe6307(bb_covariance_B8_stall_region_out_c0_exe6307),
        .in_c0_exe7308(bb_covariance_B8_stall_region_out_c0_exe7308),
        .in_c0_exe8309(bb_covariance_B8_stall_region_out_c0_exe8309),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_covariance_B8_stall_region_out_valid_out),
        .out_c0_exe1302(covariance_B8_branch_out_c0_exe1302),
        .out_c0_exe3304(covariance_B8_branch_out_c0_exe3304),
        .out_c0_exe4305(covariance_B8_branch_out_c0_exe4305),
        .out_c0_exe5306(covariance_B8_branch_out_c0_exe5306),
        .out_c0_exe6307(covariance_B8_branch_out_c0_exe6307),
        .out_c0_exe7308(covariance_B8_branch_out_c0_exe7308),
        .out_c0_exe8309(covariance_B8_branch_out_c0_exe8309),
        .out_stall_out(covariance_B8_branch_out_stall_out),
        .out_valid_out_0(covariance_B8_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1302(GPOUT,12)
    assign out_c0_exe1302 = covariance_B8_branch_out_c0_exe1302;

    // out_c0_exe3304(GPOUT,13)
    assign out_c0_exe3304 = covariance_B8_branch_out_c0_exe3304;

    // out_c0_exe4305(GPOUT,14)
    assign out_c0_exe4305 = covariance_B8_branch_out_c0_exe4305;

    // out_c0_exe5306(GPOUT,15)
    assign out_c0_exe5306 = covariance_B8_branch_out_c0_exe5306;

    // out_c0_exe6307(GPOUT,16)
    assign out_c0_exe6307 = covariance_B8_branch_out_c0_exe6307;

    // out_c0_exe7308(GPOUT,17)
    assign out_c0_exe7308 = covariance_B8_branch_out_c0_exe7308;

    // out_c0_exe8309(GPOUT,18)
    assign out_c0_exe8309 = covariance_B8_branch_out_c0_exe8309;

    // out_profile_loop_o_valid(GPOUT,19)
    assign out_profile_loop_o_valid = bb_covariance_B8_stall_region_out_profile_loop_o_valid;

    // out_stall_out_0(GPOUT,20)
    assign out_stall_out_0 = covariance_B8_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,21)
    assign out_stall_out_1 = covariance_B8_merge_out_stall_out_1;

    // out_valid_in_1(GPOUT,22)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,23)
    assign out_valid_out_0 = covariance_B8_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,24)
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
