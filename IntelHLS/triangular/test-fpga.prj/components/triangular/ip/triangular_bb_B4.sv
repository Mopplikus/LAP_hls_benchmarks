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

// SystemVerilog created from bb_triangular_B4
// Created for function/kernel triangular
// SystemVerilog created on Wed Apr  5 14:46:57 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B4 (
    input wire [63:0] in_c0_exe31581_0,
    input wire [31:0] in_c0_exe73_0,
    input wire [0:0] in_c0_exe84_0,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_memdep_triangular_avm_readdata,
    input wire [0:0] in_memdep_triangular_avm_readdatavalid,
    input wire [0:0] in_memdep_triangular_avm_waitrequest,
    input wire [0:0] in_memdep_triangular_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [63:0] in_unnamed_triangular8_triangular_avm_readdata,
    input wire [0:0] in_unnamed_triangular8_triangular_avm_readdatavalid,
    input wire [0:0] in_unnamed_triangular8_triangular_avm_waitrequest,
    input wire [0:0] in_unnamed_triangular8_triangular_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe73,
    output wire [31:0] out_memdep_triangular_avm_address,
    output wire [0:0] out_memdep_triangular_avm_burstcount,
    output wire [3:0] out_memdep_triangular_avm_byteenable,
    output wire [0:0] out_memdep_triangular_avm_enable,
    output wire [0:0] out_memdep_triangular_avm_read,
    output wire [0:0] out_memdep_triangular_avm_write,
    output wire [31:0] out_memdep_triangular_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [63:0] out_unnamed_triangular8_triangular_avm_address,
    output wire [0:0] out_unnamed_triangular8_triangular_avm_burstcount,
    output wire [7:0] out_unnamed_triangular8_triangular_avm_byteenable,
    output wire [0:0] out_unnamed_triangular8_triangular_avm_enable,
    output wire [0:0] out_unnamed_triangular8_triangular_avm_read,
    output wire [0:0] out_unnamed_triangular8_triangular_avm_write,
    output wire [63:0] out_unnamed_triangular8_triangular_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_triangular_B4_stall_region_out_c0_exe73;
    wire [0:0] bb_triangular_B4_stall_region_out_c0_exe84;
    wire [31:0] bb_triangular_B4_stall_region_out_memdep_triangular_avm_address;
    wire [0:0] bb_triangular_B4_stall_region_out_memdep_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B4_stall_region_out_memdep_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B4_stall_region_out_memdep_triangular_avm_enable;
    wire [0:0] bb_triangular_B4_stall_region_out_memdep_triangular_avm_read;
    wire [0:0] bb_triangular_B4_stall_region_out_memdep_triangular_avm_write;
    wire [31:0] bb_triangular_B4_stall_region_out_memdep_triangular_avm_writedata;
    wire [0:0] bb_triangular_B4_stall_region_out_stall_out;
    wire [63:0] bb_triangular_B4_stall_region_out_unnamed_triangular8_triangular_avm_address;
    wire [0:0] bb_triangular_B4_stall_region_out_unnamed_triangular8_triangular_avm_burstcount;
    wire [7:0] bb_triangular_B4_stall_region_out_unnamed_triangular8_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B4_stall_region_out_unnamed_triangular8_triangular_avm_enable;
    wire [0:0] bb_triangular_B4_stall_region_out_unnamed_triangular8_triangular_avm_read;
    wire [0:0] bb_triangular_B4_stall_region_out_unnamed_triangular8_triangular_avm_write;
    wire [63:0] bb_triangular_B4_stall_region_out_unnamed_triangular8_triangular_avm_writedata;
    wire [0:0] bb_triangular_B4_stall_region_out_valid_out;
    wire [31:0] triangular_B4_branch_out_c0_exe73;
    wire [0:0] triangular_B4_branch_out_stall_out;
    wire [0:0] triangular_B4_branch_out_valid_out_0;
    wire [0:0] triangular_B4_branch_out_valid_out_1;
    wire [63:0] triangular_B4_merge_out_c0_exe31581;
    wire [31:0] triangular_B4_merge_out_c0_exe73;
    wire [0:0] triangular_B4_merge_out_c0_exe84;
    wire [0:0] triangular_B4_merge_out_stall_out_0;
    wire [0:0] triangular_B4_merge_out_valid_out;


    // triangular_B4_merge(BLACKBOX,39)
    triangular_B4_merge thetriangular_B4_merge (
        .in_c0_exe31581_0(in_c0_exe31581_0),
        .in_c0_exe73_0(in_c0_exe73_0),
        .in_c0_exe84_0(in_c0_exe84_0),
        .in_stall_in(bb_triangular_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe31581(triangular_B4_merge_out_c0_exe31581),
        .out_c0_exe73(triangular_B4_merge_out_c0_exe73),
        .out_c0_exe84(triangular_B4_merge_out_c0_exe84),
        .out_stall_out_0(triangular_B4_merge_out_stall_out_0),
        .out_valid_out(triangular_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B4_stall_region(BLACKBOX,2)
    triangular_bb_B4_stall_region thebb_triangular_B4_stall_region (
        .in_c0_exe31581(triangular_B4_merge_out_c0_exe31581),
        .in_c0_exe73(triangular_B4_merge_out_c0_exe73),
        .in_c0_exe84(triangular_B4_merge_out_c0_exe84),
        .in_flush(in_flush),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_memdep_triangular_avm_readdata(in_memdep_triangular_avm_readdata),
        .in_memdep_triangular_avm_readdatavalid(in_memdep_triangular_avm_readdatavalid),
        .in_memdep_triangular_avm_waitrequest(in_memdep_triangular_avm_waitrequest),
        .in_memdep_triangular_avm_writeack(in_memdep_triangular_avm_writeack),
        .in_stall_in(triangular_B4_branch_out_stall_out),
        .in_unnamed_triangular8_triangular_avm_readdata(in_unnamed_triangular8_triangular_avm_readdata),
        .in_unnamed_triangular8_triangular_avm_readdatavalid(in_unnamed_triangular8_triangular_avm_readdatavalid),
        .in_unnamed_triangular8_triangular_avm_waitrequest(in_unnamed_triangular8_triangular_avm_waitrequest),
        .in_unnamed_triangular8_triangular_avm_writeack(in_unnamed_triangular8_triangular_avm_writeack),
        .in_valid_in(triangular_B4_merge_out_valid_out),
        .out_c0_exe73(bb_triangular_B4_stall_region_out_c0_exe73),
        .out_c0_exe84(bb_triangular_B4_stall_region_out_c0_exe84),
        .out_memdep_triangular_avm_address(bb_triangular_B4_stall_region_out_memdep_triangular_avm_address),
        .out_memdep_triangular_avm_burstcount(bb_triangular_B4_stall_region_out_memdep_triangular_avm_burstcount),
        .out_memdep_triangular_avm_byteenable(bb_triangular_B4_stall_region_out_memdep_triangular_avm_byteenable),
        .out_memdep_triangular_avm_enable(bb_triangular_B4_stall_region_out_memdep_triangular_avm_enable),
        .out_memdep_triangular_avm_read(bb_triangular_B4_stall_region_out_memdep_triangular_avm_read),
        .out_memdep_triangular_avm_write(bb_triangular_B4_stall_region_out_memdep_triangular_avm_write),
        .out_memdep_triangular_avm_writedata(bb_triangular_B4_stall_region_out_memdep_triangular_avm_writedata),
        .out_stall_out(bb_triangular_B4_stall_region_out_stall_out),
        .out_unnamed_triangular8_triangular_avm_address(bb_triangular_B4_stall_region_out_unnamed_triangular8_triangular_avm_address),
        .out_unnamed_triangular8_triangular_avm_burstcount(bb_triangular_B4_stall_region_out_unnamed_triangular8_triangular_avm_burstcount),
        .out_unnamed_triangular8_triangular_avm_byteenable(bb_triangular_B4_stall_region_out_unnamed_triangular8_triangular_avm_byteenable),
        .out_unnamed_triangular8_triangular_avm_enable(bb_triangular_B4_stall_region_out_unnamed_triangular8_triangular_avm_enable),
        .out_unnamed_triangular8_triangular_avm_read(bb_triangular_B4_stall_region_out_unnamed_triangular8_triangular_avm_read),
        .out_unnamed_triangular8_triangular_avm_write(bb_triangular_B4_stall_region_out_unnamed_triangular8_triangular_avm_write),
        .out_unnamed_triangular8_triangular_avm_writedata(bb_triangular_B4_stall_region_out_unnamed_triangular8_triangular_avm_writedata),
        .out_valid_out(bb_triangular_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // triangular_B4_branch(BLACKBOX,38)
    triangular_B4_branch thetriangular_B4_branch (
        .in_c0_exe73(bb_triangular_B4_stall_region_out_c0_exe73),
        .in_c0_exe84(bb_triangular_B4_stall_region_out_c0_exe84),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_triangular_B4_stall_region_out_valid_out),
        .out_c0_exe73(triangular_B4_branch_out_c0_exe73),
        .out_stall_out(triangular_B4_branch_out_stall_out),
        .out_valid_out_0(triangular_B4_branch_out_valid_out_0),
        .out_valid_out_1(triangular_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe73(GPOUT,19)
    assign out_c0_exe73 = triangular_B4_branch_out_c0_exe73;

    // out_memdep_triangular_avm_address(GPOUT,20)
    assign out_memdep_triangular_avm_address = bb_triangular_B4_stall_region_out_memdep_triangular_avm_address;

    // out_memdep_triangular_avm_burstcount(GPOUT,21)
    assign out_memdep_triangular_avm_burstcount = bb_triangular_B4_stall_region_out_memdep_triangular_avm_burstcount;

    // out_memdep_triangular_avm_byteenable(GPOUT,22)
    assign out_memdep_triangular_avm_byteenable = bb_triangular_B4_stall_region_out_memdep_triangular_avm_byteenable;

    // out_memdep_triangular_avm_enable(GPOUT,23)
    assign out_memdep_triangular_avm_enable = bb_triangular_B4_stall_region_out_memdep_triangular_avm_enable;

    // out_memdep_triangular_avm_read(GPOUT,24)
    assign out_memdep_triangular_avm_read = bb_triangular_B4_stall_region_out_memdep_triangular_avm_read;

    // out_memdep_triangular_avm_write(GPOUT,25)
    assign out_memdep_triangular_avm_write = bb_triangular_B4_stall_region_out_memdep_triangular_avm_write;

    // out_memdep_triangular_avm_writedata(GPOUT,26)
    assign out_memdep_triangular_avm_writedata = bb_triangular_B4_stall_region_out_memdep_triangular_avm_writedata;

    // out_stall_in_0(GPOUT,27)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,28)
    assign out_stall_out_0 = triangular_B4_merge_out_stall_out_0;

    // out_unnamed_triangular8_triangular_avm_address(GPOUT,29)
    assign out_unnamed_triangular8_triangular_avm_address = bb_triangular_B4_stall_region_out_unnamed_triangular8_triangular_avm_address;

    // out_unnamed_triangular8_triangular_avm_burstcount(GPOUT,30)
    assign out_unnamed_triangular8_triangular_avm_burstcount = bb_triangular_B4_stall_region_out_unnamed_triangular8_triangular_avm_burstcount;

    // out_unnamed_triangular8_triangular_avm_byteenable(GPOUT,31)
    assign out_unnamed_triangular8_triangular_avm_byteenable = bb_triangular_B4_stall_region_out_unnamed_triangular8_triangular_avm_byteenable;

    // out_unnamed_triangular8_triangular_avm_enable(GPOUT,32)
    assign out_unnamed_triangular8_triangular_avm_enable = bb_triangular_B4_stall_region_out_unnamed_triangular8_triangular_avm_enable;

    // out_unnamed_triangular8_triangular_avm_read(GPOUT,33)
    assign out_unnamed_triangular8_triangular_avm_read = bb_triangular_B4_stall_region_out_unnamed_triangular8_triangular_avm_read;

    // out_unnamed_triangular8_triangular_avm_write(GPOUT,34)
    assign out_unnamed_triangular8_triangular_avm_write = bb_triangular_B4_stall_region_out_unnamed_triangular8_triangular_avm_write;

    // out_unnamed_triangular8_triangular_avm_writedata(GPOUT,35)
    assign out_unnamed_triangular8_triangular_avm_writedata = bb_triangular_B4_stall_region_out_unnamed_triangular8_triangular_avm_writedata;

    // out_valid_out_0(GPOUT,36)
    assign out_valid_out_0 = triangular_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,37)
    assign out_valid_out_1 = triangular_B4_branch_out_valid_out_1;

endmodule
