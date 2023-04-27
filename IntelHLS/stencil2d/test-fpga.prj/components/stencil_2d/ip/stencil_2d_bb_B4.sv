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

// SystemVerilog created from bb_stencil_2d_B4
// Created for function/kernel stencil_2d
// SystemVerilog created on Thu Apr 27 14:23:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B4 (
    input wire [31:0] in_mul2858_0,
    input wire [31:0] in_mul2858_1,
    input wire [0:0] in_notcmp2363_0,
    input wire [0:0] in_notcmp2363_1,
    input wire [31:0] in_r_026_pop1353_0,
    input wire [31:0] in_r_026_pop1353_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe2122,
    output wire [31:0] out_c0_exe3123,
    output wire [31:0] out_c0_exe4124,
    output wire [31:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [31:0] out_c0_exe7,
    output wire [31:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_stencil_2d_B4_stall_region_out_c0_exe2122;
    wire [31:0] bb_stencil_2d_B4_stall_region_out_c0_exe3123;
    wire [31:0] bb_stencil_2d_B4_stall_region_out_c0_exe4124;
    wire [31:0] bb_stencil_2d_B4_stall_region_out_c0_exe5;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_c0_exe6;
    wire [31:0] bb_stencil_2d_B4_stall_region_out_c0_exe7;
    wire [31:0] bb_stencil_2d_B4_stall_region_out_c0_exe8;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_c0_exe9;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_stall_out;
    wire [0:0] bb_stencil_2d_B4_stall_region_out_valid_out;
    wire [0:0] stencil_2d_B4_branch_out_c0_exe2122;
    wire [31:0] stencil_2d_B4_branch_out_c0_exe3123;
    wire [31:0] stencil_2d_B4_branch_out_c0_exe4124;
    wire [31:0] stencil_2d_B4_branch_out_c0_exe5;
    wire [0:0] stencil_2d_B4_branch_out_c0_exe6;
    wire [31:0] stencil_2d_B4_branch_out_c0_exe7;
    wire [31:0] stencil_2d_B4_branch_out_c0_exe8;
    wire [0:0] stencil_2d_B4_branch_out_c0_exe9;
    wire [0:0] stencil_2d_B4_branch_out_stall_out;
    wire [0:0] stencil_2d_B4_branch_out_valid_out_0;
    wire [31:0] stencil_2d_B4_merge_out_mul2858;
    wire [0:0] stencil_2d_B4_merge_out_notcmp2363;
    wire [31:0] stencil_2d_B4_merge_out_r_026_pop1353;
    wire [0:0] stencil_2d_B4_merge_out_stall_out_0;
    wire [0:0] stencil_2d_B4_merge_out_stall_out_1;
    wire [0:0] stencil_2d_B4_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // stencil_2d_B4_merge(BLACKBOX,26)
    stencil_2d_B4_merge thestencil_2d_B4_merge (
        .in_mul2858_0(in_mul2858_0),
        .in_mul2858_1(in_mul2858_1),
        .in_notcmp2363_0(in_notcmp2363_0),
        .in_notcmp2363_1(in_notcmp2363_1),
        .in_r_026_pop1353_0(in_r_026_pop1353_0),
        .in_r_026_pop1353_1(in_r_026_pop1353_1),
        .in_stall_in(bb_stencil_2d_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_mul2858(stencil_2d_B4_merge_out_mul2858),
        .out_notcmp2363(stencil_2d_B4_merge_out_notcmp2363),
        .out_r_026_pop1353(stencil_2d_B4_merge_out_r_026_pop1353),
        .out_stall_out_0(stencil_2d_B4_merge_out_stall_out_0),
        .out_stall_out_1(stencil_2d_B4_merge_out_stall_out_1),
        .out_valid_out(stencil_2d_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B4_stall_region(BLACKBOX,2)
    stencil_2d_bb_B4_stall_region thebb_stencil_2d_B4_stall_region (
        .in_mul2858(stencil_2d_B4_merge_out_mul2858),
        .in_notcmp2363(stencil_2d_B4_merge_out_notcmp2363),
        .in_r_026_pop1353(stencil_2d_B4_merge_out_r_026_pop1353),
        .in_stall_in(stencil_2d_B4_branch_out_stall_out),
        .in_valid_in(stencil_2d_B4_merge_out_valid_out),
        .out_c0_exe2122(bb_stencil_2d_B4_stall_region_out_c0_exe2122),
        .out_c0_exe3123(bb_stencil_2d_B4_stall_region_out_c0_exe3123),
        .out_c0_exe4124(bb_stencil_2d_B4_stall_region_out_c0_exe4124),
        .out_c0_exe5(bb_stencil_2d_B4_stall_region_out_c0_exe5),
        .out_c0_exe6(bb_stencil_2d_B4_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_stencil_2d_B4_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_stencil_2d_B4_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_stencil_2d_B4_stall_region_out_c0_exe9),
        .out_profile_loop_o_valid(bb_stencil_2d_B4_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_stencil_2d_B4_stall_region_out_stall_out),
        .out_valid_out(bb_stencil_2d_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B4_branch(BLACKBOX,25)
    stencil_2d_B4_branch thestencil_2d_B4_branch (
        .in_c0_exe2122(bb_stencil_2d_B4_stall_region_out_c0_exe2122),
        .in_c0_exe3123(bb_stencil_2d_B4_stall_region_out_c0_exe3123),
        .in_c0_exe4124(bb_stencil_2d_B4_stall_region_out_c0_exe4124),
        .in_c0_exe5(bb_stencil_2d_B4_stall_region_out_c0_exe5),
        .in_c0_exe6(bb_stencil_2d_B4_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_stencil_2d_B4_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_stencil_2d_B4_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_stencil_2d_B4_stall_region_out_c0_exe9),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_stencil_2d_B4_stall_region_out_valid_out),
        .out_c0_exe2122(stencil_2d_B4_branch_out_c0_exe2122),
        .out_c0_exe3123(stencil_2d_B4_branch_out_c0_exe3123),
        .out_c0_exe4124(stencil_2d_B4_branch_out_c0_exe4124),
        .out_c0_exe5(stencil_2d_B4_branch_out_c0_exe5),
        .out_c0_exe6(stencil_2d_B4_branch_out_c0_exe6),
        .out_c0_exe7(stencil_2d_B4_branch_out_c0_exe7),
        .out_c0_exe8(stencil_2d_B4_branch_out_c0_exe8),
        .out_c0_exe9(stencil_2d_B4_branch_out_c0_exe9),
        .out_stall_out(stencil_2d_B4_branch_out_stall_out),
        .out_valid_out_0(stencil_2d_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2122(GPOUT,12)
    assign out_c0_exe2122 = stencil_2d_B4_branch_out_c0_exe2122;

    // out_c0_exe3123(GPOUT,13)
    assign out_c0_exe3123 = stencil_2d_B4_branch_out_c0_exe3123;

    // out_c0_exe4124(GPOUT,14)
    assign out_c0_exe4124 = stencil_2d_B4_branch_out_c0_exe4124;

    // out_c0_exe5(GPOUT,15)
    assign out_c0_exe5 = stencil_2d_B4_branch_out_c0_exe5;

    // out_c0_exe6(GPOUT,16)
    assign out_c0_exe6 = stencil_2d_B4_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,17)
    assign out_c0_exe7 = stencil_2d_B4_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,18)
    assign out_c0_exe8 = stencil_2d_B4_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,19)
    assign out_c0_exe9 = stencil_2d_B4_branch_out_c0_exe9;

    // out_profile_loop_o_valid(GPOUT,20)
    assign out_profile_loop_o_valid = bb_stencil_2d_B4_stall_region_out_profile_loop_o_valid;

    // out_stall_out_0(GPOUT,21)
    assign out_stall_out_0 = stencil_2d_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,22)
    assign out_stall_out_1 = stencil_2d_B4_merge_out_stall_out_1;

    // out_valid_in_1(GPOUT,23)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,24)
    assign out_valid_out_0 = stencil_2d_B4_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,27)
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
