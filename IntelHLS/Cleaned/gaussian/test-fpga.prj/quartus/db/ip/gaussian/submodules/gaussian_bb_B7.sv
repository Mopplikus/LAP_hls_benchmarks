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

// SystemVerilog created from bb_gaussian_B7
// Created for function/kernel gaussian
// SystemVerilog created on Tue Jun 13 02:18:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B7 (
    input wire [31:0] in_add43_pop1154_0,
    input wire [31:0] in_add43_pop1154_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked31_0,
    input wire [0:0] in_forked31_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_10_0,
    input wire [0:0] in_intel_reserved_ffwd_8_0,
    input wire [31:0] in_intel_reserved_ffwd_9_0,
    input wire [31:0] in_lm1_gaussian_avm_readdata,
    input wire [0:0] in_lm1_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm1_gaussian_avm_waitrequest,
    input wire [0:0] in_lm1_gaussian_avm_writeack,
    input wire [31:0] in_lm32_gaussian_avm_readdata,
    input wire [0:0] in_lm32_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm32_gaussian_avm_waitrequest,
    input wire [0:0] in_lm32_gaussian_avm_writeack,
    input wire [31:0] in_lm53_gaussian_avm_readdata,
    input wire [0:0] in_lm53_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm53_gaussian_avm_waitrequest,
    input wire [0:0] in_lm53_gaussian_avm_writeack,
    input wire [31:0] in_memdep_gaussian_avm_readdata,
    input wire [0:0] in_memdep_gaussian_avm_readdatavalid,
    input wire [0:0] in_memdep_gaussian_avm_waitrequest,
    input wire [0:0] in_memdep_gaussian_avm_writeack,
    input wire [0:0] in_memdep_phi_pop1053_0,
    input wire [0:0] in_memdep_phi_pop1053_1,
    input wire [31:0] in_mul_add1651_0,
    input wire [31:0] in_mul_add1651_1,
    input wire [0:0] in_notcmp3552_0,
    input wire [0:0] in_notcmp3552_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_unnamed_gaussian17_0,
    input wire [0:0] in_unnamed_gaussian17_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add44_push17,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_lm1_gaussian_avm_address,
    output wire [0:0] out_lm1_gaussian_avm_burstcount,
    output wire [3:0] out_lm1_gaussian_avm_byteenable,
    output wire [0:0] out_lm1_gaussian_avm_enable,
    output wire [0:0] out_lm1_gaussian_avm_read,
    output wire [0:0] out_lm1_gaussian_avm_write,
    output wire [31:0] out_lm1_gaussian_avm_writedata,
    output wire [31:0] out_lm32_gaussian_avm_address,
    output wire [0:0] out_lm32_gaussian_avm_burstcount,
    output wire [3:0] out_lm32_gaussian_avm_byteenable,
    output wire [0:0] out_lm32_gaussian_avm_enable,
    output wire [0:0] out_lm32_gaussian_avm_read,
    output wire [0:0] out_lm32_gaussian_avm_write,
    output wire [31:0] out_lm32_gaussian_avm_writedata,
    output wire [31:0] out_lm53_gaussian_avm_address,
    output wire [0:0] out_lm53_gaussian_avm_burstcount,
    output wire [3:0] out_lm53_gaussian_avm_byteenable,
    output wire [0:0] out_lm53_gaussian_avm_enable,
    output wire [0:0] out_lm53_gaussian_avm_read,
    output wire [0:0] out_lm53_gaussian_avm_write,
    output wire [31:0] out_lm53_gaussian_avm_writedata,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_memdep,
    output wire [31:0] out_memdep_gaussian_avm_address,
    output wire [0:0] out_memdep_gaussian_avm_burstcount,
    output wire [3:0] out_memdep_gaussian_avm_byteenable,
    output wire [0:0] out_memdep_gaussian_avm_enable,
    output wire [0:0] out_memdep_gaussian_avm_read,
    output wire [0:0] out_memdep_gaussian_avm_write,
    output wire [31:0] out_memdep_gaussian_avm_writedata,
    output wire [0:0] out_notcmp3546_pop20,
    output wire [0:0] out_pop19,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_gaussian_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian4_exiting_stall_out;
    wire [0:0] bb_gaussian_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian4_exiting_valid_out;
    wire [31:0] bb_gaussian_B7_stall_region_out_add44_push17;
    wire [31:0] bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_write;
    wire [31:0] bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_writedata;
    wire [31:0] bb_gaussian_B7_stall_region_out_lm32_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm32_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B7_stall_region_out_lm32_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm32_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm32_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm32_gaussian_avm_write;
    wire [31:0] bb_gaussian_B7_stall_region_out_lm32_gaussian_avm_writedata;
    wire [31:0] bb_gaussian_B7_stall_region_out_lm53_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm53_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B7_stall_region_out_lm53_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm53_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm53_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm53_gaussian_avm_write;
    wire [31:0] bb_gaussian_B7_stall_region_out_lm53_gaussian_avm_writedata;
    wire [0:0] bb_gaussian_B7_stall_region_out_lsu_memdep_o_active;
    wire [0:0] bb_gaussian_B7_stall_region_out_masked;
    wire [0:0] bb_gaussian_B7_stall_region_out_memdep;
    wire [31:0] bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_write;
    wire [31:0] bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_writedata;
    wire [0:0] bb_gaussian_B7_stall_region_out_notcmp3546_pop20;
    wire [0:0] bb_gaussian_B7_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_gaussian_B7_stall_region_out_pop19;
    wire [0:0] bb_gaussian_B7_stall_region_out_stall_out;
    wire [0:0] bb_gaussian_B7_stall_region_out_valid_out;
    wire [31:0] gaussian_B7_branch_out_add44_push17;
    wire [0:0] gaussian_B7_branch_out_memdep;
    wire [0:0] gaussian_B7_branch_out_notcmp3546_pop20;
    wire [0:0] gaussian_B7_branch_out_pop19;
    wire [0:0] gaussian_B7_branch_out_stall_out;
    wire [0:0] gaussian_B7_branch_out_valid_out_0;
    wire [0:0] gaussian_B7_branch_out_valid_out_1;
    wire [31:0] gaussian_B7_merge_out_add43_pop1154;
    wire [0:0] gaussian_B7_merge_out_forked31;
    wire [0:0] gaussian_B7_merge_out_memdep_phi_pop1053;
    wire [31:0] gaussian_B7_merge_out_mul_add1651;
    wire [0:0] gaussian_B7_merge_out_notcmp3552;
    wire [0:0] gaussian_B7_merge_out_stall_out_0;
    wire [0:0] gaussian_B7_merge_out_stall_out_1;
    wire [0:0] gaussian_B7_merge_out_unnamed_gaussian17;
    wire [0:0] gaussian_B7_merge_out_valid_out;


    // gaussian_B7_merge(BLACKBOX,4)
    gaussian_B7_merge thegaussian_B7_merge (
        .in_add43_pop1154_0(in_add43_pop1154_0),
        .in_add43_pop1154_1(in_add43_pop1154_1),
        .in_forked31_0(in_forked31_0),
        .in_forked31_1(in_forked31_1),
        .in_memdep_phi_pop1053_0(in_memdep_phi_pop1053_0),
        .in_memdep_phi_pop1053_1(in_memdep_phi_pop1053_1),
        .in_mul_add1651_0(in_mul_add1651_0),
        .in_mul_add1651_1(in_mul_add1651_1),
        .in_notcmp3552_0(in_notcmp3552_0),
        .in_notcmp3552_1(in_notcmp3552_1),
        .in_stall_in(bb_gaussian_B7_stall_region_out_stall_out),
        .in_unnamed_gaussian17_0(in_unnamed_gaussian17_0),
        .in_unnamed_gaussian17_1(in_unnamed_gaussian17_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add43_pop1154(gaussian_B7_merge_out_add43_pop1154),
        .out_forked31(gaussian_B7_merge_out_forked31),
        .out_memdep_phi_pop1053(gaussian_B7_merge_out_memdep_phi_pop1053),
        .out_mul_add1651(gaussian_B7_merge_out_mul_add1651),
        .out_notcmp3552(gaussian_B7_merge_out_notcmp3552),
        .out_stall_out_0(gaussian_B7_merge_out_stall_out_0),
        .out_stall_out_1(gaussian_B7_merge_out_stall_out_1),
        .out_unnamed_gaussian17(gaussian_B7_merge_out_unnamed_gaussian17),
        .out_valid_out(gaussian_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B7_stall_region(BLACKBOX,2)
    gaussian_bb_B7_stall_region thebb_gaussian_B7_stall_region (
        .in_add43_pop1154(gaussian_B7_merge_out_add43_pop1154),
        .in_flush(in_flush),
        .in_forked31(gaussian_B7_merge_out_forked31),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_lm1_gaussian_avm_readdata(in_lm1_gaussian_avm_readdata),
        .in_lm1_gaussian_avm_readdatavalid(in_lm1_gaussian_avm_readdatavalid),
        .in_lm1_gaussian_avm_waitrequest(in_lm1_gaussian_avm_waitrequest),
        .in_lm1_gaussian_avm_writeack(in_lm1_gaussian_avm_writeack),
        .in_lm32_gaussian_avm_readdata(in_lm32_gaussian_avm_readdata),
        .in_lm32_gaussian_avm_readdatavalid(in_lm32_gaussian_avm_readdatavalid),
        .in_lm32_gaussian_avm_waitrequest(in_lm32_gaussian_avm_waitrequest),
        .in_lm32_gaussian_avm_writeack(in_lm32_gaussian_avm_writeack),
        .in_lm53_gaussian_avm_readdata(in_lm53_gaussian_avm_readdata),
        .in_lm53_gaussian_avm_readdatavalid(in_lm53_gaussian_avm_readdatavalid),
        .in_lm53_gaussian_avm_waitrequest(in_lm53_gaussian_avm_waitrequest),
        .in_lm53_gaussian_avm_writeack(in_lm53_gaussian_avm_writeack),
        .in_memdep_gaussian_avm_readdata(in_memdep_gaussian_avm_readdata),
        .in_memdep_gaussian_avm_readdatavalid(in_memdep_gaussian_avm_readdatavalid),
        .in_memdep_gaussian_avm_waitrequest(in_memdep_gaussian_avm_waitrequest),
        .in_memdep_gaussian_avm_writeack(in_memdep_gaussian_avm_writeack),
        .in_memdep_phi_pop1053(gaussian_B7_merge_out_memdep_phi_pop1053),
        .in_mul_add1651(gaussian_B7_merge_out_mul_add1651),
        .in_notcmp3552(gaussian_B7_merge_out_notcmp3552),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(gaussian_B7_branch_out_stall_out),
        .in_unnamed_gaussian17(gaussian_B7_merge_out_unnamed_gaussian17),
        .in_valid_in(gaussian_B7_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian4_exiting_stall_out(bb_gaussian_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian4_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian4_exiting_valid_out(bb_gaussian_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian4_exiting_valid_out),
        .out_add44_push17(bb_gaussian_B7_stall_region_out_add44_push17),
        .out_lm1_gaussian_avm_address(bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_address),
        .out_lm1_gaussian_avm_burstcount(bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_burstcount),
        .out_lm1_gaussian_avm_byteenable(bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_byteenable),
        .out_lm1_gaussian_avm_enable(bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_enable),
        .out_lm1_gaussian_avm_read(bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_read),
        .out_lm1_gaussian_avm_write(bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_write),
        .out_lm1_gaussian_avm_writedata(bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_writedata),
        .out_lm32_gaussian_avm_address(bb_gaussian_B7_stall_region_out_lm32_gaussian_avm_address),
        .out_lm32_gaussian_avm_burstcount(bb_gaussian_B7_stall_region_out_lm32_gaussian_avm_burstcount),
        .out_lm32_gaussian_avm_byteenable(bb_gaussian_B7_stall_region_out_lm32_gaussian_avm_byteenable),
        .out_lm32_gaussian_avm_enable(bb_gaussian_B7_stall_region_out_lm32_gaussian_avm_enable),
        .out_lm32_gaussian_avm_read(bb_gaussian_B7_stall_region_out_lm32_gaussian_avm_read),
        .out_lm32_gaussian_avm_write(bb_gaussian_B7_stall_region_out_lm32_gaussian_avm_write),
        .out_lm32_gaussian_avm_writedata(bb_gaussian_B7_stall_region_out_lm32_gaussian_avm_writedata),
        .out_lm53_gaussian_avm_address(bb_gaussian_B7_stall_region_out_lm53_gaussian_avm_address),
        .out_lm53_gaussian_avm_burstcount(bb_gaussian_B7_stall_region_out_lm53_gaussian_avm_burstcount),
        .out_lm53_gaussian_avm_byteenable(bb_gaussian_B7_stall_region_out_lm53_gaussian_avm_byteenable),
        .out_lm53_gaussian_avm_enable(bb_gaussian_B7_stall_region_out_lm53_gaussian_avm_enable),
        .out_lm53_gaussian_avm_read(bb_gaussian_B7_stall_region_out_lm53_gaussian_avm_read),
        .out_lm53_gaussian_avm_write(bb_gaussian_B7_stall_region_out_lm53_gaussian_avm_write),
        .out_lm53_gaussian_avm_writedata(bb_gaussian_B7_stall_region_out_lm53_gaussian_avm_writedata),
        .out_lsu_memdep_o_active(bb_gaussian_B7_stall_region_out_lsu_memdep_o_active),
        .out_masked(bb_gaussian_B7_stall_region_out_masked),
        .out_memdep(bb_gaussian_B7_stall_region_out_memdep),
        .out_memdep_gaussian_avm_address(bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_address),
        .out_memdep_gaussian_avm_burstcount(bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_burstcount),
        .out_memdep_gaussian_avm_byteenable(bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_byteenable),
        .out_memdep_gaussian_avm_enable(bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_enable),
        .out_memdep_gaussian_avm_read(bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_read),
        .out_memdep_gaussian_avm_write(bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_write),
        .out_memdep_gaussian_avm_writedata(bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_writedata),
        .out_notcmp3546_pop20(bb_gaussian_B7_stall_region_out_notcmp3546_pop20),
        .out_pipeline_valid_out(bb_gaussian_B7_stall_region_out_pipeline_valid_out),
        .out_pop19(bb_gaussian_B7_stall_region_out_pop19),
        .out_stall_out(bb_gaussian_B7_stall_region_out_stall_out),
        .out_valid_out(bb_gaussian_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B7_branch(BLACKBOX,3)
    gaussian_B7_branch thegaussian_B7_branch (
        .in_add44_push17(bb_gaussian_B7_stall_region_out_add44_push17),
        .in_masked(bb_gaussian_B7_stall_region_out_masked),
        .in_memdep(bb_gaussian_B7_stall_region_out_memdep),
        .in_notcmp3546_pop20(bb_gaussian_B7_stall_region_out_notcmp3546_pop20),
        .in_pop19(bb_gaussian_B7_stall_region_out_pop19),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_gaussian_B7_stall_region_out_valid_out),
        .out_add44_push17(gaussian_B7_branch_out_add44_push17),
        .out_memdep(gaussian_B7_branch_out_memdep),
        .out_notcmp3546_pop20(gaussian_B7_branch_out_notcmp3546_pop20),
        .out_pop19(gaussian_B7_branch_out_pop19),
        .out_stall_out(gaussian_B7_branch_out_stall_out),
        .out_valid_out_0(gaussian_B7_branch_out_valid_out_0),
        .out_valid_out_1(gaussian_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_add44_push17(GPOUT,42)
    assign out_add44_push17 = gaussian_B7_branch_out_add44_push17;

    // out_exiting_stall_out(GPOUT,43)
    assign out_exiting_stall_out = bb_gaussian_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian4_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,44)
    assign out_exiting_valid_out = bb_gaussian_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gaussian4_exiting_valid_out;

    // out_lm1_gaussian_avm_address(GPOUT,45)
    assign out_lm1_gaussian_avm_address = bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_address;

    // out_lm1_gaussian_avm_burstcount(GPOUT,46)
    assign out_lm1_gaussian_avm_burstcount = bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_burstcount;

    // out_lm1_gaussian_avm_byteenable(GPOUT,47)
    assign out_lm1_gaussian_avm_byteenable = bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_byteenable;

    // out_lm1_gaussian_avm_enable(GPOUT,48)
    assign out_lm1_gaussian_avm_enable = bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_enable;

    // out_lm1_gaussian_avm_read(GPOUT,49)
    assign out_lm1_gaussian_avm_read = bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_read;

    // out_lm1_gaussian_avm_write(GPOUT,50)
    assign out_lm1_gaussian_avm_write = bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_write;

    // out_lm1_gaussian_avm_writedata(GPOUT,51)
    assign out_lm1_gaussian_avm_writedata = bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_writedata;

    // out_lm32_gaussian_avm_address(GPOUT,52)
    assign out_lm32_gaussian_avm_address = bb_gaussian_B7_stall_region_out_lm32_gaussian_avm_address;

    // out_lm32_gaussian_avm_burstcount(GPOUT,53)
    assign out_lm32_gaussian_avm_burstcount = bb_gaussian_B7_stall_region_out_lm32_gaussian_avm_burstcount;

    // out_lm32_gaussian_avm_byteenable(GPOUT,54)
    assign out_lm32_gaussian_avm_byteenable = bb_gaussian_B7_stall_region_out_lm32_gaussian_avm_byteenable;

    // out_lm32_gaussian_avm_enable(GPOUT,55)
    assign out_lm32_gaussian_avm_enable = bb_gaussian_B7_stall_region_out_lm32_gaussian_avm_enable;

    // out_lm32_gaussian_avm_read(GPOUT,56)
    assign out_lm32_gaussian_avm_read = bb_gaussian_B7_stall_region_out_lm32_gaussian_avm_read;

    // out_lm32_gaussian_avm_write(GPOUT,57)
    assign out_lm32_gaussian_avm_write = bb_gaussian_B7_stall_region_out_lm32_gaussian_avm_write;

    // out_lm32_gaussian_avm_writedata(GPOUT,58)
    assign out_lm32_gaussian_avm_writedata = bb_gaussian_B7_stall_region_out_lm32_gaussian_avm_writedata;

    // out_lm53_gaussian_avm_address(GPOUT,59)
    assign out_lm53_gaussian_avm_address = bb_gaussian_B7_stall_region_out_lm53_gaussian_avm_address;

    // out_lm53_gaussian_avm_burstcount(GPOUT,60)
    assign out_lm53_gaussian_avm_burstcount = bb_gaussian_B7_stall_region_out_lm53_gaussian_avm_burstcount;

    // out_lm53_gaussian_avm_byteenable(GPOUT,61)
    assign out_lm53_gaussian_avm_byteenable = bb_gaussian_B7_stall_region_out_lm53_gaussian_avm_byteenable;

    // out_lm53_gaussian_avm_enable(GPOUT,62)
    assign out_lm53_gaussian_avm_enable = bb_gaussian_B7_stall_region_out_lm53_gaussian_avm_enable;

    // out_lm53_gaussian_avm_read(GPOUT,63)
    assign out_lm53_gaussian_avm_read = bb_gaussian_B7_stall_region_out_lm53_gaussian_avm_read;

    // out_lm53_gaussian_avm_write(GPOUT,64)
    assign out_lm53_gaussian_avm_write = bb_gaussian_B7_stall_region_out_lm53_gaussian_avm_write;

    // out_lm53_gaussian_avm_writedata(GPOUT,65)
    assign out_lm53_gaussian_avm_writedata = bb_gaussian_B7_stall_region_out_lm53_gaussian_avm_writedata;

    // out_lsu_memdep_o_active(GPOUT,66)
    assign out_lsu_memdep_o_active = bb_gaussian_B7_stall_region_out_lsu_memdep_o_active;

    // out_memdep(GPOUT,67)
    assign out_memdep = gaussian_B7_branch_out_memdep;

    // out_memdep_gaussian_avm_address(GPOUT,68)
    assign out_memdep_gaussian_avm_address = bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_address;

    // out_memdep_gaussian_avm_burstcount(GPOUT,69)
    assign out_memdep_gaussian_avm_burstcount = bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_burstcount;

    // out_memdep_gaussian_avm_byteenable(GPOUT,70)
    assign out_memdep_gaussian_avm_byteenable = bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_byteenable;

    // out_memdep_gaussian_avm_enable(GPOUT,71)
    assign out_memdep_gaussian_avm_enable = bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_enable;

    // out_memdep_gaussian_avm_read(GPOUT,72)
    assign out_memdep_gaussian_avm_read = bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_read;

    // out_memdep_gaussian_avm_write(GPOUT,73)
    assign out_memdep_gaussian_avm_write = bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_write;

    // out_memdep_gaussian_avm_writedata(GPOUT,74)
    assign out_memdep_gaussian_avm_writedata = bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_writedata;

    // out_notcmp3546_pop20(GPOUT,75)
    assign out_notcmp3546_pop20 = gaussian_B7_branch_out_notcmp3546_pop20;

    // out_pop19(GPOUT,76)
    assign out_pop19 = gaussian_B7_branch_out_pop19;

    // out_stall_in_0(GPOUT,77)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,78)
    assign out_stall_out_0 = gaussian_B7_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,79)
    assign out_stall_out_1 = gaussian_B7_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,80)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,81)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,82)
    assign out_valid_out_0 = gaussian_B7_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,83)
    assign out_valid_out_1 = gaussian_B7_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,85)
    assign out_pipeline_valid_out = bb_gaussian_B7_stall_region_out_pipeline_valid_out;

endmodule
