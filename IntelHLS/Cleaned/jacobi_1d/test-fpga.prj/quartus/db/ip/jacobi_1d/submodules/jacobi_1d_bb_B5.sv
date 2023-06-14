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

// SystemVerilog created from bb_jacobi_1d_B5
// Created for function/kernel jacobi_1d
// SystemVerilog created on Tue Jun 13 02:54:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_bb_B5 (
    input wire [0:0] in_exitcond1749_pop1968_0,
    input wire [0:0] in_exitcond1749_pop1968_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_mPtr_bitcast707663_0,
    input wire [63:0] in_mPtr_bitcast707663_1,
    input wire [31:0] in_memdep_5_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_5_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_memdep_5_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_5_jacobi_1d_avm_writeack,
    input wire [0:0] in_memdep_phi6_pop1355_pop2365_0,
    input wire [0:0] in_memdep_phi6_pop1355_pop2365_1,
    input wire [0:0] in_notcmp3951_pop2070_0,
    input wire [0:0] in_notcmp3951_pop2070_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_jacobi_1d13_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d13_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d13_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d13_jacobi_1d_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond1750_pop29,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_lsu_memdep_5_o_active,
    output wire [31:0] out_memdep_5_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_5_jacobi_1d_avm_burstcount,
    output wire [3:0] out_memdep_5_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_5_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_5_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_5_jacobi_1d_avm_write,
    output wire [31:0] out_memdep_5_jacobi_1d_avm_writedata,
    output wire [0:0] out_notcmp3952_pop30,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_toi1_intcast,
    output wire [31:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount,
    output wire [3:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_jacobi_1d_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_exiting_stall_out;
    wire [0:0] bb_jacobi_1d_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_exiting_valid_out;
    wire [0:0] bb_jacobi_1d_B5_stall_region_out_exitcond1750_pop29;
    wire [0:0] bb_jacobi_1d_B5_stall_region_out_lsu_memdep_5_o_active;
    wire [0:0] bb_jacobi_1d_B5_stall_region_out_masked;
    wire [31:0] bb_jacobi_1d_B5_stall_region_out_memdep_5_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B5_stall_region_out_memdep_5_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B5_stall_region_out_memdep_5_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B5_stall_region_out_memdep_5_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B5_stall_region_out_memdep_5_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B5_stall_region_out_memdep_5_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B5_stall_region_out_memdep_5_jacobi_1d_avm_writedata;
    wire [0:0] bb_jacobi_1d_B5_stall_region_out_notcmp3952_pop30;
    wire [0:0] bb_jacobi_1d_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_jacobi_1d_B5_stall_region_out_stall_out;
    wire [0:0] bb_jacobi_1d_B5_stall_region_out_toi1_intcast;
    wire [31:0] bb_jacobi_1d_B5_stall_region_out_unnamed_jacobi_1d13_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B5_stall_region_out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B5_stall_region_out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B5_stall_region_out_unnamed_jacobi_1d13_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B5_stall_region_out_unnamed_jacobi_1d13_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B5_stall_region_out_unnamed_jacobi_1d13_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B5_stall_region_out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata;
    wire [0:0] bb_jacobi_1d_B5_stall_region_out_valid_out;
    wire [0:0] jacobi_1d_B5_branch_out_exitcond1750_pop29;
    wire [0:0] jacobi_1d_B5_branch_out_notcmp3952_pop30;
    wire [0:0] jacobi_1d_B5_branch_out_stall_out;
    wire [0:0] jacobi_1d_B5_branch_out_toi1_intcast;
    wire [0:0] jacobi_1d_B5_branch_out_valid_out_0;
    wire [0:0] jacobi_1d_B5_branch_out_valid_out_1;
    wire [0:0] jacobi_1d_B5_merge_out_exitcond1749_pop1968;
    wire [0:0] jacobi_1d_B5_merge_out_forked;
    wire [63:0] jacobi_1d_B5_merge_out_mPtr_bitcast707663;
    wire [0:0] jacobi_1d_B5_merge_out_memdep_phi6_pop1355_pop2365;
    wire [0:0] jacobi_1d_B5_merge_out_notcmp3951_pop2070;
    wire [0:0] jacobi_1d_B5_merge_out_stall_out_0;
    wire [0:0] jacobi_1d_B5_merge_out_stall_out_1;
    wire [0:0] jacobi_1d_B5_merge_out_valid_out;


    // jacobi_1d_B5_merge(BLACKBOX,28)
    jacobi_1d_B5_merge thejacobi_1d_B5_merge (
        .in_exitcond1749_pop1968_0(in_exitcond1749_pop1968_0),
        .in_exitcond1749_pop1968_1(in_exitcond1749_pop1968_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_mPtr_bitcast707663_0(in_mPtr_bitcast707663_0),
        .in_mPtr_bitcast707663_1(in_mPtr_bitcast707663_1),
        .in_memdep_phi6_pop1355_pop2365_0(in_memdep_phi6_pop1355_pop2365_0),
        .in_memdep_phi6_pop1355_pop2365_1(in_memdep_phi6_pop1355_pop2365_1),
        .in_notcmp3951_pop2070_0(in_notcmp3951_pop2070_0),
        .in_notcmp3951_pop2070_1(in_notcmp3951_pop2070_1),
        .in_stall_in(bb_jacobi_1d_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond1749_pop1968(jacobi_1d_B5_merge_out_exitcond1749_pop1968),
        .out_forked(jacobi_1d_B5_merge_out_forked),
        .out_mPtr_bitcast707663(jacobi_1d_B5_merge_out_mPtr_bitcast707663),
        .out_memdep_phi6_pop1355_pop2365(jacobi_1d_B5_merge_out_memdep_phi6_pop1355_pop2365),
        .out_notcmp3951_pop2070(jacobi_1d_B5_merge_out_notcmp3951_pop2070),
        .out_stall_out_0(jacobi_1d_B5_merge_out_stall_out_0),
        .out_stall_out_1(jacobi_1d_B5_merge_out_stall_out_1),
        .out_valid_out(jacobi_1d_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B5_stall_region(BLACKBOX,2)
    jacobi_1d_bb_B5_stall_region thebb_jacobi_1d_B5_stall_region (
        .in_exitcond1749_pop1968(jacobi_1d_B5_merge_out_exitcond1749_pop1968),
        .in_flush(in_flush),
        .in_forked(jacobi_1d_B5_merge_out_forked),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_mPtr_bitcast707663(jacobi_1d_B5_merge_out_mPtr_bitcast707663),
        .in_memdep_5_jacobi_1d_avm_readdata(in_memdep_5_jacobi_1d_avm_readdata),
        .in_memdep_5_jacobi_1d_avm_readdatavalid(in_memdep_5_jacobi_1d_avm_readdatavalid),
        .in_memdep_5_jacobi_1d_avm_waitrequest(in_memdep_5_jacobi_1d_avm_waitrequest),
        .in_memdep_5_jacobi_1d_avm_writeack(in_memdep_5_jacobi_1d_avm_writeack),
        .in_memdep_phi6_pop1355_pop2365(jacobi_1d_B5_merge_out_memdep_phi6_pop1355_pop2365),
        .in_notcmp3951_pop2070(jacobi_1d_B5_merge_out_notcmp3951_pop2070),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(jacobi_1d_B5_branch_out_stall_out),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d13_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d13_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d13_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d13_jacobi_1d_avm_writeack),
        .in_valid_in(jacobi_1d_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_exiting_stall_out(bb_jacobi_1d_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_exiting_valid_out(bb_jacobi_1d_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_exiting_valid_out),
        .out_exitcond1750_pop29(bb_jacobi_1d_B5_stall_region_out_exitcond1750_pop29),
        .out_lsu_memdep_5_o_active(bb_jacobi_1d_B5_stall_region_out_lsu_memdep_5_o_active),
        .out_masked(bb_jacobi_1d_B5_stall_region_out_masked),
        .out_memdep_5_jacobi_1d_avm_address(bb_jacobi_1d_B5_stall_region_out_memdep_5_jacobi_1d_avm_address),
        .out_memdep_5_jacobi_1d_avm_burstcount(bb_jacobi_1d_B5_stall_region_out_memdep_5_jacobi_1d_avm_burstcount),
        .out_memdep_5_jacobi_1d_avm_byteenable(bb_jacobi_1d_B5_stall_region_out_memdep_5_jacobi_1d_avm_byteenable),
        .out_memdep_5_jacobi_1d_avm_enable(bb_jacobi_1d_B5_stall_region_out_memdep_5_jacobi_1d_avm_enable),
        .out_memdep_5_jacobi_1d_avm_read(bb_jacobi_1d_B5_stall_region_out_memdep_5_jacobi_1d_avm_read),
        .out_memdep_5_jacobi_1d_avm_write(bb_jacobi_1d_B5_stall_region_out_memdep_5_jacobi_1d_avm_write),
        .out_memdep_5_jacobi_1d_avm_writedata(bb_jacobi_1d_B5_stall_region_out_memdep_5_jacobi_1d_avm_writedata),
        .out_notcmp3952_pop30(bb_jacobi_1d_B5_stall_region_out_notcmp3952_pop30),
        .out_pipeline_valid_out(bb_jacobi_1d_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_jacobi_1d_B5_stall_region_out_stall_out),
        .out_toi1_intcast(bb_jacobi_1d_B5_stall_region_out_toi1_intcast),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_address(bb_jacobi_1d_B5_stall_region_out_unnamed_jacobi_1d13_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount(bb_jacobi_1d_B5_stall_region_out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable(bb_jacobi_1d_B5_stall_region_out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_enable(bb_jacobi_1d_B5_stall_region_out_unnamed_jacobi_1d13_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_read(bb_jacobi_1d_B5_stall_region_out_unnamed_jacobi_1d13_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_write(bb_jacobi_1d_B5_stall_region_out_unnamed_jacobi_1d13_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata(bb_jacobi_1d_B5_stall_region_out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata),
        .out_valid_out(bb_jacobi_1d_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // jacobi_1d_B5_branch(BLACKBOX,27)
    jacobi_1d_B5_branch thejacobi_1d_B5_branch (
        .in_exitcond1750_pop29(bb_jacobi_1d_B5_stall_region_out_exitcond1750_pop29),
        .in_masked(bb_jacobi_1d_B5_stall_region_out_masked),
        .in_notcmp3952_pop30(bb_jacobi_1d_B5_stall_region_out_notcmp3952_pop30),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_toi1_intcast(bb_jacobi_1d_B5_stall_region_out_toi1_intcast),
        .in_valid_in(bb_jacobi_1d_B5_stall_region_out_valid_out),
        .out_exitcond1750_pop29(jacobi_1d_B5_branch_out_exitcond1750_pop29),
        .out_notcmp3952_pop30(jacobi_1d_B5_branch_out_notcmp3952_pop30),
        .out_stall_out(jacobi_1d_B5_branch_out_stall_out),
        .out_toi1_intcast(jacobi_1d_B5_branch_out_toi1_intcast),
        .out_valid_out_0(jacobi_1d_B5_branch_out_valid_out_0),
        .out_valid_out_1(jacobi_1d_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exitcond1750_pop29(GPOUT,29)
    assign out_exitcond1750_pop29 = jacobi_1d_B5_branch_out_exitcond1750_pop29;

    // out_exiting_stall_out(GPOUT,30)
    assign out_exiting_stall_out = bb_jacobi_1d_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,31)
    assign out_exiting_valid_out = bb_jacobi_1d_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_exiting_valid_out;

    // out_lsu_memdep_5_o_active(GPOUT,32)
    assign out_lsu_memdep_5_o_active = bb_jacobi_1d_B5_stall_region_out_lsu_memdep_5_o_active;

    // out_memdep_5_jacobi_1d_avm_address(GPOUT,33)
    assign out_memdep_5_jacobi_1d_avm_address = bb_jacobi_1d_B5_stall_region_out_memdep_5_jacobi_1d_avm_address;

    // out_memdep_5_jacobi_1d_avm_burstcount(GPOUT,34)
    assign out_memdep_5_jacobi_1d_avm_burstcount = bb_jacobi_1d_B5_stall_region_out_memdep_5_jacobi_1d_avm_burstcount;

    // out_memdep_5_jacobi_1d_avm_byteenable(GPOUT,35)
    assign out_memdep_5_jacobi_1d_avm_byteenable = bb_jacobi_1d_B5_stall_region_out_memdep_5_jacobi_1d_avm_byteenable;

    // out_memdep_5_jacobi_1d_avm_enable(GPOUT,36)
    assign out_memdep_5_jacobi_1d_avm_enable = bb_jacobi_1d_B5_stall_region_out_memdep_5_jacobi_1d_avm_enable;

    // out_memdep_5_jacobi_1d_avm_read(GPOUT,37)
    assign out_memdep_5_jacobi_1d_avm_read = bb_jacobi_1d_B5_stall_region_out_memdep_5_jacobi_1d_avm_read;

    // out_memdep_5_jacobi_1d_avm_write(GPOUT,38)
    assign out_memdep_5_jacobi_1d_avm_write = bb_jacobi_1d_B5_stall_region_out_memdep_5_jacobi_1d_avm_write;

    // out_memdep_5_jacobi_1d_avm_writedata(GPOUT,39)
    assign out_memdep_5_jacobi_1d_avm_writedata = bb_jacobi_1d_B5_stall_region_out_memdep_5_jacobi_1d_avm_writedata;

    // out_notcmp3952_pop30(GPOUT,40)
    assign out_notcmp3952_pop30 = jacobi_1d_B5_branch_out_notcmp3952_pop30;

    // out_stall_in_0(GPOUT,41)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,42)
    assign out_stall_out_0 = jacobi_1d_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,43)
    assign out_stall_out_1 = jacobi_1d_B5_merge_out_stall_out_1;

    // out_toi1_intcast(GPOUT,44)
    assign out_toi1_intcast = jacobi_1d_B5_branch_out_toi1_intcast;

    // out_unnamed_jacobi_1d13_jacobi_1d_avm_address(GPOUT,45)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_address = bb_jacobi_1d_B5_stall_region_out_unnamed_jacobi_1d13_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount(GPOUT,46)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount = bb_jacobi_1d_B5_stall_region_out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable(GPOUT,47)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable = bb_jacobi_1d_B5_stall_region_out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d13_jacobi_1d_avm_enable(GPOUT,48)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_enable = bb_jacobi_1d_B5_stall_region_out_unnamed_jacobi_1d13_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d13_jacobi_1d_avm_read(GPOUT,49)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_read = bb_jacobi_1d_B5_stall_region_out_unnamed_jacobi_1d13_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d13_jacobi_1d_avm_write(GPOUT,50)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_write = bb_jacobi_1d_B5_stall_region_out_unnamed_jacobi_1d13_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata(GPOUT,51)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata = bb_jacobi_1d_B5_stall_region_out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata;

    // out_valid_in_0(GPOUT,52)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,53)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,54)
    assign out_valid_out_0 = jacobi_1d_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,55)
    assign out_valid_out_1 = jacobi_1d_B5_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,57)
    assign out_pipeline_valid_out = bb_jacobi_1d_B5_stall_region_out_pipeline_valid_out;

endmodule
