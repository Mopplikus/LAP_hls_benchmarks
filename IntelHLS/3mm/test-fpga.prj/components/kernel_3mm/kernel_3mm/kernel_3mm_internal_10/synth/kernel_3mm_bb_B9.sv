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

// SystemVerilog created from bb_kernel_3mm_B9
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B9 (
    input wire [31:0] in_c0_exe103169_0,
    input wire [0:0] in_c0_exe1131710_0,
    input wire [63:0] in_c0_exe23082_0,
    input wire [63:0] in_c0_exe33093_0,
    input wire [31:0] in_c0_exe43104_0,
    input wire [31:0] in_c0_exe63125_0,
    input wire [0:0] in_c0_exe73136_0,
    input wire [63:0] in_c0_exe83147_0,
    input wire [0:0] in_c0_exe93158_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_7_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_7_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_7_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_7_kernel_3mm_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_kernel_3mm21_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm21_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm21_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm21_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe103169,
    output wire [0:0] out_c0_exe1131710,
    output wire [63:0] out_c0_exe1326,
    output wire [63:0] out_c0_exe23082,
    output wire [31:0] out_c0_exe2327,
    output wire [63:0] out_c0_exe33093,
    output wire [31:0] out_c0_exe63125,
    output wire [0:0] out_c0_exe73136,
    output wire [0:0] out_c0_exe93158,
    output wire [31:0] out_memdep_7_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_7_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_7_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_7_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_7_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_7_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_7_kernel_3mm_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_kernel_3mm_B9_stall_region_out_c0_exe103169;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_c0_exe1131710;
    wire [63:0] bb_kernel_3mm_B9_stall_region_out_c0_exe1326;
    wire [63:0] bb_kernel_3mm_B9_stall_region_out_c0_exe23082;
    wire [31:0] bb_kernel_3mm_B9_stall_region_out_c0_exe2327;
    wire [63:0] bb_kernel_3mm_B9_stall_region_out_c0_exe33093;
    wire [31:0] bb_kernel_3mm_B9_stall_region_out_c0_exe63125;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_c0_exe73136;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_c0_exe93158;
    wire [31:0] bb_kernel_3mm_B9_stall_region_out_memdep_7_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_memdep_7_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B9_stall_region_out_memdep_7_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_memdep_7_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_memdep_7_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_memdep_7_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B9_stall_region_out_memdep_7_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_stall_out;
    wire [31:0] bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm21_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm21_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm21_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm21_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_valid_out;
    wire [31:0] kernel_3mm_B9_branch_out_c0_exe103169;
    wire [0:0] kernel_3mm_B9_branch_out_c0_exe1131710;
    wire [63:0] kernel_3mm_B9_branch_out_c0_exe1326;
    wire [63:0] kernel_3mm_B9_branch_out_c0_exe23082;
    wire [31:0] kernel_3mm_B9_branch_out_c0_exe2327;
    wire [63:0] kernel_3mm_B9_branch_out_c0_exe33093;
    wire [31:0] kernel_3mm_B9_branch_out_c0_exe63125;
    wire [0:0] kernel_3mm_B9_branch_out_c0_exe73136;
    wire [0:0] kernel_3mm_B9_branch_out_c0_exe93158;
    wire [0:0] kernel_3mm_B9_branch_out_stall_out;
    wire [0:0] kernel_3mm_B9_branch_out_valid_out_0;
    wire [31:0] kernel_3mm_B9_merge_out_c0_exe103169;
    wire [0:0] kernel_3mm_B9_merge_out_c0_exe1131710;
    wire [63:0] kernel_3mm_B9_merge_out_c0_exe23082;
    wire [63:0] kernel_3mm_B9_merge_out_c0_exe33093;
    wire [31:0] kernel_3mm_B9_merge_out_c0_exe43104;
    wire [31:0] kernel_3mm_B9_merge_out_c0_exe63125;
    wire [0:0] kernel_3mm_B9_merge_out_c0_exe73136;
    wire [63:0] kernel_3mm_B9_merge_out_c0_exe83147;
    wire [0:0] kernel_3mm_B9_merge_out_c0_exe93158;
    wire [0:0] kernel_3mm_B9_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B9_merge_out_valid_out;


    // kernel_3mm_B9_merge(BLACKBOX,24)
    kernel_3mm_B9_merge thekernel_3mm_B9_merge (
        .in_c0_exe103169_0(in_c0_exe103169_0),
        .in_c0_exe1131710_0(in_c0_exe1131710_0),
        .in_c0_exe23082_0(in_c0_exe23082_0),
        .in_c0_exe33093_0(in_c0_exe33093_0),
        .in_c0_exe43104_0(in_c0_exe43104_0),
        .in_c0_exe63125_0(in_c0_exe63125_0),
        .in_c0_exe73136_0(in_c0_exe73136_0),
        .in_c0_exe83147_0(in_c0_exe83147_0),
        .in_c0_exe93158_0(in_c0_exe93158_0),
        .in_stall_in(bb_kernel_3mm_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe103169(kernel_3mm_B9_merge_out_c0_exe103169),
        .out_c0_exe1131710(kernel_3mm_B9_merge_out_c0_exe1131710),
        .out_c0_exe23082(kernel_3mm_B9_merge_out_c0_exe23082),
        .out_c0_exe33093(kernel_3mm_B9_merge_out_c0_exe33093),
        .out_c0_exe43104(kernel_3mm_B9_merge_out_c0_exe43104),
        .out_c0_exe63125(kernel_3mm_B9_merge_out_c0_exe63125),
        .out_c0_exe73136(kernel_3mm_B9_merge_out_c0_exe73136),
        .out_c0_exe83147(kernel_3mm_B9_merge_out_c0_exe83147),
        .out_c0_exe93158(kernel_3mm_B9_merge_out_c0_exe93158),
        .out_stall_out_0(kernel_3mm_B9_merge_out_stall_out_0),
        .out_valid_out(kernel_3mm_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B9_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B9_stall_region thebb_kernel_3mm_B9_stall_region (
        .in_c0_exe103169(kernel_3mm_B9_merge_out_c0_exe103169),
        .in_c0_exe1131710(kernel_3mm_B9_merge_out_c0_exe1131710),
        .in_c0_exe23082(kernel_3mm_B9_merge_out_c0_exe23082),
        .in_c0_exe33093(kernel_3mm_B9_merge_out_c0_exe33093),
        .in_c0_exe43104(kernel_3mm_B9_merge_out_c0_exe43104),
        .in_c0_exe63125(kernel_3mm_B9_merge_out_c0_exe63125),
        .in_c0_exe73136(kernel_3mm_B9_merge_out_c0_exe73136),
        .in_c0_exe83147(kernel_3mm_B9_merge_out_c0_exe83147),
        .in_c0_exe93158(kernel_3mm_B9_merge_out_c0_exe93158),
        .in_flush(in_flush),
        .in_memdep_7_kernel_3mm_avm_readdata(in_memdep_7_kernel_3mm_avm_readdata),
        .in_memdep_7_kernel_3mm_avm_readdatavalid(in_memdep_7_kernel_3mm_avm_readdatavalid),
        .in_memdep_7_kernel_3mm_avm_waitrequest(in_memdep_7_kernel_3mm_avm_waitrequest),
        .in_memdep_7_kernel_3mm_avm_writeack(in_memdep_7_kernel_3mm_avm_writeack),
        .in_stall_in(kernel_3mm_B9_branch_out_stall_out),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm21_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm21_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm21_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm21_kernel_3mm_avm_writeack),
        .in_valid_in(kernel_3mm_B9_merge_out_valid_out),
        .out_c0_exe103169(bb_kernel_3mm_B9_stall_region_out_c0_exe103169),
        .out_c0_exe1131710(bb_kernel_3mm_B9_stall_region_out_c0_exe1131710),
        .out_c0_exe1326(bb_kernel_3mm_B9_stall_region_out_c0_exe1326),
        .out_c0_exe23082(bb_kernel_3mm_B9_stall_region_out_c0_exe23082),
        .out_c0_exe2327(bb_kernel_3mm_B9_stall_region_out_c0_exe2327),
        .out_c0_exe33093(bb_kernel_3mm_B9_stall_region_out_c0_exe33093),
        .out_c0_exe63125(bb_kernel_3mm_B9_stall_region_out_c0_exe63125),
        .out_c0_exe73136(bb_kernel_3mm_B9_stall_region_out_c0_exe73136),
        .out_c0_exe93158(bb_kernel_3mm_B9_stall_region_out_c0_exe93158),
        .out_memdep_7_kernel_3mm_avm_address(bb_kernel_3mm_B9_stall_region_out_memdep_7_kernel_3mm_avm_address),
        .out_memdep_7_kernel_3mm_avm_burstcount(bb_kernel_3mm_B9_stall_region_out_memdep_7_kernel_3mm_avm_burstcount),
        .out_memdep_7_kernel_3mm_avm_byteenable(bb_kernel_3mm_B9_stall_region_out_memdep_7_kernel_3mm_avm_byteenable),
        .out_memdep_7_kernel_3mm_avm_enable(bb_kernel_3mm_B9_stall_region_out_memdep_7_kernel_3mm_avm_enable),
        .out_memdep_7_kernel_3mm_avm_read(bb_kernel_3mm_B9_stall_region_out_memdep_7_kernel_3mm_avm_read),
        .out_memdep_7_kernel_3mm_avm_write(bb_kernel_3mm_B9_stall_region_out_memdep_7_kernel_3mm_avm_write),
        .out_memdep_7_kernel_3mm_avm_writedata(bb_kernel_3mm_B9_stall_region_out_memdep_7_kernel_3mm_avm_writedata),
        .out_stall_out(bb_kernel_3mm_B9_stall_region_out_stall_out),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_address(bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm21_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount(bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable(bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_enable(bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm21_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_read(bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm21_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_write(bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm21_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata(bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata),
        .out_valid_out(bb_kernel_3mm_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B9_branch(BLACKBOX,23)
    kernel_3mm_B9_branch thekernel_3mm_B9_branch (
        .in_c0_exe103169(bb_kernel_3mm_B9_stall_region_out_c0_exe103169),
        .in_c0_exe1131710(bb_kernel_3mm_B9_stall_region_out_c0_exe1131710),
        .in_c0_exe1326(bb_kernel_3mm_B9_stall_region_out_c0_exe1326),
        .in_c0_exe23082(bb_kernel_3mm_B9_stall_region_out_c0_exe23082),
        .in_c0_exe2327(bb_kernel_3mm_B9_stall_region_out_c0_exe2327),
        .in_c0_exe33093(bb_kernel_3mm_B9_stall_region_out_c0_exe33093),
        .in_c0_exe63125(bb_kernel_3mm_B9_stall_region_out_c0_exe63125),
        .in_c0_exe73136(bb_kernel_3mm_B9_stall_region_out_c0_exe73136),
        .in_c0_exe93158(bb_kernel_3mm_B9_stall_region_out_c0_exe93158),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_3mm_B9_stall_region_out_valid_out),
        .out_c0_exe103169(kernel_3mm_B9_branch_out_c0_exe103169),
        .out_c0_exe1131710(kernel_3mm_B9_branch_out_c0_exe1131710),
        .out_c0_exe1326(kernel_3mm_B9_branch_out_c0_exe1326),
        .out_c0_exe23082(kernel_3mm_B9_branch_out_c0_exe23082),
        .out_c0_exe2327(kernel_3mm_B9_branch_out_c0_exe2327),
        .out_c0_exe33093(kernel_3mm_B9_branch_out_c0_exe33093),
        .out_c0_exe63125(kernel_3mm_B9_branch_out_c0_exe63125),
        .out_c0_exe73136(kernel_3mm_B9_branch_out_c0_exe73136),
        .out_c0_exe93158(kernel_3mm_B9_branch_out_c0_exe93158),
        .out_stall_out(kernel_3mm_B9_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B9_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe103169(GPOUT,25)
    assign out_c0_exe103169 = kernel_3mm_B9_branch_out_c0_exe103169;

    // out_c0_exe1131710(GPOUT,26)
    assign out_c0_exe1131710 = kernel_3mm_B9_branch_out_c0_exe1131710;

    // out_c0_exe1326(GPOUT,27)
    assign out_c0_exe1326 = kernel_3mm_B9_branch_out_c0_exe1326;

    // out_c0_exe23082(GPOUT,28)
    assign out_c0_exe23082 = kernel_3mm_B9_branch_out_c0_exe23082;

    // out_c0_exe2327(GPOUT,29)
    assign out_c0_exe2327 = kernel_3mm_B9_branch_out_c0_exe2327;

    // out_c0_exe33093(GPOUT,30)
    assign out_c0_exe33093 = kernel_3mm_B9_branch_out_c0_exe33093;

    // out_c0_exe63125(GPOUT,31)
    assign out_c0_exe63125 = kernel_3mm_B9_branch_out_c0_exe63125;

    // out_c0_exe73136(GPOUT,32)
    assign out_c0_exe73136 = kernel_3mm_B9_branch_out_c0_exe73136;

    // out_c0_exe93158(GPOUT,33)
    assign out_c0_exe93158 = kernel_3mm_B9_branch_out_c0_exe93158;

    // out_memdep_7_kernel_3mm_avm_address(GPOUT,34)
    assign out_memdep_7_kernel_3mm_avm_address = bb_kernel_3mm_B9_stall_region_out_memdep_7_kernel_3mm_avm_address;

    // out_memdep_7_kernel_3mm_avm_burstcount(GPOUT,35)
    assign out_memdep_7_kernel_3mm_avm_burstcount = bb_kernel_3mm_B9_stall_region_out_memdep_7_kernel_3mm_avm_burstcount;

    // out_memdep_7_kernel_3mm_avm_byteenable(GPOUT,36)
    assign out_memdep_7_kernel_3mm_avm_byteenable = bb_kernel_3mm_B9_stall_region_out_memdep_7_kernel_3mm_avm_byteenable;

    // out_memdep_7_kernel_3mm_avm_enable(GPOUT,37)
    assign out_memdep_7_kernel_3mm_avm_enable = bb_kernel_3mm_B9_stall_region_out_memdep_7_kernel_3mm_avm_enable;

    // out_memdep_7_kernel_3mm_avm_read(GPOUT,38)
    assign out_memdep_7_kernel_3mm_avm_read = bb_kernel_3mm_B9_stall_region_out_memdep_7_kernel_3mm_avm_read;

    // out_memdep_7_kernel_3mm_avm_write(GPOUT,39)
    assign out_memdep_7_kernel_3mm_avm_write = bb_kernel_3mm_B9_stall_region_out_memdep_7_kernel_3mm_avm_write;

    // out_memdep_7_kernel_3mm_avm_writedata(GPOUT,40)
    assign out_memdep_7_kernel_3mm_avm_writedata = bb_kernel_3mm_B9_stall_region_out_memdep_7_kernel_3mm_avm_writedata;

    // out_stall_out_0(GPOUT,41)
    assign out_stall_out_0 = kernel_3mm_B9_merge_out_stall_out_0;

    // out_unnamed_kernel_3mm21_kernel_3mm_avm_address(GPOUT,42)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_address = bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm21_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount(GPOUT,43)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount = bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable(GPOUT,44)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable = bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm21_kernel_3mm_avm_enable(GPOUT,45)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_enable = bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm21_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm21_kernel_3mm_avm_read(GPOUT,46)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_read = bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm21_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm21_kernel_3mm_avm_write(GPOUT,47)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_write = bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm21_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata(GPOUT,48)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata = bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata;

    // out_valid_out_0(GPOUT,49)
    assign out_valid_out_0 = kernel_3mm_B9_branch_out_valid_out_0;

endmodule
