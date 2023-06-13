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
// SystemVerilog created on Tue Jun 13 01:54:01 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B6 (
    output wire [0:0] out_feedback_out_12,
    output wire [0:0] out_feedback_out_13,
    input wire [0:0] in_feedback_stall_in_12,
    input wire [0:0] in_feedback_stall_in_13,
    output wire [0:0] out_feedback_valid_out_12,
    output wire [0:0] out_feedback_valid_out_13,
    input wire [31:0] in_add758_pop379_0,
    input wire [0:0] in_exitcond1251_pop3212_0,
    input wire [0:0] in_flush,
    input wire [63:0] in_mPtr_bitcast_index8846_pop3011_0,
    input wire [0:0] in_memdep_10_0,
    input wire [31:0] in_memdep_2_atax_avm_readdata,
    input wire [0:0] in_memdep_2_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_2_atax_avm_waitrequest,
    input wire [0:0] in_memdep_2_atax_avm_writeack,
    input wire [0:0] in_notcmp3553_pop3313_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_lsu_memdep_2_o_active,
    output wire [31:0] out_memdep_2_atax_avm_address,
    output wire [0:0] out_memdep_2_atax_avm_burstcount,
    output wire [3:0] out_memdep_2_atax_avm_byteenable,
    output wire [0:0] out_memdep_2_atax_avm_enable,
    output wire [0:0] out_memdep_2_atax_avm_read,
    output wire [0:0] out_memdep_2_atax_avm_write,
    output wire [31:0] out_memdep_2_atax_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] atax_B6_branch_out_stall_out;
    wire [0:0] atax_B6_branch_out_valid_out_0;
    wire [0:0] atax_B6_branch_out_valid_out_1;
    wire [31:0] atax_B6_merge_out_add758_pop379;
    wire [0:0] atax_B6_merge_out_exitcond1251_pop3212;
    wire [63:0] atax_B6_merge_out_mPtr_bitcast_index8846_pop3011;
    wire [0:0] atax_B6_merge_out_memdep_10;
    wire [0:0] atax_B6_merge_out_notcmp3553_pop3313;
    wire [0:0] atax_B6_merge_out_stall_out_0;
    wire [0:0] atax_B6_merge_out_valid_out;
    wire [0:0] bb_atax_B6_stall_region_out_feedback_out_12;
    wire [0:0] bb_atax_B6_stall_region_out_feedback_out_13;
    wire [0:0] bb_atax_B6_stall_region_out_feedback_valid_out_12;
    wire [0:0] bb_atax_B6_stall_region_out_feedback_valid_out_13;
    wire [0:0] bb_atax_B6_stall_region_out_lsu_memdep_2_o_active;
    wire [31:0] bb_atax_B6_stall_region_out_memdep_2_atax_avm_address;
    wire [0:0] bb_atax_B6_stall_region_out_memdep_2_atax_avm_burstcount;
    wire [3:0] bb_atax_B6_stall_region_out_memdep_2_atax_avm_byteenable;
    wire [0:0] bb_atax_B6_stall_region_out_memdep_2_atax_avm_enable;
    wire [0:0] bb_atax_B6_stall_region_out_memdep_2_atax_avm_read;
    wire [0:0] bb_atax_B6_stall_region_out_memdep_2_atax_avm_write;
    wire [31:0] bb_atax_B6_stall_region_out_memdep_2_atax_avm_writedata;
    wire [0:0] bb_atax_B6_stall_region_out_notcmp3553_pop3313;
    wire [0:0] bb_atax_B6_stall_region_out_stall_out;
    wire [0:0] bb_atax_B6_stall_region_out_valid_out;


    // atax_B6_branch(BLACKBOX,2)
    atax_B6_branch theatax_B6_branch (
        .in_notcmp3553_pop3313(bb_atax_B6_stall_region_out_notcmp3553_pop3313),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_atax_B6_stall_region_out_valid_out),
        .out_stall_out(atax_B6_branch_out_stall_out),
        .out_valid_out_0(atax_B6_branch_out_valid_out_0),
        .out_valid_out_1(atax_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B6_merge(BLACKBOX,3)
    atax_B6_merge theatax_B6_merge (
        .in_add758_pop379_0(in_add758_pop379_0),
        .in_exitcond1251_pop3212_0(in_exitcond1251_pop3212_0),
        .in_mPtr_bitcast_index8846_pop3011_0(in_mPtr_bitcast_index8846_pop3011_0),
        .in_memdep_10_0(in_memdep_10_0),
        .in_notcmp3553_pop3313_0(in_notcmp3553_pop3313_0),
        .in_stall_in(bb_atax_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_add758_pop379(atax_B6_merge_out_add758_pop379),
        .out_exitcond1251_pop3212(atax_B6_merge_out_exitcond1251_pop3212),
        .out_mPtr_bitcast_index8846_pop3011(atax_B6_merge_out_mPtr_bitcast_index8846_pop3011),
        .out_memdep_10(atax_B6_merge_out_memdep_10),
        .out_notcmp3553_pop3313(atax_B6_merge_out_notcmp3553_pop3313),
        .out_stall_out_0(atax_B6_merge_out_stall_out_0),
        .out_valid_out(atax_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B6_stall_region(BLACKBOX,4)
    atax_bb_B6_stall_region thebb_atax_B6_stall_region (
        .in_add758_pop379(atax_B6_merge_out_add758_pop379),
        .in_exitcond1251_pop3212(atax_B6_merge_out_exitcond1251_pop3212),
        .in_feedback_stall_in_12(in_feedback_stall_in_12),
        .in_feedback_stall_in_13(in_feedback_stall_in_13),
        .in_flush(in_flush),
        .in_mPtr_bitcast_index8846_pop3011(atax_B6_merge_out_mPtr_bitcast_index8846_pop3011),
        .in_memdep_10(atax_B6_merge_out_memdep_10),
        .in_memdep_2_atax_avm_readdata(in_memdep_2_atax_avm_readdata),
        .in_memdep_2_atax_avm_readdatavalid(in_memdep_2_atax_avm_readdatavalid),
        .in_memdep_2_atax_avm_waitrequest(in_memdep_2_atax_avm_waitrequest),
        .in_memdep_2_atax_avm_writeack(in_memdep_2_atax_avm_writeack),
        .in_notcmp3553_pop3313(atax_B6_merge_out_notcmp3553_pop3313),
        .in_stall_in(atax_B6_branch_out_stall_out),
        .in_valid_in(atax_B6_merge_out_valid_out),
        .out_feedback_out_12(bb_atax_B6_stall_region_out_feedback_out_12),
        .out_feedback_out_13(bb_atax_B6_stall_region_out_feedback_out_13),
        .out_feedback_valid_out_12(bb_atax_B6_stall_region_out_feedback_valid_out_12),
        .out_feedback_valid_out_13(bb_atax_B6_stall_region_out_feedback_valid_out_13),
        .out_lsu_memdep_2_o_active(bb_atax_B6_stall_region_out_lsu_memdep_2_o_active),
        .out_memdep_2_atax_avm_address(bb_atax_B6_stall_region_out_memdep_2_atax_avm_address),
        .out_memdep_2_atax_avm_burstcount(bb_atax_B6_stall_region_out_memdep_2_atax_avm_burstcount),
        .out_memdep_2_atax_avm_byteenable(bb_atax_B6_stall_region_out_memdep_2_atax_avm_byteenable),
        .out_memdep_2_atax_avm_enable(bb_atax_B6_stall_region_out_memdep_2_atax_avm_enable),
        .out_memdep_2_atax_avm_read(bb_atax_B6_stall_region_out_memdep_2_atax_avm_read),
        .out_memdep_2_atax_avm_write(bb_atax_B6_stall_region_out_memdep_2_atax_avm_write),
        .out_memdep_2_atax_avm_writedata(bb_atax_B6_stall_region_out_memdep_2_atax_avm_writedata),
        .out_notcmp3553_pop3313(bb_atax_B6_stall_region_out_notcmp3553_pop3313),
        .out_stall_out(bb_atax_B6_stall_region_out_stall_out),
        .out_valid_out(bb_atax_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_12_sync(GPOUT,5)
    assign out_feedback_out_12 = bb_atax_B6_stall_region_out_feedback_out_12;

    // feedback_out_13_sync(GPOUT,6)
    assign out_feedback_out_13 = bb_atax_B6_stall_region_out_feedback_out_13;

    // feedback_valid_out_12_sync(GPOUT,9)
    assign out_feedback_valid_out_12 = bb_atax_B6_stall_region_out_feedback_valid_out_12;

    // feedback_valid_out_13_sync(GPOUT,10)
    assign out_feedback_valid_out_13 = bb_atax_B6_stall_region_out_feedback_valid_out_13;

    // out_lsu_memdep_2_o_active(GPOUT,24)
    assign out_lsu_memdep_2_o_active = bb_atax_B6_stall_region_out_lsu_memdep_2_o_active;

    // out_memdep_2_atax_avm_address(GPOUT,25)
    assign out_memdep_2_atax_avm_address = bb_atax_B6_stall_region_out_memdep_2_atax_avm_address;

    // out_memdep_2_atax_avm_burstcount(GPOUT,26)
    assign out_memdep_2_atax_avm_burstcount = bb_atax_B6_stall_region_out_memdep_2_atax_avm_burstcount;

    // out_memdep_2_atax_avm_byteenable(GPOUT,27)
    assign out_memdep_2_atax_avm_byteenable = bb_atax_B6_stall_region_out_memdep_2_atax_avm_byteenable;

    // out_memdep_2_atax_avm_enable(GPOUT,28)
    assign out_memdep_2_atax_avm_enable = bb_atax_B6_stall_region_out_memdep_2_atax_avm_enable;

    // out_memdep_2_atax_avm_read(GPOUT,29)
    assign out_memdep_2_atax_avm_read = bb_atax_B6_stall_region_out_memdep_2_atax_avm_read;

    // out_memdep_2_atax_avm_write(GPOUT,30)
    assign out_memdep_2_atax_avm_write = bb_atax_B6_stall_region_out_memdep_2_atax_avm_write;

    // out_memdep_2_atax_avm_writedata(GPOUT,31)
    assign out_memdep_2_atax_avm_writedata = bb_atax_B6_stall_region_out_memdep_2_atax_avm_writedata;

    // out_stall_in_0(GPOUT,32)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,33)
    assign out_stall_out_0 = atax_B6_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,34)
    assign out_valid_out_0 = atax_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,35)
    assign out_valid_out_1 = atax_B6_branch_out_valid_out_1;

endmodule
