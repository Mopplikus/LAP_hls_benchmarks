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

// SystemVerilog created from bb_matvec_B4
// Created for function/kernel matvec
// SystemVerilog created on Tue Jun 13 02:57:01 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module matvec_bb_B4 (
    output wire [0:0] out_feedback_out_10,
    input wire [0:0] in_feedback_stall_in_10,
    output wire [0:0] out_feedback_valid_out_10,
    input wire [31:0] in_c0_exe3431_0,
    input wire [0:0] in_c0_exe82_0,
    input wire [0:0] in_c0_exe93_0,
    input wire [31:0] in_c1_exe14_0,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_memdep_matvec_avm_readdata,
    input wire [0:0] in_memdep_matvec_avm_readdatavalid,
    input wire [0:0] in_memdep_matvec_avm_waitrequest,
    input wire [0:0] in_memdep_matvec_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [31:0] out_memdep_matvec_avm_address,
    output wire [0:0] out_memdep_matvec_avm_burstcount,
    output wire [3:0] out_memdep_matvec_avm_byteenable,
    output wire [0:0] out_memdep_matvec_avm_enable,
    output wire [0:0] out_memdep_matvec_avm_read,
    output wire [0:0] out_memdep_matvec_avm_write,
    output wire [31:0] out_memdep_matvec_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_matvec_B4_stall_region_out_c0_exe93;
    wire [0:0] bb_matvec_B4_stall_region_out_feedback_out_10;
    wire [0:0] bb_matvec_B4_stall_region_out_feedback_valid_out_10;
    wire [0:0] bb_matvec_B4_stall_region_out_lsu_memdep_o_active;
    wire [31:0] bb_matvec_B4_stall_region_out_memdep_matvec_avm_address;
    wire [0:0] bb_matvec_B4_stall_region_out_memdep_matvec_avm_burstcount;
    wire [3:0] bb_matvec_B4_stall_region_out_memdep_matvec_avm_byteenable;
    wire [0:0] bb_matvec_B4_stall_region_out_memdep_matvec_avm_enable;
    wire [0:0] bb_matvec_B4_stall_region_out_memdep_matvec_avm_read;
    wire [0:0] bb_matvec_B4_stall_region_out_memdep_matvec_avm_write;
    wire [31:0] bb_matvec_B4_stall_region_out_memdep_matvec_avm_writedata;
    wire [0:0] bb_matvec_B4_stall_region_out_stall_out;
    wire [0:0] bb_matvec_B4_stall_region_out_valid_out;
    wire [0:0] matvec_B4_branch_out_stall_out;
    wire [0:0] matvec_B4_branch_out_valid_out_0;
    wire [0:0] matvec_B4_branch_out_valid_out_1;
    wire [31:0] matvec_B4_merge_out_c0_exe3431;
    wire [0:0] matvec_B4_merge_out_c0_exe82;
    wire [0:0] matvec_B4_merge_out_c0_exe93;
    wire [31:0] matvec_B4_merge_out_c1_exe14;
    wire [0:0] matvec_B4_merge_out_stall_out_0;
    wire [0:0] matvec_B4_merge_out_valid_out;


    // matvec_B4_branch(BLACKBOX,19)
    matvec_B4_branch thematvec_B4_branch (
        .in_c0_exe93(bb_matvec_B4_stall_region_out_c0_exe93),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_matvec_B4_stall_region_out_valid_out),
        .out_stall_out(matvec_B4_branch_out_stall_out),
        .out_valid_out_0(matvec_B4_branch_out_valid_out_0),
        .out_valid_out_1(matvec_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // matvec_B4_merge(BLACKBOX,20)
    matvec_B4_merge thematvec_B4_merge (
        .in_c0_exe3431_0(in_c0_exe3431_0),
        .in_c0_exe82_0(in_c0_exe82_0),
        .in_c0_exe93_0(in_c0_exe93_0),
        .in_c1_exe14_0(in_c1_exe14_0),
        .in_stall_in(bb_matvec_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe3431(matvec_B4_merge_out_c0_exe3431),
        .out_c0_exe82(matvec_B4_merge_out_c0_exe82),
        .out_c0_exe93(matvec_B4_merge_out_c0_exe93),
        .out_c1_exe14(matvec_B4_merge_out_c1_exe14),
        .out_stall_out_0(matvec_B4_merge_out_stall_out_0),
        .out_valid_out(matvec_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B4_stall_region(BLACKBOX,2)
    matvec_bb_B4_stall_region thebb_matvec_B4_stall_region (
        .in_c0_exe3431(matvec_B4_merge_out_c0_exe3431),
        .in_c0_exe82(matvec_B4_merge_out_c0_exe82),
        .in_c0_exe93(matvec_B4_merge_out_c0_exe93),
        .in_c1_exe14(matvec_B4_merge_out_c1_exe14),
        .in_feedback_stall_in_10(in_feedback_stall_in_10),
        .in_flush(in_flush),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_memdep_matvec_avm_readdata(in_memdep_matvec_avm_readdata),
        .in_memdep_matvec_avm_readdatavalid(in_memdep_matvec_avm_readdatavalid),
        .in_memdep_matvec_avm_waitrequest(in_memdep_matvec_avm_waitrequest),
        .in_memdep_matvec_avm_writeack(in_memdep_matvec_avm_writeack),
        .in_stall_in(matvec_B4_branch_out_stall_out),
        .in_valid_in(matvec_B4_merge_out_valid_out),
        .out_c0_exe93(bb_matvec_B4_stall_region_out_c0_exe93),
        .out_feedback_out_10(bb_matvec_B4_stall_region_out_feedback_out_10),
        .out_feedback_valid_out_10(bb_matvec_B4_stall_region_out_feedback_valid_out_10),
        .out_lsu_memdep_o_active(bb_matvec_B4_stall_region_out_lsu_memdep_o_active),
        .out_memdep_matvec_avm_address(bb_matvec_B4_stall_region_out_memdep_matvec_avm_address),
        .out_memdep_matvec_avm_burstcount(bb_matvec_B4_stall_region_out_memdep_matvec_avm_burstcount),
        .out_memdep_matvec_avm_byteenable(bb_matvec_B4_stall_region_out_memdep_matvec_avm_byteenable),
        .out_memdep_matvec_avm_enable(bb_matvec_B4_stall_region_out_memdep_matvec_avm_enable),
        .out_memdep_matvec_avm_read(bb_matvec_B4_stall_region_out_memdep_matvec_avm_read),
        .out_memdep_matvec_avm_write(bb_matvec_B4_stall_region_out_memdep_matvec_avm_write),
        .out_memdep_matvec_avm_writedata(bb_matvec_B4_stall_region_out_memdep_matvec_avm_writedata),
        .out_stall_out(bb_matvec_B4_stall_region_out_stall_out),
        .out_valid_out(bb_matvec_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_10_sync(GPOUT,3)
    assign out_feedback_out_10 = bb_matvec_B4_stall_region_out_feedback_out_10;

    // feedback_valid_out_10_sync(GPOUT,5)
    assign out_feedback_valid_out_10 = bb_matvec_B4_stall_region_out_feedback_valid_out_10;

    // out_lsu_memdep_o_active(GPOUT,21)
    assign out_lsu_memdep_o_active = bb_matvec_B4_stall_region_out_lsu_memdep_o_active;

    // out_memdep_matvec_avm_address(GPOUT,22)
    assign out_memdep_matvec_avm_address = bb_matvec_B4_stall_region_out_memdep_matvec_avm_address;

    // out_memdep_matvec_avm_burstcount(GPOUT,23)
    assign out_memdep_matvec_avm_burstcount = bb_matvec_B4_stall_region_out_memdep_matvec_avm_burstcount;

    // out_memdep_matvec_avm_byteenable(GPOUT,24)
    assign out_memdep_matvec_avm_byteenable = bb_matvec_B4_stall_region_out_memdep_matvec_avm_byteenable;

    // out_memdep_matvec_avm_enable(GPOUT,25)
    assign out_memdep_matvec_avm_enable = bb_matvec_B4_stall_region_out_memdep_matvec_avm_enable;

    // out_memdep_matvec_avm_read(GPOUT,26)
    assign out_memdep_matvec_avm_read = bb_matvec_B4_stall_region_out_memdep_matvec_avm_read;

    // out_memdep_matvec_avm_write(GPOUT,27)
    assign out_memdep_matvec_avm_write = bb_matvec_B4_stall_region_out_memdep_matvec_avm_write;

    // out_memdep_matvec_avm_writedata(GPOUT,28)
    assign out_memdep_matvec_avm_writedata = bb_matvec_B4_stall_region_out_memdep_matvec_avm_writedata;

    // out_stall_in_0(GPOUT,29)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,30)
    assign out_stall_out_0 = matvec_B4_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,31)
    assign out_valid_out_0 = matvec_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,32)
    assign out_valid_out_1 = matvec_B4_branch_out_valid_out_1;

endmodule
