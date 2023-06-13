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

// SystemVerilog created from bb_covariance_B12
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B12 (
    output wire [0:0] out_feedback_out_50,
    input wire [0:0] in_feedback_stall_in_50,
    output wire [0:0] out_feedback_valid_out_50,
    input wire [31:0] in_c0_exe1041520_0,
    input wire [0:0] in_c0_exe1141622_0,
    input wire [0:0] in_c0_exe1241723_0,
    input wire [0:0] in_c0_exe1341824_0,
    input wire [0:0] in_c0_exe1441925_0,
    input wire [0:0] in_c0_exe1542026_0,
    input wire [31:0] in_c0_exe541015_0,
    input wire [31:0] in_c0_exe841318_0,
    input wire [31:0] in_c0_exe941419_0,
    input wire [31:0] in_c1_exe143827_0,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_memdep_1_covariance_avm_readdata,
    input wire [0:0] in_memdep_1_covariance_avm_readdatavalid,
    input wire [0:0] in_memdep_1_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_1_covariance_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe1141622,
    output wire [0:0] out_c0_exe1360,
    output wire [31:0] out_c0_exe841318,
    output wire [0:0] out_lsu_memdep_1_o_active,
    output wire [0:0] out_memdep_1,
    output wire [31:0] out_memdep_1_covariance_avm_address,
    output wire [0:0] out_memdep_1_covariance_avm_burstcount,
    output wire [3:0] out_memdep_1_covariance_avm_byteenable,
    output wire [0:0] out_memdep_1_covariance_avm_enable,
    output wire [0:0] out_memdep_1_covariance_avm_read,
    output wire [0:0] out_memdep_1_covariance_avm_write,
    output wire [31:0] out_memdep_1_covariance_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_covariance_B12_stall_region_out_c0_exe1141622;
    wire [0:0] bb_covariance_B12_stall_region_out_c0_exe1360;
    wire [0:0] bb_covariance_B12_stall_region_out_c0_exe1542026;
    wire [31:0] bb_covariance_B12_stall_region_out_c0_exe841318;
    wire [0:0] bb_covariance_B12_stall_region_out_feedback_out_50;
    wire [0:0] bb_covariance_B12_stall_region_out_feedback_valid_out_50;
    wire [0:0] bb_covariance_B12_stall_region_out_lsu_memdep_1_o_active;
    wire [0:0] bb_covariance_B12_stall_region_out_memdep_1;
    wire [31:0] bb_covariance_B12_stall_region_out_memdep_1_covariance_avm_address;
    wire [0:0] bb_covariance_B12_stall_region_out_memdep_1_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B12_stall_region_out_memdep_1_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B12_stall_region_out_memdep_1_covariance_avm_enable;
    wire [0:0] bb_covariance_B12_stall_region_out_memdep_1_covariance_avm_read;
    wire [0:0] bb_covariance_B12_stall_region_out_memdep_1_covariance_avm_write;
    wire [31:0] bb_covariance_B12_stall_region_out_memdep_1_covariance_avm_writedata;
    wire [0:0] bb_covariance_B12_stall_region_out_stall_out;
    wire [0:0] bb_covariance_B12_stall_region_out_valid_out;
    wire [0:0] covariance_B12_branch_out_c0_exe1141622;
    wire [0:0] covariance_B12_branch_out_c0_exe1360;
    wire [31:0] covariance_B12_branch_out_c0_exe841318;
    wire [0:0] covariance_B12_branch_out_memdep_1;
    wire [0:0] covariance_B12_branch_out_stall_out;
    wire [0:0] covariance_B12_branch_out_valid_out_0;
    wire [0:0] covariance_B12_branch_out_valid_out_1;
    wire [31:0] covariance_B12_merge_out_c0_exe1041520;
    wire [0:0] covariance_B12_merge_out_c0_exe1141622;
    wire [0:0] covariance_B12_merge_out_c0_exe1241723;
    wire [0:0] covariance_B12_merge_out_c0_exe1341824;
    wire [0:0] covariance_B12_merge_out_c0_exe1441925;
    wire [0:0] covariance_B12_merge_out_c0_exe1542026;
    wire [31:0] covariance_B12_merge_out_c0_exe541015;
    wire [31:0] covariance_B12_merge_out_c0_exe841318;
    wire [31:0] covariance_B12_merge_out_c0_exe941419;
    wire [31:0] covariance_B12_merge_out_c1_exe143827;
    wire [0:0] covariance_B12_merge_out_stall_out_0;
    wire [0:0] covariance_B12_merge_out_valid_out;


    // covariance_B12_branch(BLACKBOX,3)
    covariance_B12_branch thecovariance_B12_branch (
        .in_c0_exe1141622(bb_covariance_B12_stall_region_out_c0_exe1141622),
        .in_c0_exe1360(bb_covariance_B12_stall_region_out_c0_exe1360),
        .in_c0_exe1542026(bb_covariance_B12_stall_region_out_c0_exe1542026),
        .in_c0_exe841318(bb_covariance_B12_stall_region_out_c0_exe841318),
        .in_memdep_1(bb_covariance_B12_stall_region_out_memdep_1),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_covariance_B12_stall_region_out_valid_out),
        .out_c0_exe1141622(covariance_B12_branch_out_c0_exe1141622),
        .out_c0_exe1360(covariance_B12_branch_out_c0_exe1360),
        .out_c0_exe841318(covariance_B12_branch_out_c0_exe841318),
        .out_memdep_1(covariance_B12_branch_out_memdep_1),
        .out_stall_out(covariance_B12_branch_out_stall_out),
        .out_valid_out_0(covariance_B12_branch_out_valid_out_0),
        .out_valid_out_1(covariance_B12_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B12_merge(BLACKBOX,4)
    covariance_B12_merge thecovariance_B12_merge (
        .in_c0_exe1041520_0(in_c0_exe1041520_0),
        .in_c0_exe1141622_0(in_c0_exe1141622_0),
        .in_c0_exe1241723_0(in_c0_exe1241723_0),
        .in_c0_exe1341824_0(in_c0_exe1341824_0),
        .in_c0_exe1441925_0(in_c0_exe1441925_0),
        .in_c0_exe1542026_0(in_c0_exe1542026_0),
        .in_c0_exe541015_0(in_c0_exe541015_0),
        .in_c0_exe841318_0(in_c0_exe841318_0),
        .in_c0_exe941419_0(in_c0_exe941419_0),
        .in_c1_exe143827_0(in_c1_exe143827_0),
        .in_stall_in(bb_covariance_B12_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe1041520(covariance_B12_merge_out_c0_exe1041520),
        .out_c0_exe1141622(covariance_B12_merge_out_c0_exe1141622),
        .out_c0_exe1241723(covariance_B12_merge_out_c0_exe1241723),
        .out_c0_exe1341824(covariance_B12_merge_out_c0_exe1341824),
        .out_c0_exe1441925(covariance_B12_merge_out_c0_exe1441925),
        .out_c0_exe1542026(covariance_B12_merge_out_c0_exe1542026),
        .out_c0_exe541015(covariance_B12_merge_out_c0_exe541015),
        .out_c0_exe841318(covariance_B12_merge_out_c0_exe841318),
        .out_c0_exe941419(covariance_B12_merge_out_c0_exe941419),
        .out_c1_exe143827(covariance_B12_merge_out_c1_exe143827),
        .out_stall_out_0(covariance_B12_merge_out_stall_out_0),
        .out_valid_out(covariance_B12_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B12_stall_region(BLACKBOX,2)
    covariance_bb_B12_stall_region thebb_covariance_B12_stall_region (
        .in_c0_exe1041520(covariance_B12_merge_out_c0_exe1041520),
        .in_c0_exe1141622(covariance_B12_merge_out_c0_exe1141622),
        .in_c0_exe1241723(covariance_B12_merge_out_c0_exe1241723),
        .in_c0_exe1341824(covariance_B12_merge_out_c0_exe1341824),
        .in_c0_exe1441925(covariance_B12_merge_out_c0_exe1441925),
        .in_c0_exe1542026(covariance_B12_merge_out_c0_exe1542026),
        .in_c0_exe541015(covariance_B12_merge_out_c0_exe541015),
        .in_c0_exe841318(covariance_B12_merge_out_c0_exe841318),
        .in_c0_exe941419(covariance_B12_merge_out_c0_exe941419),
        .in_c1_exe143827(covariance_B12_merge_out_c1_exe143827),
        .in_feedback_stall_in_50(in_feedback_stall_in_50),
        .in_flush(in_flush),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_memdep_1_covariance_avm_readdata(in_memdep_1_covariance_avm_readdata),
        .in_memdep_1_covariance_avm_readdatavalid(in_memdep_1_covariance_avm_readdatavalid),
        .in_memdep_1_covariance_avm_waitrequest(in_memdep_1_covariance_avm_waitrequest),
        .in_memdep_1_covariance_avm_writeack(in_memdep_1_covariance_avm_writeack),
        .in_stall_in(covariance_B12_branch_out_stall_out),
        .in_valid_in(covariance_B12_merge_out_valid_out),
        .out_c0_exe1141622(bb_covariance_B12_stall_region_out_c0_exe1141622),
        .out_c0_exe1360(bb_covariance_B12_stall_region_out_c0_exe1360),
        .out_c0_exe1542026(bb_covariance_B12_stall_region_out_c0_exe1542026),
        .out_c0_exe841318(bb_covariance_B12_stall_region_out_c0_exe841318),
        .out_feedback_out_50(bb_covariance_B12_stall_region_out_feedback_out_50),
        .out_feedback_valid_out_50(bb_covariance_B12_stall_region_out_feedback_valid_out_50),
        .out_lsu_memdep_1_o_active(bb_covariance_B12_stall_region_out_lsu_memdep_1_o_active),
        .out_memdep_1(bb_covariance_B12_stall_region_out_memdep_1),
        .out_memdep_1_covariance_avm_address(bb_covariance_B12_stall_region_out_memdep_1_covariance_avm_address),
        .out_memdep_1_covariance_avm_burstcount(bb_covariance_B12_stall_region_out_memdep_1_covariance_avm_burstcount),
        .out_memdep_1_covariance_avm_byteenable(bb_covariance_B12_stall_region_out_memdep_1_covariance_avm_byteenable),
        .out_memdep_1_covariance_avm_enable(bb_covariance_B12_stall_region_out_memdep_1_covariance_avm_enable),
        .out_memdep_1_covariance_avm_read(bb_covariance_B12_stall_region_out_memdep_1_covariance_avm_read),
        .out_memdep_1_covariance_avm_write(bb_covariance_B12_stall_region_out_memdep_1_covariance_avm_write),
        .out_memdep_1_covariance_avm_writedata(bb_covariance_B12_stall_region_out_memdep_1_covariance_avm_writedata),
        .out_stall_out(bb_covariance_B12_stall_region_out_stall_out),
        .out_valid_out(bb_covariance_B12_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_50_sync(GPOUT,5)
    assign out_feedback_out_50 = bb_covariance_B12_stall_region_out_feedback_out_50;

    // feedback_valid_out_50_sync(GPOUT,7)
    assign out_feedback_valid_out_50 = bb_covariance_B12_stall_region_out_feedback_valid_out_50;

    // out_c0_exe1141622(GPOUT,27)
    assign out_c0_exe1141622 = covariance_B12_branch_out_c0_exe1141622;

    // out_c0_exe1360(GPOUT,28)
    assign out_c0_exe1360 = covariance_B12_branch_out_c0_exe1360;

    // out_c0_exe841318(GPOUT,29)
    assign out_c0_exe841318 = covariance_B12_branch_out_c0_exe841318;

    // out_lsu_memdep_1_o_active(GPOUT,30)
    assign out_lsu_memdep_1_o_active = bb_covariance_B12_stall_region_out_lsu_memdep_1_o_active;

    // out_memdep_1(GPOUT,31)
    assign out_memdep_1 = covariance_B12_branch_out_memdep_1;

    // out_memdep_1_covariance_avm_address(GPOUT,32)
    assign out_memdep_1_covariance_avm_address = bb_covariance_B12_stall_region_out_memdep_1_covariance_avm_address;

    // out_memdep_1_covariance_avm_burstcount(GPOUT,33)
    assign out_memdep_1_covariance_avm_burstcount = bb_covariance_B12_stall_region_out_memdep_1_covariance_avm_burstcount;

    // out_memdep_1_covariance_avm_byteenable(GPOUT,34)
    assign out_memdep_1_covariance_avm_byteenable = bb_covariance_B12_stall_region_out_memdep_1_covariance_avm_byteenable;

    // out_memdep_1_covariance_avm_enable(GPOUT,35)
    assign out_memdep_1_covariance_avm_enable = bb_covariance_B12_stall_region_out_memdep_1_covariance_avm_enable;

    // out_memdep_1_covariance_avm_read(GPOUT,36)
    assign out_memdep_1_covariance_avm_read = bb_covariance_B12_stall_region_out_memdep_1_covariance_avm_read;

    // out_memdep_1_covariance_avm_write(GPOUT,37)
    assign out_memdep_1_covariance_avm_write = bb_covariance_B12_stall_region_out_memdep_1_covariance_avm_write;

    // out_memdep_1_covariance_avm_writedata(GPOUT,38)
    assign out_memdep_1_covariance_avm_writedata = bb_covariance_B12_stall_region_out_memdep_1_covariance_avm_writedata;

    // out_stall_in_0(GPOUT,39)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,40)
    assign out_stall_out_0 = covariance_B12_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,41)
    assign out_valid_out_0 = covariance_B12_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,42)
    assign out_valid_out_1 = covariance_B12_branch_out_valid_out_1;

endmodule
