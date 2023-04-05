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

// SystemVerilog created from bb_kernel_2mm_B13
// Created for function/kernel kernel_2mm
// SystemVerilog created on Wed Apr  5 01:12:28 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B13 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked128_0,
    input wire [0:0] in_forked128_1,
    input wire [63:0] in_idxprom57133_pop55155_0,
    input wire [63:0] in_idxprom57133_pop55155_1,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_notcmp86123_pop53161_0,
    input wire [0:0] in_notcmp86123_pop53161_1,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_kernel_2mm17_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm17_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm17_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm17_kernel_2mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_c0_exe1277,
    output wire [63:0] out_c0_exe2278,
    output wire [63:0] out_c0_exe3279,
    output wire [31:0] out_c0_exe4280,
    output wire [0:0] out_c0_exe6282,
    output wire [0:0] out_c0_exe7283,
    output wire [63:0] out_c0_exe8284,
    output wire [0:0] out_c0_exe9285,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_2mm17_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm17_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm17_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm17_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm17_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm17_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm17_kernel_2mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_2mm_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_exiting_valid_out;
    wire [63:0] bb_kernel_2mm_B13_stall_region_out_c0_exe1277;
    wire [63:0] bb_kernel_2mm_B13_stall_region_out_c0_exe2278;
    wire [63:0] bb_kernel_2mm_B13_stall_region_out_c0_exe3279;
    wire [31:0] bb_kernel_2mm_B13_stall_region_out_c0_exe4280;
    wire [0:0] bb_kernel_2mm_B13_stall_region_out_c0_exe6282;
    wire [0:0] bb_kernel_2mm_B13_stall_region_out_c0_exe7283;
    wire [63:0] bb_kernel_2mm_B13_stall_region_out_c0_exe8284;
    wire [0:0] bb_kernel_2mm_B13_stall_region_out_c0_exe9285;
    wire [0:0] bb_kernel_2mm_B13_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B13_stall_region_out_stall_out;
    wire [31:0] bb_kernel_2mm_B13_stall_region_out_unnamed_kernel_2mm17_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B13_stall_region_out_unnamed_kernel_2mm17_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B13_stall_region_out_unnamed_kernel_2mm17_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B13_stall_region_out_unnamed_kernel_2mm17_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B13_stall_region_out_unnamed_kernel_2mm17_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B13_stall_region_out_unnamed_kernel_2mm17_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B13_stall_region_out_unnamed_kernel_2mm17_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B13_stall_region_out_valid_out;
    wire [63:0] kernel_2mm_B13_branch_out_c0_exe1277;
    wire [63:0] kernel_2mm_B13_branch_out_c0_exe2278;
    wire [63:0] kernel_2mm_B13_branch_out_c0_exe3279;
    wire [31:0] kernel_2mm_B13_branch_out_c0_exe4280;
    wire [0:0] kernel_2mm_B13_branch_out_c0_exe6282;
    wire [0:0] kernel_2mm_B13_branch_out_c0_exe7283;
    wire [63:0] kernel_2mm_B13_branch_out_c0_exe8284;
    wire [0:0] kernel_2mm_B13_branch_out_c0_exe9285;
    wire [0:0] kernel_2mm_B13_branch_out_stall_out;
    wire [0:0] kernel_2mm_B13_branch_out_valid_out_0;
    wire [0:0] kernel_2mm_B13_merge_out_forked128;
    wire [63:0] kernel_2mm_B13_merge_out_idxprom57133_pop55155;
    wire [0:0] kernel_2mm_B13_merge_out_notcmp86123_pop53161;
    wire [0:0] kernel_2mm_B13_merge_out_stall_out_0;
    wire [0:0] kernel_2mm_B13_merge_out_stall_out_1;
    wire [0:0] kernel_2mm_B13_merge_out_valid_out;


    // kernel_2mm_B13_merge(BLACKBOX,19)
    kernel_2mm_B13_merge thekernel_2mm_B13_merge (
        .in_forked128_0(in_forked128_0),
        .in_forked128_1(in_forked128_1),
        .in_idxprom57133_pop55155_0(in_idxprom57133_pop55155_0),
        .in_idxprom57133_pop55155_1(in_idxprom57133_pop55155_1),
        .in_notcmp86123_pop53161_0(in_notcmp86123_pop53161_0),
        .in_notcmp86123_pop53161_1(in_notcmp86123_pop53161_1),
        .in_stall_in(bb_kernel_2mm_B13_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked128(kernel_2mm_B13_merge_out_forked128),
        .out_idxprom57133_pop55155(kernel_2mm_B13_merge_out_idxprom57133_pop55155),
        .out_notcmp86123_pop53161(kernel_2mm_B13_merge_out_notcmp86123_pop53161),
        .out_stall_out_0(kernel_2mm_B13_merge_out_stall_out_0),
        .out_stall_out_1(kernel_2mm_B13_merge_out_stall_out_1),
        .out_valid_out(kernel_2mm_B13_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B13_stall_region(BLACKBOX,2)
    kernel_2mm_bb_B13_stall_region thebb_kernel_2mm_B13_stall_region (
        .in_flush(in_flush),
        .in_forked128(kernel_2mm_B13_merge_out_forked128),
        .in_idxprom57133_pop55155(kernel_2mm_B13_merge_out_idxprom57133_pop55155),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_notcmp86123_pop53161(kernel_2mm_B13_merge_out_notcmp86123_pop53161),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_2mm_B13_branch_out_stall_out),
        .in_unnamed_kernel_2mm17_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm17_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm17_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm17_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm17_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm17_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm17_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm17_kernel_2mm_avm_writeack),
        .in_valid_in(kernel_2mm_B13_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_exiting_stall_out(bb_kernel_2mm_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_exiting_valid_out(bb_kernel_2mm_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_exiting_valid_out),
        .out_c0_exe1277(bb_kernel_2mm_B13_stall_region_out_c0_exe1277),
        .out_c0_exe2278(bb_kernel_2mm_B13_stall_region_out_c0_exe2278),
        .out_c0_exe3279(bb_kernel_2mm_B13_stall_region_out_c0_exe3279),
        .out_c0_exe4280(bb_kernel_2mm_B13_stall_region_out_c0_exe4280),
        .out_c0_exe6282(bb_kernel_2mm_B13_stall_region_out_c0_exe6282),
        .out_c0_exe7283(bb_kernel_2mm_B13_stall_region_out_c0_exe7283),
        .out_c0_exe8284(bb_kernel_2mm_B13_stall_region_out_c0_exe8284),
        .out_c0_exe9285(bb_kernel_2mm_B13_stall_region_out_c0_exe9285),
        .out_pipeline_valid_out(bb_kernel_2mm_B13_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_2mm_B13_stall_region_out_stall_out),
        .out_unnamed_kernel_2mm17_kernel_2mm_avm_address(bb_kernel_2mm_B13_stall_region_out_unnamed_kernel_2mm17_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm17_kernel_2mm_avm_burstcount(bb_kernel_2mm_B13_stall_region_out_unnamed_kernel_2mm17_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm17_kernel_2mm_avm_byteenable(bb_kernel_2mm_B13_stall_region_out_unnamed_kernel_2mm17_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm17_kernel_2mm_avm_enable(bb_kernel_2mm_B13_stall_region_out_unnamed_kernel_2mm17_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm17_kernel_2mm_avm_read(bb_kernel_2mm_B13_stall_region_out_unnamed_kernel_2mm17_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm17_kernel_2mm_avm_write(bb_kernel_2mm_B13_stall_region_out_unnamed_kernel_2mm17_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm17_kernel_2mm_avm_writedata(bb_kernel_2mm_B13_stall_region_out_unnamed_kernel_2mm17_kernel_2mm_avm_writedata),
        .out_valid_out(bb_kernel_2mm_B13_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B13_branch(BLACKBOX,18)
    kernel_2mm_B13_branch thekernel_2mm_B13_branch (
        .in_c0_exe1277(bb_kernel_2mm_B13_stall_region_out_c0_exe1277),
        .in_c0_exe2278(bb_kernel_2mm_B13_stall_region_out_c0_exe2278),
        .in_c0_exe3279(bb_kernel_2mm_B13_stall_region_out_c0_exe3279),
        .in_c0_exe4280(bb_kernel_2mm_B13_stall_region_out_c0_exe4280),
        .in_c0_exe6282(bb_kernel_2mm_B13_stall_region_out_c0_exe6282),
        .in_c0_exe7283(bb_kernel_2mm_B13_stall_region_out_c0_exe7283),
        .in_c0_exe8284(bb_kernel_2mm_B13_stall_region_out_c0_exe8284),
        .in_c0_exe9285(bb_kernel_2mm_B13_stall_region_out_c0_exe9285),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_2mm_B13_stall_region_out_valid_out),
        .out_c0_exe1277(kernel_2mm_B13_branch_out_c0_exe1277),
        .out_c0_exe2278(kernel_2mm_B13_branch_out_c0_exe2278),
        .out_c0_exe3279(kernel_2mm_B13_branch_out_c0_exe3279),
        .out_c0_exe4280(kernel_2mm_B13_branch_out_c0_exe4280),
        .out_c0_exe6282(kernel_2mm_B13_branch_out_c0_exe6282),
        .out_c0_exe7283(kernel_2mm_B13_branch_out_c0_exe7283),
        .out_c0_exe8284(kernel_2mm_B13_branch_out_c0_exe8284),
        .out_c0_exe9285(kernel_2mm_B13_branch_out_c0_exe9285),
        .out_stall_out(kernel_2mm_B13_branch_out_stall_out),
        .out_valid_out_0(kernel_2mm_B13_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1277(GPOUT,20)
    assign out_c0_exe1277 = kernel_2mm_B13_branch_out_c0_exe1277;

    // out_c0_exe2278(GPOUT,21)
    assign out_c0_exe2278 = kernel_2mm_B13_branch_out_c0_exe2278;

    // out_c0_exe3279(GPOUT,22)
    assign out_c0_exe3279 = kernel_2mm_B13_branch_out_c0_exe3279;

    // out_c0_exe4280(GPOUT,23)
    assign out_c0_exe4280 = kernel_2mm_B13_branch_out_c0_exe4280;

    // out_c0_exe6282(GPOUT,24)
    assign out_c0_exe6282 = kernel_2mm_B13_branch_out_c0_exe6282;

    // out_c0_exe7283(GPOUT,25)
    assign out_c0_exe7283 = kernel_2mm_B13_branch_out_c0_exe7283;

    // out_c0_exe8284(GPOUT,26)
    assign out_c0_exe8284 = kernel_2mm_B13_branch_out_c0_exe8284;

    // out_c0_exe9285(GPOUT,27)
    assign out_c0_exe9285 = kernel_2mm_B13_branch_out_c0_exe9285;

    // out_exiting_stall_out(GPOUT,28)
    assign out_exiting_stall_out = bb_kernel_2mm_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,29)
    assign out_exiting_valid_out = bb_kernel_2mm_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_exiting_valid_out;

    // out_stall_out_0(GPOUT,30)
    assign out_stall_out_0 = kernel_2mm_B13_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,31)
    assign out_stall_out_1 = kernel_2mm_B13_merge_out_stall_out_1;

    // out_unnamed_kernel_2mm17_kernel_2mm_avm_address(GPOUT,32)
    assign out_unnamed_kernel_2mm17_kernel_2mm_avm_address = bb_kernel_2mm_B13_stall_region_out_unnamed_kernel_2mm17_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm17_kernel_2mm_avm_burstcount(GPOUT,33)
    assign out_unnamed_kernel_2mm17_kernel_2mm_avm_burstcount = bb_kernel_2mm_B13_stall_region_out_unnamed_kernel_2mm17_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm17_kernel_2mm_avm_byteenable(GPOUT,34)
    assign out_unnamed_kernel_2mm17_kernel_2mm_avm_byteenable = bb_kernel_2mm_B13_stall_region_out_unnamed_kernel_2mm17_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm17_kernel_2mm_avm_enable(GPOUT,35)
    assign out_unnamed_kernel_2mm17_kernel_2mm_avm_enable = bb_kernel_2mm_B13_stall_region_out_unnamed_kernel_2mm17_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm17_kernel_2mm_avm_read(GPOUT,36)
    assign out_unnamed_kernel_2mm17_kernel_2mm_avm_read = bb_kernel_2mm_B13_stall_region_out_unnamed_kernel_2mm17_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm17_kernel_2mm_avm_write(GPOUT,37)
    assign out_unnamed_kernel_2mm17_kernel_2mm_avm_write = bb_kernel_2mm_B13_stall_region_out_unnamed_kernel_2mm17_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm17_kernel_2mm_avm_writedata(GPOUT,38)
    assign out_unnamed_kernel_2mm17_kernel_2mm_avm_writedata = bb_kernel_2mm_B13_stall_region_out_unnamed_kernel_2mm17_kernel_2mm_avm_writedata;

    // out_valid_in_0(GPOUT,39)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,40)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,41)
    assign out_valid_out_0 = kernel_2mm_B13_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,43)
    assign out_pipeline_valid_out = bb_kernel_2mm_B13_stall_region_out_pipeline_valid_out;

endmodule
