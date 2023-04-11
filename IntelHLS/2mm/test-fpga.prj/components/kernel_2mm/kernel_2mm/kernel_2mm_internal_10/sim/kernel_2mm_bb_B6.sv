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

// SystemVerilog created from bb_kernel_2mm_B6
// Created for function/kernel kernel_2mm
// SystemVerilog created on Fri Apr  7 18:35:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B6 (
    input wire [63:0] in_arrayidx11178_0,
    input wire [63:0] in_arrayidx11178_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked22_0,
    input wire [0:0] in_forked22_1,
    input wire [31:0] in_i_040_pop1557_pop1975_0,
    input wire [31:0] in_i_040_pop1557_pop1975_1,
    input wire [31:0] in_i_040_pop1574_0,
    input wire [31:0] in_i_040_pop1574_1,
    input wire [63:0] in_idxprom1077_0,
    input wire [63:0] in_idxprom1077_1,
    input wire [63:0] in_idxprom76_0,
    input wire [63:0] in_idxprom76_1,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_notcmp3779_0,
    input wire [0:0] in_notcmp3779_1,
    input wire [0:0] in_notcmp4253_pop1880_0,
    input wire [0:0] in_notcmp4253_pop1880_1,
    input wire [0:0] in_notcmp4271_0,
    input wire [0:0] in_notcmp4271_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_kernel_2mm6_0,
    input wire [31:0] in_unnamed_kernel_2mm6_1,
    input wire [31:0] in_unnamed_kernel_2mm7_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm7_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm7_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm7_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm8_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm8_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm8_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm8_kernel_2mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_c0_exe2137,
    output wire [31:0] out_c0_exe3138,
    output wire [0:0] out_c0_exe5140,
    output wire [63:0] out_c0_exe6141,
    output wire [0:0] out_c0_exe7142,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_2mm7_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm7_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm7_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm7_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm7_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm7_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm7_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm8_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm8_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm8_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm8_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm8_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm8_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm8_kernel_2mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_2mm_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_exiting_valid_out;
    wire [63:0] bb_kernel_2mm_B6_stall_region_out_c0_exe2137;
    wire [31:0] bb_kernel_2mm_B6_stall_region_out_c0_exe3138;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_c0_exe4139;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_c0_exe5140;
    wire [63:0] bb_kernel_2mm_B6_stall_region_out_c0_exe6141;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_c0_exe7142;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_stall_out;
    wire [31:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm7_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm7_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm7_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm7_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm7_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm7_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm7_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm8_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm8_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm8_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm8_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm8_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm8_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm8_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_valid_out;
    wire [63:0] kernel_2mm_B6_branch_out_c0_exe2137;
    wire [31:0] kernel_2mm_B6_branch_out_c0_exe3138;
    wire [0:0] kernel_2mm_B6_branch_out_c0_exe5140;
    wire [63:0] kernel_2mm_B6_branch_out_c0_exe6141;
    wire [0:0] kernel_2mm_B6_branch_out_c0_exe7142;
    wire [0:0] kernel_2mm_B6_branch_out_stall_out;
    wire [0:0] kernel_2mm_B6_branch_out_valid_out_0;
    wire [0:0] kernel_2mm_B6_branch_out_valid_out_1;
    wire [63:0] kernel_2mm_B6_merge_out_arrayidx11178;
    wire [0:0] kernel_2mm_B6_merge_out_forked22;
    wire [31:0] kernel_2mm_B6_merge_out_i_040_pop1557_pop1975;
    wire [31:0] kernel_2mm_B6_merge_out_i_040_pop1574;
    wire [63:0] kernel_2mm_B6_merge_out_idxprom1077;
    wire [63:0] kernel_2mm_B6_merge_out_idxprom76;
    wire [0:0] kernel_2mm_B6_merge_out_notcmp3779;
    wire [0:0] kernel_2mm_B6_merge_out_notcmp4253_pop1880;
    wire [0:0] kernel_2mm_B6_merge_out_notcmp4271;
    wire [0:0] kernel_2mm_B6_merge_out_stall_out_0;
    wire [0:0] kernel_2mm_B6_merge_out_stall_out_1;
    wire [31:0] kernel_2mm_B6_merge_out_unnamed_kernel_2mm6;
    wire [0:0] kernel_2mm_B6_merge_out_valid_out;


    // kernel_2mm_B6_merge(BLACKBOX,38)
    kernel_2mm_B6_merge thekernel_2mm_B6_merge (
        .in_arrayidx11178_0(in_arrayidx11178_0),
        .in_arrayidx11178_1(in_arrayidx11178_1),
        .in_forked22_0(in_forked22_0),
        .in_forked22_1(in_forked22_1),
        .in_i_040_pop1557_pop1975_0(in_i_040_pop1557_pop1975_0),
        .in_i_040_pop1557_pop1975_1(in_i_040_pop1557_pop1975_1),
        .in_i_040_pop1574_0(in_i_040_pop1574_0),
        .in_i_040_pop1574_1(in_i_040_pop1574_1),
        .in_idxprom1077_0(in_idxprom1077_0),
        .in_idxprom1077_1(in_idxprom1077_1),
        .in_idxprom76_0(in_idxprom76_0),
        .in_idxprom76_1(in_idxprom76_1),
        .in_notcmp3779_0(in_notcmp3779_0),
        .in_notcmp3779_1(in_notcmp3779_1),
        .in_notcmp4253_pop1880_0(in_notcmp4253_pop1880_0),
        .in_notcmp4253_pop1880_1(in_notcmp4253_pop1880_1),
        .in_notcmp4271_0(in_notcmp4271_0),
        .in_notcmp4271_1(in_notcmp4271_1),
        .in_stall_in(bb_kernel_2mm_B6_stall_region_out_stall_out),
        .in_unnamed_kernel_2mm6_0(in_unnamed_kernel_2mm6_0),
        .in_unnamed_kernel_2mm6_1(in_unnamed_kernel_2mm6_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_arrayidx11178(kernel_2mm_B6_merge_out_arrayidx11178),
        .out_forked22(kernel_2mm_B6_merge_out_forked22),
        .out_i_040_pop1557_pop1975(kernel_2mm_B6_merge_out_i_040_pop1557_pop1975),
        .out_i_040_pop1574(kernel_2mm_B6_merge_out_i_040_pop1574),
        .out_idxprom1077(kernel_2mm_B6_merge_out_idxprom1077),
        .out_idxprom76(kernel_2mm_B6_merge_out_idxprom76),
        .out_notcmp3779(kernel_2mm_B6_merge_out_notcmp3779),
        .out_notcmp4253_pop1880(kernel_2mm_B6_merge_out_notcmp4253_pop1880),
        .out_notcmp4271(kernel_2mm_B6_merge_out_notcmp4271),
        .out_stall_out_0(kernel_2mm_B6_merge_out_stall_out_0),
        .out_stall_out_1(kernel_2mm_B6_merge_out_stall_out_1),
        .out_unnamed_kernel_2mm6(kernel_2mm_B6_merge_out_unnamed_kernel_2mm6),
        .out_valid_out(kernel_2mm_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B6_stall_region(BLACKBOX,2)
    kernel_2mm_bb_B6_stall_region thebb_kernel_2mm_B6_stall_region (
        .in_arrayidx11178(kernel_2mm_B6_merge_out_arrayidx11178),
        .in_flush(in_flush),
        .in_forked22(kernel_2mm_B6_merge_out_forked22),
        .in_i_040_pop1557_pop1975(kernel_2mm_B6_merge_out_i_040_pop1557_pop1975),
        .in_i_040_pop1574(kernel_2mm_B6_merge_out_i_040_pop1574),
        .in_idxprom1077(kernel_2mm_B6_merge_out_idxprom1077),
        .in_idxprom76(kernel_2mm_B6_merge_out_idxprom76),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_notcmp3779(kernel_2mm_B6_merge_out_notcmp3779),
        .in_notcmp4253_pop1880(kernel_2mm_B6_merge_out_notcmp4253_pop1880),
        .in_notcmp4271(kernel_2mm_B6_merge_out_notcmp4271),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_2mm_B6_branch_out_stall_out),
        .in_unnamed_kernel_2mm6(kernel_2mm_B6_merge_out_unnamed_kernel_2mm6),
        .in_unnamed_kernel_2mm7_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm7_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm7_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm7_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm7_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm7_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm7_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm7_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm8_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm8_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm8_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm8_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm8_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm8_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm8_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm8_kernel_2mm_avm_writeack),
        .in_valid_in(kernel_2mm_B6_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_exiting_stall_out(bb_kernel_2mm_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_exiting_valid_out(bb_kernel_2mm_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_exiting_valid_out),
        .out_c0_exe2137(bb_kernel_2mm_B6_stall_region_out_c0_exe2137),
        .out_c0_exe3138(bb_kernel_2mm_B6_stall_region_out_c0_exe3138),
        .out_c0_exe4139(bb_kernel_2mm_B6_stall_region_out_c0_exe4139),
        .out_c0_exe5140(bb_kernel_2mm_B6_stall_region_out_c0_exe5140),
        .out_c0_exe6141(bb_kernel_2mm_B6_stall_region_out_c0_exe6141),
        .out_c0_exe7142(bb_kernel_2mm_B6_stall_region_out_c0_exe7142),
        .out_pipeline_valid_out(bb_kernel_2mm_B6_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_2mm_B6_stall_region_out_stall_out),
        .out_unnamed_kernel_2mm7_kernel_2mm_avm_address(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm7_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm7_kernel_2mm_avm_burstcount(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm7_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm7_kernel_2mm_avm_byteenable(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm7_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm7_kernel_2mm_avm_enable(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm7_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm7_kernel_2mm_avm_read(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm7_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm7_kernel_2mm_avm_write(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm7_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm7_kernel_2mm_avm_writedata(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm7_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm8_kernel_2mm_avm_address(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm8_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm8_kernel_2mm_avm_burstcount(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm8_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm8_kernel_2mm_avm_byteenable(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm8_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm8_kernel_2mm_avm_enable(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm8_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm8_kernel_2mm_avm_read(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm8_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm8_kernel_2mm_avm_write(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm8_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm8_kernel_2mm_avm_writedata(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm8_kernel_2mm_avm_writedata),
        .out_valid_out(bb_kernel_2mm_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B6_branch(BLACKBOX,37)
    kernel_2mm_B6_branch thekernel_2mm_B6_branch (
        .in_c0_exe2137(bb_kernel_2mm_B6_stall_region_out_c0_exe2137),
        .in_c0_exe3138(bb_kernel_2mm_B6_stall_region_out_c0_exe3138),
        .in_c0_exe4139(bb_kernel_2mm_B6_stall_region_out_c0_exe4139),
        .in_c0_exe5140(bb_kernel_2mm_B6_stall_region_out_c0_exe5140),
        .in_c0_exe6141(bb_kernel_2mm_B6_stall_region_out_c0_exe6141),
        .in_c0_exe7142(bb_kernel_2mm_B6_stall_region_out_c0_exe7142),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_2mm_B6_stall_region_out_valid_out),
        .out_c0_exe2137(kernel_2mm_B6_branch_out_c0_exe2137),
        .out_c0_exe3138(kernel_2mm_B6_branch_out_c0_exe3138),
        .out_c0_exe5140(kernel_2mm_B6_branch_out_c0_exe5140),
        .out_c0_exe6141(kernel_2mm_B6_branch_out_c0_exe6141),
        .out_c0_exe7142(kernel_2mm_B6_branch_out_c0_exe7142),
        .out_stall_out(kernel_2mm_B6_branch_out_stall_out),
        .out_valid_out_0(kernel_2mm_B6_branch_out_valid_out_0),
        .out_valid_out_1(kernel_2mm_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2137(GPOUT,39)
    assign out_c0_exe2137 = kernel_2mm_B6_branch_out_c0_exe2137;

    // out_c0_exe3138(GPOUT,40)
    assign out_c0_exe3138 = kernel_2mm_B6_branch_out_c0_exe3138;

    // out_c0_exe5140(GPOUT,41)
    assign out_c0_exe5140 = kernel_2mm_B6_branch_out_c0_exe5140;

    // out_c0_exe6141(GPOUT,42)
    assign out_c0_exe6141 = kernel_2mm_B6_branch_out_c0_exe6141;

    // out_c0_exe7142(GPOUT,43)
    assign out_c0_exe7142 = kernel_2mm_B6_branch_out_c0_exe7142;

    // out_exiting_stall_out(GPOUT,44)
    assign out_exiting_stall_out = bb_kernel_2mm_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,45)
    assign out_exiting_valid_out = bb_kernel_2mm_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_exiting_valid_out;

    // out_stall_in_0(GPOUT,46)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,47)
    assign out_stall_out_0 = kernel_2mm_B6_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,48)
    assign out_stall_out_1 = kernel_2mm_B6_merge_out_stall_out_1;

    // out_unnamed_kernel_2mm7_kernel_2mm_avm_address(GPOUT,49)
    assign out_unnamed_kernel_2mm7_kernel_2mm_avm_address = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm7_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm7_kernel_2mm_avm_burstcount(GPOUT,50)
    assign out_unnamed_kernel_2mm7_kernel_2mm_avm_burstcount = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm7_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm7_kernel_2mm_avm_byteenable(GPOUT,51)
    assign out_unnamed_kernel_2mm7_kernel_2mm_avm_byteenable = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm7_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm7_kernel_2mm_avm_enable(GPOUT,52)
    assign out_unnamed_kernel_2mm7_kernel_2mm_avm_enable = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm7_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm7_kernel_2mm_avm_read(GPOUT,53)
    assign out_unnamed_kernel_2mm7_kernel_2mm_avm_read = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm7_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm7_kernel_2mm_avm_write(GPOUT,54)
    assign out_unnamed_kernel_2mm7_kernel_2mm_avm_write = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm7_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm7_kernel_2mm_avm_writedata(GPOUT,55)
    assign out_unnamed_kernel_2mm7_kernel_2mm_avm_writedata = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm7_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm8_kernel_2mm_avm_address(GPOUT,56)
    assign out_unnamed_kernel_2mm8_kernel_2mm_avm_address = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm8_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm8_kernel_2mm_avm_burstcount(GPOUT,57)
    assign out_unnamed_kernel_2mm8_kernel_2mm_avm_burstcount = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm8_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm8_kernel_2mm_avm_byteenable(GPOUT,58)
    assign out_unnamed_kernel_2mm8_kernel_2mm_avm_byteenable = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm8_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm8_kernel_2mm_avm_enable(GPOUT,59)
    assign out_unnamed_kernel_2mm8_kernel_2mm_avm_enable = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm8_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm8_kernel_2mm_avm_read(GPOUT,60)
    assign out_unnamed_kernel_2mm8_kernel_2mm_avm_read = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm8_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm8_kernel_2mm_avm_write(GPOUT,61)
    assign out_unnamed_kernel_2mm8_kernel_2mm_avm_write = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm8_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm8_kernel_2mm_avm_writedata(GPOUT,62)
    assign out_unnamed_kernel_2mm8_kernel_2mm_avm_writedata = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm8_kernel_2mm_avm_writedata;

    // out_valid_in_0(GPOUT,63)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,64)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,65)
    assign out_valid_out_0 = kernel_2mm_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,66)
    assign out_valid_out_1 = kernel_2mm_B6_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,68)
    assign out_pipeline_valid_out = bb_kernel_2mm_B6_stall_region_out_pipeline_valid_out;

endmodule
