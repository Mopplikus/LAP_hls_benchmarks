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

// SystemVerilog created from bb_atax_B11
// Created for function/kernel atax
// SystemVerilog created on Wed Apr  5 13:55:59 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B11 (
    input wire [31:0] in_add119_0,
    input wire [31:0] in_add119_1,
    input wire [63:0] in_arrayidx36599_pop39122_0,
    input wire [63:0] in_arrayidx36599_pop39122_1,
    input wire [0:0] in_exitcond20101_pop40124_0,
    input wire [0:0] in_exitcond20101_pop40124_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked31_0,
    input wire [0:0] in_forked31_1,
    input wire [63:0] in_idxprom3597_pop38117_0,
    input wire [63:0] in_idxprom3597_pop38117_1,
    input wire [31:0] in_memdep_5_atax_avm_readdata,
    input wire [0:0] in_memdep_5_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_5_atax_avm_waitrequest,
    input wire [0:0] in_memdep_5_atax_avm_writeack,
    input wire [0:0] in_memdep_phi_pop20116_0,
    input wire [0:0] in_memdep_phi_pop20116_1,
    input wire [0:0] in_notcmp62103_pop41126_0,
    input wire [0:0] in_notcmp62103_pop41126_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_atax15_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax15_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax15_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax15_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax16_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax16_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax16_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax16_atax_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe2209,
    output wire [0:0] out_c0_exe3210,
    output wire [63:0] out_c0_exe5212,
    output wire [0:0] out_c0_exe6213,
    output wire [0:0] out_c0_exe7214,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_memdep_5_atax_avm_address,
    output wire [0:0] out_memdep_5_atax_avm_burstcount,
    output wire [3:0] out_memdep_5_atax_avm_byteenable,
    output wire [0:0] out_memdep_5_atax_avm_enable,
    output wire [0:0] out_memdep_5_atax_avm_read,
    output wire [0:0] out_memdep_5_atax_avm_write,
    output wire [31:0] out_memdep_5_atax_avm_writedata,
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
    output wire [31:0] out_unnamed_atax16_atax_avm_address,
    output wire [0:0] out_unnamed_atax16_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax16_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax16_atax_avm_enable,
    output wire [0:0] out_unnamed_atax16_atax_avm_read,
    output wire [0:0] out_unnamed_atax16_atax_avm_write,
    output wire [31:0] out_unnamed_atax16_atax_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [31:0] atax_B11_branch_out_c0_exe2209;
    wire [0:0] atax_B11_branch_out_c0_exe3210;
    wire [63:0] atax_B11_branch_out_c0_exe5212;
    wire [0:0] atax_B11_branch_out_c0_exe6213;
    wire [0:0] atax_B11_branch_out_c0_exe7214;
    wire [0:0] atax_B11_branch_out_stall_out;
    wire [0:0] atax_B11_branch_out_valid_out_0;
    wire [0:0] atax_B11_branch_out_valid_out_1;
    wire [31:0] atax_B11_merge_out_add119;
    wire [63:0] atax_B11_merge_out_arrayidx36599_pop39122;
    wire [0:0] atax_B11_merge_out_exitcond20101_pop40124;
    wire [0:0] atax_B11_merge_out_forked31;
    wire [63:0] atax_B11_merge_out_idxprom3597_pop38117;
    wire [0:0] atax_B11_merge_out_memdep_phi_pop20116;
    wire [0:0] atax_B11_merge_out_notcmp62103_pop41126;
    wire [0:0] atax_B11_merge_out_stall_out_0;
    wire [0:0] atax_B11_merge_out_stall_out_1;
    wire [0:0] atax_B11_merge_out_valid_out;
    wire [0:0] bb_atax_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_atax6_exiting_stall_out;
    wire [0:0] bb_atax_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_atax6_exiting_valid_out;
    wire [31:0] bb_atax_B11_stall_region_out_c0_exe2209;
    wire [0:0] bb_atax_B11_stall_region_out_c0_exe3210;
    wire [0:0] bb_atax_B11_stall_region_out_c0_exe4211;
    wire [63:0] bb_atax_B11_stall_region_out_c0_exe5212;
    wire [0:0] bb_atax_B11_stall_region_out_c0_exe6213;
    wire [0:0] bb_atax_B11_stall_region_out_c0_exe7214;
    wire [31:0] bb_atax_B11_stall_region_out_memdep_5_atax_avm_address;
    wire [0:0] bb_atax_B11_stall_region_out_memdep_5_atax_avm_burstcount;
    wire [3:0] bb_atax_B11_stall_region_out_memdep_5_atax_avm_byteenable;
    wire [0:0] bb_atax_B11_stall_region_out_memdep_5_atax_avm_enable;
    wire [0:0] bb_atax_B11_stall_region_out_memdep_5_atax_avm_read;
    wire [0:0] bb_atax_B11_stall_region_out_memdep_5_atax_avm_write;
    wire [31:0] bb_atax_B11_stall_region_out_memdep_5_atax_avm_writedata;
    wire [0:0] bb_atax_B11_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_atax_B11_stall_region_out_stall_out;
    wire [31:0] bb_atax_B11_stall_region_out_unnamed_atax15_atax_avm_address;
    wire [0:0] bb_atax_B11_stall_region_out_unnamed_atax15_atax_avm_burstcount;
    wire [3:0] bb_atax_B11_stall_region_out_unnamed_atax15_atax_avm_byteenable;
    wire [0:0] bb_atax_B11_stall_region_out_unnamed_atax15_atax_avm_enable;
    wire [0:0] bb_atax_B11_stall_region_out_unnamed_atax15_atax_avm_read;
    wire [0:0] bb_atax_B11_stall_region_out_unnamed_atax15_atax_avm_write;
    wire [31:0] bb_atax_B11_stall_region_out_unnamed_atax15_atax_avm_writedata;
    wire [31:0] bb_atax_B11_stall_region_out_unnamed_atax16_atax_avm_address;
    wire [0:0] bb_atax_B11_stall_region_out_unnamed_atax16_atax_avm_burstcount;
    wire [3:0] bb_atax_B11_stall_region_out_unnamed_atax16_atax_avm_byteenable;
    wire [0:0] bb_atax_B11_stall_region_out_unnamed_atax16_atax_avm_enable;
    wire [0:0] bb_atax_B11_stall_region_out_unnamed_atax16_atax_avm_read;
    wire [0:0] bb_atax_B11_stall_region_out_unnamed_atax16_atax_avm_write;
    wire [31:0] bb_atax_B11_stall_region_out_unnamed_atax16_atax_avm_writedata;
    wire [0:0] bb_atax_B11_stall_region_out_valid_out;


    // atax_B11_merge(BLACKBOX,3)
    atax_B11_merge theatax_B11_merge (
        .in_add119_0(in_add119_0),
        .in_add119_1(in_add119_1),
        .in_arrayidx36599_pop39122_0(in_arrayidx36599_pop39122_0),
        .in_arrayidx36599_pop39122_1(in_arrayidx36599_pop39122_1),
        .in_exitcond20101_pop40124_0(in_exitcond20101_pop40124_0),
        .in_exitcond20101_pop40124_1(in_exitcond20101_pop40124_1),
        .in_forked31_0(in_forked31_0),
        .in_forked31_1(in_forked31_1),
        .in_idxprom3597_pop38117_0(in_idxprom3597_pop38117_0),
        .in_idxprom3597_pop38117_1(in_idxprom3597_pop38117_1),
        .in_memdep_phi_pop20116_0(in_memdep_phi_pop20116_0),
        .in_memdep_phi_pop20116_1(in_memdep_phi_pop20116_1),
        .in_notcmp62103_pop41126_0(in_notcmp62103_pop41126_0),
        .in_notcmp62103_pop41126_1(in_notcmp62103_pop41126_1),
        .in_stall_in(bb_atax_B11_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add119(atax_B11_merge_out_add119),
        .out_arrayidx36599_pop39122(atax_B11_merge_out_arrayidx36599_pop39122),
        .out_exitcond20101_pop40124(atax_B11_merge_out_exitcond20101_pop40124),
        .out_forked31(atax_B11_merge_out_forked31),
        .out_idxprom3597_pop38117(atax_B11_merge_out_idxprom3597_pop38117),
        .out_memdep_phi_pop20116(atax_B11_merge_out_memdep_phi_pop20116),
        .out_notcmp62103_pop41126(atax_B11_merge_out_notcmp62103_pop41126),
        .out_stall_out_0(atax_B11_merge_out_stall_out_0),
        .out_stall_out_1(atax_B11_merge_out_stall_out_1),
        .out_valid_out(atax_B11_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B11_stall_region(BLACKBOX,4)
    atax_bb_B11_stall_region thebb_atax_B11_stall_region (
        .in_add119(atax_B11_merge_out_add119),
        .in_arrayidx36599_pop39122(atax_B11_merge_out_arrayidx36599_pop39122),
        .in_exitcond20101_pop40124(atax_B11_merge_out_exitcond20101_pop40124),
        .in_flush(in_flush),
        .in_forked31(atax_B11_merge_out_forked31),
        .in_idxprom3597_pop38117(atax_B11_merge_out_idxprom3597_pop38117),
        .in_memdep_5_atax_avm_readdata(in_memdep_5_atax_avm_readdata),
        .in_memdep_5_atax_avm_readdatavalid(in_memdep_5_atax_avm_readdatavalid),
        .in_memdep_5_atax_avm_waitrequest(in_memdep_5_atax_avm_waitrequest),
        .in_memdep_5_atax_avm_writeack(in_memdep_5_atax_avm_writeack),
        .in_memdep_phi_pop20116(atax_B11_merge_out_memdep_phi_pop20116),
        .in_notcmp62103_pop41126(atax_B11_merge_out_notcmp62103_pop41126),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(atax_B11_branch_out_stall_out),
        .in_unnamed_atax15_atax_avm_readdata(in_unnamed_atax15_atax_avm_readdata),
        .in_unnamed_atax15_atax_avm_readdatavalid(in_unnamed_atax15_atax_avm_readdatavalid),
        .in_unnamed_atax15_atax_avm_waitrequest(in_unnamed_atax15_atax_avm_waitrequest),
        .in_unnamed_atax15_atax_avm_writeack(in_unnamed_atax15_atax_avm_writeack),
        .in_unnamed_atax16_atax_avm_readdata(in_unnamed_atax16_atax_avm_readdata),
        .in_unnamed_atax16_atax_avm_readdatavalid(in_unnamed_atax16_atax_avm_readdatavalid),
        .in_unnamed_atax16_atax_avm_waitrequest(in_unnamed_atax16_atax_avm_waitrequest),
        .in_unnamed_atax16_atax_avm_writeack(in_unnamed_atax16_atax_avm_writeack),
        .in_valid_in(atax_B11_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_atax6_exiting_stall_out(bb_atax_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_atax6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_atax6_exiting_valid_out(bb_atax_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_atax6_exiting_valid_out),
        .out_c0_exe2209(bb_atax_B11_stall_region_out_c0_exe2209),
        .out_c0_exe3210(bb_atax_B11_stall_region_out_c0_exe3210),
        .out_c0_exe4211(bb_atax_B11_stall_region_out_c0_exe4211),
        .out_c0_exe5212(bb_atax_B11_stall_region_out_c0_exe5212),
        .out_c0_exe6213(bb_atax_B11_stall_region_out_c0_exe6213),
        .out_c0_exe7214(bb_atax_B11_stall_region_out_c0_exe7214),
        .out_memdep_5_atax_avm_address(bb_atax_B11_stall_region_out_memdep_5_atax_avm_address),
        .out_memdep_5_atax_avm_burstcount(bb_atax_B11_stall_region_out_memdep_5_atax_avm_burstcount),
        .out_memdep_5_atax_avm_byteenable(bb_atax_B11_stall_region_out_memdep_5_atax_avm_byteenable),
        .out_memdep_5_atax_avm_enable(bb_atax_B11_stall_region_out_memdep_5_atax_avm_enable),
        .out_memdep_5_atax_avm_read(bb_atax_B11_stall_region_out_memdep_5_atax_avm_read),
        .out_memdep_5_atax_avm_write(bb_atax_B11_stall_region_out_memdep_5_atax_avm_write),
        .out_memdep_5_atax_avm_writedata(bb_atax_B11_stall_region_out_memdep_5_atax_avm_writedata),
        .out_pipeline_valid_out(bb_atax_B11_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_atax_B11_stall_region_out_stall_out),
        .out_unnamed_atax15_atax_avm_address(bb_atax_B11_stall_region_out_unnamed_atax15_atax_avm_address),
        .out_unnamed_atax15_atax_avm_burstcount(bb_atax_B11_stall_region_out_unnamed_atax15_atax_avm_burstcount),
        .out_unnamed_atax15_atax_avm_byteenable(bb_atax_B11_stall_region_out_unnamed_atax15_atax_avm_byteenable),
        .out_unnamed_atax15_atax_avm_enable(bb_atax_B11_stall_region_out_unnamed_atax15_atax_avm_enable),
        .out_unnamed_atax15_atax_avm_read(bb_atax_B11_stall_region_out_unnamed_atax15_atax_avm_read),
        .out_unnamed_atax15_atax_avm_write(bb_atax_B11_stall_region_out_unnamed_atax15_atax_avm_write),
        .out_unnamed_atax15_atax_avm_writedata(bb_atax_B11_stall_region_out_unnamed_atax15_atax_avm_writedata),
        .out_unnamed_atax16_atax_avm_address(bb_atax_B11_stall_region_out_unnamed_atax16_atax_avm_address),
        .out_unnamed_atax16_atax_avm_burstcount(bb_atax_B11_stall_region_out_unnamed_atax16_atax_avm_burstcount),
        .out_unnamed_atax16_atax_avm_byteenable(bb_atax_B11_stall_region_out_unnamed_atax16_atax_avm_byteenable),
        .out_unnamed_atax16_atax_avm_enable(bb_atax_B11_stall_region_out_unnamed_atax16_atax_avm_enable),
        .out_unnamed_atax16_atax_avm_read(bb_atax_B11_stall_region_out_unnamed_atax16_atax_avm_read),
        .out_unnamed_atax16_atax_avm_write(bb_atax_B11_stall_region_out_unnamed_atax16_atax_avm_write),
        .out_unnamed_atax16_atax_avm_writedata(bb_atax_B11_stall_region_out_unnamed_atax16_atax_avm_writedata),
        .out_valid_out(bb_atax_B11_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B11_branch(BLACKBOX,2)
    atax_B11_branch theatax_B11_branch (
        .in_c0_exe2209(bb_atax_B11_stall_region_out_c0_exe2209),
        .in_c0_exe3210(bb_atax_B11_stall_region_out_c0_exe3210),
        .in_c0_exe4211(bb_atax_B11_stall_region_out_c0_exe4211),
        .in_c0_exe5212(bb_atax_B11_stall_region_out_c0_exe5212),
        .in_c0_exe6213(bb_atax_B11_stall_region_out_c0_exe6213),
        .in_c0_exe7214(bb_atax_B11_stall_region_out_c0_exe7214),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_atax_B11_stall_region_out_valid_out),
        .out_c0_exe2209(atax_B11_branch_out_c0_exe2209),
        .out_c0_exe3210(atax_B11_branch_out_c0_exe3210),
        .out_c0_exe5212(atax_B11_branch_out_c0_exe5212),
        .out_c0_exe6213(atax_B11_branch_out_c0_exe6213),
        .out_c0_exe7214(atax_B11_branch_out_c0_exe7214),
        .out_stall_out(atax_B11_branch_out_stall_out),
        .out_valid_out_0(atax_B11_branch_out_valid_out_0),
        .out_valid_out_1(atax_B11_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2209(GPOUT,36)
    assign out_c0_exe2209 = atax_B11_branch_out_c0_exe2209;

    // out_c0_exe3210(GPOUT,37)
    assign out_c0_exe3210 = atax_B11_branch_out_c0_exe3210;

    // out_c0_exe5212(GPOUT,38)
    assign out_c0_exe5212 = atax_B11_branch_out_c0_exe5212;

    // out_c0_exe6213(GPOUT,39)
    assign out_c0_exe6213 = atax_B11_branch_out_c0_exe6213;

    // out_c0_exe7214(GPOUT,40)
    assign out_c0_exe7214 = atax_B11_branch_out_c0_exe7214;

    // out_exiting_stall_out(GPOUT,41)
    assign out_exiting_stall_out = bb_atax_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_atax6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,42)
    assign out_exiting_valid_out = bb_atax_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_atax6_exiting_valid_out;

    // out_memdep_5_atax_avm_address(GPOUT,43)
    assign out_memdep_5_atax_avm_address = bb_atax_B11_stall_region_out_memdep_5_atax_avm_address;

    // out_memdep_5_atax_avm_burstcount(GPOUT,44)
    assign out_memdep_5_atax_avm_burstcount = bb_atax_B11_stall_region_out_memdep_5_atax_avm_burstcount;

    // out_memdep_5_atax_avm_byteenable(GPOUT,45)
    assign out_memdep_5_atax_avm_byteenable = bb_atax_B11_stall_region_out_memdep_5_atax_avm_byteenable;

    // out_memdep_5_atax_avm_enable(GPOUT,46)
    assign out_memdep_5_atax_avm_enable = bb_atax_B11_stall_region_out_memdep_5_atax_avm_enable;

    // out_memdep_5_atax_avm_read(GPOUT,47)
    assign out_memdep_5_atax_avm_read = bb_atax_B11_stall_region_out_memdep_5_atax_avm_read;

    // out_memdep_5_atax_avm_write(GPOUT,48)
    assign out_memdep_5_atax_avm_write = bb_atax_B11_stall_region_out_memdep_5_atax_avm_write;

    // out_memdep_5_atax_avm_writedata(GPOUT,49)
    assign out_memdep_5_atax_avm_writedata = bb_atax_B11_stall_region_out_memdep_5_atax_avm_writedata;

    // out_stall_in_0(GPOUT,50)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,51)
    assign out_stall_out_0 = atax_B11_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,52)
    assign out_stall_out_1 = atax_B11_merge_out_stall_out_1;

    // out_unnamed_atax15_atax_avm_address(GPOUT,53)
    assign out_unnamed_atax15_atax_avm_address = bb_atax_B11_stall_region_out_unnamed_atax15_atax_avm_address;

    // out_unnamed_atax15_atax_avm_burstcount(GPOUT,54)
    assign out_unnamed_atax15_atax_avm_burstcount = bb_atax_B11_stall_region_out_unnamed_atax15_atax_avm_burstcount;

    // out_unnamed_atax15_atax_avm_byteenable(GPOUT,55)
    assign out_unnamed_atax15_atax_avm_byteenable = bb_atax_B11_stall_region_out_unnamed_atax15_atax_avm_byteenable;

    // out_unnamed_atax15_atax_avm_enable(GPOUT,56)
    assign out_unnamed_atax15_atax_avm_enable = bb_atax_B11_stall_region_out_unnamed_atax15_atax_avm_enable;

    // out_unnamed_atax15_atax_avm_read(GPOUT,57)
    assign out_unnamed_atax15_atax_avm_read = bb_atax_B11_stall_region_out_unnamed_atax15_atax_avm_read;

    // out_unnamed_atax15_atax_avm_write(GPOUT,58)
    assign out_unnamed_atax15_atax_avm_write = bb_atax_B11_stall_region_out_unnamed_atax15_atax_avm_write;

    // out_unnamed_atax15_atax_avm_writedata(GPOUT,59)
    assign out_unnamed_atax15_atax_avm_writedata = bb_atax_B11_stall_region_out_unnamed_atax15_atax_avm_writedata;

    // out_unnamed_atax16_atax_avm_address(GPOUT,60)
    assign out_unnamed_atax16_atax_avm_address = bb_atax_B11_stall_region_out_unnamed_atax16_atax_avm_address;

    // out_unnamed_atax16_atax_avm_burstcount(GPOUT,61)
    assign out_unnamed_atax16_atax_avm_burstcount = bb_atax_B11_stall_region_out_unnamed_atax16_atax_avm_burstcount;

    // out_unnamed_atax16_atax_avm_byteenable(GPOUT,62)
    assign out_unnamed_atax16_atax_avm_byteenable = bb_atax_B11_stall_region_out_unnamed_atax16_atax_avm_byteenable;

    // out_unnamed_atax16_atax_avm_enable(GPOUT,63)
    assign out_unnamed_atax16_atax_avm_enable = bb_atax_B11_stall_region_out_unnamed_atax16_atax_avm_enable;

    // out_unnamed_atax16_atax_avm_read(GPOUT,64)
    assign out_unnamed_atax16_atax_avm_read = bb_atax_B11_stall_region_out_unnamed_atax16_atax_avm_read;

    // out_unnamed_atax16_atax_avm_write(GPOUT,65)
    assign out_unnamed_atax16_atax_avm_write = bb_atax_B11_stall_region_out_unnamed_atax16_atax_avm_write;

    // out_unnamed_atax16_atax_avm_writedata(GPOUT,66)
    assign out_unnamed_atax16_atax_avm_writedata = bb_atax_B11_stall_region_out_unnamed_atax16_atax_avm_writedata;

    // out_valid_in_0(GPOUT,67)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,68)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,69)
    assign out_valid_out_0 = atax_B11_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,70)
    assign out_valid_out_1 = atax_B11_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,72)
    assign out_pipeline_valid_out = bb_atax_B11_stall_region_out_pipeline_valid_out;

endmodule
