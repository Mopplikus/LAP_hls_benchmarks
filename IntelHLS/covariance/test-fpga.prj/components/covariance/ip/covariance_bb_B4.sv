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

// SystemVerilog created from bb_covariance_B4
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B4 (
    input wire [0:0] in_c0_exe102498_0,
    input wire [31:0] in_c0_exe112509_0,
    input wire [0:0] in_c0_exe1225110_0,
    input wire [0:0] in_c0_exe1311_0,
    input wire [0:0] in_c0_exe1412_0,
    input wire [63:0] in_c0_exe22411_0,
    input wire [0:0] in_c0_exe32422_0,
    input wire [31:0] in_c0_exe42433_0,
    input wire [31:0] in_c0_exe62454_0,
    input wire [0:0] in_c0_exe72465_0,
    input wire [0:0] in_c0_exe82476_0,
    input wire [0:0] in_c0_exe92487_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe102498,
    output wire [31:0] out_c0_exe112509,
    output wire [0:0] out_c0_exe1225110,
    output wire [0:0] out_c0_exe1311,
    output wire [0:0] out_c0_exe1412,
    output wire [63:0] out_c0_exe22411,
    output wire [0:0] out_c0_exe32422,
    output wire [31:0] out_c0_exe62454,
    output wire [0:0] out_c0_exe72465,
    output wire [0:0] out_c0_exe82476,
    output wire [0:0] out_c0_exe92487,
    output wire [31:0] out_mul,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_covariance_B4_stall_region_out_c0_exe102498;
    wire [31:0] bb_covariance_B4_stall_region_out_c0_exe112509;
    wire [0:0] bb_covariance_B4_stall_region_out_c0_exe1225110;
    wire [0:0] bb_covariance_B4_stall_region_out_c0_exe1311;
    wire [0:0] bb_covariance_B4_stall_region_out_c0_exe1412;
    wire [63:0] bb_covariance_B4_stall_region_out_c0_exe22411;
    wire [0:0] bb_covariance_B4_stall_region_out_c0_exe32422;
    wire [31:0] bb_covariance_B4_stall_region_out_c0_exe62454;
    wire [0:0] bb_covariance_B4_stall_region_out_c0_exe72465;
    wire [0:0] bb_covariance_B4_stall_region_out_c0_exe82476;
    wire [0:0] bb_covariance_B4_stall_region_out_c0_exe92487;
    wire [31:0] bb_covariance_B4_stall_region_out_mul;
    wire [0:0] bb_covariance_B4_stall_region_out_stall_out;
    wire [0:0] bb_covariance_B4_stall_region_out_valid_out;
    wire [0:0] covariance_B4_branch_out_c0_exe102498;
    wire [31:0] covariance_B4_branch_out_c0_exe112509;
    wire [0:0] covariance_B4_branch_out_c0_exe1225110;
    wire [0:0] covariance_B4_branch_out_c0_exe1311;
    wire [0:0] covariance_B4_branch_out_c0_exe1412;
    wire [63:0] covariance_B4_branch_out_c0_exe22411;
    wire [0:0] covariance_B4_branch_out_c0_exe32422;
    wire [31:0] covariance_B4_branch_out_c0_exe62454;
    wire [0:0] covariance_B4_branch_out_c0_exe72465;
    wire [0:0] covariance_B4_branch_out_c0_exe82476;
    wire [0:0] covariance_B4_branch_out_c0_exe92487;
    wire [31:0] covariance_B4_branch_out_mul;
    wire [0:0] covariance_B4_branch_out_stall_out;
    wire [0:0] covariance_B4_branch_out_valid_out_0;
    wire [0:0] covariance_B4_merge_out_c0_exe102498;
    wire [31:0] covariance_B4_merge_out_c0_exe112509;
    wire [0:0] covariance_B4_merge_out_c0_exe1225110;
    wire [0:0] covariance_B4_merge_out_c0_exe1311;
    wire [0:0] covariance_B4_merge_out_c0_exe1412;
    wire [63:0] covariance_B4_merge_out_c0_exe22411;
    wire [0:0] covariance_B4_merge_out_c0_exe32422;
    wire [31:0] covariance_B4_merge_out_c0_exe42433;
    wire [31:0] covariance_B4_merge_out_c0_exe62454;
    wire [0:0] covariance_B4_merge_out_c0_exe72465;
    wire [0:0] covariance_B4_merge_out_c0_exe82476;
    wire [0:0] covariance_B4_merge_out_c0_exe92487;
    wire [0:0] covariance_B4_merge_out_stall_out_0;
    wire [0:0] covariance_B4_merge_out_valid_out;


    // covariance_B4_merge(BLACKBOX,4)
    covariance_B4_merge thecovariance_B4_merge (
        .in_c0_exe102498_0(in_c0_exe102498_0),
        .in_c0_exe112509_0(in_c0_exe112509_0),
        .in_c0_exe1225110_0(in_c0_exe1225110_0),
        .in_c0_exe1311_0(in_c0_exe1311_0),
        .in_c0_exe1412_0(in_c0_exe1412_0),
        .in_c0_exe22411_0(in_c0_exe22411_0),
        .in_c0_exe32422_0(in_c0_exe32422_0),
        .in_c0_exe42433_0(in_c0_exe42433_0),
        .in_c0_exe62454_0(in_c0_exe62454_0),
        .in_c0_exe72465_0(in_c0_exe72465_0),
        .in_c0_exe82476_0(in_c0_exe82476_0),
        .in_c0_exe92487_0(in_c0_exe92487_0),
        .in_stall_in(bb_covariance_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe102498(covariance_B4_merge_out_c0_exe102498),
        .out_c0_exe112509(covariance_B4_merge_out_c0_exe112509),
        .out_c0_exe1225110(covariance_B4_merge_out_c0_exe1225110),
        .out_c0_exe1311(covariance_B4_merge_out_c0_exe1311),
        .out_c0_exe1412(covariance_B4_merge_out_c0_exe1412),
        .out_c0_exe22411(covariance_B4_merge_out_c0_exe22411),
        .out_c0_exe32422(covariance_B4_merge_out_c0_exe32422),
        .out_c0_exe42433(covariance_B4_merge_out_c0_exe42433),
        .out_c0_exe62454(covariance_B4_merge_out_c0_exe62454),
        .out_c0_exe72465(covariance_B4_merge_out_c0_exe72465),
        .out_c0_exe82476(covariance_B4_merge_out_c0_exe82476),
        .out_c0_exe92487(covariance_B4_merge_out_c0_exe92487),
        .out_stall_out_0(covariance_B4_merge_out_stall_out_0),
        .out_valid_out(covariance_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B4_stall_region(BLACKBOX,2)
    covariance_bb_B4_stall_region thebb_covariance_B4_stall_region (
        .in_c0_exe102498(covariance_B4_merge_out_c0_exe102498),
        .in_c0_exe112509(covariance_B4_merge_out_c0_exe112509),
        .in_c0_exe1225110(covariance_B4_merge_out_c0_exe1225110),
        .in_c0_exe1311(covariance_B4_merge_out_c0_exe1311),
        .in_c0_exe1412(covariance_B4_merge_out_c0_exe1412),
        .in_c0_exe22411(covariance_B4_merge_out_c0_exe22411),
        .in_c0_exe32422(covariance_B4_merge_out_c0_exe32422),
        .in_c0_exe42433(covariance_B4_merge_out_c0_exe42433),
        .in_c0_exe62454(covariance_B4_merge_out_c0_exe62454),
        .in_c0_exe72465(covariance_B4_merge_out_c0_exe72465),
        .in_c0_exe82476(covariance_B4_merge_out_c0_exe82476),
        .in_c0_exe92487(covariance_B4_merge_out_c0_exe92487),
        .in_stall_in(covariance_B4_branch_out_stall_out),
        .in_valid_in(covariance_B4_merge_out_valid_out),
        .out_c0_exe102498(bb_covariance_B4_stall_region_out_c0_exe102498),
        .out_c0_exe112509(bb_covariance_B4_stall_region_out_c0_exe112509),
        .out_c0_exe1225110(bb_covariance_B4_stall_region_out_c0_exe1225110),
        .out_c0_exe1311(bb_covariance_B4_stall_region_out_c0_exe1311),
        .out_c0_exe1412(bb_covariance_B4_stall_region_out_c0_exe1412),
        .out_c0_exe22411(bb_covariance_B4_stall_region_out_c0_exe22411),
        .out_c0_exe32422(bb_covariance_B4_stall_region_out_c0_exe32422),
        .out_c0_exe62454(bb_covariance_B4_stall_region_out_c0_exe62454),
        .out_c0_exe72465(bb_covariance_B4_stall_region_out_c0_exe72465),
        .out_c0_exe82476(bb_covariance_B4_stall_region_out_c0_exe82476),
        .out_c0_exe92487(bb_covariance_B4_stall_region_out_c0_exe92487),
        .out_mul(bb_covariance_B4_stall_region_out_mul),
        .out_stall_out(bb_covariance_B4_stall_region_out_stall_out),
        .out_valid_out(bb_covariance_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B4_branch(BLACKBOX,3)
    covariance_B4_branch thecovariance_B4_branch (
        .in_c0_exe102498(bb_covariance_B4_stall_region_out_c0_exe102498),
        .in_c0_exe112509(bb_covariance_B4_stall_region_out_c0_exe112509),
        .in_c0_exe1225110(bb_covariance_B4_stall_region_out_c0_exe1225110),
        .in_c0_exe1311(bb_covariance_B4_stall_region_out_c0_exe1311),
        .in_c0_exe1412(bb_covariance_B4_stall_region_out_c0_exe1412),
        .in_c0_exe22411(bb_covariance_B4_stall_region_out_c0_exe22411),
        .in_c0_exe32422(bb_covariance_B4_stall_region_out_c0_exe32422),
        .in_c0_exe62454(bb_covariance_B4_stall_region_out_c0_exe62454),
        .in_c0_exe72465(bb_covariance_B4_stall_region_out_c0_exe72465),
        .in_c0_exe82476(bb_covariance_B4_stall_region_out_c0_exe82476),
        .in_c0_exe92487(bb_covariance_B4_stall_region_out_c0_exe92487),
        .in_mul(bb_covariance_B4_stall_region_out_mul),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_covariance_B4_stall_region_out_valid_out),
        .out_c0_exe102498(covariance_B4_branch_out_c0_exe102498),
        .out_c0_exe112509(covariance_B4_branch_out_c0_exe112509),
        .out_c0_exe1225110(covariance_B4_branch_out_c0_exe1225110),
        .out_c0_exe1311(covariance_B4_branch_out_c0_exe1311),
        .out_c0_exe1412(covariance_B4_branch_out_c0_exe1412),
        .out_c0_exe22411(covariance_B4_branch_out_c0_exe22411),
        .out_c0_exe32422(covariance_B4_branch_out_c0_exe32422),
        .out_c0_exe62454(covariance_B4_branch_out_c0_exe62454),
        .out_c0_exe72465(covariance_B4_branch_out_c0_exe72465),
        .out_c0_exe82476(covariance_B4_branch_out_c0_exe82476),
        .out_c0_exe92487(covariance_B4_branch_out_c0_exe92487),
        .out_mul(covariance_B4_branch_out_mul),
        .out_stall_out(covariance_B4_branch_out_stall_out),
        .out_valid_out_0(covariance_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe102498(GPOUT,19)
    assign out_c0_exe102498 = covariance_B4_branch_out_c0_exe102498;

    // out_c0_exe112509(GPOUT,20)
    assign out_c0_exe112509 = covariance_B4_branch_out_c0_exe112509;

    // out_c0_exe1225110(GPOUT,21)
    assign out_c0_exe1225110 = covariance_B4_branch_out_c0_exe1225110;

    // out_c0_exe1311(GPOUT,22)
    assign out_c0_exe1311 = covariance_B4_branch_out_c0_exe1311;

    // out_c0_exe1412(GPOUT,23)
    assign out_c0_exe1412 = covariance_B4_branch_out_c0_exe1412;

    // out_c0_exe22411(GPOUT,24)
    assign out_c0_exe22411 = covariance_B4_branch_out_c0_exe22411;

    // out_c0_exe32422(GPOUT,25)
    assign out_c0_exe32422 = covariance_B4_branch_out_c0_exe32422;

    // out_c0_exe62454(GPOUT,26)
    assign out_c0_exe62454 = covariance_B4_branch_out_c0_exe62454;

    // out_c0_exe72465(GPOUT,27)
    assign out_c0_exe72465 = covariance_B4_branch_out_c0_exe72465;

    // out_c0_exe82476(GPOUT,28)
    assign out_c0_exe82476 = covariance_B4_branch_out_c0_exe82476;

    // out_c0_exe92487(GPOUT,29)
    assign out_c0_exe92487 = covariance_B4_branch_out_c0_exe92487;

    // out_mul(GPOUT,30)
    assign out_mul = covariance_B4_branch_out_mul;

    // out_stall_out_0(GPOUT,31)
    assign out_stall_out_0 = covariance_B4_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,32)
    assign out_valid_out_0 = covariance_B4_branch_out_valid_out_0;

endmodule
