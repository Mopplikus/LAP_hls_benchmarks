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

// SystemVerilog created from bb_kernel_2mm_B10
// Created for function/kernel kernel_2mm
// SystemVerilog created on Wed Apr  5 01:12:28 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B10 (
    input wire [63:0] in_arrayidx606152_0,
    input wire [63:0] in_arrayidx606152_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked66_0,
    input wire [0:0] in_forked66_1,
    input wire [31:0] in_i47_073_pop25126_pop37149_0,
    input wire [31:0] in_i47_073_pop25126_pop37149_1,
    input wire [31:0] in_i47_073_pop25148_0,
    input wire [31:0] in_i47_073_pop25148_1,
    input wire [63:0] in_idxprom57150_0,
    input wire [63:0] in_idxprom57150_1,
    input wire [63:0] in_idxprom59151_0,
    input wire [63:0] in_idxprom59151_1,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_notcmp81153_0,
    input wire [0:0] in_notcmp81153_1,
    input wire [0:0] in_notcmp86122_pop36154_0,
    input wire [0:0] in_notcmp86122_pop36154_1,
    input wire [0:0] in_notcmp86145_0,
    input wire [0:0] in_notcmp86145_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_kernel_2mm14_0,
    input wire [31:0] in_unnamed_kernel_2mm14_1,
    input wire [31:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm16_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm16_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm16_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm16_kernel_2mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_c0_exe2252,
    output wire [31:0] out_c0_exe3253,
    output wire [0:0] out_c0_exe5255,
    output wire [63:0] out_c0_exe6256,
    output wire [0:0] out_c0_exe7257,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_2mm_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_exiting_valid_out;
    wire [63:0] bb_kernel_2mm_B10_stall_region_out_c0_exe2252;
    wire [31:0] bb_kernel_2mm_B10_stall_region_out_c0_exe3253;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_c0_exe4254;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_c0_exe5255;
    wire [63:0] bb_kernel_2mm_B10_stall_region_out_c0_exe6256;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_c0_exe7257;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_stall_out;
    wire [31:0] bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_valid_out;
    wire [63:0] kernel_2mm_B10_branch_out_c0_exe2252;
    wire [31:0] kernel_2mm_B10_branch_out_c0_exe3253;
    wire [0:0] kernel_2mm_B10_branch_out_c0_exe5255;
    wire [63:0] kernel_2mm_B10_branch_out_c0_exe6256;
    wire [0:0] kernel_2mm_B10_branch_out_c0_exe7257;
    wire [0:0] kernel_2mm_B10_branch_out_stall_out;
    wire [0:0] kernel_2mm_B10_branch_out_valid_out_0;
    wire [0:0] kernel_2mm_B10_branch_out_valid_out_1;
    wire [63:0] kernel_2mm_B10_merge_out_arrayidx606152;
    wire [0:0] kernel_2mm_B10_merge_out_forked66;
    wire [31:0] kernel_2mm_B10_merge_out_i47_073_pop25126_pop37149;
    wire [31:0] kernel_2mm_B10_merge_out_i47_073_pop25148;
    wire [63:0] kernel_2mm_B10_merge_out_idxprom57150;
    wire [63:0] kernel_2mm_B10_merge_out_idxprom59151;
    wire [0:0] kernel_2mm_B10_merge_out_notcmp81153;
    wire [0:0] kernel_2mm_B10_merge_out_notcmp86122_pop36154;
    wire [0:0] kernel_2mm_B10_merge_out_notcmp86145;
    wire [0:0] kernel_2mm_B10_merge_out_stall_out_0;
    wire [0:0] kernel_2mm_B10_merge_out_stall_out_1;
    wire [31:0] kernel_2mm_B10_merge_out_unnamed_kernel_2mm14;
    wire [0:0] kernel_2mm_B10_merge_out_valid_out;


    // kernel_2mm_B10_merge(BLACKBOX,38)
    kernel_2mm_B10_merge thekernel_2mm_B10_merge (
        .in_arrayidx606152_0(in_arrayidx606152_0),
        .in_arrayidx606152_1(in_arrayidx606152_1),
        .in_forked66_0(in_forked66_0),
        .in_forked66_1(in_forked66_1),
        .in_i47_073_pop25126_pop37149_0(in_i47_073_pop25126_pop37149_0),
        .in_i47_073_pop25126_pop37149_1(in_i47_073_pop25126_pop37149_1),
        .in_i47_073_pop25148_0(in_i47_073_pop25148_0),
        .in_i47_073_pop25148_1(in_i47_073_pop25148_1),
        .in_idxprom57150_0(in_idxprom57150_0),
        .in_idxprom57150_1(in_idxprom57150_1),
        .in_idxprom59151_0(in_idxprom59151_0),
        .in_idxprom59151_1(in_idxprom59151_1),
        .in_notcmp81153_0(in_notcmp81153_0),
        .in_notcmp81153_1(in_notcmp81153_1),
        .in_notcmp86122_pop36154_0(in_notcmp86122_pop36154_0),
        .in_notcmp86122_pop36154_1(in_notcmp86122_pop36154_1),
        .in_notcmp86145_0(in_notcmp86145_0),
        .in_notcmp86145_1(in_notcmp86145_1),
        .in_stall_in(bb_kernel_2mm_B10_stall_region_out_stall_out),
        .in_unnamed_kernel_2mm14_0(in_unnamed_kernel_2mm14_0),
        .in_unnamed_kernel_2mm14_1(in_unnamed_kernel_2mm14_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_arrayidx606152(kernel_2mm_B10_merge_out_arrayidx606152),
        .out_forked66(kernel_2mm_B10_merge_out_forked66),
        .out_i47_073_pop25126_pop37149(kernel_2mm_B10_merge_out_i47_073_pop25126_pop37149),
        .out_i47_073_pop25148(kernel_2mm_B10_merge_out_i47_073_pop25148),
        .out_idxprom57150(kernel_2mm_B10_merge_out_idxprom57150),
        .out_idxprom59151(kernel_2mm_B10_merge_out_idxprom59151),
        .out_notcmp81153(kernel_2mm_B10_merge_out_notcmp81153),
        .out_notcmp86122_pop36154(kernel_2mm_B10_merge_out_notcmp86122_pop36154),
        .out_notcmp86145(kernel_2mm_B10_merge_out_notcmp86145),
        .out_stall_out_0(kernel_2mm_B10_merge_out_stall_out_0),
        .out_stall_out_1(kernel_2mm_B10_merge_out_stall_out_1),
        .out_unnamed_kernel_2mm14(kernel_2mm_B10_merge_out_unnamed_kernel_2mm14),
        .out_valid_out(kernel_2mm_B10_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B10_stall_region(BLACKBOX,2)
    kernel_2mm_bb_B10_stall_region thebb_kernel_2mm_B10_stall_region (
        .in_arrayidx606152(kernel_2mm_B10_merge_out_arrayidx606152),
        .in_flush(in_flush),
        .in_forked66(kernel_2mm_B10_merge_out_forked66),
        .in_i47_073_pop25126_pop37149(kernel_2mm_B10_merge_out_i47_073_pop25126_pop37149),
        .in_i47_073_pop25148(kernel_2mm_B10_merge_out_i47_073_pop25148),
        .in_idxprom57150(kernel_2mm_B10_merge_out_idxprom57150),
        .in_idxprom59151(kernel_2mm_B10_merge_out_idxprom59151),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_notcmp81153(kernel_2mm_B10_merge_out_notcmp81153),
        .in_notcmp86122_pop36154(kernel_2mm_B10_merge_out_notcmp86122_pop36154),
        .in_notcmp86145(kernel_2mm_B10_merge_out_notcmp86145),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_2mm_B10_branch_out_stall_out),
        .in_unnamed_kernel_2mm14(kernel_2mm_B10_merge_out_unnamed_kernel_2mm14),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm16_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm16_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm16_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm16_kernel_2mm_avm_writeack),
        .in_valid_in(kernel_2mm_B10_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_exiting_stall_out(bb_kernel_2mm_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_exiting_valid_out(bb_kernel_2mm_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_exiting_valid_out),
        .out_c0_exe2252(bb_kernel_2mm_B10_stall_region_out_c0_exe2252),
        .out_c0_exe3253(bb_kernel_2mm_B10_stall_region_out_c0_exe3253),
        .out_c0_exe4254(bb_kernel_2mm_B10_stall_region_out_c0_exe4254),
        .out_c0_exe5255(bb_kernel_2mm_B10_stall_region_out_c0_exe5255),
        .out_c0_exe6256(bb_kernel_2mm_B10_stall_region_out_c0_exe6256),
        .out_c0_exe7257(bb_kernel_2mm_B10_stall_region_out_c0_exe7257),
        .out_pipeline_valid_out(bb_kernel_2mm_B10_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_2mm_B10_stall_region_out_stall_out),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_address(bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount(bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable(bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_enable(bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_read(bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_write(bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata(bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_address(bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount(bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable(bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_enable(bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_read(bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_write(bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata(bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata),
        .out_valid_out(bb_kernel_2mm_B10_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B10_branch(BLACKBOX,37)
    kernel_2mm_B10_branch thekernel_2mm_B10_branch (
        .in_c0_exe2252(bb_kernel_2mm_B10_stall_region_out_c0_exe2252),
        .in_c0_exe3253(bb_kernel_2mm_B10_stall_region_out_c0_exe3253),
        .in_c0_exe4254(bb_kernel_2mm_B10_stall_region_out_c0_exe4254),
        .in_c0_exe5255(bb_kernel_2mm_B10_stall_region_out_c0_exe5255),
        .in_c0_exe6256(bb_kernel_2mm_B10_stall_region_out_c0_exe6256),
        .in_c0_exe7257(bb_kernel_2mm_B10_stall_region_out_c0_exe7257),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_2mm_B10_stall_region_out_valid_out),
        .out_c0_exe2252(kernel_2mm_B10_branch_out_c0_exe2252),
        .out_c0_exe3253(kernel_2mm_B10_branch_out_c0_exe3253),
        .out_c0_exe5255(kernel_2mm_B10_branch_out_c0_exe5255),
        .out_c0_exe6256(kernel_2mm_B10_branch_out_c0_exe6256),
        .out_c0_exe7257(kernel_2mm_B10_branch_out_c0_exe7257),
        .out_stall_out(kernel_2mm_B10_branch_out_stall_out),
        .out_valid_out_0(kernel_2mm_B10_branch_out_valid_out_0),
        .out_valid_out_1(kernel_2mm_B10_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2252(GPOUT,39)
    assign out_c0_exe2252 = kernel_2mm_B10_branch_out_c0_exe2252;

    // out_c0_exe3253(GPOUT,40)
    assign out_c0_exe3253 = kernel_2mm_B10_branch_out_c0_exe3253;

    // out_c0_exe5255(GPOUT,41)
    assign out_c0_exe5255 = kernel_2mm_B10_branch_out_c0_exe5255;

    // out_c0_exe6256(GPOUT,42)
    assign out_c0_exe6256 = kernel_2mm_B10_branch_out_c0_exe6256;

    // out_c0_exe7257(GPOUT,43)
    assign out_c0_exe7257 = kernel_2mm_B10_branch_out_c0_exe7257;

    // out_exiting_stall_out(GPOUT,44)
    assign out_exiting_stall_out = bb_kernel_2mm_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,45)
    assign out_exiting_valid_out = bb_kernel_2mm_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_exiting_valid_out;

    // out_stall_in_0(GPOUT,46)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,47)
    assign out_stall_out_0 = kernel_2mm_B10_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,48)
    assign out_stall_out_1 = kernel_2mm_B10_merge_out_stall_out_1;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_address(GPOUT,49)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_address = bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount(GPOUT,50)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount = bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable(GPOUT,51)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable = bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_enable(GPOUT,52)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_enable = bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_read(GPOUT,53)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_read = bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_write(GPOUT,54)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_write = bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata(GPOUT,55)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata = bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_address(GPOUT,56)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_address = bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount(GPOUT,57)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount = bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable(GPOUT,58)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable = bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_enable(GPOUT,59)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_enable = bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_read(GPOUT,60)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_read = bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_write(GPOUT,61)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_write = bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata(GPOUT,62)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata = bb_kernel_2mm_B10_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata;

    // out_valid_in_0(GPOUT,63)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,64)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,65)
    assign out_valid_out_0 = kernel_2mm_B10_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,66)
    assign out_valid_out_1 = kernel_2mm_B10_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,68)
    assign out_pipeline_valid_out = bb_kernel_2mm_B10_stall_region_out_pipeline_valid_out;

endmodule
