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

// SystemVerilog created from bb_kernel_3mm_B16
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:03 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B16 (
    input wire [63:0] in_arrayidx14914225_0,
    input wire [63:0] in_arrayidx14914225_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked55_0,
    input wire [0:0] in_forked55_1,
    input wire [31:0] in_i_394_pop31163_pop47222_0,
    input wire [31:0] in_i_394_pop31163_pop47222_1,
    input wire [31:0] in_i_394_pop31221_0,
    input wire [31:0] in_i_394_pop31221_1,
    input wire [63:0] in_idxprom146223_0,
    input wire [63:0] in_idxprom146223_1,
    input wire [63:0] in_idxprom148224_0,
    input wire [63:0] in_idxprom148224_1,
    input wire [0:0] in_notcmp70226_0,
    input wire [0:0] in_notcmp70226_1,
    input wire [0:0] in_notcmp75161_pop46227_0,
    input wire [0:0] in_notcmp75161_pop46227_1,
    input wire [0:0] in_notcmp75218_0,
    input wire [0:0] in_notcmp75218_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_kernel_3mm26_0,
    input wire [31:0] in_unnamed_kernel_3mm26_1,
    input wire [31:0] in_unnamed_kernel_3mm27_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm27_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm27_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm27_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm28_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm28_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm28_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm28_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe2435,
    output wire [0:0] out_c0_exe4437,
    output wire [63:0] out_c0_exe5438,
    output wire [0:0] out_c0_exe6439,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm28_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm28_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm28_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm28_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_exiting_valid_out;
    wire [31:0] bb_kernel_3mm_B16_stall_region_out_c0_exe2435;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_c0_exe3436;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_c0_exe4437;
    wire [63:0] bb_kernel_3mm_B16_stall_region_out_c0_exe5438;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_c0_exe6439;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_stall_out;
    wire [31:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm28_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm28_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm28_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm28_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B16_stall_region_out_valid_out;
    wire [31:0] kernel_3mm_B16_branch_out_c0_exe2435;
    wire [0:0] kernel_3mm_B16_branch_out_c0_exe4437;
    wire [63:0] kernel_3mm_B16_branch_out_c0_exe5438;
    wire [0:0] kernel_3mm_B16_branch_out_c0_exe6439;
    wire [0:0] kernel_3mm_B16_branch_out_stall_out;
    wire [0:0] kernel_3mm_B16_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B16_branch_out_valid_out_1;
    wire [63:0] kernel_3mm_B16_merge_out_arrayidx14914225;
    wire [0:0] kernel_3mm_B16_merge_out_forked55;
    wire [31:0] kernel_3mm_B16_merge_out_i_394_pop31163_pop47222;
    wire [31:0] kernel_3mm_B16_merge_out_i_394_pop31221;
    wire [63:0] kernel_3mm_B16_merge_out_idxprom146223;
    wire [63:0] kernel_3mm_B16_merge_out_idxprom148224;
    wire [0:0] kernel_3mm_B16_merge_out_notcmp70226;
    wire [0:0] kernel_3mm_B16_merge_out_notcmp75161_pop46227;
    wire [0:0] kernel_3mm_B16_merge_out_notcmp75218;
    wire [0:0] kernel_3mm_B16_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B16_merge_out_stall_out_1;
    wire [31:0] kernel_3mm_B16_merge_out_unnamed_kernel_3mm26;
    wire [0:0] kernel_3mm_B16_merge_out_valid_out;


    // kernel_3mm_B16_merge(BLACKBOX,37)
    kernel_3mm_B16_merge thekernel_3mm_B16_merge (
        .in_arrayidx14914225_0(in_arrayidx14914225_0),
        .in_arrayidx14914225_1(in_arrayidx14914225_1),
        .in_forked55_0(in_forked55_0),
        .in_forked55_1(in_forked55_1),
        .in_i_394_pop31163_pop47222_0(in_i_394_pop31163_pop47222_0),
        .in_i_394_pop31163_pop47222_1(in_i_394_pop31163_pop47222_1),
        .in_i_394_pop31221_0(in_i_394_pop31221_0),
        .in_i_394_pop31221_1(in_i_394_pop31221_1),
        .in_idxprom146223_0(in_idxprom146223_0),
        .in_idxprom146223_1(in_idxprom146223_1),
        .in_idxprom148224_0(in_idxprom148224_0),
        .in_idxprom148224_1(in_idxprom148224_1),
        .in_notcmp70226_0(in_notcmp70226_0),
        .in_notcmp70226_1(in_notcmp70226_1),
        .in_notcmp75161_pop46227_0(in_notcmp75161_pop46227_0),
        .in_notcmp75161_pop46227_1(in_notcmp75161_pop46227_1),
        .in_notcmp75218_0(in_notcmp75218_0),
        .in_notcmp75218_1(in_notcmp75218_1),
        .in_stall_in(bb_kernel_3mm_B16_stall_region_out_stall_out),
        .in_unnamed_kernel_3mm26_0(in_unnamed_kernel_3mm26_0),
        .in_unnamed_kernel_3mm26_1(in_unnamed_kernel_3mm26_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_arrayidx14914225(kernel_3mm_B16_merge_out_arrayidx14914225),
        .out_forked55(kernel_3mm_B16_merge_out_forked55),
        .out_i_394_pop31163_pop47222(kernel_3mm_B16_merge_out_i_394_pop31163_pop47222),
        .out_i_394_pop31221(kernel_3mm_B16_merge_out_i_394_pop31221),
        .out_idxprom146223(kernel_3mm_B16_merge_out_idxprom146223),
        .out_idxprom148224(kernel_3mm_B16_merge_out_idxprom148224),
        .out_notcmp70226(kernel_3mm_B16_merge_out_notcmp70226),
        .out_notcmp75161_pop46227(kernel_3mm_B16_merge_out_notcmp75161_pop46227),
        .out_notcmp75218(kernel_3mm_B16_merge_out_notcmp75218),
        .out_stall_out_0(kernel_3mm_B16_merge_out_stall_out_0),
        .out_stall_out_1(kernel_3mm_B16_merge_out_stall_out_1),
        .out_unnamed_kernel_3mm26(kernel_3mm_B16_merge_out_unnamed_kernel_3mm26),
        .out_valid_out(kernel_3mm_B16_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B16_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B16_stall_region thebb_kernel_3mm_B16_stall_region (
        .in_arrayidx14914225(kernel_3mm_B16_merge_out_arrayidx14914225),
        .in_flush(in_flush),
        .in_forked55(kernel_3mm_B16_merge_out_forked55),
        .in_i_394_pop31163_pop47222(kernel_3mm_B16_merge_out_i_394_pop31163_pop47222),
        .in_i_394_pop31221(kernel_3mm_B16_merge_out_i_394_pop31221),
        .in_idxprom146223(kernel_3mm_B16_merge_out_idxprom146223),
        .in_idxprom148224(kernel_3mm_B16_merge_out_idxprom148224),
        .in_notcmp70226(kernel_3mm_B16_merge_out_notcmp70226),
        .in_notcmp75161_pop46227(kernel_3mm_B16_merge_out_notcmp75161_pop46227),
        .in_notcmp75218(kernel_3mm_B16_merge_out_notcmp75218),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_3mm_B16_branch_out_stall_out),
        .in_unnamed_kernel_3mm26(kernel_3mm_B16_merge_out_unnamed_kernel_3mm26),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm27_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm27_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm27_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm27_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm28_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm28_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm28_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm28_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm28_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm28_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm28_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm28_kernel_3mm_avm_writeack),
        .in_valid_in(kernel_3mm_B16_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_exiting_stall_out(bb_kernel_3mm_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_exiting_valid_out(bb_kernel_3mm_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_exiting_valid_out),
        .out_c0_exe2435(bb_kernel_3mm_B16_stall_region_out_c0_exe2435),
        .out_c0_exe3436(bb_kernel_3mm_B16_stall_region_out_c0_exe3436),
        .out_c0_exe4437(bb_kernel_3mm_B16_stall_region_out_c0_exe4437),
        .out_c0_exe5438(bb_kernel_3mm_B16_stall_region_out_c0_exe5438),
        .out_c0_exe6439(bb_kernel_3mm_B16_stall_region_out_c0_exe6439),
        .out_pipeline_valid_out(bb_kernel_3mm_B16_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_3mm_B16_stall_region_out_stall_out),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_address(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_enable(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_read(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_write(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_address(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm28_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_enable(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm28_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_read(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm28_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_write(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm28_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata(bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata),
        .out_valid_out(bb_kernel_3mm_B16_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B16_branch(BLACKBOX,36)
    kernel_3mm_B16_branch thekernel_3mm_B16_branch (
        .in_c0_exe2435(bb_kernel_3mm_B16_stall_region_out_c0_exe2435),
        .in_c0_exe3436(bb_kernel_3mm_B16_stall_region_out_c0_exe3436),
        .in_c0_exe4437(bb_kernel_3mm_B16_stall_region_out_c0_exe4437),
        .in_c0_exe5438(bb_kernel_3mm_B16_stall_region_out_c0_exe5438),
        .in_c0_exe6439(bb_kernel_3mm_B16_stall_region_out_c0_exe6439),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_3mm_B16_stall_region_out_valid_out),
        .out_c0_exe2435(kernel_3mm_B16_branch_out_c0_exe2435),
        .out_c0_exe4437(kernel_3mm_B16_branch_out_c0_exe4437),
        .out_c0_exe5438(kernel_3mm_B16_branch_out_c0_exe5438),
        .out_c0_exe6439(kernel_3mm_B16_branch_out_c0_exe6439),
        .out_stall_out(kernel_3mm_B16_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B16_branch_out_valid_out_0),
        .out_valid_out_1(kernel_3mm_B16_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2435(GPOUT,38)
    assign out_c0_exe2435 = kernel_3mm_B16_branch_out_c0_exe2435;

    // out_c0_exe4437(GPOUT,39)
    assign out_c0_exe4437 = kernel_3mm_B16_branch_out_c0_exe4437;

    // out_c0_exe5438(GPOUT,40)
    assign out_c0_exe5438 = kernel_3mm_B16_branch_out_c0_exe5438;

    // out_c0_exe6439(GPOUT,41)
    assign out_c0_exe6439 = kernel_3mm_B16_branch_out_c0_exe6439;

    // out_exiting_stall_out(GPOUT,42)
    assign out_exiting_stall_out = bb_kernel_3mm_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,43)
    assign out_exiting_valid_out = bb_kernel_3mm_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_exiting_valid_out;

    // out_stall_in_0(GPOUT,44)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,45)
    assign out_stall_out_0 = kernel_3mm_B16_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,46)
    assign out_stall_out_1 = kernel_3mm_B16_merge_out_stall_out_1;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_address(GPOUT,47)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_address = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount(GPOUT,48)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable(GPOUT,49)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_enable(GPOUT,50)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_enable = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_read(GPOUT,51)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_read = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_write(GPOUT,52)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_write = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata(GPOUT,53)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm28_kernel_3mm_avm_address(GPOUT,54)
    assign out_unnamed_kernel_3mm28_kernel_3mm_avm_address = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm28_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount(GPOUT,55)
    assign out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable(GPOUT,56)
    assign out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm28_kernel_3mm_avm_enable(GPOUT,57)
    assign out_unnamed_kernel_3mm28_kernel_3mm_avm_enable = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm28_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm28_kernel_3mm_avm_read(GPOUT,58)
    assign out_unnamed_kernel_3mm28_kernel_3mm_avm_read = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm28_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm28_kernel_3mm_avm_write(GPOUT,59)
    assign out_unnamed_kernel_3mm28_kernel_3mm_avm_write = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm28_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata(GPOUT,60)
    assign out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata = bb_kernel_3mm_B16_stall_region_out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata;

    // out_valid_in_0(GPOUT,61)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,62)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,63)
    assign out_valid_out_0 = kernel_3mm_B16_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,64)
    assign out_valid_out_1 = kernel_3mm_B16_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,66)
    assign out_pipeline_valid_out = bb_kernel_3mm_B16_stall_region_out_pipeline_valid_out;

endmodule
