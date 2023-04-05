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

// SystemVerilog created from bb_kernel_2mm_B8
// Created for function/kernel kernel_2mm
// SystemVerilog created on Wed Apr  5 01:12:29 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B8 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked121_0,
    input wire [0:0] in_forked121_1,
    input wire [31:0] in_i47_073_pop25146_0,
    input wire [31:0] in_i47_073_pop25146_1,
    input wire [0:0] in_notcmp86143_0,
    input wire [0:0] in_notcmp86143_1,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_kernel_2mm13_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm13_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm13_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm13_kernel_2mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10233,
    output wire [31:0] out_c0_exe1224,
    output wire [63:0] out_c0_exe2225,
    output wire [63:0] out_c0_exe3226,
    output wire [63:0] out_c0_exe4227,
    output wire [31:0] out_c0_exe5228,
    output wire [0:0] out_c0_exe7230,
    output wire [0:0] out_c0_exe8231,
    output wire [0:0] out_c0_exe9232,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_2mm13_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm13_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm13_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm13_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_2mm_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_exiting_valid_out;
    wire [31:0] bb_kernel_2mm_B8_stall_region_out_c0_exe10233;
    wire [31:0] bb_kernel_2mm_B8_stall_region_out_c0_exe1224;
    wire [63:0] bb_kernel_2mm_B8_stall_region_out_c0_exe2225;
    wire [63:0] bb_kernel_2mm_B8_stall_region_out_c0_exe3226;
    wire [63:0] bb_kernel_2mm_B8_stall_region_out_c0_exe4227;
    wire [31:0] bb_kernel_2mm_B8_stall_region_out_c0_exe5228;
    wire [0:0] bb_kernel_2mm_B8_stall_region_out_c0_exe7230;
    wire [0:0] bb_kernel_2mm_B8_stall_region_out_c0_exe8231;
    wire [0:0] bb_kernel_2mm_B8_stall_region_out_c0_exe9232;
    wire [0:0] bb_kernel_2mm_B8_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B8_stall_region_out_stall_out;
    wire [31:0] bb_kernel_2mm_B8_stall_region_out_unnamed_kernel_2mm13_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B8_stall_region_out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B8_stall_region_out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B8_stall_region_out_unnamed_kernel_2mm13_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B8_stall_region_out_unnamed_kernel_2mm13_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B8_stall_region_out_unnamed_kernel_2mm13_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B8_stall_region_out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B8_stall_region_out_valid_out;
    wire [31:0] kernel_2mm_B8_branch_out_c0_exe10233;
    wire [31:0] kernel_2mm_B8_branch_out_c0_exe1224;
    wire [63:0] kernel_2mm_B8_branch_out_c0_exe2225;
    wire [63:0] kernel_2mm_B8_branch_out_c0_exe3226;
    wire [63:0] kernel_2mm_B8_branch_out_c0_exe4227;
    wire [31:0] kernel_2mm_B8_branch_out_c0_exe5228;
    wire [0:0] kernel_2mm_B8_branch_out_c0_exe7230;
    wire [0:0] kernel_2mm_B8_branch_out_c0_exe8231;
    wire [0:0] kernel_2mm_B8_branch_out_c0_exe9232;
    wire [0:0] kernel_2mm_B8_branch_out_stall_out;
    wire [0:0] kernel_2mm_B8_branch_out_valid_out_0;
    wire [0:0] kernel_2mm_B8_merge_out_forked121;
    wire [31:0] kernel_2mm_B8_merge_out_i47_073_pop25146;
    wire [0:0] kernel_2mm_B8_merge_out_notcmp86143;
    wire [0:0] kernel_2mm_B8_merge_out_stall_out_0;
    wire [0:0] kernel_2mm_B8_merge_out_stall_out_1;
    wire [0:0] kernel_2mm_B8_merge_out_valid_out;


    // kernel_2mm_B8_merge(BLACKBOX,18)
    kernel_2mm_B8_merge thekernel_2mm_B8_merge (
        .in_forked121_0(in_forked121_0),
        .in_forked121_1(in_forked121_1),
        .in_i47_073_pop25146_0(in_i47_073_pop25146_0),
        .in_i47_073_pop25146_1(in_i47_073_pop25146_1),
        .in_notcmp86143_0(in_notcmp86143_0),
        .in_notcmp86143_1(in_notcmp86143_1),
        .in_stall_in(bb_kernel_2mm_B8_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked121(kernel_2mm_B8_merge_out_forked121),
        .out_i47_073_pop25146(kernel_2mm_B8_merge_out_i47_073_pop25146),
        .out_notcmp86143(kernel_2mm_B8_merge_out_notcmp86143),
        .out_stall_out_0(kernel_2mm_B8_merge_out_stall_out_0),
        .out_stall_out_1(kernel_2mm_B8_merge_out_stall_out_1),
        .out_valid_out(kernel_2mm_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B8_stall_region(BLACKBOX,2)
    kernel_2mm_bb_B8_stall_region thebb_kernel_2mm_B8_stall_region (
        .in_flush(in_flush),
        .in_forked121(kernel_2mm_B8_merge_out_forked121),
        .in_i47_073_pop25146(kernel_2mm_B8_merge_out_i47_073_pop25146),
        .in_notcmp86143(kernel_2mm_B8_merge_out_notcmp86143),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_2mm_B8_branch_out_stall_out),
        .in_unnamed_kernel_2mm13_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm13_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm13_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm13_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm13_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm13_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm13_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm13_kernel_2mm_avm_writeack),
        .in_valid_in(kernel_2mm_B8_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_exiting_stall_out(bb_kernel_2mm_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_exiting_valid_out(bb_kernel_2mm_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_exiting_valid_out),
        .out_c0_exe10233(bb_kernel_2mm_B8_stall_region_out_c0_exe10233),
        .out_c0_exe1224(bb_kernel_2mm_B8_stall_region_out_c0_exe1224),
        .out_c0_exe2225(bb_kernel_2mm_B8_stall_region_out_c0_exe2225),
        .out_c0_exe3226(bb_kernel_2mm_B8_stall_region_out_c0_exe3226),
        .out_c0_exe4227(bb_kernel_2mm_B8_stall_region_out_c0_exe4227),
        .out_c0_exe5228(bb_kernel_2mm_B8_stall_region_out_c0_exe5228),
        .out_c0_exe7230(bb_kernel_2mm_B8_stall_region_out_c0_exe7230),
        .out_c0_exe8231(bb_kernel_2mm_B8_stall_region_out_c0_exe8231),
        .out_c0_exe9232(bb_kernel_2mm_B8_stall_region_out_c0_exe9232),
        .out_pipeline_valid_out(bb_kernel_2mm_B8_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_2mm_B8_stall_region_out_stall_out),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_address(bb_kernel_2mm_B8_stall_region_out_unnamed_kernel_2mm13_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount(bb_kernel_2mm_B8_stall_region_out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable(bb_kernel_2mm_B8_stall_region_out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_enable(bb_kernel_2mm_B8_stall_region_out_unnamed_kernel_2mm13_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_read(bb_kernel_2mm_B8_stall_region_out_unnamed_kernel_2mm13_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_write(bb_kernel_2mm_B8_stall_region_out_unnamed_kernel_2mm13_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata(bb_kernel_2mm_B8_stall_region_out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata),
        .out_valid_out(bb_kernel_2mm_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B8_branch(BLACKBOX,17)
    kernel_2mm_B8_branch thekernel_2mm_B8_branch (
        .in_c0_exe10233(bb_kernel_2mm_B8_stall_region_out_c0_exe10233),
        .in_c0_exe1224(bb_kernel_2mm_B8_stall_region_out_c0_exe1224),
        .in_c0_exe2225(bb_kernel_2mm_B8_stall_region_out_c0_exe2225),
        .in_c0_exe3226(bb_kernel_2mm_B8_stall_region_out_c0_exe3226),
        .in_c0_exe4227(bb_kernel_2mm_B8_stall_region_out_c0_exe4227),
        .in_c0_exe5228(bb_kernel_2mm_B8_stall_region_out_c0_exe5228),
        .in_c0_exe7230(bb_kernel_2mm_B8_stall_region_out_c0_exe7230),
        .in_c0_exe8231(bb_kernel_2mm_B8_stall_region_out_c0_exe8231),
        .in_c0_exe9232(bb_kernel_2mm_B8_stall_region_out_c0_exe9232),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_2mm_B8_stall_region_out_valid_out),
        .out_c0_exe10233(kernel_2mm_B8_branch_out_c0_exe10233),
        .out_c0_exe1224(kernel_2mm_B8_branch_out_c0_exe1224),
        .out_c0_exe2225(kernel_2mm_B8_branch_out_c0_exe2225),
        .out_c0_exe3226(kernel_2mm_B8_branch_out_c0_exe3226),
        .out_c0_exe4227(kernel_2mm_B8_branch_out_c0_exe4227),
        .out_c0_exe5228(kernel_2mm_B8_branch_out_c0_exe5228),
        .out_c0_exe7230(kernel_2mm_B8_branch_out_c0_exe7230),
        .out_c0_exe8231(kernel_2mm_B8_branch_out_c0_exe8231),
        .out_c0_exe9232(kernel_2mm_B8_branch_out_c0_exe9232),
        .out_stall_out(kernel_2mm_B8_branch_out_stall_out),
        .out_valid_out_0(kernel_2mm_B8_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10233(GPOUT,19)
    assign out_c0_exe10233 = kernel_2mm_B8_branch_out_c0_exe10233;

    // out_c0_exe1224(GPOUT,20)
    assign out_c0_exe1224 = kernel_2mm_B8_branch_out_c0_exe1224;

    // out_c0_exe2225(GPOUT,21)
    assign out_c0_exe2225 = kernel_2mm_B8_branch_out_c0_exe2225;

    // out_c0_exe3226(GPOUT,22)
    assign out_c0_exe3226 = kernel_2mm_B8_branch_out_c0_exe3226;

    // out_c0_exe4227(GPOUT,23)
    assign out_c0_exe4227 = kernel_2mm_B8_branch_out_c0_exe4227;

    // out_c0_exe5228(GPOUT,24)
    assign out_c0_exe5228 = kernel_2mm_B8_branch_out_c0_exe5228;

    // out_c0_exe7230(GPOUT,25)
    assign out_c0_exe7230 = kernel_2mm_B8_branch_out_c0_exe7230;

    // out_c0_exe8231(GPOUT,26)
    assign out_c0_exe8231 = kernel_2mm_B8_branch_out_c0_exe8231;

    // out_c0_exe9232(GPOUT,27)
    assign out_c0_exe9232 = kernel_2mm_B8_branch_out_c0_exe9232;

    // out_exiting_stall_out(GPOUT,28)
    assign out_exiting_stall_out = bb_kernel_2mm_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,29)
    assign out_exiting_valid_out = bb_kernel_2mm_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_exiting_valid_out;

    // out_stall_out_0(GPOUT,30)
    assign out_stall_out_0 = kernel_2mm_B8_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,31)
    assign out_stall_out_1 = kernel_2mm_B8_merge_out_stall_out_1;

    // out_unnamed_kernel_2mm13_kernel_2mm_avm_address(GPOUT,32)
    assign out_unnamed_kernel_2mm13_kernel_2mm_avm_address = bb_kernel_2mm_B8_stall_region_out_unnamed_kernel_2mm13_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount(GPOUT,33)
    assign out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount = bb_kernel_2mm_B8_stall_region_out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable(GPOUT,34)
    assign out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable = bb_kernel_2mm_B8_stall_region_out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm13_kernel_2mm_avm_enable(GPOUT,35)
    assign out_unnamed_kernel_2mm13_kernel_2mm_avm_enable = bb_kernel_2mm_B8_stall_region_out_unnamed_kernel_2mm13_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm13_kernel_2mm_avm_read(GPOUT,36)
    assign out_unnamed_kernel_2mm13_kernel_2mm_avm_read = bb_kernel_2mm_B8_stall_region_out_unnamed_kernel_2mm13_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm13_kernel_2mm_avm_write(GPOUT,37)
    assign out_unnamed_kernel_2mm13_kernel_2mm_avm_write = bb_kernel_2mm_B8_stall_region_out_unnamed_kernel_2mm13_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata(GPOUT,38)
    assign out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata = bb_kernel_2mm_B8_stall_region_out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata;

    // out_valid_in_0(GPOUT,39)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,40)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,41)
    assign out_valid_out_0 = kernel_2mm_B8_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,43)
    assign out_pipeline_valid_out = bb_kernel_2mm_B8_stall_region_out_pipeline_valid_out;

endmodule
