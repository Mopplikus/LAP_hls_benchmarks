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

// SystemVerilog created from bb_bicg_B5
// Created for function/kernel bicg
// SystemVerilog created on Wed Apr 26 14:15:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_bb_B5 (
    input wire [63:0] in_arrayidx134_0,
    input wire [0:0] in_exitcond636_0,
    input wire [0:0] in_flush,
    input wire [63:0] in_idxprom32_0,
    input wire [31:0] in_memdep_1_bicg_avm_readdata,
    input wire [0:0] in_memdep_1_bicg_avm_readdatavalid,
    input wire [0:0] in_memdep_1_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_1_bicg_avm_writeack,
    input wire [0:0] in_memdep_phi2_pop1138_0,
    input wire [0:0] in_memdep_phi3_pop818_pop1339_0,
    input wire [0:0] in_memdep_phi3_pop831_0,
    input wire [0:0] in_memdep_phi_pop716_pop1235_0,
    input wire [0:0] in_memdep_phi_pop728_0,
    input wire [0:0] in_notcmp737_0,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_bicg4_0,
    input wire [31:0] in_unnamed_bicg5_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg5_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg5_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg5_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg6_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg6_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg6_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg6_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg7_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg7_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg7_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg7_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg8_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe180,
    output wire [31:0] out_c0_exe281,
    output wire [63:0] out_c0_exe584,
    output wire [0:0] out_c0_exe685,
    output wire [0:0] out_c0_exe786,
    output wire [31:0] out_memdep_1_bicg_avm_address,
    output wire [0:0] out_memdep_1_bicg_avm_burstcount,
    output wire [3:0] out_memdep_1_bicg_avm_byteenable,
    output wire [0:0] out_memdep_1_bicg_avm_enable,
    output wire [0:0] out_memdep_1_bicg_avm_read,
    output wire [0:0] out_memdep_1_bicg_avm_write,
    output wire [31:0] out_memdep_1_bicg_avm_writedata,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_bicg5_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg5_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg5_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg5_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg5_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg5_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg5_bicg_avm_writedata,
    output wire [31:0] out_unnamed_bicg6_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg6_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg6_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg6_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg6_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg6_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg6_bicg_avm_writedata,
    output wire [31:0] out_unnamed_bicg7_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg7_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg7_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg7_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg7_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg7_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg7_bicg_avm_writedata,
    output wire [31:0] out_unnamed_bicg8_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg8_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg8_bicg_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_bicg_B5_stall_region_out_almost_empty_out;
    wire [0:0] bb_bicg_B5_stall_region_out_c0_exe180;
    wire [31:0] bb_bicg_B5_stall_region_out_c0_exe281;
    wire [0:0] bb_bicg_B5_stall_region_out_c0_exe483;
    wire [63:0] bb_bicg_B5_stall_region_out_c0_exe584;
    wire [0:0] bb_bicg_B5_stall_region_out_c0_exe685;
    wire [0:0] bb_bicg_B5_stall_region_out_c0_exe786;
    wire [0:0] bb_bicg_B5_stall_region_out_empty_out;
    wire [31:0] bb_bicg_B5_stall_region_out_memdep_1_bicg_avm_address;
    wire [0:0] bb_bicg_B5_stall_region_out_memdep_1_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B5_stall_region_out_memdep_1_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B5_stall_region_out_memdep_1_bicg_avm_enable;
    wire [0:0] bb_bicg_B5_stall_region_out_memdep_1_bicg_avm_read;
    wire [0:0] bb_bicg_B5_stall_region_out_memdep_1_bicg_avm_write;
    wire [31:0] bb_bicg_B5_stall_region_out_memdep_1_bicg_avm_writedata;
    wire [0:0] bb_bicg_B5_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_bicg_B5_stall_region_out_stall_out;
    wire [31:0] bb_bicg_B5_stall_region_out_unnamed_bicg5_bicg_avm_address;
    wire [0:0] bb_bicg_B5_stall_region_out_unnamed_bicg5_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B5_stall_region_out_unnamed_bicg5_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B5_stall_region_out_unnamed_bicg5_bicg_avm_enable;
    wire [0:0] bb_bicg_B5_stall_region_out_unnamed_bicg5_bicg_avm_read;
    wire [0:0] bb_bicg_B5_stall_region_out_unnamed_bicg5_bicg_avm_write;
    wire [31:0] bb_bicg_B5_stall_region_out_unnamed_bicg5_bicg_avm_writedata;
    wire [31:0] bb_bicg_B5_stall_region_out_unnamed_bicg6_bicg_avm_address;
    wire [0:0] bb_bicg_B5_stall_region_out_unnamed_bicg6_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B5_stall_region_out_unnamed_bicg6_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B5_stall_region_out_unnamed_bicg6_bicg_avm_enable;
    wire [0:0] bb_bicg_B5_stall_region_out_unnamed_bicg6_bicg_avm_read;
    wire [0:0] bb_bicg_B5_stall_region_out_unnamed_bicg6_bicg_avm_write;
    wire [31:0] bb_bicg_B5_stall_region_out_unnamed_bicg6_bicg_avm_writedata;
    wire [31:0] bb_bicg_B5_stall_region_out_unnamed_bicg7_bicg_avm_address;
    wire [0:0] bb_bicg_B5_stall_region_out_unnamed_bicg7_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B5_stall_region_out_unnamed_bicg7_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B5_stall_region_out_unnamed_bicg7_bicg_avm_enable;
    wire [0:0] bb_bicg_B5_stall_region_out_unnamed_bicg7_bicg_avm_read;
    wire [0:0] bb_bicg_B5_stall_region_out_unnamed_bicg7_bicg_avm_write;
    wire [31:0] bb_bicg_B5_stall_region_out_unnamed_bicg7_bicg_avm_writedata;
    wire [31:0] bb_bicg_B5_stall_region_out_unnamed_bicg8_bicg_avm_address;
    wire [0:0] bb_bicg_B5_stall_region_out_unnamed_bicg8_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B5_stall_region_out_unnamed_bicg8_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B5_stall_region_out_unnamed_bicg8_bicg_avm_enable;
    wire [0:0] bb_bicg_B5_stall_region_out_unnamed_bicg8_bicg_avm_read;
    wire [0:0] bb_bicg_B5_stall_region_out_unnamed_bicg8_bicg_avm_write;
    wire [31:0] bb_bicg_B5_stall_region_out_unnamed_bicg8_bicg_avm_writedata;
    wire [0:0] bb_bicg_B5_stall_region_out_valid_out;
    wire [0:0] bicg_B5_branch_out_c0_exe180;
    wire [31:0] bicg_B5_branch_out_c0_exe281;
    wire [63:0] bicg_B5_branch_out_c0_exe584;
    wire [0:0] bicg_B5_branch_out_c0_exe685;
    wire [0:0] bicg_B5_branch_out_c0_exe786;
    wire [0:0] bicg_B5_branch_out_stall_out;
    wire [0:0] bicg_B5_branch_out_valid_out_0;
    wire [0:0] bicg_B5_merge_out_almost_empty_out;
    wire [63:0] bicg_B5_merge_out_arrayidx134;
    wire [0:0] bicg_B5_merge_out_empty_out;
    wire [0:0] bicg_B5_merge_out_exitcond636;
    wire [63:0] bicg_B5_merge_out_idxprom32;
    wire [0:0] bicg_B5_merge_out_memdep_phi2_pop1138;
    wire [0:0] bicg_B5_merge_out_memdep_phi3_pop818_pop1339;
    wire [0:0] bicg_B5_merge_out_memdep_phi3_pop831;
    wire [0:0] bicg_B5_merge_out_memdep_phi_pop716_pop1235;
    wire [0:0] bicg_B5_merge_out_memdep_phi_pop728;
    wire [0:0] bicg_B5_merge_out_notcmp737;
    wire [0:0] bicg_B5_merge_out_stall_out_0;
    wire [31:0] bicg_B5_merge_out_unnamed_bicg4;
    wire [0:0] bicg_B5_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // bicg_B5_merge(BLACKBOX,4)
    bicg_B5_merge thebicg_B5_merge (
        .in_arrayidx134_0(in_arrayidx134_0),
        .in_exitcond636_0(in_exitcond636_0),
        .in_idxprom32_0(in_idxprom32_0),
        .in_memdep_phi2_pop1138_0(in_memdep_phi2_pop1138_0),
        .in_memdep_phi3_pop818_pop1339_0(in_memdep_phi3_pop818_pop1339_0),
        .in_memdep_phi3_pop831_0(in_memdep_phi3_pop831_0),
        .in_memdep_phi_pop716_pop1235_0(in_memdep_phi_pop716_pop1235_0),
        .in_memdep_phi_pop728_0(in_memdep_phi_pop728_0),
        .in_notcmp737_0(in_notcmp737_0),
        .in_stall_in(bb_bicg_B5_stall_region_out_stall_out),
        .in_unnamed_bicg4_0(in_unnamed_bicg4_0),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(bicg_B5_merge_out_almost_empty_out),
        .out_arrayidx134(bicg_B5_merge_out_arrayidx134),
        .out_empty_out(bicg_B5_merge_out_empty_out),
        .out_exitcond636(bicg_B5_merge_out_exitcond636),
        .out_idxprom32(bicg_B5_merge_out_idxprom32),
        .out_memdep_phi2_pop1138(bicg_B5_merge_out_memdep_phi2_pop1138),
        .out_memdep_phi3_pop818_pop1339(bicg_B5_merge_out_memdep_phi3_pop818_pop1339),
        .out_memdep_phi3_pop831(bicg_B5_merge_out_memdep_phi3_pop831),
        .out_memdep_phi_pop716_pop1235(bicg_B5_merge_out_memdep_phi_pop716_pop1235),
        .out_memdep_phi_pop728(bicg_B5_merge_out_memdep_phi_pop728),
        .out_notcmp737(bicg_B5_merge_out_notcmp737),
        .out_stall_out_0(bicg_B5_merge_out_stall_out_0),
        .out_unnamed_bicg4(bicg_B5_merge_out_unnamed_bicg4),
        .out_valid_out(bicg_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B5_stall_region(BLACKBOX,2)
    bicg_bb_B5_stall_region thebb_bicg_B5_stall_region (
        .in_almost_empty_in(bicg_B5_merge_out_almost_empty_out),
        .in_arrayidx134(bicg_B5_merge_out_arrayidx134),
        .in_empty_in(bicg_B5_merge_out_empty_out),
        .in_exitcond636(bicg_B5_merge_out_exitcond636),
        .in_flush(in_flush),
        .in_idxprom32(bicg_B5_merge_out_idxprom32),
        .in_memdep_1_bicg_avm_readdata(in_memdep_1_bicg_avm_readdata),
        .in_memdep_1_bicg_avm_readdatavalid(in_memdep_1_bicg_avm_readdatavalid),
        .in_memdep_1_bicg_avm_waitrequest(in_memdep_1_bicg_avm_waitrequest),
        .in_memdep_1_bicg_avm_writeack(in_memdep_1_bicg_avm_writeack),
        .in_memdep_phi2_pop1138(bicg_B5_merge_out_memdep_phi2_pop1138),
        .in_memdep_phi3_pop818_pop1339(bicg_B5_merge_out_memdep_phi3_pop818_pop1339),
        .in_memdep_phi3_pop831(bicg_B5_merge_out_memdep_phi3_pop831),
        .in_memdep_phi_pop716_pop1235(bicg_B5_merge_out_memdep_phi_pop716_pop1235),
        .in_memdep_phi_pop728(bicg_B5_merge_out_memdep_phi_pop728),
        .in_notcmp737(bicg_B5_merge_out_notcmp737),
        .in_stall_in(bicg_B5_branch_out_stall_out),
        .in_unnamed_bicg4(bicg_B5_merge_out_unnamed_bicg4),
        .in_unnamed_bicg5_bicg_avm_readdata(in_unnamed_bicg5_bicg_avm_readdata),
        .in_unnamed_bicg5_bicg_avm_readdatavalid(in_unnamed_bicg5_bicg_avm_readdatavalid),
        .in_unnamed_bicg5_bicg_avm_waitrequest(in_unnamed_bicg5_bicg_avm_waitrequest),
        .in_unnamed_bicg5_bicg_avm_writeack(in_unnamed_bicg5_bicg_avm_writeack),
        .in_unnamed_bicg6_bicg_avm_readdata(in_unnamed_bicg6_bicg_avm_readdata),
        .in_unnamed_bicg6_bicg_avm_readdatavalid(in_unnamed_bicg6_bicg_avm_readdatavalid),
        .in_unnamed_bicg6_bicg_avm_waitrequest(in_unnamed_bicg6_bicg_avm_waitrequest),
        .in_unnamed_bicg6_bicg_avm_writeack(in_unnamed_bicg6_bicg_avm_writeack),
        .in_unnamed_bicg7_bicg_avm_readdata(in_unnamed_bicg7_bicg_avm_readdata),
        .in_unnamed_bicg7_bicg_avm_readdatavalid(in_unnamed_bicg7_bicg_avm_readdatavalid),
        .in_unnamed_bicg7_bicg_avm_waitrequest(in_unnamed_bicg7_bicg_avm_waitrequest),
        .in_unnamed_bicg7_bicg_avm_writeack(in_unnamed_bicg7_bicg_avm_writeack),
        .in_unnamed_bicg8_bicg_avm_readdata(in_unnamed_bicg8_bicg_avm_readdata),
        .in_unnamed_bicg8_bicg_avm_readdatavalid(in_unnamed_bicg8_bicg_avm_readdatavalid),
        .in_unnamed_bicg8_bicg_avm_waitrequest(in_unnamed_bicg8_bicg_avm_waitrequest),
        .in_unnamed_bicg8_bicg_avm_writeack(in_unnamed_bicg8_bicg_avm_writeack),
        .in_valid_in(bicg_B5_merge_out_valid_out),
        .out_almost_empty_out(bb_bicg_B5_stall_region_out_almost_empty_out),
        .out_c0_exe180(bb_bicg_B5_stall_region_out_c0_exe180),
        .out_c0_exe281(bb_bicg_B5_stall_region_out_c0_exe281),
        .out_c0_exe483(bb_bicg_B5_stall_region_out_c0_exe483),
        .out_c0_exe584(bb_bicg_B5_stall_region_out_c0_exe584),
        .out_c0_exe685(bb_bicg_B5_stall_region_out_c0_exe685),
        .out_c0_exe786(bb_bicg_B5_stall_region_out_c0_exe786),
        .out_empty_out(bb_bicg_B5_stall_region_out_empty_out),
        .out_memdep_1_bicg_avm_address(bb_bicg_B5_stall_region_out_memdep_1_bicg_avm_address),
        .out_memdep_1_bicg_avm_burstcount(bb_bicg_B5_stall_region_out_memdep_1_bicg_avm_burstcount),
        .out_memdep_1_bicg_avm_byteenable(bb_bicg_B5_stall_region_out_memdep_1_bicg_avm_byteenable),
        .out_memdep_1_bicg_avm_enable(bb_bicg_B5_stall_region_out_memdep_1_bicg_avm_enable),
        .out_memdep_1_bicg_avm_read(bb_bicg_B5_stall_region_out_memdep_1_bicg_avm_read),
        .out_memdep_1_bicg_avm_write(bb_bicg_B5_stall_region_out_memdep_1_bicg_avm_write),
        .out_memdep_1_bicg_avm_writedata(bb_bicg_B5_stall_region_out_memdep_1_bicg_avm_writedata),
        .out_profile_loop_o_valid(bb_bicg_B5_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_bicg_B5_stall_region_out_stall_out),
        .out_unnamed_bicg5_bicg_avm_address(bb_bicg_B5_stall_region_out_unnamed_bicg5_bicg_avm_address),
        .out_unnamed_bicg5_bicg_avm_burstcount(bb_bicg_B5_stall_region_out_unnamed_bicg5_bicg_avm_burstcount),
        .out_unnamed_bicg5_bicg_avm_byteenable(bb_bicg_B5_stall_region_out_unnamed_bicg5_bicg_avm_byteenable),
        .out_unnamed_bicg5_bicg_avm_enable(bb_bicg_B5_stall_region_out_unnamed_bicg5_bicg_avm_enable),
        .out_unnamed_bicg5_bicg_avm_read(bb_bicg_B5_stall_region_out_unnamed_bicg5_bicg_avm_read),
        .out_unnamed_bicg5_bicg_avm_write(bb_bicg_B5_stall_region_out_unnamed_bicg5_bicg_avm_write),
        .out_unnamed_bicg5_bicg_avm_writedata(bb_bicg_B5_stall_region_out_unnamed_bicg5_bicg_avm_writedata),
        .out_unnamed_bicg6_bicg_avm_address(bb_bicg_B5_stall_region_out_unnamed_bicg6_bicg_avm_address),
        .out_unnamed_bicg6_bicg_avm_burstcount(bb_bicg_B5_stall_region_out_unnamed_bicg6_bicg_avm_burstcount),
        .out_unnamed_bicg6_bicg_avm_byteenable(bb_bicg_B5_stall_region_out_unnamed_bicg6_bicg_avm_byteenable),
        .out_unnamed_bicg6_bicg_avm_enable(bb_bicg_B5_stall_region_out_unnamed_bicg6_bicg_avm_enable),
        .out_unnamed_bicg6_bicg_avm_read(bb_bicg_B5_stall_region_out_unnamed_bicg6_bicg_avm_read),
        .out_unnamed_bicg6_bicg_avm_write(bb_bicg_B5_stall_region_out_unnamed_bicg6_bicg_avm_write),
        .out_unnamed_bicg6_bicg_avm_writedata(bb_bicg_B5_stall_region_out_unnamed_bicg6_bicg_avm_writedata),
        .out_unnamed_bicg7_bicg_avm_address(bb_bicg_B5_stall_region_out_unnamed_bicg7_bicg_avm_address),
        .out_unnamed_bicg7_bicg_avm_burstcount(bb_bicg_B5_stall_region_out_unnamed_bicg7_bicg_avm_burstcount),
        .out_unnamed_bicg7_bicg_avm_byteenable(bb_bicg_B5_stall_region_out_unnamed_bicg7_bicg_avm_byteenable),
        .out_unnamed_bicg7_bicg_avm_enable(bb_bicg_B5_stall_region_out_unnamed_bicg7_bicg_avm_enable),
        .out_unnamed_bicg7_bicg_avm_read(bb_bicg_B5_stall_region_out_unnamed_bicg7_bicg_avm_read),
        .out_unnamed_bicg7_bicg_avm_write(bb_bicg_B5_stall_region_out_unnamed_bicg7_bicg_avm_write),
        .out_unnamed_bicg7_bicg_avm_writedata(bb_bicg_B5_stall_region_out_unnamed_bicg7_bicg_avm_writedata),
        .out_unnamed_bicg8_bicg_avm_address(bb_bicg_B5_stall_region_out_unnamed_bicg8_bicg_avm_address),
        .out_unnamed_bicg8_bicg_avm_burstcount(bb_bicg_B5_stall_region_out_unnamed_bicg8_bicg_avm_burstcount),
        .out_unnamed_bicg8_bicg_avm_byteenable(bb_bicg_B5_stall_region_out_unnamed_bicg8_bicg_avm_byteenable),
        .out_unnamed_bicg8_bicg_avm_enable(bb_bicg_B5_stall_region_out_unnamed_bicg8_bicg_avm_enable),
        .out_unnamed_bicg8_bicg_avm_read(bb_bicg_B5_stall_region_out_unnamed_bicg8_bicg_avm_read),
        .out_unnamed_bicg8_bicg_avm_write(bb_bicg_B5_stall_region_out_unnamed_bicg8_bicg_avm_write),
        .out_unnamed_bicg8_bicg_avm_writedata(bb_bicg_B5_stall_region_out_unnamed_bicg8_bicg_avm_writedata),
        .out_valid_out(bb_bicg_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bicg_B5_branch(BLACKBOX,3)
    bicg_B5_branch thebicg_B5_branch (
        .in_almost_empty_in(bb_bicg_B5_stall_region_out_almost_empty_out),
        .in_c0_exe180(bb_bicg_B5_stall_region_out_c0_exe180),
        .in_c0_exe281(bb_bicg_B5_stall_region_out_c0_exe281),
        .in_c0_exe483(bb_bicg_B5_stall_region_out_c0_exe483),
        .in_c0_exe584(bb_bicg_B5_stall_region_out_c0_exe584),
        .in_c0_exe685(bb_bicg_B5_stall_region_out_c0_exe685),
        .in_c0_exe786(bb_bicg_B5_stall_region_out_c0_exe786),
        .in_empty_in(bb_bicg_B5_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_bicg_B5_stall_region_out_valid_out),
        .out_c0_exe180(bicg_B5_branch_out_c0_exe180),
        .out_c0_exe281(bicg_B5_branch_out_c0_exe281),
        .out_c0_exe584(bicg_B5_branch_out_c0_exe584),
        .out_c0_exe685(bicg_B5_branch_out_c0_exe685),
        .out_c0_exe786(bicg_B5_branch_out_c0_exe786),
        .out_stall_out(bicg_B5_branch_out_stall_out),
        .out_valid_out_0(bicg_B5_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe180(GPOUT,38)
    assign out_c0_exe180 = bicg_B5_branch_out_c0_exe180;

    // out_c0_exe281(GPOUT,39)
    assign out_c0_exe281 = bicg_B5_branch_out_c0_exe281;

    // out_c0_exe584(GPOUT,40)
    assign out_c0_exe584 = bicg_B5_branch_out_c0_exe584;

    // out_c0_exe685(GPOUT,41)
    assign out_c0_exe685 = bicg_B5_branch_out_c0_exe685;

    // out_c0_exe786(GPOUT,42)
    assign out_c0_exe786 = bicg_B5_branch_out_c0_exe786;

    // out_memdep_1_bicg_avm_address(GPOUT,43)
    assign out_memdep_1_bicg_avm_address = bb_bicg_B5_stall_region_out_memdep_1_bicg_avm_address;

    // out_memdep_1_bicg_avm_burstcount(GPOUT,44)
    assign out_memdep_1_bicg_avm_burstcount = bb_bicg_B5_stall_region_out_memdep_1_bicg_avm_burstcount;

    // out_memdep_1_bicg_avm_byteenable(GPOUT,45)
    assign out_memdep_1_bicg_avm_byteenable = bb_bicg_B5_stall_region_out_memdep_1_bicg_avm_byteenable;

    // out_memdep_1_bicg_avm_enable(GPOUT,46)
    assign out_memdep_1_bicg_avm_enable = bb_bicg_B5_stall_region_out_memdep_1_bicg_avm_enable;

    // out_memdep_1_bicg_avm_read(GPOUT,47)
    assign out_memdep_1_bicg_avm_read = bb_bicg_B5_stall_region_out_memdep_1_bicg_avm_read;

    // out_memdep_1_bicg_avm_write(GPOUT,48)
    assign out_memdep_1_bicg_avm_write = bb_bicg_B5_stall_region_out_memdep_1_bicg_avm_write;

    // out_memdep_1_bicg_avm_writedata(GPOUT,49)
    assign out_memdep_1_bicg_avm_writedata = bb_bicg_B5_stall_region_out_memdep_1_bicg_avm_writedata;

    // out_profile_loop_o_valid(GPOUT,50)
    assign out_profile_loop_o_valid = bb_bicg_B5_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,51)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,52)
    assign out_stall_out_0 = bicg_B5_merge_out_stall_out_0;

    // out_unnamed_bicg5_bicg_avm_address(GPOUT,53)
    assign out_unnamed_bicg5_bicg_avm_address = bb_bicg_B5_stall_region_out_unnamed_bicg5_bicg_avm_address;

    // out_unnamed_bicg5_bicg_avm_burstcount(GPOUT,54)
    assign out_unnamed_bicg5_bicg_avm_burstcount = bb_bicg_B5_stall_region_out_unnamed_bicg5_bicg_avm_burstcount;

    // out_unnamed_bicg5_bicg_avm_byteenable(GPOUT,55)
    assign out_unnamed_bicg5_bicg_avm_byteenable = bb_bicg_B5_stall_region_out_unnamed_bicg5_bicg_avm_byteenable;

    // out_unnamed_bicg5_bicg_avm_enable(GPOUT,56)
    assign out_unnamed_bicg5_bicg_avm_enable = bb_bicg_B5_stall_region_out_unnamed_bicg5_bicg_avm_enable;

    // out_unnamed_bicg5_bicg_avm_read(GPOUT,57)
    assign out_unnamed_bicg5_bicg_avm_read = bb_bicg_B5_stall_region_out_unnamed_bicg5_bicg_avm_read;

    // out_unnamed_bicg5_bicg_avm_write(GPOUT,58)
    assign out_unnamed_bicg5_bicg_avm_write = bb_bicg_B5_stall_region_out_unnamed_bicg5_bicg_avm_write;

    // out_unnamed_bicg5_bicg_avm_writedata(GPOUT,59)
    assign out_unnamed_bicg5_bicg_avm_writedata = bb_bicg_B5_stall_region_out_unnamed_bicg5_bicg_avm_writedata;

    // out_unnamed_bicg6_bicg_avm_address(GPOUT,60)
    assign out_unnamed_bicg6_bicg_avm_address = bb_bicg_B5_stall_region_out_unnamed_bicg6_bicg_avm_address;

    // out_unnamed_bicg6_bicg_avm_burstcount(GPOUT,61)
    assign out_unnamed_bicg6_bicg_avm_burstcount = bb_bicg_B5_stall_region_out_unnamed_bicg6_bicg_avm_burstcount;

    // out_unnamed_bicg6_bicg_avm_byteenable(GPOUT,62)
    assign out_unnamed_bicg6_bicg_avm_byteenable = bb_bicg_B5_stall_region_out_unnamed_bicg6_bicg_avm_byteenable;

    // out_unnamed_bicg6_bicg_avm_enable(GPOUT,63)
    assign out_unnamed_bicg6_bicg_avm_enable = bb_bicg_B5_stall_region_out_unnamed_bicg6_bicg_avm_enable;

    // out_unnamed_bicg6_bicg_avm_read(GPOUT,64)
    assign out_unnamed_bicg6_bicg_avm_read = bb_bicg_B5_stall_region_out_unnamed_bicg6_bicg_avm_read;

    // out_unnamed_bicg6_bicg_avm_write(GPOUT,65)
    assign out_unnamed_bicg6_bicg_avm_write = bb_bicg_B5_stall_region_out_unnamed_bicg6_bicg_avm_write;

    // out_unnamed_bicg6_bicg_avm_writedata(GPOUT,66)
    assign out_unnamed_bicg6_bicg_avm_writedata = bb_bicg_B5_stall_region_out_unnamed_bicg6_bicg_avm_writedata;

    // out_unnamed_bicg7_bicg_avm_address(GPOUT,67)
    assign out_unnamed_bicg7_bicg_avm_address = bb_bicg_B5_stall_region_out_unnamed_bicg7_bicg_avm_address;

    // out_unnamed_bicg7_bicg_avm_burstcount(GPOUT,68)
    assign out_unnamed_bicg7_bicg_avm_burstcount = bb_bicg_B5_stall_region_out_unnamed_bicg7_bicg_avm_burstcount;

    // out_unnamed_bicg7_bicg_avm_byteenable(GPOUT,69)
    assign out_unnamed_bicg7_bicg_avm_byteenable = bb_bicg_B5_stall_region_out_unnamed_bicg7_bicg_avm_byteenable;

    // out_unnamed_bicg7_bicg_avm_enable(GPOUT,70)
    assign out_unnamed_bicg7_bicg_avm_enable = bb_bicg_B5_stall_region_out_unnamed_bicg7_bicg_avm_enable;

    // out_unnamed_bicg7_bicg_avm_read(GPOUT,71)
    assign out_unnamed_bicg7_bicg_avm_read = bb_bicg_B5_stall_region_out_unnamed_bicg7_bicg_avm_read;

    // out_unnamed_bicg7_bicg_avm_write(GPOUT,72)
    assign out_unnamed_bicg7_bicg_avm_write = bb_bicg_B5_stall_region_out_unnamed_bicg7_bicg_avm_write;

    // out_unnamed_bicg7_bicg_avm_writedata(GPOUT,73)
    assign out_unnamed_bicg7_bicg_avm_writedata = bb_bicg_B5_stall_region_out_unnamed_bicg7_bicg_avm_writedata;

    // out_unnamed_bicg8_bicg_avm_address(GPOUT,74)
    assign out_unnamed_bicg8_bicg_avm_address = bb_bicg_B5_stall_region_out_unnamed_bicg8_bicg_avm_address;

    // out_unnamed_bicg8_bicg_avm_burstcount(GPOUT,75)
    assign out_unnamed_bicg8_bicg_avm_burstcount = bb_bicg_B5_stall_region_out_unnamed_bicg8_bicg_avm_burstcount;

    // out_unnamed_bicg8_bicg_avm_byteenable(GPOUT,76)
    assign out_unnamed_bicg8_bicg_avm_byteenable = bb_bicg_B5_stall_region_out_unnamed_bicg8_bicg_avm_byteenable;

    // out_unnamed_bicg8_bicg_avm_enable(GPOUT,77)
    assign out_unnamed_bicg8_bicg_avm_enable = bb_bicg_B5_stall_region_out_unnamed_bicg8_bicg_avm_enable;

    // out_unnamed_bicg8_bicg_avm_read(GPOUT,78)
    assign out_unnamed_bicg8_bicg_avm_read = bb_bicg_B5_stall_region_out_unnamed_bicg8_bicg_avm_read;

    // out_unnamed_bicg8_bicg_avm_write(GPOUT,79)
    assign out_unnamed_bicg8_bicg_avm_write = bb_bicg_B5_stall_region_out_unnamed_bicg8_bicg_avm_write;

    // out_unnamed_bicg8_bicg_avm_writedata(GPOUT,80)
    assign out_unnamed_bicg8_bicg_avm_writedata = bb_bicg_B5_stall_region_out_unnamed_bicg8_bicg_avm_writedata;

    // out_valid_in_0(GPOUT,81)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,82)
    assign out_valid_out_0 = bicg_B5_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,83)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
