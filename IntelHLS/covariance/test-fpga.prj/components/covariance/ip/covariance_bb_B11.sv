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

// SystemVerilog created from bb_covariance_B11
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B11 (
    input wire [0:0] in_c0_exe1043430_0,
    input wire [0:0] in_c0_exe1143531_0,
    input wire [0:0] in_c0_exe1243632_0,
    input wire [63:0] in_c0_exe242620_0,
    input wire [63:0] in_c0_exe342721_0,
    input wire [0:0] in_c0_exe442824_0,
    input wire [31:0] in_c0_exe643025_0,
    input wire [31:0] in_c0_exe843228_0,
    input wire [31:0] in_c0_exe943329_0,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_covariance4_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe1381,
    output wire [0:0] out_c0_exe442824,
    output wire [31:0] out_c0_exe843228,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_covariance4_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance4_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance4_covariance_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_covariance_B11_stall_region_out_c0_exe1243632;
    wire [0:0] bb_covariance_B11_stall_region_out_c0_exe1381;
    wire [0:0] bb_covariance_B11_stall_region_out_c0_exe442824;
    wire [31:0] bb_covariance_B11_stall_region_out_c0_exe843228;
    wire [0:0] bb_covariance_B11_stall_region_out_stall_out;
    wire [31:0] bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_address;
    wire [0:0] bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_enable;
    wire [0:0] bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_read;
    wire [0:0] bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_write;
    wire [31:0] bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_writedata;
    wire [0:0] bb_covariance_B11_stall_region_out_valid_out;
    wire [0:0] covariance_B11_branch_out_c0_exe1381;
    wire [0:0] covariance_B11_branch_out_c0_exe442824;
    wire [31:0] covariance_B11_branch_out_c0_exe843228;
    wire [0:0] covariance_B11_branch_out_stall_out;
    wire [0:0] covariance_B11_branch_out_valid_out_0;
    wire [0:0] covariance_B11_branch_out_valid_out_1;
    wire [0:0] covariance_B11_merge_out_c0_exe1043430;
    wire [0:0] covariance_B11_merge_out_c0_exe1143531;
    wire [0:0] covariance_B11_merge_out_c0_exe1243632;
    wire [63:0] covariance_B11_merge_out_c0_exe242620;
    wire [63:0] covariance_B11_merge_out_c0_exe342721;
    wire [0:0] covariance_B11_merge_out_c0_exe442824;
    wire [31:0] covariance_B11_merge_out_c0_exe643025;
    wire [31:0] covariance_B11_merge_out_c0_exe843228;
    wire [31:0] covariance_B11_merge_out_c0_exe943329;
    wire [0:0] covariance_B11_merge_out_stall_out_0;
    wire [0:0] covariance_B11_merge_out_valid_out;


    // covariance_B11_merge(BLACKBOX,4)
    covariance_B11_merge thecovariance_B11_merge (
        .in_c0_exe1043430_0(in_c0_exe1043430_0),
        .in_c0_exe1143531_0(in_c0_exe1143531_0),
        .in_c0_exe1243632_0(in_c0_exe1243632_0),
        .in_c0_exe242620_0(in_c0_exe242620_0),
        .in_c0_exe342721_0(in_c0_exe342721_0),
        .in_c0_exe442824_0(in_c0_exe442824_0),
        .in_c0_exe643025_0(in_c0_exe643025_0),
        .in_c0_exe843228_0(in_c0_exe843228_0),
        .in_c0_exe943329_0(in_c0_exe943329_0),
        .in_stall_in(bb_covariance_B11_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe1043430(covariance_B11_merge_out_c0_exe1043430),
        .out_c0_exe1143531(covariance_B11_merge_out_c0_exe1143531),
        .out_c0_exe1243632(covariance_B11_merge_out_c0_exe1243632),
        .out_c0_exe242620(covariance_B11_merge_out_c0_exe242620),
        .out_c0_exe342721(covariance_B11_merge_out_c0_exe342721),
        .out_c0_exe442824(covariance_B11_merge_out_c0_exe442824),
        .out_c0_exe643025(covariance_B11_merge_out_c0_exe643025),
        .out_c0_exe843228(covariance_B11_merge_out_c0_exe843228),
        .out_c0_exe943329(covariance_B11_merge_out_c0_exe943329),
        .out_stall_out_0(covariance_B11_merge_out_stall_out_0),
        .out_valid_out(covariance_B11_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B11_stall_region(BLACKBOX,2)
    covariance_bb_B11_stall_region thebb_covariance_B11_stall_region (
        .in_c0_exe1043430(covariance_B11_merge_out_c0_exe1043430),
        .in_c0_exe1143531(covariance_B11_merge_out_c0_exe1143531),
        .in_c0_exe1243632(covariance_B11_merge_out_c0_exe1243632),
        .in_c0_exe242620(covariance_B11_merge_out_c0_exe242620),
        .in_c0_exe342721(covariance_B11_merge_out_c0_exe342721),
        .in_c0_exe442824(covariance_B11_merge_out_c0_exe442824),
        .in_c0_exe643025(covariance_B11_merge_out_c0_exe643025),
        .in_c0_exe843228(covariance_B11_merge_out_c0_exe843228),
        .in_c0_exe943329(covariance_B11_merge_out_c0_exe943329),
        .in_flush(in_flush),
        .in_stall_in(covariance_B11_branch_out_stall_out),
        .in_unnamed_covariance4_covariance_avm_readdata(in_unnamed_covariance4_covariance_avm_readdata),
        .in_unnamed_covariance4_covariance_avm_readdatavalid(in_unnamed_covariance4_covariance_avm_readdatavalid),
        .in_unnamed_covariance4_covariance_avm_waitrequest(in_unnamed_covariance4_covariance_avm_waitrequest),
        .in_unnamed_covariance4_covariance_avm_writeack(in_unnamed_covariance4_covariance_avm_writeack),
        .in_valid_in(covariance_B11_merge_out_valid_out),
        .out_c0_exe1243632(bb_covariance_B11_stall_region_out_c0_exe1243632),
        .out_c0_exe1381(bb_covariance_B11_stall_region_out_c0_exe1381),
        .out_c0_exe442824(bb_covariance_B11_stall_region_out_c0_exe442824),
        .out_c0_exe843228(bb_covariance_B11_stall_region_out_c0_exe843228),
        .out_stall_out(bb_covariance_B11_stall_region_out_stall_out),
        .out_unnamed_covariance4_covariance_avm_address(bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_address),
        .out_unnamed_covariance4_covariance_avm_burstcount(bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_burstcount),
        .out_unnamed_covariance4_covariance_avm_byteenable(bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_byteenable),
        .out_unnamed_covariance4_covariance_avm_enable(bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_enable),
        .out_unnamed_covariance4_covariance_avm_read(bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_read),
        .out_unnamed_covariance4_covariance_avm_write(bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_write),
        .out_unnamed_covariance4_covariance_avm_writedata(bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_writedata),
        .out_valid_out(bb_covariance_B11_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B11_branch(BLACKBOX,3)
    covariance_B11_branch thecovariance_B11_branch (
        .in_c0_exe1243632(bb_covariance_B11_stall_region_out_c0_exe1243632),
        .in_c0_exe1381(bb_covariance_B11_stall_region_out_c0_exe1381),
        .in_c0_exe442824(bb_covariance_B11_stall_region_out_c0_exe442824),
        .in_c0_exe843228(bb_covariance_B11_stall_region_out_c0_exe843228),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_covariance_B11_stall_region_out_valid_out),
        .out_c0_exe1381(covariance_B11_branch_out_c0_exe1381),
        .out_c0_exe442824(covariance_B11_branch_out_c0_exe442824),
        .out_c0_exe843228(covariance_B11_branch_out_c0_exe843228),
        .out_stall_out(covariance_B11_branch_out_stall_out),
        .out_valid_out_0(covariance_B11_branch_out_valid_out_0),
        .out_valid_out_1(covariance_B11_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1381(GPOUT,22)
    assign out_c0_exe1381 = covariance_B11_branch_out_c0_exe1381;

    // out_c0_exe442824(GPOUT,23)
    assign out_c0_exe442824 = covariance_B11_branch_out_c0_exe442824;

    // out_c0_exe843228(GPOUT,24)
    assign out_c0_exe843228 = covariance_B11_branch_out_c0_exe843228;

    // out_stall_in_0(GPOUT,25)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,26)
    assign out_stall_out_0 = covariance_B11_merge_out_stall_out_0;

    // out_unnamed_covariance4_covariance_avm_address(GPOUT,27)
    assign out_unnamed_covariance4_covariance_avm_address = bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_address;

    // out_unnamed_covariance4_covariance_avm_burstcount(GPOUT,28)
    assign out_unnamed_covariance4_covariance_avm_burstcount = bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_burstcount;

    // out_unnamed_covariance4_covariance_avm_byteenable(GPOUT,29)
    assign out_unnamed_covariance4_covariance_avm_byteenable = bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_byteenable;

    // out_unnamed_covariance4_covariance_avm_enable(GPOUT,30)
    assign out_unnamed_covariance4_covariance_avm_enable = bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_enable;

    // out_unnamed_covariance4_covariance_avm_read(GPOUT,31)
    assign out_unnamed_covariance4_covariance_avm_read = bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_read;

    // out_unnamed_covariance4_covariance_avm_write(GPOUT,32)
    assign out_unnamed_covariance4_covariance_avm_write = bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_write;

    // out_unnamed_covariance4_covariance_avm_writedata(GPOUT,33)
    assign out_unnamed_covariance4_covariance_avm_writedata = bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_writedata;

    // out_valid_out_0(GPOUT,34)
    assign out_valid_out_0 = covariance_B11_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,35)
    assign out_valid_out_1 = covariance_B11_branch_out_valid_out_1;

endmodule
