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

// SystemVerilog created from bb_kernel_2mm_B11
// Created for function/kernel kernel_2mm
// SystemVerilog created on Fri Apr  7 18:35:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B11 (
    input wire [63:0] in_arrayidx49496_0,
    input wire [63:0] in_arrayidx49496_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_idxprom4894_0,
    input wire [63:0] in_idxprom4894_1,
    input wire [63:0] in_idxprom60_pop2395_0,
    input wire [63:0] in_idxprom60_pop2395_1,
    input wire [63:0] in_idxprom62_pop3183_0,
    input wire [63:0] in_idxprom62_pop3183_1,
    input wire [31:0] in_mul5097_0,
    input wire [31:0] in_mul5097_1,
    input wire [0:0] in_notcmp1698_0,
    input wire [0:0] in_notcmp1698_1,
    input wire [0:0] in_notcmp4254_pop2989_0,
    input wire [0:0] in_notcmp4254_pop2989_1,
    input wire [0:0] in_notcmp4255_pop2299_0,
    input wire [0:0] in_notcmp4255_pop2299_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe2200,
    output wire [0:0] out_c0_exe4202,
    output wire [63:0] out_c0_exe5203,
    output wire [0:0] out_c0_exe6204,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_2mm_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out;
    wire [31:0] bb_kernel_2mm_B11_stall_region_out_c0_exe2200;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_c0_exe3201;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_c0_exe4202;
    wire [63:0] bb_kernel_2mm_B11_stall_region_out_c0_exe5203;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_c0_exe6204;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_stall_out;
    wire [31:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_valid_out;
    wire [31:0] kernel_2mm_B11_branch_out_c0_exe2200;
    wire [0:0] kernel_2mm_B11_branch_out_c0_exe4202;
    wire [63:0] kernel_2mm_B11_branch_out_c0_exe5203;
    wire [0:0] kernel_2mm_B11_branch_out_c0_exe6204;
    wire [0:0] kernel_2mm_B11_branch_out_stall_out;
    wire [0:0] kernel_2mm_B11_branch_out_valid_out_0;
    wire [0:0] kernel_2mm_B11_branch_out_valid_out_1;
    wire [63:0] kernel_2mm_B11_merge_out_arrayidx49496;
    wire [0:0] kernel_2mm_B11_merge_out_forked;
    wire [63:0] kernel_2mm_B11_merge_out_idxprom4894;
    wire [63:0] kernel_2mm_B11_merge_out_idxprom60_pop2395;
    wire [63:0] kernel_2mm_B11_merge_out_idxprom62_pop3183;
    wire [31:0] kernel_2mm_B11_merge_out_mul5097;
    wire [0:0] kernel_2mm_B11_merge_out_notcmp1698;
    wire [0:0] kernel_2mm_B11_merge_out_notcmp4254_pop2989;
    wire [0:0] kernel_2mm_B11_merge_out_notcmp4255_pop2299;
    wire [0:0] kernel_2mm_B11_merge_out_stall_out_0;
    wire [0:0] kernel_2mm_B11_merge_out_stall_out_1;
    wire [0:0] kernel_2mm_B11_merge_out_valid_out;


    // kernel_2mm_B11_merge(BLACKBOX,35)
    kernel_2mm_B11_merge thekernel_2mm_B11_merge (
        .in_arrayidx49496_0(in_arrayidx49496_0),
        .in_arrayidx49496_1(in_arrayidx49496_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_idxprom4894_0(in_idxprom4894_0),
        .in_idxprom4894_1(in_idxprom4894_1),
        .in_idxprom60_pop2395_0(in_idxprom60_pop2395_0),
        .in_idxprom60_pop2395_1(in_idxprom60_pop2395_1),
        .in_idxprom62_pop3183_0(in_idxprom62_pop3183_0),
        .in_idxprom62_pop3183_1(in_idxprom62_pop3183_1),
        .in_mul5097_0(in_mul5097_0),
        .in_mul5097_1(in_mul5097_1),
        .in_notcmp1698_0(in_notcmp1698_0),
        .in_notcmp1698_1(in_notcmp1698_1),
        .in_notcmp4254_pop2989_0(in_notcmp4254_pop2989_0),
        .in_notcmp4254_pop2989_1(in_notcmp4254_pop2989_1),
        .in_notcmp4255_pop2299_0(in_notcmp4255_pop2299_0),
        .in_notcmp4255_pop2299_1(in_notcmp4255_pop2299_1),
        .in_stall_in(bb_kernel_2mm_B11_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_arrayidx49496(kernel_2mm_B11_merge_out_arrayidx49496),
        .out_forked(kernel_2mm_B11_merge_out_forked),
        .out_idxprom4894(kernel_2mm_B11_merge_out_idxprom4894),
        .out_idxprom60_pop2395(kernel_2mm_B11_merge_out_idxprom60_pop2395),
        .out_idxprom62_pop3183(kernel_2mm_B11_merge_out_idxprom62_pop3183),
        .out_mul5097(kernel_2mm_B11_merge_out_mul5097),
        .out_notcmp1698(kernel_2mm_B11_merge_out_notcmp1698),
        .out_notcmp4254_pop2989(kernel_2mm_B11_merge_out_notcmp4254_pop2989),
        .out_notcmp4255_pop2299(kernel_2mm_B11_merge_out_notcmp4255_pop2299),
        .out_stall_out_0(kernel_2mm_B11_merge_out_stall_out_0),
        .out_stall_out_1(kernel_2mm_B11_merge_out_stall_out_1),
        .out_valid_out(kernel_2mm_B11_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B11_stall_region(BLACKBOX,2)
    kernel_2mm_bb_B11_stall_region thebb_kernel_2mm_B11_stall_region (
        .in_arrayidx49496(kernel_2mm_B11_merge_out_arrayidx49496),
        .in_flush(in_flush),
        .in_forked(kernel_2mm_B11_merge_out_forked),
        .in_idxprom4894(kernel_2mm_B11_merge_out_idxprom4894),
        .in_idxprom60_pop2395(kernel_2mm_B11_merge_out_idxprom60_pop2395),
        .in_idxprom62_pop3183(kernel_2mm_B11_merge_out_idxprom62_pop3183),
        .in_mul5097(kernel_2mm_B11_merge_out_mul5097),
        .in_notcmp1698(kernel_2mm_B11_merge_out_notcmp1698),
        .in_notcmp4254_pop2989(kernel_2mm_B11_merge_out_notcmp4254_pop2989),
        .in_notcmp4255_pop2299(kernel_2mm_B11_merge_out_notcmp4255_pop2299),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_2mm_B11_branch_out_stall_out),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack),
        .in_valid_in(kernel_2mm_B11_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out(bb_kernel_2mm_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out(bb_kernel_2mm_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out),
        .out_c0_exe2200(bb_kernel_2mm_B11_stall_region_out_c0_exe2200),
        .out_c0_exe3201(bb_kernel_2mm_B11_stall_region_out_c0_exe3201),
        .out_c0_exe4202(bb_kernel_2mm_B11_stall_region_out_c0_exe4202),
        .out_c0_exe5203(bb_kernel_2mm_B11_stall_region_out_c0_exe5203),
        .out_c0_exe6204(bb_kernel_2mm_B11_stall_region_out_c0_exe6204),
        .out_pipeline_valid_out(bb_kernel_2mm_B11_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_2mm_B11_stall_region_out_stall_out),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_address(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_enable(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_read(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_write(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_address(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_enable(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_read(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_write(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata),
        .out_valid_out(bb_kernel_2mm_B11_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B11_branch(BLACKBOX,34)
    kernel_2mm_B11_branch thekernel_2mm_B11_branch (
        .in_c0_exe2200(bb_kernel_2mm_B11_stall_region_out_c0_exe2200),
        .in_c0_exe3201(bb_kernel_2mm_B11_stall_region_out_c0_exe3201),
        .in_c0_exe4202(bb_kernel_2mm_B11_stall_region_out_c0_exe4202),
        .in_c0_exe5203(bb_kernel_2mm_B11_stall_region_out_c0_exe5203),
        .in_c0_exe6204(bb_kernel_2mm_B11_stall_region_out_c0_exe6204),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_2mm_B11_stall_region_out_valid_out),
        .out_c0_exe2200(kernel_2mm_B11_branch_out_c0_exe2200),
        .out_c0_exe4202(kernel_2mm_B11_branch_out_c0_exe4202),
        .out_c0_exe5203(kernel_2mm_B11_branch_out_c0_exe5203),
        .out_c0_exe6204(kernel_2mm_B11_branch_out_c0_exe6204),
        .out_stall_out(kernel_2mm_B11_branch_out_stall_out),
        .out_valid_out_0(kernel_2mm_B11_branch_out_valid_out_0),
        .out_valid_out_1(kernel_2mm_B11_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2200(GPOUT,36)
    assign out_c0_exe2200 = kernel_2mm_B11_branch_out_c0_exe2200;

    // out_c0_exe4202(GPOUT,37)
    assign out_c0_exe4202 = kernel_2mm_B11_branch_out_c0_exe4202;

    // out_c0_exe5203(GPOUT,38)
    assign out_c0_exe5203 = kernel_2mm_B11_branch_out_c0_exe5203;

    // out_c0_exe6204(GPOUT,39)
    assign out_c0_exe6204 = kernel_2mm_B11_branch_out_c0_exe6204;

    // out_exiting_stall_out(GPOUT,40)
    assign out_exiting_stall_out = bb_kernel_2mm_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,41)
    assign out_exiting_valid_out = bb_kernel_2mm_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kernel_2mm6_exiting_valid_out;

    // out_stall_in_0(GPOUT,42)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,43)
    assign out_stall_out_0 = kernel_2mm_B11_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,44)
    assign out_stall_out_1 = kernel_2mm_B11_merge_out_stall_out_1;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_address(GPOUT,45)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_address = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount(GPOUT,46)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable(GPOUT,47)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_enable(GPOUT,48)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_enable = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_read(GPOUT,49)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_read = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_write(GPOUT,50)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_write = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata(GPOUT,51)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_address(GPOUT,52)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_address = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount(GPOUT,53)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable(GPOUT,54)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_enable(GPOUT,55)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_enable = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_read(GPOUT,56)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_read = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_write(GPOUT,57)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_write = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata(GPOUT,58)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata;

    // out_valid_in_0(GPOUT,59)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,60)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,61)
    assign out_valid_out_0 = kernel_2mm_B11_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,62)
    assign out_valid_out_1 = kernel_2mm_B11_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,64)
    assign out_pipeline_valid_out = bb_kernel_2mm_B11_stall_region_out_pipeline_valid_out;

endmodule
