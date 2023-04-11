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

// SystemVerilog created from bb_kernel_2mm_B9
// Created for function/kernel kernel_2mm
// SystemVerilog created on Fri Apr  7 18:35:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B9 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked59_0,
    input wire [0:0] in_forked59_1,
    input wire [63:0] in_idxprom62_pop3181_0,
    input wire [63:0] in_idxprom62_pop3181_1,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_notcmp4254_pop2987_0,
    input wire [0:0] in_notcmp4254_pop2987_1,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_c0_exe1162,
    output wire [63:0] out_c0_exe2163,
    output wire [63:0] out_c0_exe3164,
    output wire [31:0] out_c0_exe4165,
    output wire [0:0] out_c0_exe6167,
    output wire [0:0] out_c0_exe7168,
    output wire [63:0] out_c0_exe8169,
    output wire [0:0] out_c0_exe9170,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_2mm_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_exiting_valid_out;
    wire [63:0] bb_kernel_2mm_B9_stall_region_out_c0_exe1162;
    wire [63:0] bb_kernel_2mm_B9_stall_region_out_c0_exe2163;
    wire [63:0] bb_kernel_2mm_B9_stall_region_out_c0_exe3164;
    wire [31:0] bb_kernel_2mm_B9_stall_region_out_c0_exe4165;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_c0_exe6167;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_c0_exe7168;
    wire [63:0] bb_kernel_2mm_B9_stall_region_out_c0_exe8169;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_c0_exe9170;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_stall_out;
    wire [31:0] bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_valid_out;
    wire [63:0] kernel_2mm_B9_branch_out_c0_exe1162;
    wire [63:0] kernel_2mm_B9_branch_out_c0_exe2163;
    wire [63:0] kernel_2mm_B9_branch_out_c0_exe3164;
    wire [31:0] kernel_2mm_B9_branch_out_c0_exe4165;
    wire [0:0] kernel_2mm_B9_branch_out_c0_exe6167;
    wire [0:0] kernel_2mm_B9_branch_out_c0_exe7168;
    wire [63:0] kernel_2mm_B9_branch_out_c0_exe8169;
    wire [0:0] kernel_2mm_B9_branch_out_c0_exe9170;
    wire [0:0] kernel_2mm_B9_branch_out_stall_out;
    wire [0:0] kernel_2mm_B9_branch_out_valid_out_0;
    wire [0:0] kernel_2mm_B9_merge_out_forked59;
    wire [63:0] kernel_2mm_B9_merge_out_idxprom62_pop3181;
    wire [0:0] kernel_2mm_B9_merge_out_notcmp4254_pop2987;
    wire [0:0] kernel_2mm_B9_merge_out_stall_out_0;
    wire [0:0] kernel_2mm_B9_merge_out_stall_out_1;
    wire [0:0] kernel_2mm_B9_merge_out_valid_out;


    // kernel_2mm_B9_merge(BLACKBOX,19)
    kernel_2mm_B9_merge thekernel_2mm_B9_merge (
        .in_forked59_0(in_forked59_0),
        .in_forked59_1(in_forked59_1),
        .in_idxprom62_pop3181_0(in_idxprom62_pop3181_0),
        .in_idxprom62_pop3181_1(in_idxprom62_pop3181_1),
        .in_notcmp4254_pop2987_0(in_notcmp4254_pop2987_0),
        .in_notcmp4254_pop2987_1(in_notcmp4254_pop2987_1),
        .in_stall_in(bb_kernel_2mm_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked59(kernel_2mm_B9_merge_out_forked59),
        .out_idxprom62_pop3181(kernel_2mm_B9_merge_out_idxprom62_pop3181),
        .out_notcmp4254_pop2987(kernel_2mm_B9_merge_out_notcmp4254_pop2987),
        .out_stall_out_0(kernel_2mm_B9_merge_out_stall_out_0),
        .out_stall_out_1(kernel_2mm_B9_merge_out_stall_out_1),
        .out_valid_out(kernel_2mm_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B9_stall_region(BLACKBOX,2)
    kernel_2mm_bb_B9_stall_region thebb_kernel_2mm_B9_stall_region (
        .in_flush(in_flush),
        .in_forked59(kernel_2mm_B9_merge_out_forked59),
        .in_idxprom62_pop3181(kernel_2mm_B9_merge_out_idxprom62_pop3181),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_notcmp4254_pop2987(kernel_2mm_B9_merge_out_notcmp4254_pop2987),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_2mm_B9_branch_out_stall_out),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack),
        .in_valid_in(kernel_2mm_B9_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_exiting_stall_out(bb_kernel_2mm_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_exiting_valid_out(bb_kernel_2mm_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_exiting_valid_out),
        .out_c0_exe1162(bb_kernel_2mm_B9_stall_region_out_c0_exe1162),
        .out_c0_exe2163(bb_kernel_2mm_B9_stall_region_out_c0_exe2163),
        .out_c0_exe3164(bb_kernel_2mm_B9_stall_region_out_c0_exe3164),
        .out_c0_exe4165(bb_kernel_2mm_B9_stall_region_out_c0_exe4165),
        .out_c0_exe6167(bb_kernel_2mm_B9_stall_region_out_c0_exe6167),
        .out_c0_exe7168(bb_kernel_2mm_B9_stall_region_out_c0_exe7168),
        .out_c0_exe8169(bb_kernel_2mm_B9_stall_region_out_c0_exe8169),
        .out_c0_exe9170(bb_kernel_2mm_B9_stall_region_out_c0_exe9170),
        .out_pipeline_valid_out(bb_kernel_2mm_B9_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_2mm_B9_stall_region_out_stall_out),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_address(bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount(bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable(bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_enable(bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_read(bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_write(bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata(bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata),
        .out_valid_out(bb_kernel_2mm_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B9_branch(BLACKBOX,18)
    kernel_2mm_B9_branch thekernel_2mm_B9_branch (
        .in_c0_exe1162(bb_kernel_2mm_B9_stall_region_out_c0_exe1162),
        .in_c0_exe2163(bb_kernel_2mm_B9_stall_region_out_c0_exe2163),
        .in_c0_exe3164(bb_kernel_2mm_B9_stall_region_out_c0_exe3164),
        .in_c0_exe4165(bb_kernel_2mm_B9_stall_region_out_c0_exe4165),
        .in_c0_exe6167(bb_kernel_2mm_B9_stall_region_out_c0_exe6167),
        .in_c0_exe7168(bb_kernel_2mm_B9_stall_region_out_c0_exe7168),
        .in_c0_exe8169(bb_kernel_2mm_B9_stall_region_out_c0_exe8169),
        .in_c0_exe9170(bb_kernel_2mm_B9_stall_region_out_c0_exe9170),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_2mm_B9_stall_region_out_valid_out),
        .out_c0_exe1162(kernel_2mm_B9_branch_out_c0_exe1162),
        .out_c0_exe2163(kernel_2mm_B9_branch_out_c0_exe2163),
        .out_c0_exe3164(kernel_2mm_B9_branch_out_c0_exe3164),
        .out_c0_exe4165(kernel_2mm_B9_branch_out_c0_exe4165),
        .out_c0_exe6167(kernel_2mm_B9_branch_out_c0_exe6167),
        .out_c0_exe7168(kernel_2mm_B9_branch_out_c0_exe7168),
        .out_c0_exe8169(kernel_2mm_B9_branch_out_c0_exe8169),
        .out_c0_exe9170(kernel_2mm_B9_branch_out_c0_exe9170),
        .out_stall_out(kernel_2mm_B9_branch_out_stall_out),
        .out_valid_out_0(kernel_2mm_B9_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1162(GPOUT,20)
    assign out_c0_exe1162 = kernel_2mm_B9_branch_out_c0_exe1162;

    // out_c0_exe2163(GPOUT,21)
    assign out_c0_exe2163 = kernel_2mm_B9_branch_out_c0_exe2163;

    // out_c0_exe3164(GPOUT,22)
    assign out_c0_exe3164 = kernel_2mm_B9_branch_out_c0_exe3164;

    // out_c0_exe4165(GPOUT,23)
    assign out_c0_exe4165 = kernel_2mm_B9_branch_out_c0_exe4165;

    // out_c0_exe6167(GPOUT,24)
    assign out_c0_exe6167 = kernel_2mm_B9_branch_out_c0_exe6167;

    // out_c0_exe7168(GPOUT,25)
    assign out_c0_exe7168 = kernel_2mm_B9_branch_out_c0_exe7168;

    // out_c0_exe8169(GPOUT,26)
    assign out_c0_exe8169 = kernel_2mm_B9_branch_out_c0_exe8169;

    // out_c0_exe9170(GPOUT,27)
    assign out_c0_exe9170 = kernel_2mm_B9_branch_out_c0_exe9170;

    // out_exiting_stall_out(GPOUT,28)
    assign out_exiting_stall_out = bb_kernel_2mm_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,29)
    assign out_exiting_valid_out = bb_kernel_2mm_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_exiting_valid_out;

    // out_stall_out_0(GPOUT,30)
    assign out_stall_out_0 = kernel_2mm_B9_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,31)
    assign out_stall_out_1 = kernel_2mm_B9_merge_out_stall_out_1;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_address(GPOUT,32)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_address = bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount(GPOUT,33)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount = bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable(GPOUT,34)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable = bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_enable(GPOUT,35)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_enable = bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_read(GPOUT,36)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_read = bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_write(GPOUT,37)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_write = bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata(GPOUT,38)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata = bb_kernel_2mm_B9_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata;

    // out_valid_in_0(GPOUT,39)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,40)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,41)
    assign out_valid_out_0 = kernel_2mm_B9_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,43)
    assign out_pipeline_valid_out = bb_kernel_2mm_B9_stall_region_out_pipeline_valid_out;

endmodule
