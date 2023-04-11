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

// SystemVerilog created from bb_triangular_B5
// Created for function/kernel triangular
// SystemVerilog created on Fri Apr  7 16:28:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B5 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked16_0,
    input wire [0:0] in_forked16_1,
    input wire [31:0] in_i_01841_0,
    input wire [31:0] in_i_01841_1,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_lim_ext28_pop1445_0,
    input wire [31:0] in_lim_ext28_pop1445_1,
    input wire [31:0] in_lim_ext37_0,
    input wire [31:0] in_lim_ext37_1,
    input wire [31:0] in_lm113_triangular_avm_readdata,
    input wire [0:0] in_lm113_triangular_avm_readdatavalid,
    input wire [0:0] in_lm113_triangular_avm_waitrequest,
    input wire [0:0] in_lm113_triangular_avm_writeack,
    input wire [31:0] in_lm1_triangular_avm_readdata,
    input wire [0:0] in_lm1_triangular_avm_readdatavalid,
    input wire [0:0] in_lm1_triangular_avm_waitrequest,
    input wire [0:0] in_lm1_triangular_avm_writeack,
    input wire [31:0] in_lm92_triangular_avm_readdata,
    input wire [0:0] in_lm92_triangular_avm_readdatavalid,
    input wire [0:0] in_lm92_triangular_avm_waitrequest,
    input wire [0:0] in_lm92_triangular_avm_writeack,
    input wire [0:0] in_memdep_phi4_pop1344_0,
    input wire [0:0] in_memdep_phi4_pop1344_1,
    input wire [31:0] in_memdep_triangular_avm_readdata,
    input wire [0:0] in_memdep_triangular_avm_readdatavalid,
    input wire [0:0] in_memdep_triangular_avm_waitrequest,
    input wire [0:0] in_memdep_triangular_avm_writeack,
    input wire [0:0] in_notcmp2043_0,
    input wire [0:0] in_notcmp2043_1,
    input wire [31:0] in_reorder_limiter_enter30_pop1546_0,
    input wire [31:0] in_reorder_limiter_enter30_pop1546_1,
    input wire [31:0] in_reorder_limiter_enter40_0,
    input wire [31:0] in_reorder_limiter_enter40_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_sub342_0,
    input wire [31:0] in_sub342_1,
    input wire [32:0] in_unnamed_triangular10_0,
    input wire [32:0] in_unnamed_triangular10_1,
    input wire [0:0] in_unnamed_triangular11_0,
    input wire [0:0] in_unnamed_triangular11_1,
    input wire [0:0] in_unnamed_triangular12_0,
    input wire [0:0] in_unnamed_triangular12_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe277,
    output wire [0:0] out_c0_exe479,
    output wire [31:0] out_c0_exe580,
    output wire [0:0] out_c0_exe681,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_lm113_triangular_avm_address,
    output wire [0:0] out_lm113_triangular_avm_burstcount,
    output wire [3:0] out_lm113_triangular_avm_byteenable,
    output wire [0:0] out_lm113_triangular_avm_enable,
    output wire [0:0] out_lm113_triangular_avm_read,
    output wire [0:0] out_lm113_triangular_avm_write,
    output wire [31:0] out_lm113_triangular_avm_writedata,
    output wire [31:0] out_lm1_triangular_avm_address,
    output wire [0:0] out_lm1_triangular_avm_burstcount,
    output wire [3:0] out_lm1_triangular_avm_byteenable,
    output wire [0:0] out_lm1_triangular_avm_enable,
    output wire [0:0] out_lm1_triangular_avm_read,
    output wire [0:0] out_lm1_triangular_avm_write,
    output wire [31:0] out_lm1_triangular_avm_writedata,
    output wire [31:0] out_lm92_triangular_avm_address,
    output wire [0:0] out_lm92_triangular_avm_burstcount,
    output wire [3:0] out_lm92_triangular_avm_byteenable,
    output wire [0:0] out_lm92_triangular_avm_enable,
    output wire [0:0] out_lm92_triangular_avm_read,
    output wire [0:0] out_lm92_triangular_avm_write,
    output wire [31:0] out_lm92_triangular_avm_writedata,
    output wire [31:0] out_memdep_triangular_avm_address,
    output wire [0:0] out_memdep_triangular_avm_burstcount,
    output wire [3:0] out_memdep_triangular_avm_byteenable,
    output wire [0:0] out_memdep_triangular_avm_enable,
    output wire [0:0] out_memdep_triangular_avm_read,
    output wire [0:0] out_memdep_triangular_avm_write,
    output wire [31:0] out_memdep_triangular_avm_writedata,
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

    wire [0:0] bb_triangular_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_stall_out;
    wire [0:0] bb_triangular_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_valid_out;
    wire [0:0] bb_triangular_B5_stall_region_out_c0_exe277;
    wire [0:0] bb_triangular_B5_stall_region_out_c0_exe378;
    wire [0:0] bb_triangular_B5_stall_region_out_c0_exe479;
    wire [31:0] bb_triangular_B5_stall_region_out_c0_exe580;
    wire [0:0] bb_triangular_B5_stall_region_out_c0_exe681;
    wire [31:0] bb_triangular_B5_stall_region_out_lm113_triangular_avm_address;
    wire [0:0] bb_triangular_B5_stall_region_out_lm113_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B5_stall_region_out_lm113_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B5_stall_region_out_lm113_triangular_avm_enable;
    wire [0:0] bb_triangular_B5_stall_region_out_lm113_triangular_avm_read;
    wire [0:0] bb_triangular_B5_stall_region_out_lm113_triangular_avm_write;
    wire [31:0] bb_triangular_B5_stall_region_out_lm113_triangular_avm_writedata;
    wire [31:0] bb_triangular_B5_stall_region_out_lm1_triangular_avm_address;
    wire [0:0] bb_triangular_B5_stall_region_out_lm1_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B5_stall_region_out_lm1_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B5_stall_region_out_lm1_triangular_avm_enable;
    wire [0:0] bb_triangular_B5_stall_region_out_lm1_triangular_avm_read;
    wire [0:0] bb_triangular_B5_stall_region_out_lm1_triangular_avm_write;
    wire [31:0] bb_triangular_B5_stall_region_out_lm1_triangular_avm_writedata;
    wire [31:0] bb_triangular_B5_stall_region_out_lm92_triangular_avm_address;
    wire [0:0] bb_triangular_B5_stall_region_out_lm92_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B5_stall_region_out_lm92_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B5_stall_region_out_lm92_triangular_avm_enable;
    wire [0:0] bb_triangular_B5_stall_region_out_lm92_triangular_avm_read;
    wire [0:0] bb_triangular_B5_stall_region_out_lm92_triangular_avm_write;
    wire [31:0] bb_triangular_B5_stall_region_out_lm92_triangular_avm_writedata;
    wire [31:0] bb_triangular_B5_stall_region_out_memdep_triangular_avm_address;
    wire [0:0] bb_triangular_B5_stall_region_out_memdep_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B5_stall_region_out_memdep_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B5_stall_region_out_memdep_triangular_avm_enable;
    wire [0:0] bb_triangular_B5_stall_region_out_memdep_triangular_avm_read;
    wire [0:0] bb_triangular_B5_stall_region_out_memdep_triangular_avm_write;
    wire [31:0] bb_triangular_B5_stall_region_out_memdep_triangular_avm_writedata;
    wire [0:0] bb_triangular_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_triangular_B5_stall_region_out_stall_out;
    wire [0:0] bb_triangular_B5_stall_region_out_valid_out;
    wire [0:0] triangular_B5_branch_out_c0_exe277;
    wire [0:0] triangular_B5_branch_out_c0_exe479;
    wire [31:0] triangular_B5_branch_out_c0_exe580;
    wire [0:0] triangular_B5_branch_out_c0_exe681;
    wire [0:0] triangular_B5_branch_out_stall_out;
    wire [0:0] triangular_B5_branch_out_valid_out_0;
    wire [0:0] triangular_B5_branch_out_valid_out_1;
    wire [0:0] triangular_B5_merge_out_forked16;
    wire [31:0] triangular_B5_merge_out_i_01841;
    wire [31:0] triangular_B5_merge_out_lim_ext28_pop1445;
    wire [31:0] triangular_B5_merge_out_lim_ext37;
    wire [0:0] triangular_B5_merge_out_memdep_phi4_pop1344;
    wire [0:0] triangular_B5_merge_out_notcmp2043;
    wire [31:0] triangular_B5_merge_out_reorder_limiter_enter30_pop1546;
    wire [31:0] triangular_B5_merge_out_reorder_limiter_enter40;
    wire [0:0] triangular_B5_merge_out_stall_out_0;
    wire [0:0] triangular_B5_merge_out_stall_out_1;
    wire [31:0] triangular_B5_merge_out_sub342;
    wire [32:0] triangular_B5_merge_out_unnamed_triangular10;
    wire [0:0] triangular_B5_merge_out_unnamed_triangular11;
    wire [0:0] triangular_B5_merge_out_unnamed_triangular12;
    wire [0:0] triangular_B5_merge_out_valid_out;


    // triangular_B5_merge(BLACKBOX,93)
    triangular_B5_merge thetriangular_B5_merge (
        .in_forked16_0(in_forked16_0),
        .in_forked16_1(in_forked16_1),
        .in_i_01841_0(in_i_01841_0),
        .in_i_01841_1(in_i_01841_1),
        .in_lim_ext28_pop1445_0(in_lim_ext28_pop1445_0),
        .in_lim_ext28_pop1445_1(in_lim_ext28_pop1445_1),
        .in_lim_ext37_0(in_lim_ext37_0),
        .in_lim_ext37_1(in_lim_ext37_1),
        .in_memdep_phi4_pop1344_0(in_memdep_phi4_pop1344_0),
        .in_memdep_phi4_pop1344_1(in_memdep_phi4_pop1344_1),
        .in_notcmp2043_0(in_notcmp2043_0),
        .in_notcmp2043_1(in_notcmp2043_1),
        .in_reorder_limiter_enter30_pop1546_0(in_reorder_limiter_enter30_pop1546_0),
        .in_reorder_limiter_enter30_pop1546_1(in_reorder_limiter_enter30_pop1546_1),
        .in_reorder_limiter_enter40_0(in_reorder_limiter_enter40_0),
        .in_reorder_limiter_enter40_1(in_reorder_limiter_enter40_1),
        .in_stall_in(bb_triangular_B5_stall_region_out_stall_out),
        .in_sub342_0(in_sub342_0),
        .in_sub342_1(in_sub342_1),
        .in_unnamed_triangular10_0(in_unnamed_triangular10_0),
        .in_unnamed_triangular10_1(in_unnamed_triangular10_1),
        .in_unnamed_triangular11_0(in_unnamed_triangular11_0),
        .in_unnamed_triangular11_1(in_unnamed_triangular11_1),
        .in_unnamed_triangular12_0(in_unnamed_triangular12_0),
        .in_unnamed_triangular12_1(in_unnamed_triangular12_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked16(triangular_B5_merge_out_forked16),
        .out_i_01841(triangular_B5_merge_out_i_01841),
        .out_lim_ext28_pop1445(triangular_B5_merge_out_lim_ext28_pop1445),
        .out_lim_ext37(triangular_B5_merge_out_lim_ext37),
        .out_memdep_phi4_pop1344(triangular_B5_merge_out_memdep_phi4_pop1344),
        .out_notcmp2043(triangular_B5_merge_out_notcmp2043),
        .out_reorder_limiter_enter30_pop1546(triangular_B5_merge_out_reorder_limiter_enter30_pop1546),
        .out_reorder_limiter_enter40(triangular_B5_merge_out_reorder_limiter_enter40),
        .out_stall_out_0(triangular_B5_merge_out_stall_out_0),
        .out_stall_out_1(triangular_B5_merge_out_stall_out_1),
        .out_sub342(triangular_B5_merge_out_sub342),
        .out_unnamed_triangular10(triangular_B5_merge_out_unnamed_triangular10),
        .out_unnamed_triangular11(triangular_B5_merge_out_unnamed_triangular11),
        .out_unnamed_triangular12(triangular_B5_merge_out_unnamed_triangular12),
        .out_valid_out(triangular_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B5_stall_region(BLACKBOX,2)
    triangular_bb_B5_stall_region thebb_triangular_B5_stall_region (
        .in_flush(in_flush),
        .in_forked16(triangular_B5_merge_out_forked16),
        .in_i_01841(triangular_B5_merge_out_i_01841),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_lim_ext28_pop1445(triangular_B5_merge_out_lim_ext28_pop1445),
        .in_lim_ext37(triangular_B5_merge_out_lim_ext37),
        .in_lm113_triangular_avm_readdata(in_lm113_triangular_avm_readdata),
        .in_lm113_triangular_avm_readdatavalid(in_lm113_triangular_avm_readdatavalid),
        .in_lm113_triangular_avm_waitrequest(in_lm113_triangular_avm_waitrequest),
        .in_lm113_triangular_avm_writeack(in_lm113_triangular_avm_writeack),
        .in_lm1_triangular_avm_readdata(in_lm1_triangular_avm_readdata),
        .in_lm1_triangular_avm_readdatavalid(in_lm1_triangular_avm_readdatavalid),
        .in_lm1_triangular_avm_waitrequest(in_lm1_triangular_avm_waitrequest),
        .in_lm1_triangular_avm_writeack(in_lm1_triangular_avm_writeack),
        .in_lm92_triangular_avm_readdata(in_lm92_triangular_avm_readdata),
        .in_lm92_triangular_avm_readdatavalid(in_lm92_triangular_avm_readdatavalid),
        .in_lm92_triangular_avm_waitrequest(in_lm92_triangular_avm_waitrequest),
        .in_lm92_triangular_avm_writeack(in_lm92_triangular_avm_writeack),
        .in_memdep_phi4_pop1344(triangular_B5_merge_out_memdep_phi4_pop1344),
        .in_memdep_triangular_avm_readdata(in_memdep_triangular_avm_readdata),
        .in_memdep_triangular_avm_readdatavalid(in_memdep_triangular_avm_readdatavalid),
        .in_memdep_triangular_avm_waitrequest(in_memdep_triangular_avm_waitrequest),
        .in_memdep_triangular_avm_writeack(in_memdep_triangular_avm_writeack),
        .in_notcmp2043(triangular_B5_merge_out_notcmp2043),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_reorder_limiter_enter30_pop1546(triangular_B5_merge_out_reorder_limiter_enter30_pop1546),
        .in_reorder_limiter_enter40(triangular_B5_merge_out_reorder_limiter_enter40),
        .in_stall_in(triangular_B5_branch_out_stall_out),
        .in_sub342(triangular_B5_merge_out_sub342),
        .in_unnamed_triangular10(triangular_B5_merge_out_unnamed_triangular10),
        .in_unnamed_triangular11(triangular_B5_merge_out_unnamed_triangular11),
        .in_unnamed_triangular12(triangular_B5_merge_out_unnamed_triangular12),
        .in_valid_in(triangular_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_stall_out(bb_triangular_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_valid_out(bb_triangular_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_valid_out),
        .out_c0_exe277(bb_triangular_B5_stall_region_out_c0_exe277),
        .out_c0_exe378(bb_triangular_B5_stall_region_out_c0_exe378),
        .out_c0_exe479(bb_triangular_B5_stall_region_out_c0_exe479),
        .out_c0_exe580(bb_triangular_B5_stall_region_out_c0_exe580),
        .out_c0_exe681(bb_triangular_B5_stall_region_out_c0_exe681),
        .out_lm113_triangular_avm_address(bb_triangular_B5_stall_region_out_lm113_triangular_avm_address),
        .out_lm113_triangular_avm_burstcount(bb_triangular_B5_stall_region_out_lm113_triangular_avm_burstcount),
        .out_lm113_triangular_avm_byteenable(bb_triangular_B5_stall_region_out_lm113_triangular_avm_byteenable),
        .out_lm113_triangular_avm_enable(bb_triangular_B5_stall_region_out_lm113_triangular_avm_enable),
        .out_lm113_triangular_avm_read(bb_triangular_B5_stall_region_out_lm113_triangular_avm_read),
        .out_lm113_triangular_avm_write(bb_triangular_B5_stall_region_out_lm113_triangular_avm_write),
        .out_lm113_triangular_avm_writedata(bb_triangular_B5_stall_region_out_lm113_triangular_avm_writedata),
        .out_lm1_triangular_avm_address(bb_triangular_B5_stall_region_out_lm1_triangular_avm_address),
        .out_lm1_triangular_avm_burstcount(bb_triangular_B5_stall_region_out_lm1_triangular_avm_burstcount),
        .out_lm1_triangular_avm_byteenable(bb_triangular_B5_stall_region_out_lm1_triangular_avm_byteenable),
        .out_lm1_triangular_avm_enable(bb_triangular_B5_stall_region_out_lm1_triangular_avm_enable),
        .out_lm1_triangular_avm_read(bb_triangular_B5_stall_region_out_lm1_triangular_avm_read),
        .out_lm1_triangular_avm_write(bb_triangular_B5_stall_region_out_lm1_triangular_avm_write),
        .out_lm1_triangular_avm_writedata(bb_triangular_B5_stall_region_out_lm1_triangular_avm_writedata),
        .out_lm92_triangular_avm_address(bb_triangular_B5_stall_region_out_lm92_triangular_avm_address),
        .out_lm92_triangular_avm_burstcount(bb_triangular_B5_stall_region_out_lm92_triangular_avm_burstcount),
        .out_lm92_triangular_avm_byteenable(bb_triangular_B5_stall_region_out_lm92_triangular_avm_byteenable),
        .out_lm92_triangular_avm_enable(bb_triangular_B5_stall_region_out_lm92_triangular_avm_enable),
        .out_lm92_triangular_avm_read(bb_triangular_B5_stall_region_out_lm92_triangular_avm_read),
        .out_lm92_triangular_avm_write(bb_triangular_B5_stall_region_out_lm92_triangular_avm_write),
        .out_lm92_triangular_avm_writedata(bb_triangular_B5_stall_region_out_lm92_triangular_avm_writedata),
        .out_memdep_triangular_avm_address(bb_triangular_B5_stall_region_out_memdep_triangular_avm_address),
        .out_memdep_triangular_avm_burstcount(bb_triangular_B5_stall_region_out_memdep_triangular_avm_burstcount),
        .out_memdep_triangular_avm_byteenable(bb_triangular_B5_stall_region_out_memdep_triangular_avm_byteenable),
        .out_memdep_triangular_avm_enable(bb_triangular_B5_stall_region_out_memdep_triangular_avm_enable),
        .out_memdep_triangular_avm_read(bb_triangular_B5_stall_region_out_memdep_triangular_avm_read),
        .out_memdep_triangular_avm_write(bb_triangular_B5_stall_region_out_memdep_triangular_avm_write),
        .out_memdep_triangular_avm_writedata(bb_triangular_B5_stall_region_out_memdep_triangular_avm_writedata),
        .out_pipeline_valid_out(bb_triangular_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_triangular_B5_stall_region_out_stall_out),
        .out_valid_out(bb_triangular_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // triangular_B5_branch(BLACKBOX,92)
    triangular_B5_branch thetriangular_B5_branch (
        .in_c0_exe277(bb_triangular_B5_stall_region_out_c0_exe277),
        .in_c0_exe378(bb_triangular_B5_stall_region_out_c0_exe378),
        .in_c0_exe479(bb_triangular_B5_stall_region_out_c0_exe479),
        .in_c0_exe580(bb_triangular_B5_stall_region_out_c0_exe580),
        .in_c0_exe681(bb_triangular_B5_stall_region_out_c0_exe681),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_triangular_B5_stall_region_out_valid_out),
        .out_c0_exe277(triangular_B5_branch_out_c0_exe277),
        .out_c0_exe479(triangular_B5_branch_out_c0_exe479),
        .out_c0_exe580(triangular_B5_branch_out_c0_exe580),
        .out_c0_exe681(triangular_B5_branch_out_c0_exe681),
        .out_stall_out(triangular_B5_branch_out_stall_out),
        .out_valid_out_0(triangular_B5_branch_out_valid_out_0),
        .out_valid_out_1(triangular_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe277(GPOUT,49)
    assign out_c0_exe277 = triangular_B5_branch_out_c0_exe277;

    // out_c0_exe479(GPOUT,50)
    assign out_c0_exe479 = triangular_B5_branch_out_c0_exe479;

    // out_c0_exe580(GPOUT,51)
    assign out_c0_exe580 = triangular_B5_branch_out_c0_exe580;

    // out_c0_exe681(GPOUT,52)
    assign out_c0_exe681 = triangular_B5_branch_out_c0_exe681;

    // out_exiting_stall_out(GPOUT,53)
    assign out_exiting_stall_out = bb_triangular_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,54)
    assign out_exiting_valid_out = bb_triangular_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_valid_out;

    // out_lm113_triangular_avm_address(GPOUT,55)
    assign out_lm113_triangular_avm_address = bb_triangular_B5_stall_region_out_lm113_triangular_avm_address;

    // out_lm113_triangular_avm_burstcount(GPOUT,56)
    assign out_lm113_triangular_avm_burstcount = bb_triangular_B5_stall_region_out_lm113_triangular_avm_burstcount;

    // out_lm113_triangular_avm_byteenable(GPOUT,57)
    assign out_lm113_triangular_avm_byteenable = bb_triangular_B5_stall_region_out_lm113_triangular_avm_byteenable;

    // out_lm113_triangular_avm_enable(GPOUT,58)
    assign out_lm113_triangular_avm_enable = bb_triangular_B5_stall_region_out_lm113_triangular_avm_enable;

    // out_lm113_triangular_avm_read(GPOUT,59)
    assign out_lm113_triangular_avm_read = bb_triangular_B5_stall_region_out_lm113_triangular_avm_read;

    // out_lm113_triangular_avm_write(GPOUT,60)
    assign out_lm113_triangular_avm_write = bb_triangular_B5_stall_region_out_lm113_triangular_avm_write;

    // out_lm113_triangular_avm_writedata(GPOUT,61)
    assign out_lm113_triangular_avm_writedata = bb_triangular_B5_stall_region_out_lm113_triangular_avm_writedata;

    // out_lm1_triangular_avm_address(GPOUT,62)
    assign out_lm1_triangular_avm_address = bb_triangular_B5_stall_region_out_lm1_triangular_avm_address;

    // out_lm1_triangular_avm_burstcount(GPOUT,63)
    assign out_lm1_triangular_avm_burstcount = bb_triangular_B5_stall_region_out_lm1_triangular_avm_burstcount;

    // out_lm1_triangular_avm_byteenable(GPOUT,64)
    assign out_lm1_triangular_avm_byteenable = bb_triangular_B5_stall_region_out_lm1_triangular_avm_byteenable;

    // out_lm1_triangular_avm_enable(GPOUT,65)
    assign out_lm1_triangular_avm_enable = bb_triangular_B5_stall_region_out_lm1_triangular_avm_enable;

    // out_lm1_triangular_avm_read(GPOUT,66)
    assign out_lm1_triangular_avm_read = bb_triangular_B5_stall_region_out_lm1_triangular_avm_read;

    // out_lm1_triangular_avm_write(GPOUT,67)
    assign out_lm1_triangular_avm_write = bb_triangular_B5_stall_region_out_lm1_triangular_avm_write;

    // out_lm1_triangular_avm_writedata(GPOUT,68)
    assign out_lm1_triangular_avm_writedata = bb_triangular_B5_stall_region_out_lm1_triangular_avm_writedata;

    // out_lm92_triangular_avm_address(GPOUT,69)
    assign out_lm92_triangular_avm_address = bb_triangular_B5_stall_region_out_lm92_triangular_avm_address;

    // out_lm92_triangular_avm_burstcount(GPOUT,70)
    assign out_lm92_triangular_avm_burstcount = bb_triangular_B5_stall_region_out_lm92_triangular_avm_burstcount;

    // out_lm92_triangular_avm_byteenable(GPOUT,71)
    assign out_lm92_triangular_avm_byteenable = bb_triangular_B5_stall_region_out_lm92_triangular_avm_byteenable;

    // out_lm92_triangular_avm_enable(GPOUT,72)
    assign out_lm92_triangular_avm_enable = bb_triangular_B5_stall_region_out_lm92_triangular_avm_enable;

    // out_lm92_triangular_avm_read(GPOUT,73)
    assign out_lm92_triangular_avm_read = bb_triangular_B5_stall_region_out_lm92_triangular_avm_read;

    // out_lm92_triangular_avm_write(GPOUT,74)
    assign out_lm92_triangular_avm_write = bb_triangular_B5_stall_region_out_lm92_triangular_avm_write;

    // out_lm92_triangular_avm_writedata(GPOUT,75)
    assign out_lm92_triangular_avm_writedata = bb_triangular_B5_stall_region_out_lm92_triangular_avm_writedata;

    // out_memdep_triangular_avm_address(GPOUT,76)
    assign out_memdep_triangular_avm_address = bb_triangular_B5_stall_region_out_memdep_triangular_avm_address;

    // out_memdep_triangular_avm_burstcount(GPOUT,77)
    assign out_memdep_triangular_avm_burstcount = bb_triangular_B5_stall_region_out_memdep_triangular_avm_burstcount;

    // out_memdep_triangular_avm_byteenable(GPOUT,78)
    assign out_memdep_triangular_avm_byteenable = bb_triangular_B5_stall_region_out_memdep_triangular_avm_byteenable;

    // out_memdep_triangular_avm_enable(GPOUT,79)
    assign out_memdep_triangular_avm_enable = bb_triangular_B5_stall_region_out_memdep_triangular_avm_enable;

    // out_memdep_triangular_avm_read(GPOUT,80)
    assign out_memdep_triangular_avm_read = bb_triangular_B5_stall_region_out_memdep_triangular_avm_read;

    // out_memdep_triangular_avm_write(GPOUT,81)
    assign out_memdep_triangular_avm_write = bb_triangular_B5_stall_region_out_memdep_triangular_avm_write;

    // out_memdep_triangular_avm_writedata(GPOUT,82)
    assign out_memdep_triangular_avm_writedata = bb_triangular_B5_stall_region_out_memdep_triangular_avm_writedata;

    // out_stall_in_0(GPOUT,83)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,84)
    assign out_stall_out_0 = triangular_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,85)
    assign out_stall_out_1 = triangular_B5_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,86)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,87)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,88)
    assign out_valid_out_0 = triangular_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,89)
    assign out_valid_out_1 = triangular_B5_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,91)
    assign out_pipeline_valid_out = bb_triangular_B5_stall_region_out_pipeline_valid_out;

endmodule
