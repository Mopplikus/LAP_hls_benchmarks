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

// SystemVerilog created from bb_bicg_B4
// Created for function/kernel bicg
// SystemVerilog created on Tue Jun 13 12:13:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_bb_B4 (
    output wire [0:0] out_feedback_out_10,
    output wire [0:0] out_feedback_out_11,
    output wire [0:0] out_feedback_out_12,
    input wire [0:0] in_feedback_stall_in_10,
    input wire [0:0] in_feedback_stall_in_11,
    input wire [0:0] in_feedback_stall_in_12,
    output wire [0:0] out_feedback_valid_out_10,
    output wire [0:0] out_feedback_valid_out_11,
    output wire [0:0] out_feedback_valid_out_12,
    input wire [31:0] in_add123_0,
    input wire [0:0] in_exitcond1434_pop245_0,
    input wire [0:0] in_flush,
    input wire [63:0] in_mPtr_bitcast_index8030_pop204_0,
    input wire [0:0] in_memdep_1_0,
    input wire [31:0] in_memdep_6_bicg_avm_readdata,
    input wire [0:0] in_memdep_6_bicg_avm_readdatavalid,
    input wire [0:0] in_memdep_6_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_6_bicg_avm_writeack,
    input wire [0:0] in_notcmp2035_pop256_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_toi1_intcast42_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_lsu_memdep_6_o_active,
    output wire [31:0] out_memdep_6_bicg_avm_address,
    output wire [0:0] out_memdep_6_bicg_avm_burstcount,
    output wire [3:0] out_memdep_6_bicg_avm_byteenable,
    output wire [0:0] out_memdep_6_bicg_avm_enable,
    output wire [0:0] out_memdep_6_bicg_avm_read,
    output wire [0:0] out_memdep_6_bicg_avm_write,
    output wire [31:0] out_memdep_6_bicg_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_bicg_B4_stall_region_out_feedback_out_10;
    wire [0:0] bb_bicg_B4_stall_region_out_feedback_out_11;
    wire [0:0] bb_bicg_B4_stall_region_out_feedback_out_12;
    wire [0:0] bb_bicg_B4_stall_region_out_feedback_valid_out_10;
    wire [0:0] bb_bicg_B4_stall_region_out_feedback_valid_out_11;
    wire [0:0] bb_bicg_B4_stall_region_out_feedback_valid_out_12;
    wire [0:0] bb_bicg_B4_stall_region_out_lsu_memdep_6_o_active;
    wire [31:0] bb_bicg_B4_stall_region_out_memdep_6_bicg_avm_address;
    wire [0:0] bb_bicg_B4_stall_region_out_memdep_6_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B4_stall_region_out_memdep_6_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B4_stall_region_out_memdep_6_bicg_avm_enable;
    wire [0:0] bb_bicg_B4_stall_region_out_memdep_6_bicg_avm_read;
    wire [0:0] bb_bicg_B4_stall_region_out_memdep_6_bicg_avm_write;
    wire [31:0] bb_bicg_B4_stall_region_out_memdep_6_bicg_avm_writedata;
    wire [0:0] bb_bicg_B4_stall_region_out_notcmp2035_pop256;
    wire [0:0] bb_bicg_B4_stall_region_out_stall_out;
    wire [0:0] bb_bicg_B4_stall_region_out_valid_out;
    wire [0:0] bicg_B4_branch_out_stall_out;
    wire [0:0] bicg_B4_branch_out_valid_out_0;
    wire [0:0] bicg_B4_branch_out_valid_out_1;
    wire [31:0] bicg_B4_merge_out_add123;
    wire [0:0] bicg_B4_merge_out_exitcond1434_pop245;
    wire [63:0] bicg_B4_merge_out_mPtr_bitcast_index8030_pop204;
    wire [0:0] bicg_B4_merge_out_memdep_1;
    wire [0:0] bicg_B4_merge_out_notcmp2035_pop256;
    wire [0:0] bicg_B4_merge_out_stall_out_0;
    wire [0:0] bicg_B4_merge_out_toi1_intcast42;
    wire [0:0] bicg_B4_merge_out_valid_out;


    // bicg_B4_branch(BLACKBOX,3)
    bicg_B4_branch thebicg_B4_branch (
        .in_notcmp2035_pop256(bb_bicg_B4_stall_region_out_notcmp2035_pop256),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_bicg_B4_stall_region_out_valid_out),
        .out_stall_out(bicg_B4_branch_out_stall_out),
        .out_valid_out_0(bicg_B4_branch_out_valid_out_0),
        .out_valid_out_1(bicg_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bicg_B4_merge(BLACKBOX,4)
    bicg_B4_merge thebicg_B4_merge (
        .in_add123_0(in_add123_0),
        .in_exitcond1434_pop245_0(in_exitcond1434_pop245_0),
        .in_mPtr_bitcast_index8030_pop204_0(in_mPtr_bitcast_index8030_pop204_0),
        .in_memdep_1_0(in_memdep_1_0),
        .in_notcmp2035_pop256_0(in_notcmp2035_pop256_0),
        .in_stall_in(bb_bicg_B4_stall_region_out_stall_out),
        .in_toi1_intcast42_0(in_toi1_intcast42_0),
        .in_valid_in_0(in_valid_in_0),
        .out_add123(bicg_B4_merge_out_add123),
        .out_exitcond1434_pop245(bicg_B4_merge_out_exitcond1434_pop245),
        .out_mPtr_bitcast_index8030_pop204(bicg_B4_merge_out_mPtr_bitcast_index8030_pop204),
        .out_memdep_1(bicg_B4_merge_out_memdep_1),
        .out_notcmp2035_pop256(bicg_B4_merge_out_notcmp2035_pop256),
        .out_stall_out_0(bicg_B4_merge_out_stall_out_0),
        .out_toi1_intcast42(bicg_B4_merge_out_toi1_intcast42),
        .out_valid_out(bicg_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B4_stall_region(BLACKBOX,2)
    bicg_bb_B4_stall_region thebb_bicg_B4_stall_region (
        .in_add123(bicg_B4_merge_out_add123),
        .in_exitcond1434_pop245(bicg_B4_merge_out_exitcond1434_pop245),
        .in_feedback_stall_in_10(in_feedback_stall_in_10),
        .in_feedback_stall_in_11(in_feedback_stall_in_11),
        .in_feedback_stall_in_12(in_feedback_stall_in_12),
        .in_flush(in_flush),
        .in_mPtr_bitcast_index8030_pop204(bicg_B4_merge_out_mPtr_bitcast_index8030_pop204),
        .in_memdep_1(bicg_B4_merge_out_memdep_1),
        .in_memdep_6_bicg_avm_readdata(in_memdep_6_bicg_avm_readdata),
        .in_memdep_6_bicg_avm_readdatavalid(in_memdep_6_bicg_avm_readdatavalid),
        .in_memdep_6_bicg_avm_waitrequest(in_memdep_6_bicg_avm_waitrequest),
        .in_memdep_6_bicg_avm_writeack(in_memdep_6_bicg_avm_writeack),
        .in_notcmp2035_pop256(bicg_B4_merge_out_notcmp2035_pop256),
        .in_stall_in(bicg_B4_branch_out_stall_out),
        .in_toi1_intcast42(bicg_B4_merge_out_toi1_intcast42),
        .in_valid_in(bicg_B4_merge_out_valid_out),
        .out_feedback_out_10(bb_bicg_B4_stall_region_out_feedback_out_10),
        .out_feedback_out_11(bb_bicg_B4_stall_region_out_feedback_out_11),
        .out_feedback_out_12(bb_bicg_B4_stall_region_out_feedback_out_12),
        .out_feedback_valid_out_10(bb_bicg_B4_stall_region_out_feedback_valid_out_10),
        .out_feedback_valid_out_11(bb_bicg_B4_stall_region_out_feedback_valid_out_11),
        .out_feedback_valid_out_12(bb_bicg_B4_stall_region_out_feedback_valid_out_12),
        .out_lsu_memdep_6_o_active(bb_bicg_B4_stall_region_out_lsu_memdep_6_o_active),
        .out_memdep_6_bicg_avm_address(bb_bicg_B4_stall_region_out_memdep_6_bicg_avm_address),
        .out_memdep_6_bicg_avm_burstcount(bb_bicg_B4_stall_region_out_memdep_6_bicg_avm_burstcount),
        .out_memdep_6_bicg_avm_byteenable(bb_bicg_B4_stall_region_out_memdep_6_bicg_avm_byteenable),
        .out_memdep_6_bicg_avm_enable(bb_bicg_B4_stall_region_out_memdep_6_bicg_avm_enable),
        .out_memdep_6_bicg_avm_read(bb_bicg_B4_stall_region_out_memdep_6_bicg_avm_read),
        .out_memdep_6_bicg_avm_write(bb_bicg_B4_stall_region_out_memdep_6_bicg_avm_write),
        .out_memdep_6_bicg_avm_writedata(bb_bicg_B4_stall_region_out_memdep_6_bicg_avm_writedata),
        .out_notcmp2035_pop256(bb_bicg_B4_stall_region_out_notcmp2035_pop256),
        .out_stall_out(bb_bicg_B4_stall_region_out_stall_out),
        .out_valid_out(bb_bicg_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_10_sync(GPOUT,5)
    assign out_feedback_out_10 = bb_bicg_B4_stall_region_out_feedback_out_10;

    // feedback_out_11_sync(GPOUT,6)
    assign out_feedback_out_11 = bb_bicg_B4_stall_region_out_feedback_out_11;

    // feedback_out_12_sync(GPOUT,7)
    assign out_feedback_out_12 = bb_bicg_B4_stall_region_out_feedback_out_12;

    // feedback_valid_out_10_sync(GPOUT,11)
    assign out_feedback_valid_out_10 = bb_bicg_B4_stall_region_out_feedback_valid_out_10;

    // feedback_valid_out_11_sync(GPOUT,12)
    assign out_feedback_valid_out_11 = bb_bicg_B4_stall_region_out_feedback_valid_out_11;

    // feedback_valid_out_12_sync(GPOUT,13)
    assign out_feedback_valid_out_12 = bb_bicg_B4_stall_region_out_feedback_valid_out_12;

    // out_lsu_memdep_6_o_active(GPOUT,28)
    assign out_lsu_memdep_6_o_active = bb_bicg_B4_stall_region_out_lsu_memdep_6_o_active;

    // out_memdep_6_bicg_avm_address(GPOUT,29)
    assign out_memdep_6_bicg_avm_address = bb_bicg_B4_stall_region_out_memdep_6_bicg_avm_address;

    // out_memdep_6_bicg_avm_burstcount(GPOUT,30)
    assign out_memdep_6_bicg_avm_burstcount = bb_bicg_B4_stall_region_out_memdep_6_bicg_avm_burstcount;

    // out_memdep_6_bicg_avm_byteenable(GPOUT,31)
    assign out_memdep_6_bicg_avm_byteenable = bb_bicg_B4_stall_region_out_memdep_6_bicg_avm_byteenable;

    // out_memdep_6_bicg_avm_enable(GPOUT,32)
    assign out_memdep_6_bicg_avm_enable = bb_bicg_B4_stall_region_out_memdep_6_bicg_avm_enable;

    // out_memdep_6_bicg_avm_read(GPOUT,33)
    assign out_memdep_6_bicg_avm_read = bb_bicg_B4_stall_region_out_memdep_6_bicg_avm_read;

    // out_memdep_6_bicg_avm_write(GPOUT,34)
    assign out_memdep_6_bicg_avm_write = bb_bicg_B4_stall_region_out_memdep_6_bicg_avm_write;

    // out_memdep_6_bicg_avm_writedata(GPOUT,35)
    assign out_memdep_6_bicg_avm_writedata = bb_bicg_B4_stall_region_out_memdep_6_bicg_avm_writedata;

    // out_stall_in_0(GPOUT,36)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,37)
    assign out_stall_out_0 = bicg_B4_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,38)
    assign out_valid_out_0 = bicg_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,39)
    assign out_valid_out_1 = bicg_B4_branch_out_valid_out_1;

endmodule
