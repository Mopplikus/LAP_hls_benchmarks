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

// SystemVerilog created from bb_gaussian_B6
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B6 (
    output wire [0:0] out_feedback_out_10,
    input wire [0:0] in_feedback_stall_in_10,
    output wire [0:0] out_feedback_valid_out_10,
    input wire [0:0] in_c0_exe1015415_0,
    input wire [0:0] in_c0_exe11452_0,
    input wire [0:0] in_c0_exe21463_0,
    input wire [0:0] in_c0_exe41487_0,
    input wire [31:0] in_c0_exe61509_0,
    input wire [31:0] in_c0_exe715111_0,
    input wire [31:0] in_c0_exe815213_0,
    input wire [0:0] in_c0_exe915314_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe11452,
    output wire [0:0] out_c0_exe21463,
    output wire [0:0] out_c0_exe41487,
    output wire [31:0] out_c0_exe61509,
    output wire [31:0] out_c0_exe715111,
    output wire [31:0] out_c0_exe815213,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_gaussian_B6_stall_region_out_c0_exe1015415;
    wire [0:0] bb_gaussian_B6_stall_region_out_c0_exe11452;
    wire [0:0] bb_gaussian_B6_stall_region_out_c0_exe21463;
    wire [0:0] bb_gaussian_B6_stall_region_out_c0_exe41487;
    wire [31:0] bb_gaussian_B6_stall_region_out_c0_exe61509;
    wire [31:0] bb_gaussian_B6_stall_region_out_c0_exe715111;
    wire [31:0] bb_gaussian_B6_stall_region_out_c0_exe815213;
    wire [0:0] bb_gaussian_B6_stall_region_out_feedback_out_10;
    wire [0:0] bb_gaussian_B6_stall_region_out_feedback_valid_out_10;
    wire [0:0] bb_gaussian_B6_stall_region_out_stall_out;
    wire [0:0] bb_gaussian_B6_stall_region_out_valid_out;
    wire [0:0] gaussian_B6_branch_out_c0_exe11452;
    wire [0:0] gaussian_B6_branch_out_c0_exe21463;
    wire [0:0] gaussian_B6_branch_out_c0_exe41487;
    wire [31:0] gaussian_B6_branch_out_c0_exe61509;
    wire [31:0] gaussian_B6_branch_out_c0_exe715111;
    wire [31:0] gaussian_B6_branch_out_c0_exe815213;
    wire [0:0] gaussian_B6_branch_out_stall_out;
    wire [0:0] gaussian_B6_branch_out_valid_out_0;
    wire [0:0] gaussian_B6_branch_out_valid_out_1;
    wire [0:0] gaussian_B6_merge_out_c0_exe1015415;
    wire [0:0] gaussian_B6_merge_out_c0_exe11452;
    wire [0:0] gaussian_B6_merge_out_c0_exe21463;
    wire [0:0] gaussian_B6_merge_out_c0_exe41487;
    wire [31:0] gaussian_B6_merge_out_c0_exe61509;
    wire [31:0] gaussian_B6_merge_out_c0_exe715111;
    wire [31:0] gaussian_B6_merge_out_c0_exe815213;
    wire [0:0] gaussian_B6_merge_out_c0_exe915314;
    wire [0:0] gaussian_B6_merge_out_stall_out_0;
    wire [0:0] gaussian_B6_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // gaussian_B6_branch(BLACKBOX,6)
    gaussian_B6_branch thegaussian_B6_branch (
        .in_c0_exe1015415(bb_gaussian_B6_stall_region_out_c0_exe1015415),
        .in_c0_exe11452(bb_gaussian_B6_stall_region_out_c0_exe11452),
        .in_c0_exe21463(bb_gaussian_B6_stall_region_out_c0_exe21463),
        .in_c0_exe41487(bb_gaussian_B6_stall_region_out_c0_exe41487),
        .in_c0_exe61509(bb_gaussian_B6_stall_region_out_c0_exe61509),
        .in_c0_exe715111(bb_gaussian_B6_stall_region_out_c0_exe715111),
        .in_c0_exe815213(bb_gaussian_B6_stall_region_out_c0_exe815213),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_gaussian_B6_stall_region_out_valid_out),
        .out_c0_exe11452(gaussian_B6_branch_out_c0_exe11452),
        .out_c0_exe21463(gaussian_B6_branch_out_c0_exe21463),
        .out_c0_exe41487(gaussian_B6_branch_out_c0_exe41487),
        .out_c0_exe61509(gaussian_B6_branch_out_c0_exe61509),
        .out_c0_exe715111(gaussian_B6_branch_out_c0_exe715111),
        .out_c0_exe815213(gaussian_B6_branch_out_c0_exe815213),
        .out_stall_out(gaussian_B6_branch_out_stall_out),
        .out_valid_out_0(gaussian_B6_branch_out_valid_out_0),
        .out_valid_out_1(gaussian_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B6_merge(BLACKBOX,7)
    gaussian_B6_merge thegaussian_B6_merge (
        .in_c0_exe1015415_0(in_c0_exe1015415_0),
        .in_c0_exe11452_0(in_c0_exe11452_0),
        .in_c0_exe21463_0(in_c0_exe21463_0),
        .in_c0_exe41487_0(in_c0_exe41487_0),
        .in_c0_exe61509_0(in_c0_exe61509_0),
        .in_c0_exe715111_0(in_c0_exe715111_0),
        .in_c0_exe815213_0(in_c0_exe815213_0),
        .in_c0_exe915314_0(in_c0_exe915314_0),
        .in_stall_in(bb_gaussian_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe1015415(gaussian_B6_merge_out_c0_exe1015415),
        .out_c0_exe11452(gaussian_B6_merge_out_c0_exe11452),
        .out_c0_exe21463(gaussian_B6_merge_out_c0_exe21463),
        .out_c0_exe41487(gaussian_B6_merge_out_c0_exe41487),
        .out_c0_exe61509(gaussian_B6_merge_out_c0_exe61509),
        .out_c0_exe715111(gaussian_B6_merge_out_c0_exe715111),
        .out_c0_exe815213(gaussian_B6_merge_out_c0_exe815213),
        .out_c0_exe915314(gaussian_B6_merge_out_c0_exe915314),
        .out_stall_out_0(gaussian_B6_merge_out_stall_out_0),
        .out_valid_out(gaussian_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B6_stall_region(BLACKBOX,2)
    gaussian_bb_B6_stall_region thebb_gaussian_B6_stall_region (
        .in_c0_exe1015415(gaussian_B6_merge_out_c0_exe1015415),
        .in_c0_exe11452(gaussian_B6_merge_out_c0_exe11452),
        .in_c0_exe21463(gaussian_B6_merge_out_c0_exe21463),
        .in_c0_exe41487(gaussian_B6_merge_out_c0_exe41487),
        .in_c0_exe61509(gaussian_B6_merge_out_c0_exe61509),
        .in_c0_exe715111(gaussian_B6_merge_out_c0_exe715111),
        .in_c0_exe815213(gaussian_B6_merge_out_c0_exe815213),
        .in_c0_exe915314(gaussian_B6_merge_out_c0_exe915314),
        .in_feedback_stall_in_10(in_feedback_stall_in_10),
        .in_stall_in(gaussian_B6_branch_out_stall_out),
        .in_valid_in(gaussian_B6_merge_out_valid_out),
        .out_c0_exe1015415(bb_gaussian_B6_stall_region_out_c0_exe1015415),
        .out_c0_exe11452(bb_gaussian_B6_stall_region_out_c0_exe11452),
        .out_c0_exe21463(bb_gaussian_B6_stall_region_out_c0_exe21463),
        .out_c0_exe41487(bb_gaussian_B6_stall_region_out_c0_exe41487),
        .out_c0_exe61509(bb_gaussian_B6_stall_region_out_c0_exe61509),
        .out_c0_exe715111(bb_gaussian_B6_stall_region_out_c0_exe715111),
        .out_c0_exe815213(bb_gaussian_B6_stall_region_out_c0_exe815213),
        .out_feedback_out_10(bb_gaussian_B6_stall_region_out_feedback_out_10),
        .out_feedback_valid_out_10(bb_gaussian_B6_stall_region_out_feedback_valid_out_10),
        .out_stall_out(bb_gaussian_B6_stall_region_out_stall_out),
        .out_valid_out(bb_gaussian_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_10_sync(GPOUT,3)
    assign out_feedback_out_10 = bb_gaussian_B6_stall_region_out_feedback_out_10;

    // feedback_valid_out_10_sync(GPOUT,5)
    assign out_feedback_valid_out_10 = bb_gaussian_B6_stall_region_out_feedback_valid_out_10;

    // out_c0_exe11452(GPOUT,19)
    assign out_c0_exe11452 = gaussian_B6_branch_out_c0_exe11452;

    // out_c0_exe21463(GPOUT,20)
    assign out_c0_exe21463 = gaussian_B6_branch_out_c0_exe21463;

    // out_c0_exe41487(GPOUT,21)
    assign out_c0_exe41487 = gaussian_B6_branch_out_c0_exe41487;

    // out_c0_exe61509(GPOUT,22)
    assign out_c0_exe61509 = gaussian_B6_branch_out_c0_exe61509;

    // out_c0_exe715111(GPOUT,23)
    assign out_c0_exe715111 = gaussian_B6_branch_out_c0_exe715111;

    // out_c0_exe815213(GPOUT,24)
    assign out_c0_exe815213 = gaussian_B6_branch_out_c0_exe815213;

    // out_stall_in_0(GPOUT,25)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,26)
    assign out_stall_out_0 = gaussian_B6_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,27)
    assign out_valid_out_0 = gaussian_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,28)
    assign out_valid_out_1 = gaussian_B6_branch_out_valid_out_1;

    // rst_sync(RESETSYNC,29)
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
