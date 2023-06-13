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

// SystemVerilog created from bb_atax_B5
// Created for function/kernel atax
// SystemVerilog created on Tue Jun 13 01:54:01 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B5 (
    input wire [31:0] in_add773_0,
    input wire [31:0] in_add773_1,
    input wire [0:0] in_exitcond1250_pop2277_0,
    input wire [0:0] in_exitcond1250_pop2277_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_mPtr_bitcast778965_0,
    input wire [63:0] in_mPtr_bitcast778965_1,
    input wire [63:0] in_mPtr_bitcast_index8845_pop1975_0,
    input wire [63:0] in_mPtr_bitcast_index8845_pop1975_1,
    input wire [31:0] in_memdep_atax_avm_readdata,
    input wire [0:0] in_memdep_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_atax_avm_waitrequest,
    input wire [0:0] in_memdep_atax_avm_writeack,
    input wire [0:0] in_memdep_phi3_or71_0,
    input wire [0:0] in_memdep_phi3_or71_1,
    input wire [0:0] in_memdep_phi3_pop1354_pop2469_0,
    input wire [0:0] in_memdep_phi3_pop1354_pop2469_1,
    input wire [31:0] in_mul_add1448_pop2167_0,
    input wire [31:0] in_mul_add1448_pop2167_1,
    input wire [0:0] in_notcmp3552_pop2379_0,
    input wire [0:0] in_notcmp3552_pop2379_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_atax15_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax15_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax15_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax15_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax17_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax17_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax17_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax17_atax_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add758_pop37,
    output wire [0:0] out_exitcond1251_pop32,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [63:0] out_mPtr_bitcast_index8846_pop30,
    output wire [0:0] out_memdep,
    output wire [31:0] out_memdep_atax_avm_address,
    output wire [0:0] out_memdep_atax_avm_burstcount,
    output wire [3:0] out_memdep_atax_avm_byteenable,
    output wire [0:0] out_memdep_atax_avm_enable,
    output wire [0:0] out_memdep_atax_avm_read,
    output wire [0:0] out_memdep_atax_avm_write,
    output wire [31:0] out_memdep_atax_avm_writedata,
    output wire [0:0] out_notcmp3553_pop33,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_atax15_atax_avm_address,
    output wire [0:0] out_unnamed_atax15_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax15_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax15_atax_avm_enable,
    output wire [0:0] out_unnamed_atax15_atax_avm_read,
    output wire [0:0] out_unnamed_atax15_atax_avm_write,
    output wire [31:0] out_unnamed_atax15_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax17_atax_avm_address,
    output wire [0:0] out_unnamed_atax17_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax17_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax17_atax_avm_enable,
    output wire [0:0] out_unnamed_atax17_atax_avm_read,
    output wire [0:0] out_unnamed_atax17_atax_avm_write,
    output wire [31:0] out_unnamed_atax17_atax_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [31:0] atax_B5_branch_out_add758_pop37;
    wire [0:0] atax_B5_branch_out_exitcond1251_pop32;
    wire [63:0] atax_B5_branch_out_mPtr_bitcast_index8846_pop30;
    wire [0:0] atax_B5_branch_out_memdep;
    wire [0:0] atax_B5_branch_out_notcmp3553_pop33;
    wire [0:0] atax_B5_branch_out_stall_out;
    wire [0:0] atax_B5_branch_out_valid_out_0;
    wire [0:0] atax_B5_branch_out_valid_out_1;
    wire [31:0] atax_B5_merge_out_add773;
    wire [0:0] atax_B5_merge_out_exitcond1250_pop2277;
    wire [0:0] atax_B5_merge_out_forked;
    wire [63:0] atax_B5_merge_out_mPtr_bitcast778965;
    wire [63:0] atax_B5_merge_out_mPtr_bitcast_index8845_pop1975;
    wire [0:0] atax_B5_merge_out_memdep_phi3_or71;
    wire [0:0] atax_B5_merge_out_memdep_phi3_pop1354_pop2469;
    wire [31:0] atax_B5_merge_out_mul_add1448_pop2167;
    wire [0:0] atax_B5_merge_out_notcmp3552_pop2379;
    wire [0:0] atax_B5_merge_out_stall_out_0;
    wire [0:0] atax_B5_merge_out_stall_out_1;
    wire [0:0] atax_B5_merge_out_valid_out;
    wire [0:0] bb_atax_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax4_exiting_stall_out;
    wire [0:0] bb_atax_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax4_exiting_valid_out;
    wire [31:0] bb_atax_B5_stall_region_out_add758_pop37;
    wire [0:0] bb_atax_B5_stall_region_out_exitcond1251_pop32;
    wire [0:0] bb_atax_B5_stall_region_out_lsu_memdep_o_active;
    wire [63:0] bb_atax_B5_stall_region_out_mPtr_bitcast_index8846_pop30;
    wire [0:0] bb_atax_B5_stall_region_out_masked;
    wire [0:0] bb_atax_B5_stall_region_out_memdep;
    wire [31:0] bb_atax_B5_stall_region_out_memdep_atax_avm_address;
    wire [0:0] bb_atax_B5_stall_region_out_memdep_atax_avm_burstcount;
    wire [3:0] bb_atax_B5_stall_region_out_memdep_atax_avm_byteenable;
    wire [0:0] bb_atax_B5_stall_region_out_memdep_atax_avm_enable;
    wire [0:0] bb_atax_B5_stall_region_out_memdep_atax_avm_read;
    wire [0:0] bb_atax_B5_stall_region_out_memdep_atax_avm_write;
    wire [31:0] bb_atax_B5_stall_region_out_memdep_atax_avm_writedata;
    wire [0:0] bb_atax_B5_stall_region_out_notcmp3553_pop33;
    wire [0:0] bb_atax_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_atax_B5_stall_region_out_stall_out;
    wire [31:0] bb_atax_B5_stall_region_out_unnamed_atax15_atax_avm_address;
    wire [0:0] bb_atax_B5_stall_region_out_unnamed_atax15_atax_avm_burstcount;
    wire [3:0] bb_atax_B5_stall_region_out_unnamed_atax15_atax_avm_byteenable;
    wire [0:0] bb_atax_B5_stall_region_out_unnamed_atax15_atax_avm_enable;
    wire [0:0] bb_atax_B5_stall_region_out_unnamed_atax15_atax_avm_read;
    wire [0:0] bb_atax_B5_stall_region_out_unnamed_atax15_atax_avm_write;
    wire [31:0] bb_atax_B5_stall_region_out_unnamed_atax15_atax_avm_writedata;
    wire [31:0] bb_atax_B5_stall_region_out_unnamed_atax17_atax_avm_address;
    wire [0:0] bb_atax_B5_stall_region_out_unnamed_atax17_atax_avm_burstcount;
    wire [3:0] bb_atax_B5_stall_region_out_unnamed_atax17_atax_avm_byteenable;
    wire [0:0] bb_atax_B5_stall_region_out_unnamed_atax17_atax_avm_enable;
    wire [0:0] bb_atax_B5_stall_region_out_unnamed_atax17_atax_avm_read;
    wire [0:0] bb_atax_B5_stall_region_out_unnamed_atax17_atax_avm_write;
    wire [31:0] bb_atax_B5_stall_region_out_unnamed_atax17_atax_avm_writedata;
    wire [0:0] bb_atax_B5_stall_region_out_valid_out;


    // atax_B5_merge(BLACKBOX,3)
    atax_B5_merge theatax_B5_merge (
        .in_add773_0(in_add773_0),
        .in_add773_1(in_add773_1),
        .in_exitcond1250_pop2277_0(in_exitcond1250_pop2277_0),
        .in_exitcond1250_pop2277_1(in_exitcond1250_pop2277_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_mPtr_bitcast778965_0(in_mPtr_bitcast778965_0),
        .in_mPtr_bitcast778965_1(in_mPtr_bitcast778965_1),
        .in_mPtr_bitcast_index8845_pop1975_0(in_mPtr_bitcast_index8845_pop1975_0),
        .in_mPtr_bitcast_index8845_pop1975_1(in_mPtr_bitcast_index8845_pop1975_1),
        .in_memdep_phi3_or71_0(in_memdep_phi3_or71_0),
        .in_memdep_phi3_or71_1(in_memdep_phi3_or71_1),
        .in_memdep_phi3_pop1354_pop2469_0(in_memdep_phi3_pop1354_pop2469_0),
        .in_memdep_phi3_pop1354_pop2469_1(in_memdep_phi3_pop1354_pop2469_1),
        .in_mul_add1448_pop2167_0(in_mul_add1448_pop2167_0),
        .in_mul_add1448_pop2167_1(in_mul_add1448_pop2167_1),
        .in_notcmp3552_pop2379_0(in_notcmp3552_pop2379_0),
        .in_notcmp3552_pop2379_1(in_notcmp3552_pop2379_1),
        .in_stall_in(bb_atax_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add773(atax_B5_merge_out_add773),
        .out_exitcond1250_pop2277(atax_B5_merge_out_exitcond1250_pop2277),
        .out_forked(atax_B5_merge_out_forked),
        .out_mPtr_bitcast778965(atax_B5_merge_out_mPtr_bitcast778965),
        .out_mPtr_bitcast_index8845_pop1975(atax_B5_merge_out_mPtr_bitcast_index8845_pop1975),
        .out_memdep_phi3_or71(atax_B5_merge_out_memdep_phi3_or71),
        .out_memdep_phi3_pop1354_pop2469(atax_B5_merge_out_memdep_phi3_pop1354_pop2469),
        .out_mul_add1448_pop2167(atax_B5_merge_out_mul_add1448_pop2167),
        .out_notcmp3552_pop2379(atax_B5_merge_out_notcmp3552_pop2379),
        .out_stall_out_0(atax_B5_merge_out_stall_out_0),
        .out_stall_out_1(atax_B5_merge_out_stall_out_1),
        .out_valid_out(atax_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B5_stall_region(BLACKBOX,4)
    atax_bb_B5_stall_region thebb_atax_B5_stall_region (
        .in_add773(atax_B5_merge_out_add773),
        .in_exitcond1250_pop2277(atax_B5_merge_out_exitcond1250_pop2277),
        .in_flush(in_flush),
        .in_forked(atax_B5_merge_out_forked),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_mPtr_bitcast778965(atax_B5_merge_out_mPtr_bitcast778965),
        .in_mPtr_bitcast_index8845_pop1975(atax_B5_merge_out_mPtr_bitcast_index8845_pop1975),
        .in_memdep_atax_avm_readdata(in_memdep_atax_avm_readdata),
        .in_memdep_atax_avm_readdatavalid(in_memdep_atax_avm_readdatavalid),
        .in_memdep_atax_avm_waitrequest(in_memdep_atax_avm_waitrequest),
        .in_memdep_atax_avm_writeack(in_memdep_atax_avm_writeack),
        .in_memdep_phi3_or71(atax_B5_merge_out_memdep_phi3_or71),
        .in_memdep_phi3_pop1354_pop2469(atax_B5_merge_out_memdep_phi3_pop1354_pop2469),
        .in_mul_add1448_pop2167(atax_B5_merge_out_mul_add1448_pop2167),
        .in_notcmp3552_pop2379(atax_B5_merge_out_notcmp3552_pop2379),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(atax_B5_branch_out_stall_out),
        .in_unnamed_atax15_atax_avm_readdata(in_unnamed_atax15_atax_avm_readdata),
        .in_unnamed_atax15_atax_avm_readdatavalid(in_unnamed_atax15_atax_avm_readdatavalid),
        .in_unnamed_atax15_atax_avm_waitrequest(in_unnamed_atax15_atax_avm_waitrequest),
        .in_unnamed_atax15_atax_avm_writeack(in_unnamed_atax15_atax_avm_writeack),
        .in_unnamed_atax17_atax_avm_readdata(in_unnamed_atax17_atax_avm_readdata),
        .in_unnamed_atax17_atax_avm_readdatavalid(in_unnamed_atax17_atax_avm_readdatavalid),
        .in_unnamed_atax17_atax_avm_waitrequest(in_unnamed_atax17_atax_avm_waitrequest),
        .in_unnamed_atax17_atax_avm_writeack(in_unnamed_atax17_atax_avm_writeack),
        .in_valid_in(atax_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax4_exiting_stall_out(bb_atax_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax4_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax4_exiting_valid_out(bb_atax_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax4_exiting_valid_out),
        .out_add758_pop37(bb_atax_B5_stall_region_out_add758_pop37),
        .out_exitcond1251_pop32(bb_atax_B5_stall_region_out_exitcond1251_pop32),
        .out_lsu_memdep_o_active(bb_atax_B5_stall_region_out_lsu_memdep_o_active),
        .out_mPtr_bitcast_index8846_pop30(bb_atax_B5_stall_region_out_mPtr_bitcast_index8846_pop30),
        .out_masked(bb_atax_B5_stall_region_out_masked),
        .out_memdep(bb_atax_B5_stall_region_out_memdep),
        .out_memdep_atax_avm_address(bb_atax_B5_stall_region_out_memdep_atax_avm_address),
        .out_memdep_atax_avm_burstcount(bb_atax_B5_stall_region_out_memdep_atax_avm_burstcount),
        .out_memdep_atax_avm_byteenable(bb_atax_B5_stall_region_out_memdep_atax_avm_byteenable),
        .out_memdep_atax_avm_enable(bb_atax_B5_stall_region_out_memdep_atax_avm_enable),
        .out_memdep_atax_avm_read(bb_atax_B5_stall_region_out_memdep_atax_avm_read),
        .out_memdep_atax_avm_write(bb_atax_B5_stall_region_out_memdep_atax_avm_write),
        .out_memdep_atax_avm_writedata(bb_atax_B5_stall_region_out_memdep_atax_avm_writedata),
        .out_notcmp3553_pop33(bb_atax_B5_stall_region_out_notcmp3553_pop33),
        .out_pipeline_valid_out(bb_atax_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_atax_B5_stall_region_out_stall_out),
        .out_unnamed_atax15_atax_avm_address(bb_atax_B5_stall_region_out_unnamed_atax15_atax_avm_address),
        .out_unnamed_atax15_atax_avm_burstcount(bb_atax_B5_stall_region_out_unnamed_atax15_atax_avm_burstcount),
        .out_unnamed_atax15_atax_avm_byteenable(bb_atax_B5_stall_region_out_unnamed_atax15_atax_avm_byteenable),
        .out_unnamed_atax15_atax_avm_enable(bb_atax_B5_stall_region_out_unnamed_atax15_atax_avm_enable),
        .out_unnamed_atax15_atax_avm_read(bb_atax_B5_stall_region_out_unnamed_atax15_atax_avm_read),
        .out_unnamed_atax15_atax_avm_write(bb_atax_B5_stall_region_out_unnamed_atax15_atax_avm_write),
        .out_unnamed_atax15_atax_avm_writedata(bb_atax_B5_stall_region_out_unnamed_atax15_atax_avm_writedata),
        .out_unnamed_atax17_atax_avm_address(bb_atax_B5_stall_region_out_unnamed_atax17_atax_avm_address),
        .out_unnamed_atax17_atax_avm_burstcount(bb_atax_B5_stall_region_out_unnamed_atax17_atax_avm_burstcount),
        .out_unnamed_atax17_atax_avm_byteenable(bb_atax_B5_stall_region_out_unnamed_atax17_atax_avm_byteenable),
        .out_unnamed_atax17_atax_avm_enable(bb_atax_B5_stall_region_out_unnamed_atax17_atax_avm_enable),
        .out_unnamed_atax17_atax_avm_read(bb_atax_B5_stall_region_out_unnamed_atax17_atax_avm_read),
        .out_unnamed_atax17_atax_avm_write(bb_atax_B5_stall_region_out_unnamed_atax17_atax_avm_write),
        .out_unnamed_atax17_atax_avm_writedata(bb_atax_B5_stall_region_out_unnamed_atax17_atax_avm_writedata),
        .out_valid_out(bb_atax_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B5_branch(BLACKBOX,2)
    atax_B5_branch theatax_B5_branch (
        .in_add758_pop37(bb_atax_B5_stall_region_out_add758_pop37),
        .in_exitcond1251_pop32(bb_atax_B5_stall_region_out_exitcond1251_pop32),
        .in_mPtr_bitcast_index8846_pop30(bb_atax_B5_stall_region_out_mPtr_bitcast_index8846_pop30),
        .in_masked(bb_atax_B5_stall_region_out_masked),
        .in_memdep(bb_atax_B5_stall_region_out_memdep),
        .in_notcmp3553_pop33(bb_atax_B5_stall_region_out_notcmp3553_pop33),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_atax_B5_stall_region_out_valid_out),
        .out_add758_pop37(atax_B5_branch_out_add758_pop37),
        .out_exitcond1251_pop32(atax_B5_branch_out_exitcond1251_pop32),
        .out_mPtr_bitcast_index8846_pop30(atax_B5_branch_out_mPtr_bitcast_index8846_pop30),
        .out_memdep(atax_B5_branch_out_memdep),
        .out_notcmp3553_pop33(atax_B5_branch_out_notcmp3553_pop33),
        .out_stall_out(atax_B5_branch_out_stall_out),
        .out_valid_out_0(atax_B5_branch_out_valid_out_0),
        .out_valid_out_1(atax_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_add758_pop37(GPOUT,41)
    assign out_add758_pop37 = atax_B5_branch_out_add758_pop37;

    // out_exitcond1251_pop32(GPOUT,42)
    assign out_exitcond1251_pop32 = atax_B5_branch_out_exitcond1251_pop32;

    // out_exiting_stall_out(GPOUT,43)
    assign out_exiting_stall_out = bb_atax_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax4_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,44)
    assign out_exiting_valid_out = bb_atax_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax4_exiting_valid_out;

    // out_lsu_memdep_o_active(GPOUT,45)
    assign out_lsu_memdep_o_active = bb_atax_B5_stall_region_out_lsu_memdep_o_active;

    // out_mPtr_bitcast_index8846_pop30(GPOUT,46)
    assign out_mPtr_bitcast_index8846_pop30 = atax_B5_branch_out_mPtr_bitcast_index8846_pop30;

    // out_memdep(GPOUT,47)
    assign out_memdep = atax_B5_branch_out_memdep;

    // out_memdep_atax_avm_address(GPOUT,48)
    assign out_memdep_atax_avm_address = bb_atax_B5_stall_region_out_memdep_atax_avm_address;

    // out_memdep_atax_avm_burstcount(GPOUT,49)
    assign out_memdep_atax_avm_burstcount = bb_atax_B5_stall_region_out_memdep_atax_avm_burstcount;

    // out_memdep_atax_avm_byteenable(GPOUT,50)
    assign out_memdep_atax_avm_byteenable = bb_atax_B5_stall_region_out_memdep_atax_avm_byteenable;

    // out_memdep_atax_avm_enable(GPOUT,51)
    assign out_memdep_atax_avm_enable = bb_atax_B5_stall_region_out_memdep_atax_avm_enable;

    // out_memdep_atax_avm_read(GPOUT,52)
    assign out_memdep_atax_avm_read = bb_atax_B5_stall_region_out_memdep_atax_avm_read;

    // out_memdep_atax_avm_write(GPOUT,53)
    assign out_memdep_atax_avm_write = bb_atax_B5_stall_region_out_memdep_atax_avm_write;

    // out_memdep_atax_avm_writedata(GPOUT,54)
    assign out_memdep_atax_avm_writedata = bb_atax_B5_stall_region_out_memdep_atax_avm_writedata;

    // out_notcmp3553_pop33(GPOUT,55)
    assign out_notcmp3553_pop33 = atax_B5_branch_out_notcmp3553_pop33;

    // out_stall_in_0(GPOUT,56)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,57)
    assign out_stall_out_0 = atax_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,58)
    assign out_stall_out_1 = atax_B5_merge_out_stall_out_1;

    // out_unnamed_atax15_atax_avm_address(GPOUT,59)
    assign out_unnamed_atax15_atax_avm_address = bb_atax_B5_stall_region_out_unnamed_atax15_atax_avm_address;

    // out_unnamed_atax15_atax_avm_burstcount(GPOUT,60)
    assign out_unnamed_atax15_atax_avm_burstcount = bb_atax_B5_stall_region_out_unnamed_atax15_atax_avm_burstcount;

    // out_unnamed_atax15_atax_avm_byteenable(GPOUT,61)
    assign out_unnamed_atax15_atax_avm_byteenable = bb_atax_B5_stall_region_out_unnamed_atax15_atax_avm_byteenable;

    // out_unnamed_atax15_atax_avm_enable(GPOUT,62)
    assign out_unnamed_atax15_atax_avm_enable = bb_atax_B5_stall_region_out_unnamed_atax15_atax_avm_enable;

    // out_unnamed_atax15_atax_avm_read(GPOUT,63)
    assign out_unnamed_atax15_atax_avm_read = bb_atax_B5_stall_region_out_unnamed_atax15_atax_avm_read;

    // out_unnamed_atax15_atax_avm_write(GPOUT,64)
    assign out_unnamed_atax15_atax_avm_write = bb_atax_B5_stall_region_out_unnamed_atax15_atax_avm_write;

    // out_unnamed_atax15_atax_avm_writedata(GPOUT,65)
    assign out_unnamed_atax15_atax_avm_writedata = bb_atax_B5_stall_region_out_unnamed_atax15_atax_avm_writedata;

    // out_unnamed_atax17_atax_avm_address(GPOUT,66)
    assign out_unnamed_atax17_atax_avm_address = bb_atax_B5_stall_region_out_unnamed_atax17_atax_avm_address;

    // out_unnamed_atax17_atax_avm_burstcount(GPOUT,67)
    assign out_unnamed_atax17_atax_avm_burstcount = bb_atax_B5_stall_region_out_unnamed_atax17_atax_avm_burstcount;

    // out_unnamed_atax17_atax_avm_byteenable(GPOUT,68)
    assign out_unnamed_atax17_atax_avm_byteenable = bb_atax_B5_stall_region_out_unnamed_atax17_atax_avm_byteenable;

    // out_unnamed_atax17_atax_avm_enable(GPOUT,69)
    assign out_unnamed_atax17_atax_avm_enable = bb_atax_B5_stall_region_out_unnamed_atax17_atax_avm_enable;

    // out_unnamed_atax17_atax_avm_read(GPOUT,70)
    assign out_unnamed_atax17_atax_avm_read = bb_atax_B5_stall_region_out_unnamed_atax17_atax_avm_read;

    // out_unnamed_atax17_atax_avm_write(GPOUT,71)
    assign out_unnamed_atax17_atax_avm_write = bb_atax_B5_stall_region_out_unnamed_atax17_atax_avm_write;

    // out_unnamed_atax17_atax_avm_writedata(GPOUT,72)
    assign out_unnamed_atax17_atax_avm_writedata = bb_atax_B5_stall_region_out_unnamed_atax17_atax_avm_writedata;

    // out_valid_in_0(GPOUT,73)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,74)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,75)
    assign out_valid_out_0 = atax_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,76)
    assign out_valid_out_1 = atax_B5_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,78)
    assign out_pipeline_valid_out = bb_atax_B5_stall_region_out_pipeline_valid_out;

endmodule
