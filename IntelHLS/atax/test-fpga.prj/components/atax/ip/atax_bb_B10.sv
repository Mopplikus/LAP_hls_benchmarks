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

// SystemVerilog created from bb_atax_B10
// Created for function/kernel atax
// SystemVerilog created on Wed Apr  5 13:55:59 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B10 (
    output wire [0:0] out_feedback_out_20,
    input wire [0:0] in_feedback_stall_in_20,
    output wire [0:0] out_feedback_valid_out_20,
    input wire [31:0] in_c0_exe22099_0,
    input wire [0:0] in_c0_exe321010_0,
    input wire [63:0] in_c0_exe521211_0,
    input wire [0:0] in_c0_exe621312_0,
    input wire [0:0] in_c0_exe721413_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_4_atax_avm_readdata,
    input wire [0:0] in_memdep_4_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_4_atax_avm_waitrequest,
    input wire [0:0] in_memdep_4_atax_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_memdep_4_atax_avm_address,
    output wire [0:0] out_memdep_4_atax_avm_burstcount,
    output wire [3:0] out_memdep_4_atax_avm_byteenable,
    output wire [0:0] out_memdep_4_atax_avm_enable,
    output wire [0:0] out_memdep_4_atax_avm_read,
    output wire [0:0] out_memdep_4_atax_avm_write,
    output wire [31:0] out_memdep_4_atax_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] atax_B10_branch_out_stall_out;
    wire [0:0] atax_B10_branch_out_valid_out_0;
    wire [0:0] atax_B10_branch_out_valid_out_1;
    wire [31:0] atax_B10_merge_out_c0_exe22099;
    wire [0:0] atax_B10_merge_out_c0_exe321010;
    wire [63:0] atax_B10_merge_out_c0_exe521211;
    wire [0:0] atax_B10_merge_out_c0_exe621312;
    wire [0:0] atax_B10_merge_out_c0_exe721413;
    wire [0:0] atax_B10_merge_out_stall_out_0;
    wire [0:0] atax_B10_merge_out_valid_out;
    wire [0:0] bb_atax_B10_stall_region_out_c0_exe721413;
    wire [0:0] bb_atax_B10_stall_region_out_feedback_out_20;
    wire [0:0] bb_atax_B10_stall_region_out_feedback_valid_out_20;
    wire [31:0] bb_atax_B10_stall_region_out_memdep_4_atax_avm_address;
    wire [0:0] bb_atax_B10_stall_region_out_memdep_4_atax_avm_burstcount;
    wire [3:0] bb_atax_B10_stall_region_out_memdep_4_atax_avm_byteenable;
    wire [0:0] bb_atax_B10_stall_region_out_memdep_4_atax_avm_enable;
    wire [0:0] bb_atax_B10_stall_region_out_memdep_4_atax_avm_read;
    wire [0:0] bb_atax_B10_stall_region_out_memdep_4_atax_avm_write;
    wire [31:0] bb_atax_B10_stall_region_out_memdep_4_atax_avm_writedata;
    wire [0:0] bb_atax_B10_stall_region_out_stall_out;
    wire [0:0] bb_atax_B10_stall_region_out_valid_out;


    // atax_B10_branch(BLACKBOX,2)
    atax_B10_branch theatax_B10_branch (
        .in_c0_exe721413(bb_atax_B10_stall_region_out_c0_exe721413),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_atax_B10_stall_region_out_valid_out),
        .out_stall_out(atax_B10_branch_out_stall_out),
        .out_valid_out_0(atax_B10_branch_out_valid_out_0),
        .out_valid_out_1(atax_B10_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B10_merge(BLACKBOX,3)
    atax_B10_merge theatax_B10_merge (
        .in_c0_exe22099_0(in_c0_exe22099_0),
        .in_c0_exe321010_0(in_c0_exe321010_0),
        .in_c0_exe521211_0(in_c0_exe521211_0),
        .in_c0_exe621312_0(in_c0_exe621312_0),
        .in_c0_exe721413_0(in_c0_exe721413_0),
        .in_stall_in(bb_atax_B10_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe22099(atax_B10_merge_out_c0_exe22099),
        .out_c0_exe321010(atax_B10_merge_out_c0_exe321010),
        .out_c0_exe521211(atax_B10_merge_out_c0_exe521211),
        .out_c0_exe621312(atax_B10_merge_out_c0_exe621312),
        .out_c0_exe721413(atax_B10_merge_out_c0_exe721413),
        .out_stall_out_0(atax_B10_merge_out_stall_out_0),
        .out_valid_out(atax_B10_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B10_stall_region(BLACKBOX,4)
    atax_bb_B10_stall_region thebb_atax_B10_stall_region (
        .in_c0_exe22099(atax_B10_merge_out_c0_exe22099),
        .in_c0_exe321010(atax_B10_merge_out_c0_exe321010),
        .in_c0_exe521211(atax_B10_merge_out_c0_exe521211),
        .in_c0_exe621312(atax_B10_merge_out_c0_exe621312),
        .in_c0_exe721413(atax_B10_merge_out_c0_exe721413),
        .in_feedback_stall_in_20(in_feedback_stall_in_20),
        .in_flush(in_flush),
        .in_memdep_4_atax_avm_readdata(in_memdep_4_atax_avm_readdata),
        .in_memdep_4_atax_avm_readdatavalid(in_memdep_4_atax_avm_readdatavalid),
        .in_memdep_4_atax_avm_waitrequest(in_memdep_4_atax_avm_waitrequest),
        .in_memdep_4_atax_avm_writeack(in_memdep_4_atax_avm_writeack),
        .in_stall_in(atax_B10_branch_out_stall_out),
        .in_valid_in(atax_B10_merge_out_valid_out),
        .out_c0_exe721413(bb_atax_B10_stall_region_out_c0_exe721413),
        .out_feedback_out_20(bb_atax_B10_stall_region_out_feedback_out_20),
        .out_feedback_valid_out_20(bb_atax_B10_stall_region_out_feedback_valid_out_20),
        .out_memdep_4_atax_avm_address(bb_atax_B10_stall_region_out_memdep_4_atax_avm_address),
        .out_memdep_4_atax_avm_burstcount(bb_atax_B10_stall_region_out_memdep_4_atax_avm_burstcount),
        .out_memdep_4_atax_avm_byteenable(bb_atax_B10_stall_region_out_memdep_4_atax_avm_byteenable),
        .out_memdep_4_atax_avm_enable(bb_atax_B10_stall_region_out_memdep_4_atax_avm_enable),
        .out_memdep_4_atax_avm_read(bb_atax_B10_stall_region_out_memdep_4_atax_avm_read),
        .out_memdep_4_atax_avm_write(bb_atax_B10_stall_region_out_memdep_4_atax_avm_write),
        .out_memdep_4_atax_avm_writedata(bb_atax_B10_stall_region_out_memdep_4_atax_avm_writedata),
        .out_stall_out(bb_atax_B10_stall_region_out_stall_out),
        .out_valid_out(bb_atax_B10_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_20_sync(GPOUT,5)
    assign out_feedback_out_20 = bb_atax_B10_stall_region_out_feedback_out_20;

    // feedback_valid_out_20_sync(GPOUT,7)
    assign out_feedback_valid_out_20 = bb_atax_B10_stall_region_out_feedback_valid_out_20;

    // out_memdep_4_atax_avm_address(GPOUT,21)
    assign out_memdep_4_atax_avm_address = bb_atax_B10_stall_region_out_memdep_4_atax_avm_address;

    // out_memdep_4_atax_avm_burstcount(GPOUT,22)
    assign out_memdep_4_atax_avm_burstcount = bb_atax_B10_stall_region_out_memdep_4_atax_avm_burstcount;

    // out_memdep_4_atax_avm_byteenable(GPOUT,23)
    assign out_memdep_4_atax_avm_byteenable = bb_atax_B10_stall_region_out_memdep_4_atax_avm_byteenable;

    // out_memdep_4_atax_avm_enable(GPOUT,24)
    assign out_memdep_4_atax_avm_enable = bb_atax_B10_stall_region_out_memdep_4_atax_avm_enable;

    // out_memdep_4_atax_avm_read(GPOUT,25)
    assign out_memdep_4_atax_avm_read = bb_atax_B10_stall_region_out_memdep_4_atax_avm_read;

    // out_memdep_4_atax_avm_write(GPOUT,26)
    assign out_memdep_4_atax_avm_write = bb_atax_B10_stall_region_out_memdep_4_atax_avm_write;

    // out_memdep_4_atax_avm_writedata(GPOUT,27)
    assign out_memdep_4_atax_avm_writedata = bb_atax_B10_stall_region_out_memdep_4_atax_avm_writedata;

    // out_stall_in_0(GPOUT,28)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,29)
    assign out_stall_out_0 = atax_B10_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,30)
    assign out_valid_out_0 = atax_B10_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,31)
    assign out_valid_out_1 = atax_B10_branch_out_valid_out_1;

endmodule
