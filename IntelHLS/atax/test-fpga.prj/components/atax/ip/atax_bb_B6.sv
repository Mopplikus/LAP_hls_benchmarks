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

// SystemVerilog created from bb_atax_B6
// Created for function/kernel atax
// SystemVerilog created on Fri Apr  7 18:08:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B6 (
    output wire [0:0] out_feedback_out_13,
    input wire [0:0] in_feedback_stall_in_13,
    output wire [0:0] out_feedback_valid_out_13,
    input wire [31:0] in_c0_exe216312_0,
    input wire [0:0] in_c0_exe316413_0,
    input wire [63:0] in_c0_exe516614_0,
    input wire [0:0] in_c0_exe616715_0,
    input wire [0:0] in_c0_exe716816_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_atax_avm_readdata,
    input wire [0:0] in_memdep_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_atax_avm_waitrequest,
    input wire [0:0] in_memdep_atax_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_memdep,
    output wire [31:0] out_memdep_atax_avm_address,
    output wire [0:0] out_memdep_atax_avm_burstcount,
    output wire [3:0] out_memdep_atax_avm_byteenable,
    output wire [0:0] out_memdep_atax_avm_enable,
    output wire [0:0] out_memdep_atax_avm_read,
    output wire [0:0] out_memdep_atax_avm_write,
    output wire [31:0] out_memdep_atax_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] atax_B6_branch_out_memdep;
    wire [0:0] atax_B6_branch_out_stall_out;
    wire [0:0] atax_B6_branch_out_valid_out_0;
    wire [0:0] atax_B6_branch_out_valid_out_1;
    wire [31:0] atax_B6_merge_out_c0_exe216312;
    wire [0:0] atax_B6_merge_out_c0_exe316413;
    wire [63:0] atax_B6_merge_out_c0_exe516614;
    wire [0:0] atax_B6_merge_out_c0_exe616715;
    wire [0:0] atax_B6_merge_out_c0_exe716816;
    wire [0:0] atax_B6_merge_out_stall_out_0;
    wire [0:0] atax_B6_merge_out_valid_out;
    wire [0:0] bb_atax_B6_stall_region_out_c0_exe716816;
    wire [0:0] bb_atax_B6_stall_region_out_feedback_out_13;
    wire [0:0] bb_atax_B6_stall_region_out_feedback_valid_out_13;
    wire [0:0] bb_atax_B6_stall_region_out_memdep;
    wire [31:0] bb_atax_B6_stall_region_out_memdep_atax_avm_address;
    wire [0:0] bb_atax_B6_stall_region_out_memdep_atax_avm_burstcount;
    wire [3:0] bb_atax_B6_stall_region_out_memdep_atax_avm_byteenable;
    wire [0:0] bb_atax_B6_stall_region_out_memdep_atax_avm_enable;
    wire [0:0] bb_atax_B6_stall_region_out_memdep_atax_avm_read;
    wire [0:0] bb_atax_B6_stall_region_out_memdep_atax_avm_write;
    wire [31:0] bb_atax_B6_stall_region_out_memdep_atax_avm_writedata;
    wire [0:0] bb_atax_B6_stall_region_out_stall_out;
    wire [0:0] bb_atax_B6_stall_region_out_valid_out;


    // atax_B6_branch(BLACKBOX,2)
    atax_B6_branch theatax_B6_branch (
        .in_c0_exe716816(bb_atax_B6_stall_region_out_c0_exe716816),
        .in_memdep(bb_atax_B6_stall_region_out_memdep),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_atax_B6_stall_region_out_valid_out),
        .out_memdep(atax_B6_branch_out_memdep),
        .out_stall_out(atax_B6_branch_out_stall_out),
        .out_valid_out_0(atax_B6_branch_out_valid_out_0),
        .out_valid_out_1(atax_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B6_merge(BLACKBOX,3)
    atax_B6_merge theatax_B6_merge (
        .in_c0_exe216312_0(in_c0_exe216312_0),
        .in_c0_exe316413_0(in_c0_exe316413_0),
        .in_c0_exe516614_0(in_c0_exe516614_0),
        .in_c0_exe616715_0(in_c0_exe616715_0),
        .in_c0_exe716816_0(in_c0_exe716816_0),
        .in_stall_in(bb_atax_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe216312(atax_B6_merge_out_c0_exe216312),
        .out_c0_exe316413(atax_B6_merge_out_c0_exe316413),
        .out_c0_exe516614(atax_B6_merge_out_c0_exe516614),
        .out_c0_exe616715(atax_B6_merge_out_c0_exe616715),
        .out_c0_exe716816(atax_B6_merge_out_c0_exe716816),
        .out_stall_out_0(atax_B6_merge_out_stall_out_0),
        .out_valid_out(atax_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B6_stall_region(BLACKBOX,4)
    atax_bb_B6_stall_region thebb_atax_B6_stall_region (
        .in_c0_exe216312(atax_B6_merge_out_c0_exe216312),
        .in_c0_exe316413(atax_B6_merge_out_c0_exe316413),
        .in_c0_exe516614(atax_B6_merge_out_c0_exe516614),
        .in_c0_exe616715(atax_B6_merge_out_c0_exe616715),
        .in_c0_exe716816(atax_B6_merge_out_c0_exe716816),
        .in_feedback_stall_in_13(in_feedback_stall_in_13),
        .in_flush(in_flush),
        .in_memdep_atax_avm_readdata(in_memdep_atax_avm_readdata),
        .in_memdep_atax_avm_readdatavalid(in_memdep_atax_avm_readdatavalid),
        .in_memdep_atax_avm_waitrequest(in_memdep_atax_avm_waitrequest),
        .in_memdep_atax_avm_writeack(in_memdep_atax_avm_writeack),
        .in_stall_in(atax_B6_branch_out_stall_out),
        .in_valid_in(atax_B6_merge_out_valid_out),
        .out_c0_exe716816(bb_atax_B6_stall_region_out_c0_exe716816),
        .out_feedback_out_13(bb_atax_B6_stall_region_out_feedback_out_13),
        .out_feedback_valid_out_13(bb_atax_B6_stall_region_out_feedback_valid_out_13),
        .out_memdep(bb_atax_B6_stall_region_out_memdep),
        .out_memdep_atax_avm_address(bb_atax_B6_stall_region_out_memdep_atax_avm_address),
        .out_memdep_atax_avm_burstcount(bb_atax_B6_stall_region_out_memdep_atax_avm_burstcount),
        .out_memdep_atax_avm_byteenable(bb_atax_B6_stall_region_out_memdep_atax_avm_byteenable),
        .out_memdep_atax_avm_enable(bb_atax_B6_stall_region_out_memdep_atax_avm_enable),
        .out_memdep_atax_avm_read(bb_atax_B6_stall_region_out_memdep_atax_avm_read),
        .out_memdep_atax_avm_write(bb_atax_B6_stall_region_out_memdep_atax_avm_write),
        .out_memdep_atax_avm_writedata(bb_atax_B6_stall_region_out_memdep_atax_avm_writedata),
        .out_stall_out(bb_atax_B6_stall_region_out_stall_out),
        .out_valid_out(bb_atax_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_13_sync(GPOUT,5)
    assign out_feedback_out_13 = bb_atax_B6_stall_region_out_feedback_out_13;

    // feedback_valid_out_13_sync(GPOUT,7)
    assign out_feedback_valid_out_13 = bb_atax_B6_stall_region_out_feedback_valid_out_13;

    // out_memdep(GPOUT,21)
    assign out_memdep = atax_B6_branch_out_memdep;

    // out_memdep_atax_avm_address(GPOUT,22)
    assign out_memdep_atax_avm_address = bb_atax_B6_stall_region_out_memdep_atax_avm_address;

    // out_memdep_atax_avm_burstcount(GPOUT,23)
    assign out_memdep_atax_avm_burstcount = bb_atax_B6_stall_region_out_memdep_atax_avm_burstcount;

    // out_memdep_atax_avm_byteenable(GPOUT,24)
    assign out_memdep_atax_avm_byteenable = bb_atax_B6_stall_region_out_memdep_atax_avm_byteenable;

    // out_memdep_atax_avm_enable(GPOUT,25)
    assign out_memdep_atax_avm_enable = bb_atax_B6_stall_region_out_memdep_atax_avm_enable;

    // out_memdep_atax_avm_read(GPOUT,26)
    assign out_memdep_atax_avm_read = bb_atax_B6_stall_region_out_memdep_atax_avm_read;

    // out_memdep_atax_avm_write(GPOUT,27)
    assign out_memdep_atax_avm_write = bb_atax_B6_stall_region_out_memdep_atax_avm_write;

    // out_memdep_atax_avm_writedata(GPOUT,28)
    assign out_memdep_atax_avm_writedata = bb_atax_B6_stall_region_out_memdep_atax_avm_writedata;

    // out_stall_in_0(GPOUT,29)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,30)
    assign out_stall_out_0 = atax_B6_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,31)
    assign out_valid_out_0 = atax_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,32)
    assign out_valid_out_1 = atax_B6_branch_out_valid_out_1;

endmodule
