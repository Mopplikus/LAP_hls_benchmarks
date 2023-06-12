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

// SystemVerilog created from bb_atax_B7
// Created for function/kernel atax
// SystemVerilog created on Wed Apr 26 13:39:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B7 (
    input wire [31:0] in_add63_0,
    input wire [63:0] in_arrayidx134_pop2370_0,
    input wire [0:0] in_exitcond936_pop2472_0,
    input wire [0:0] in_flush,
    input wire [63:0] in_idxprom32_pop2261_0,
    input wire [31:0] in_memdep_1_atax_avm_readdata,
    input wire [0:0] in_memdep_1_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_1_atax_avm_waitrequest,
    input wire [0:0] in_memdep_1_atax_avm_writeack,
    input wire [0:0] in_memdep_phi2_pop1360_0,
    input wire [0:0] in_memdep_phi3_pop1028_pop2067_0,
    input wire [0:0] in_memdep_phi3_pop1050_0,
    input wire [0:0] in_memdep_phi_pop925_pop1965_0,
    input wire [0:0] in_memdep_phi_pop945_0,
    input wire [0:0] in_notcmp1538_pop2574_0,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_atax7_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax7_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax7_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax7_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax8_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax8_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax8_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax8_atax_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe1160,
    output wire [0:0] out_c0_exe2161,
    output wire [63:0] out_c0_exe5164,
    output wire [0:0] out_c0_exe6165,
    output wire [0:0] out_c0_exe7166,
    output wire [31:0] out_memdep_1_atax_avm_address,
    output wire [0:0] out_memdep_1_atax_avm_burstcount,
    output wire [3:0] out_memdep_1_atax_avm_byteenable,
    output wire [0:0] out_memdep_1_atax_avm_enable,
    output wire [0:0] out_memdep_1_atax_avm_read,
    output wire [0:0] out_memdep_1_atax_avm_write,
    output wire [31:0] out_memdep_1_atax_avm_writedata,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_atax7_atax_avm_address,
    output wire [0:0] out_unnamed_atax7_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax7_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax7_atax_avm_enable,
    output wire [0:0] out_unnamed_atax7_atax_avm_read,
    output wire [0:0] out_unnamed_atax7_atax_avm_write,
    output wire [31:0] out_unnamed_atax7_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax8_atax_avm_address,
    output wire [0:0] out_unnamed_atax8_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax8_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax8_atax_avm_enable,
    output wire [0:0] out_unnamed_atax8_atax_avm_read,
    output wire [0:0] out_unnamed_atax8_atax_avm_write,
    output wire [31:0] out_unnamed_atax8_atax_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] atax_B7_branch_out_c0_exe1160;
    wire [0:0] atax_B7_branch_out_c0_exe2161;
    wire [63:0] atax_B7_branch_out_c0_exe5164;
    wire [0:0] atax_B7_branch_out_c0_exe6165;
    wire [0:0] atax_B7_branch_out_c0_exe7166;
    wire [0:0] atax_B7_branch_out_stall_out;
    wire [0:0] atax_B7_branch_out_valid_out_0;
    wire [31:0] atax_B7_merge_out_add63;
    wire [0:0] atax_B7_merge_out_almost_empty_out;
    wire [63:0] atax_B7_merge_out_arrayidx134_pop2370;
    wire [0:0] atax_B7_merge_out_empty_out;
    wire [0:0] atax_B7_merge_out_exitcond936_pop2472;
    wire [63:0] atax_B7_merge_out_idxprom32_pop2261;
    wire [0:0] atax_B7_merge_out_memdep_phi2_pop1360;
    wire [0:0] atax_B7_merge_out_memdep_phi3_pop1028_pop2067;
    wire [0:0] atax_B7_merge_out_memdep_phi3_pop1050;
    wire [0:0] atax_B7_merge_out_memdep_phi_pop925_pop1965;
    wire [0:0] atax_B7_merge_out_memdep_phi_pop945;
    wire [0:0] atax_B7_merge_out_notcmp1538_pop2574;
    wire [0:0] atax_B7_merge_out_stall_out_0;
    wire [0:0] atax_B7_merge_out_valid_out;
    wire [0:0] bb_atax_B7_stall_region_out_almost_empty_out;
    wire [31:0] bb_atax_B7_stall_region_out_c0_exe1160;
    wire [0:0] bb_atax_B7_stall_region_out_c0_exe2161;
    wire [0:0] bb_atax_B7_stall_region_out_c0_exe4163;
    wire [63:0] bb_atax_B7_stall_region_out_c0_exe5164;
    wire [0:0] bb_atax_B7_stall_region_out_c0_exe6165;
    wire [0:0] bb_atax_B7_stall_region_out_c0_exe7166;
    wire [0:0] bb_atax_B7_stall_region_out_empty_out;
    wire [31:0] bb_atax_B7_stall_region_out_memdep_1_atax_avm_address;
    wire [0:0] bb_atax_B7_stall_region_out_memdep_1_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_stall_region_out_memdep_1_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_stall_region_out_memdep_1_atax_avm_enable;
    wire [0:0] bb_atax_B7_stall_region_out_memdep_1_atax_avm_read;
    wire [0:0] bb_atax_B7_stall_region_out_memdep_1_atax_avm_write;
    wire [31:0] bb_atax_B7_stall_region_out_memdep_1_atax_avm_writedata;
    wire [0:0] bb_atax_B7_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_atax_B7_stall_region_out_stall_out;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_address;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_enable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_read;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_write;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_writedata;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_address;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_enable;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_read;
    wire [0:0] bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_write;
    wire [31:0] bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_writedata;
    wire [0:0] bb_atax_B7_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // atax_B7_merge(BLACKBOX,3)
    atax_B7_merge theatax_B7_merge (
        .in_add63_0(in_add63_0),
        .in_arrayidx134_pop2370_0(in_arrayidx134_pop2370_0),
        .in_exitcond936_pop2472_0(in_exitcond936_pop2472_0),
        .in_idxprom32_pop2261_0(in_idxprom32_pop2261_0),
        .in_memdep_phi2_pop1360_0(in_memdep_phi2_pop1360_0),
        .in_memdep_phi3_pop1028_pop2067_0(in_memdep_phi3_pop1028_pop2067_0),
        .in_memdep_phi3_pop1050_0(in_memdep_phi3_pop1050_0),
        .in_memdep_phi_pop925_pop1965_0(in_memdep_phi_pop925_pop1965_0),
        .in_memdep_phi_pop945_0(in_memdep_phi_pop945_0),
        .in_notcmp1538_pop2574_0(in_notcmp1538_pop2574_0),
        .in_stall_in(bb_atax_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_add63(atax_B7_merge_out_add63),
        .out_almost_empty_out(atax_B7_merge_out_almost_empty_out),
        .out_arrayidx134_pop2370(atax_B7_merge_out_arrayidx134_pop2370),
        .out_empty_out(atax_B7_merge_out_empty_out),
        .out_exitcond936_pop2472(atax_B7_merge_out_exitcond936_pop2472),
        .out_idxprom32_pop2261(atax_B7_merge_out_idxprom32_pop2261),
        .out_memdep_phi2_pop1360(atax_B7_merge_out_memdep_phi2_pop1360),
        .out_memdep_phi3_pop1028_pop2067(atax_B7_merge_out_memdep_phi3_pop1028_pop2067),
        .out_memdep_phi3_pop1050(atax_B7_merge_out_memdep_phi3_pop1050),
        .out_memdep_phi_pop925_pop1965(atax_B7_merge_out_memdep_phi_pop925_pop1965),
        .out_memdep_phi_pop945(atax_B7_merge_out_memdep_phi_pop945),
        .out_notcmp1538_pop2574(atax_B7_merge_out_notcmp1538_pop2574),
        .out_stall_out_0(atax_B7_merge_out_stall_out_0),
        .out_valid_out(atax_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B7_stall_region(BLACKBOX,4)
    atax_bb_B7_stall_region thebb_atax_B7_stall_region (
        .in_add63(atax_B7_merge_out_add63),
        .in_almost_empty_in(atax_B7_merge_out_almost_empty_out),
        .in_arrayidx134_pop2370(atax_B7_merge_out_arrayidx134_pop2370),
        .in_empty_in(atax_B7_merge_out_empty_out),
        .in_exitcond936_pop2472(atax_B7_merge_out_exitcond936_pop2472),
        .in_flush(in_flush),
        .in_idxprom32_pop2261(atax_B7_merge_out_idxprom32_pop2261),
        .in_memdep_1_atax_avm_readdata(in_memdep_1_atax_avm_readdata),
        .in_memdep_1_atax_avm_readdatavalid(in_memdep_1_atax_avm_readdatavalid),
        .in_memdep_1_atax_avm_waitrequest(in_memdep_1_atax_avm_waitrequest),
        .in_memdep_1_atax_avm_writeack(in_memdep_1_atax_avm_writeack),
        .in_memdep_phi2_pop1360(atax_B7_merge_out_memdep_phi2_pop1360),
        .in_memdep_phi3_pop1028_pop2067(atax_B7_merge_out_memdep_phi3_pop1028_pop2067),
        .in_memdep_phi3_pop1050(atax_B7_merge_out_memdep_phi3_pop1050),
        .in_memdep_phi_pop925_pop1965(atax_B7_merge_out_memdep_phi_pop925_pop1965),
        .in_memdep_phi_pop945(atax_B7_merge_out_memdep_phi_pop945),
        .in_notcmp1538_pop2574(atax_B7_merge_out_notcmp1538_pop2574),
        .in_stall_in(atax_B7_branch_out_stall_out),
        .in_unnamed_atax7_atax_avm_readdata(in_unnamed_atax7_atax_avm_readdata),
        .in_unnamed_atax7_atax_avm_readdatavalid(in_unnamed_atax7_atax_avm_readdatavalid),
        .in_unnamed_atax7_atax_avm_waitrequest(in_unnamed_atax7_atax_avm_waitrequest),
        .in_unnamed_atax7_atax_avm_writeack(in_unnamed_atax7_atax_avm_writeack),
        .in_unnamed_atax8_atax_avm_readdata(in_unnamed_atax8_atax_avm_readdata),
        .in_unnamed_atax8_atax_avm_readdatavalid(in_unnamed_atax8_atax_avm_readdatavalid),
        .in_unnamed_atax8_atax_avm_waitrequest(in_unnamed_atax8_atax_avm_waitrequest),
        .in_unnamed_atax8_atax_avm_writeack(in_unnamed_atax8_atax_avm_writeack),
        .in_valid_in(atax_B7_merge_out_valid_out),
        .out_almost_empty_out(bb_atax_B7_stall_region_out_almost_empty_out),
        .out_c0_exe1160(bb_atax_B7_stall_region_out_c0_exe1160),
        .out_c0_exe2161(bb_atax_B7_stall_region_out_c0_exe2161),
        .out_c0_exe4163(bb_atax_B7_stall_region_out_c0_exe4163),
        .out_c0_exe5164(bb_atax_B7_stall_region_out_c0_exe5164),
        .out_c0_exe6165(bb_atax_B7_stall_region_out_c0_exe6165),
        .out_c0_exe7166(bb_atax_B7_stall_region_out_c0_exe7166),
        .out_empty_out(bb_atax_B7_stall_region_out_empty_out),
        .out_memdep_1_atax_avm_address(bb_atax_B7_stall_region_out_memdep_1_atax_avm_address),
        .out_memdep_1_atax_avm_burstcount(bb_atax_B7_stall_region_out_memdep_1_atax_avm_burstcount),
        .out_memdep_1_atax_avm_byteenable(bb_atax_B7_stall_region_out_memdep_1_atax_avm_byteenable),
        .out_memdep_1_atax_avm_enable(bb_atax_B7_stall_region_out_memdep_1_atax_avm_enable),
        .out_memdep_1_atax_avm_read(bb_atax_B7_stall_region_out_memdep_1_atax_avm_read),
        .out_memdep_1_atax_avm_write(bb_atax_B7_stall_region_out_memdep_1_atax_avm_write),
        .out_memdep_1_atax_avm_writedata(bb_atax_B7_stall_region_out_memdep_1_atax_avm_writedata),
        .out_profile_loop_o_valid(bb_atax_B7_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_atax_B7_stall_region_out_stall_out),
        .out_unnamed_atax7_atax_avm_address(bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_address),
        .out_unnamed_atax7_atax_avm_burstcount(bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_burstcount),
        .out_unnamed_atax7_atax_avm_byteenable(bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_byteenable),
        .out_unnamed_atax7_atax_avm_enable(bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_enable),
        .out_unnamed_atax7_atax_avm_read(bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_read),
        .out_unnamed_atax7_atax_avm_write(bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_write),
        .out_unnamed_atax7_atax_avm_writedata(bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_writedata),
        .out_unnamed_atax8_atax_avm_address(bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_address),
        .out_unnamed_atax8_atax_avm_burstcount(bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_burstcount),
        .out_unnamed_atax8_atax_avm_byteenable(bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_byteenable),
        .out_unnamed_atax8_atax_avm_enable(bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_enable),
        .out_unnamed_atax8_atax_avm_read(bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_read),
        .out_unnamed_atax8_atax_avm_write(bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_write),
        .out_unnamed_atax8_atax_avm_writedata(bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_writedata),
        .out_valid_out(bb_atax_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B7_branch(BLACKBOX,2)
    atax_B7_branch theatax_B7_branch (
        .in_almost_empty_in(bb_atax_B7_stall_region_out_almost_empty_out),
        .in_c0_exe1160(bb_atax_B7_stall_region_out_c0_exe1160),
        .in_c0_exe2161(bb_atax_B7_stall_region_out_c0_exe2161),
        .in_c0_exe4163(bb_atax_B7_stall_region_out_c0_exe4163),
        .in_c0_exe5164(bb_atax_B7_stall_region_out_c0_exe5164),
        .in_c0_exe6165(bb_atax_B7_stall_region_out_c0_exe6165),
        .in_c0_exe7166(bb_atax_B7_stall_region_out_c0_exe7166),
        .in_empty_in(bb_atax_B7_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_atax_B7_stall_region_out_valid_out),
        .out_c0_exe1160(atax_B7_branch_out_c0_exe1160),
        .out_c0_exe2161(atax_B7_branch_out_c0_exe2161),
        .out_c0_exe5164(atax_B7_branch_out_c0_exe5164),
        .out_c0_exe6165(atax_B7_branch_out_c0_exe6165),
        .out_c0_exe7166(atax_B7_branch_out_c0_exe7166),
        .out_stall_out(atax_B7_branch_out_stall_out),
        .out_valid_out_0(atax_B7_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1160(GPOUT,30)
    assign out_c0_exe1160 = atax_B7_branch_out_c0_exe1160;

    // out_c0_exe2161(GPOUT,31)
    assign out_c0_exe2161 = atax_B7_branch_out_c0_exe2161;

    // out_c0_exe5164(GPOUT,32)
    assign out_c0_exe5164 = atax_B7_branch_out_c0_exe5164;

    // out_c0_exe6165(GPOUT,33)
    assign out_c0_exe6165 = atax_B7_branch_out_c0_exe6165;

    // out_c0_exe7166(GPOUT,34)
    assign out_c0_exe7166 = atax_B7_branch_out_c0_exe7166;

    // out_memdep_1_atax_avm_address(GPOUT,35)
    assign out_memdep_1_atax_avm_address = bb_atax_B7_stall_region_out_memdep_1_atax_avm_address;

    // out_memdep_1_atax_avm_burstcount(GPOUT,36)
    assign out_memdep_1_atax_avm_burstcount = bb_atax_B7_stall_region_out_memdep_1_atax_avm_burstcount;

    // out_memdep_1_atax_avm_byteenable(GPOUT,37)
    assign out_memdep_1_atax_avm_byteenable = bb_atax_B7_stall_region_out_memdep_1_atax_avm_byteenable;

    // out_memdep_1_atax_avm_enable(GPOUT,38)
    assign out_memdep_1_atax_avm_enable = bb_atax_B7_stall_region_out_memdep_1_atax_avm_enable;

    // out_memdep_1_atax_avm_read(GPOUT,39)
    assign out_memdep_1_atax_avm_read = bb_atax_B7_stall_region_out_memdep_1_atax_avm_read;

    // out_memdep_1_atax_avm_write(GPOUT,40)
    assign out_memdep_1_atax_avm_write = bb_atax_B7_stall_region_out_memdep_1_atax_avm_write;

    // out_memdep_1_atax_avm_writedata(GPOUT,41)
    assign out_memdep_1_atax_avm_writedata = bb_atax_B7_stall_region_out_memdep_1_atax_avm_writedata;

    // out_profile_loop_o_valid(GPOUT,42)
    assign out_profile_loop_o_valid = bb_atax_B7_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,43)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,44)
    assign out_stall_out_0 = atax_B7_merge_out_stall_out_0;

    // out_unnamed_atax7_atax_avm_address(GPOUT,45)
    assign out_unnamed_atax7_atax_avm_address = bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_address;

    // out_unnamed_atax7_atax_avm_burstcount(GPOUT,46)
    assign out_unnamed_atax7_atax_avm_burstcount = bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_burstcount;

    // out_unnamed_atax7_atax_avm_byteenable(GPOUT,47)
    assign out_unnamed_atax7_atax_avm_byteenable = bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_byteenable;

    // out_unnamed_atax7_atax_avm_enable(GPOUT,48)
    assign out_unnamed_atax7_atax_avm_enable = bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_enable;

    // out_unnamed_atax7_atax_avm_read(GPOUT,49)
    assign out_unnamed_atax7_atax_avm_read = bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_read;

    // out_unnamed_atax7_atax_avm_write(GPOUT,50)
    assign out_unnamed_atax7_atax_avm_write = bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_write;

    // out_unnamed_atax7_atax_avm_writedata(GPOUT,51)
    assign out_unnamed_atax7_atax_avm_writedata = bb_atax_B7_stall_region_out_unnamed_atax7_atax_avm_writedata;

    // out_unnamed_atax8_atax_avm_address(GPOUT,52)
    assign out_unnamed_atax8_atax_avm_address = bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_address;

    // out_unnamed_atax8_atax_avm_burstcount(GPOUT,53)
    assign out_unnamed_atax8_atax_avm_burstcount = bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_burstcount;

    // out_unnamed_atax8_atax_avm_byteenable(GPOUT,54)
    assign out_unnamed_atax8_atax_avm_byteenable = bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_byteenable;

    // out_unnamed_atax8_atax_avm_enable(GPOUT,55)
    assign out_unnamed_atax8_atax_avm_enable = bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_enable;

    // out_unnamed_atax8_atax_avm_read(GPOUT,56)
    assign out_unnamed_atax8_atax_avm_read = bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_read;

    // out_unnamed_atax8_atax_avm_write(GPOUT,57)
    assign out_unnamed_atax8_atax_avm_write = bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_write;

    // out_unnamed_atax8_atax_avm_writedata(GPOUT,58)
    assign out_unnamed_atax8_atax_avm_writedata = bb_atax_B7_stall_region_out_unnamed_atax8_atax_avm_writedata;

    // out_valid_in_0(GPOUT,59)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,60)
    assign out_valid_out_0 = atax_B7_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,61)
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
