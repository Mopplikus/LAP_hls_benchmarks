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

// SystemVerilog created from bb_bicg_B8
// Created for function/kernel bicg
// SystemVerilog created on Wed Apr  5 16:26:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_bb_B8 (
    output wire [0:0] out_feedback_out_18,
    input wire [0:0] in_feedback_stall_in_18,
    output wire [0:0] out_feedback_valid_out_18,
    input wire [0:0] in_c0_exe21413_0,
    input wire [31:0] in_c0_exe31424_0,
    input wire [63:0] in_c0_exe51445_0,
    input wire [0:0] in_c0_exe61456_0,
    input wire [0:0] in_c0_exe71467_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_5_bicg_avm_readdata,
    input wire [0:0] in_memdep_5_bicg_avm_readdatavalid,
    input wire [0:0] in_memdep_5_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_5_bicg_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_memdep_5_bicg_avm_address,
    output wire [0:0] out_memdep_5_bicg_avm_burstcount,
    output wire [3:0] out_memdep_5_bicg_avm_byteenable,
    output wire [0:0] out_memdep_5_bicg_avm_enable,
    output wire [0:0] out_memdep_5_bicg_avm_read,
    output wire [0:0] out_memdep_5_bicg_avm_write,
    output wire [31:0] out_memdep_5_bicg_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_bicg_B8_stall_region_out_c0_exe71467;
    wire [0:0] bb_bicg_B8_stall_region_out_feedback_out_18;
    wire [0:0] bb_bicg_B8_stall_region_out_feedback_valid_out_18;
    wire [31:0] bb_bicg_B8_stall_region_out_memdep_5_bicg_avm_address;
    wire [0:0] bb_bicg_B8_stall_region_out_memdep_5_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B8_stall_region_out_memdep_5_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B8_stall_region_out_memdep_5_bicg_avm_enable;
    wire [0:0] bb_bicg_B8_stall_region_out_memdep_5_bicg_avm_read;
    wire [0:0] bb_bicg_B8_stall_region_out_memdep_5_bicg_avm_write;
    wire [31:0] bb_bicg_B8_stall_region_out_memdep_5_bicg_avm_writedata;
    wire [0:0] bb_bicg_B8_stall_region_out_stall_out;
    wire [0:0] bb_bicg_B8_stall_region_out_valid_out;
    wire [0:0] bicg_B8_branch_out_stall_out;
    wire [0:0] bicg_B8_branch_out_valid_out_0;
    wire [0:0] bicg_B8_branch_out_valid_out_1;
    wire [0:0] bicg_B8_merge_out_c0_exe21413;
    wire [31:0] bicg_B8_merge_out_c0_exe31424;
    wire [63:0] bicg_B8_merge_out_c0_exe51445;
    wire [0:0] bicg_B8_merge_out_c0_exe61456;
    wire [0:0] bicg_B8_merge_out_c0_exe71467;
    wire [0:0] bicg_B8_merge_out_stall_out_0;
    wire [0:0] bicg_B8_merge_out_valid_out;


    // bicg_B8_branch(BLACKBOX,3)
    bicg_B8_branch thebicg_B8_branch (
        .in_c0_exe71467(bb_bicg_B8_stall_region_out_c0_exe71467),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_bicg_B8_stall_region_out_valid_out),
        .out_stall_out(bicg_B8_branch_out_stall_out),
        .out_valid_out_0(bicg_B8_branch_out_valid_out_0),
        .out_valid_out_1(bicg_B8_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bicg_B8_merge(BLACKBOX,4)
    bicg_B8_merge thebicg_B8_merge (
        .in_c0_exe21413_0(in_c0_exe21413_0),
        .in_c0_exe31424_0(in_c0_exe31424_0),
        .in_c0_exe51445_0(in_c0_exe51445_0),
        .in_c0_exe61456_0(in_c0_exe61456_0),
        .in_c0_exe71467_0(in_c0_exe71467_0),
        .in_stall_in(bb_bicg_B8_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe21413(bicg_B8_merge_out_c0_exe21413),
        .out_c0_exe31424(bicg_B8_merge_out_c0_exe31424),
        .out_c0_exe51445(bicg_B8_merge_out_c0_exe51445),
        .out_c0_exe61456(bicg_B8_merge_out_c0_exe61456),
        .out_c0_exe71467(bicg_B8_merge_out_c0_exe71467),
        .out_stall_out_0(bicg_B8_merge_out_stall_out_0),
        .out_valid_out(bicg_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B8_stall_region(BLACKBOX,2)
    bicg_bb_B8_stall_region thebb_bicg_B8_stall_region (
        .in_c0_exe21413(bicg_B8_merge_out_c0_exe21413),
        .in_c0_exe31424(bicg_B8_merge_out_c0_exe31424),
        .in_c0_exe51445(bicg_B8_merge_out_c0_exe51445),
        .in_c0_exe61456(bicg_B8_merge_out_c0_exe61456),
        .in_c0_exe71467(bicg_B8_merge_out_c0_exe71467),
        .in_feedback_stall_in_18(in_feedback_stall_in_18),
        .in_flush(in_flush),
        .in_memdep_5_bicg_avm_readdata(in_memdep_5_bicg_avm_readdata),
        .in_memdep_5_bicg_avm_readdatavalid(in_memdep_5_bicg_avm_readdatavalid),
        .in_memdep_5_bicg_avm_waitrequest(in_memdep_5_bicg_avm_waitrequest),
        .in_memdep_5_bicg_avm_writeack(in_memdep_5_bicg_avm_writeack),
        .in_stall_in(bicg_B8_branch_out_stall_out),
        .in_valid_in(bicg_B8_merge_out_valid_out),
        .out_c0_exe71467(bb_bicg_B8_stall_region_out_c0_exe71467),
        .out_feedback_out_18(bb_bicg_B8_stall_region_out_feedback_out_18),
        .out_feedback_valid_out_18(bb_bicg_B8_stall_region_out_feedback_valid_out_18),
        .out_memdep_5_bicg_avm_address(bb_bicg_B8_stall_region_out_memdep_5_bicg_avm_address),
        .out_memdep_5_bicg_avm_burstcount(bb_bicg_B8_stall_region_out_memdep_5_bicg_avm_burstcount),
        .out_memdep_5_bicg_avm_byteenable(bb_bicg_B8_stall_region_out_memdep_5_bicg_avm_byteenable),
        .out_memdep_5_bicg_avm_enable(bb_bicg_B8_stall_region_out_memdep_5_bicg_avm_enable),
        .out_memdep_5_bicg_avm_read(bb_bicg_B8_stall_region_out_memdep_5_bicg_avm_read),
        .out_memdep_5_bicg_avm_write(bb_bicg_B8_stall_region_out_memdep_5_bicg_avm_write),
        .out_memdep_5_bicg_avm_writedata(bb_bicg_B8_stall_region_out_memdep_5_bicg_avm_writedata),
        .out_stall_out(bb_bicg_B8_stall_region_out_stall_out),
        .out_valid_out(bb_bicg_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_18_sync(GPOUT,5)
    assign out_feedback_out_18 = bb_bicg_B8_stall_region_out_feedback_out_18;

    // feedback_valid_out_18_sync(GPOUT,7)
    assign out_feedback_valid_out_18 = bb_bicg_B8_stall_region_out_feedback_valid_out_18;

    // out_memdep_5_bicg_avm_address(GPOUT,21)
    assign out_memdep_5_bicg_avm_address = bb_bicg_B8_stall_region_out_memdep_5_bicg_avm_address;

    // out_memdep_5_bicg_avm_burstcount(GPOUT,22)
    assign out_memdep_5_bicg_avm_burstcount = bb_bicg_B8_stall_region_out_memdep_5_bicg_avm_burstcount;

    // out_memdep_5_bicg_avm_byteenable(GPOUT,23)
    assign out_memdep_5_bicg_avm_byteenable = bb_bicg_B8_stall_region_out_memdep_5_bicg_avm_byteenable;

    // out_memdep_5_bicg_avm_enable(GPOUT,24)
    assign out_memdep_5_bicg_avm_enable = bb_bicg_B8_stall_region_out_memdep_5_bicg_avm_enable;

    // out_memdep_5_bicg_avm_read(GPOUT,25)
    assign out_memdep_5_bicg_avm_read = bb_bicg_B8_stall_region_out_memdep_5_bicg_avm_read;

    // out_memdep_5_bicg_avm_write(GPOUT,26)
    assign out_memdep_5_bicg_avm_write = bb_bicg_B8_stall_region_out_memdep_5_bicg_avm_write;

    // out_memdep_5_bicg_avm_writedata(GPOUT,27)
    assign out_memdep_5_bicg_avm_writedata = bb_bicg_B8_stall_region_out_memdep_5_bicg_avm_writedata;

    // out_stall_in_0(GPOUT,28)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,29)
    assign out_stall_out_0 = bicg_B8_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,30)
    assign out_valid_out_0 = bicg_B8_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,31)
    assign out_valid_out_1 = bicg_B8_branch_out_valid_out_1;

endmodule
