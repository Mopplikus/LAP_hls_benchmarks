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

// SystemVerilog created from bb_triangular_B9
// Created for function/kernel triangular
// SystemVerilog created on Wed Apr  5 14:46:58 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B9 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked44_0,
    input wire [0:0] in_forked44_1,
    input wire [31:0] in_i20_039123_0,
    input wire [31:0] in_i20_039123_1,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_lim_ext94_pop33119_0,
    input wire [31:0] in_lim_ext94_pop33119_1,
    input wire [31:0] in_lim_ext95_pop25127_0,
    input wire [31:0] in_lim_ext95_pop25127_1,
    input wire [31:0] in_lm122_triangular_avm_readdata,
    input wire [0:0] in_lm122_triangular_avm_readdatavalid,
    input wire [0:0] in_lm122_triangular_avm_waitrequest,
    input wire [0:0] in_lm122_triangular_avm_writeack,
    input wire [31:0] in_lm143_triangular_avm_readdata,
    input wire [0:0] in_lm143_triangular_avm_readdatavalid,
    input wire [0:0] in_lm143_triangular_avm_waitrequest,
    input wire [0:0] in_lm143_triangular_avm_writeack,
    input wire [31:0] in_lm1_triangular_avm_readdata,
    input wire [0:0] in_lm1_triangular_avm_readdatavalid,
    input wire [0:0] in_lm1_triangular_avm_waitrequest,
    input wire [0:0] in_lm1_triangular_avm_writeack,
    input wire [31:0] in_memdep_5_triangular_avm_readdata,
    input wire [0:0] in_memdep_5_triangular_avm_readdatavalid,
    input wire [0:0] in_memdep_5_triangular_avm_waitrequest,
    input wire [0:0] in_memdep_5_triangular_avm_writeack,
    input wire [0:0] in_memdep_phi6_pop24126_0,
    input wire [0:0] in_memdep_phi6_pop24126_1,
    input wire [0:0] in_notcmp62125_0,
    input wire [0:0] in_notcmp62125_1,
    input wire [31:0] in_reorder_limiter_enter112_0,
    input wire [31:0] in_reorder_limiter_enter112_1,
    input wire [31:0] in_reorder_limiter_enter97_pop26128_0,
    input wire [31:0] in_reorder_limiter_enter97_pop26128_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_sub25124_0,
    input wire [31:0] in_sub25124_1,
    input wire [32:0] in_unnamed_triangular13_0,
    input wire [32:0] in_unnamed_triangular13_1,
    input wire [0:0] in_unnamed_triangular14_0,
    input wire [0:0] in_unnamed_triangular14_1,
    input wire [0:0] in_unnamed_triangular15_0,
    input wire [0:0] in_unnamed_triangular15_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe2208,
    output wire [0:0] out_c0_exe4210,
    output wire [31:0] out_c0_exe5211,
    output wire [0:0] out_c0_exe6212,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_lm122_triangular_avm_address,
    output wire [0:0] out_lm122_triangular_avm_burstcount,
    output wire [3:0] out_lm122_triangular_avm_byteenable,
    output wire [0:0] out_lm122_triangular_avm_enable,
    output wire [0:0] out_lm122_triangular_avm_read,
    output wire [0:0] out_lm122_triangular_avm_write,
    output wire [31:0] out_lm122_triangular_avm_writedata,
    output wire [31:0] out_lm143_triangular_avm_address,
    output wire [0:0] out_lm143_triangular_avm_burstcount,
    output wire [3:0] out_lm143_triangular_avm_byteenable,
    output wire [0:0] out_lm143_triangular_avm_enable,
    output wire [0:0] out_lm143_triangular_avm_read,
    output wire [0:0] out_lm143_triangular_avm_write,
    output wire [31:0] out_lm143_triangular_avm_writedata,
    output wire [31:0] out_lm1_triangular_avm_address,
    output wire [0:0] out_lm1_triangular_avm_burstcount,
    output wire [3:0] out_lm1_triangular_avm_byteenable,
    output wire [0:0] out_lm1_triangular_avm_enable,
    output wire [0:0] out_lm1_triangular_avm_read,
    output wire [0:0] out_lm1_triangular_avm_write,
    output wire [31:0] out_lm1_triangular_avm_writedata,
    output wire [31:0] out_memdep_5_triangular_avm_address,
    output wire [0:0] out_memdep_5_triangular_avm_burstcount,
    output wire [3:0] out_memdep_5_triangular_avm_byteenable,
    output wire [0:0] out_memdep_5_triangular_avm_enable,
    output wire [0:0] out_memdep_5_triangular_avm_read,
    output wire [0:0] out_memdep_5_triangular_avm_write,
    output wire [31:0] out_memdep_5_triangular_avm_writedata,
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

    wire [0:0] bb_triangular_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_stall_out;
    wire [0:0] bb_triangular_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_valid_out;
    wire [0:0] bb_triangular_B9_stall_region_out_c0_exe2208;
    wire [0:0] bb_triangular_B9_stall_region_out_c0_exe3209;
    wire [0:0] bb_triangular_B9_stall_region_out_c0_exe4210;
    wire [31:0] bb_triangular_B9_stall_region_out_c0_exe5211;
    wire [0:0] bb_triangular_B9_stall_region_out_c0_exe6212;
    wire [31:0] bb_triangular_B9_stall_region_out_lm122_triangular_avm_address;
    wire [0:0] bb_triangular_B9_stall_region_out_lm122_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B9_stall_region_out_lm122_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B9_stall_region_out_lm122_triangular_avm_enable;
    wire [0:0] bb_triangular_B9_stall_region_out_lm122_triangular_avm_read;
    wire [0:0] bb_triangular_B9_stall_region_out_lm122_triangular_avm_write;
    wire [31:0] bb_triangular_B9_stall_region_out_lm122_triangular_avm_writedata;
    wire [31:0] bb_triangular_B9_stall_region_out_lm143_triangular_avm_address;
    wire [0:0] bb_triangular_B9_stall_region_out_lm143_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B9_stall_region_out_lm143_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B9_stall_region_out_lm143_triangular_avm_enable;
    wire [0:0] bb_triangular_B9_stall_region_out_lm143_triangular_avm_read;
    wire [0:0] bb_triangular_B9_stall_region_out_lm143_triangular_avm_write;
    wire [31:0] bb_triangular_B9_stall_region_out_lm143_triangular_avm_writedata;
    wire [31:0] bb_triangular_B9_stall_region_out_lm1_triangular_avm_address;
    wire [0:0] bb_triangular_B9_stall_region_out_lm1_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B9_stall_region_out_lm1_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B9_stall_region_out_lm1_triangular_avm_enable;
    wire [0:0] bb_triangular_B9_stall_region_out_lm1_triangular_avm_read;
    wire [0:0] bb_triangular_B9_stall_region_out_lm1_triangular_avm_write;
    wire [31:0] bb_triangular_B9_stall_region_out_lm1_triangular_avm_writedata;
    wire [31:0] bb_triangular_B9_stall_region_out_memdep_5_triangular_avm_address;
    wire [0:0] bb_triangular_B9_stall_region_out_memdep_5_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B9_stall_region_out_memdep_5_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B9_stall_region_out_memdep_5_triangular_avm_enable;
    wire [0:0] bb_triangular_B9_stall_region_out_memdep_5_triangular_avm_read;
    wire [0:0] bb_triangular_B9_stall_region_out_memdep_5_triangular_avm_write;
    wire [31:0] bb_triangular_B9_stall_region_out_memdep_5_triangular_avm_writedata;
    wire [0:0] bb_triangular_B9_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_triangular_B9_stall_region_out_stall_out;
    wire [0:0] bb_triangular_B9_stall_region_out_valid_out;
    wire [0:0] triangular_B9_branch_out_c0_exe2208;
    wire [0:0] triangular_B9_branch_out_c0_exe4210;
    wire [31:0] triangular_B9_branch_out_c0_exe5211;
    wire [0:0] triangular_B9_branch_out_c0_exe6212;
    wire [0:0] triangular_B9_branch_out_stall_out;
    wire [0:0] triangular_B9_branch_out_valid_out_0;
    wire [0:0] triangular_B9_branch_out_valid_out_1;
    wire [0:0] triangular_B9_merge_out_forked44;
    wire [31:0] triangular_B9_merge_out_i20_039123;
    wire [31:0] triangular_B9_merge_out_lim_ext94_pop33119;
    wire [31:0] triangular_B9_merge_out_lim_ext95_pop25127;
    wire [0:0] triangular_B9_merge_out_memdep_phi6_pop24126;
    wire [0:0] triangular_B9_merge_out_notcmp62125;
    wire [31:0] triangular_B9_merge_out_reorder_limiter_enter112;
    wire [31:0] triangular_B9_merge_out_reorder_limiter_enter97_pop26128;
    wire [0:0] triangular_B9_merge_out_stall_out_0;
    wire [0:0] triangular_B9_merge_out_stall_out_1;
    wire [31:0] triangular_B9_merge_out_sub25124;
    wire [32:0] triangular_B9_merge_out_unnamed_triangular13;
    wire [0:0] triangular_B9_merge_out_unnamed_triangular14;
    wire [0:0] triangular_B9_merge_out_unnamed_triangular15;
    wire [0:0] triangular_B9_merge_out_valid_out;


    // triangular_B9_merge(BLACKBOX,93)
    triangular_B9_merge thetriangular_B9_merge (
        .in_forked44_0(in_forked44_0),
        .in_forked44_1(in_forked44_1),
        .in_i20_039123_0(in_i20_039123_0),
        .in_i20_039123_1(in_i20_039123_1),
        .in_lim_ext94_pop33119_0(in_lim_ext94_pop33119_0),
        .in_lim_ext94_pop33119_1(in_lim_ext94_pop33119_1),
        .in_lim_ext95_pop25127_0(in_lim_ext95_pop25127_0),
        .in_lim_ext95_pop25127_1(in_lim_ext95_pop25127_1),
        .in_memdep_phi6_pop24126_0(in_memdep_phi6_pop24126_0),
        .in_memdep_phi6_pop24126_1(in_memdep_phi6_pop24126_1),
        .in_notcmp62125_0(in_notcmp62125_0),
        .in_notcmp62125_1(in_notcmp62125_1),
        .in_reorder_limiter_enter112_0(in_reorder_limiter_enter112_0),
        .in_reorder_limiter_enter112_1(in_reorder_limiter_enter112_1),
        .in_reorder_limiter_enter97_pop26128_0(in_reorder_limiter_enter97_pop26128_0),
        .in_reorder_limiter_enter97_pop26128_1(in_reorder_limiter_enter97_pop26128_1),
        .in_stall_in(bb_triangular_B9_stall_region_out_stall_out),
        .in_sub25124_0(in_sub25124_0),
        .in_sub25124_1(in_sub25124_1),
        .in_unnamed_triangular13_0(in_unnamed_triangular13_0),
        .in_unnamed_triangular13_1(in_unnamed_triangular13_1),
        .in_unnamed_triangular14_0(in_unnamed_triangular14_0),
        .in_unnamed_triangular14_1(in_unnamed_triangular14_1),
        .in_unnamed_triangular15_0(in_unnamed_triangular15_0),
        .in_unnamed_triangular15_1(in_unnamed_triangular15_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked44(triangular_B9_merge_out_forked44),
        .out_i20_039123(triangular_B9_merge_out_i20_039123),
        .out_lim_ext94_pop33119(triangular_B9_merge_out_lim_ext94_pop33119),
        .out_lim_ext95_pop25127(triangular_B9_merge_out_lim_ext95_pop25127),
        .out_memdep_phi6_pop24126(triangular_B9_merge_out_memdep_phi6_pop24126),
        .out_notcmp62125(triangular_B9_merge_out_notcmp62125),
        .out_reorder_limiter_enter112(triangular_B9_merge_out_reorder_limiter_enter112),
        .out_reorder_limiter_enter97_pop26128(triangular_B9_merge_out_reorder_limiter_enter97_pop26128),
        .out_stall_out_0(triangular_B9_merge_out_stall_out_0),
        .out_stall_out_1(triangular_B9_merge_out_stall_out_1),
        .out_sub25124(triangular_B9_merge_out_sub25124),
        .out_unnamed_triangular13(triangular_B9_merge_out_unnamed_triangular13),
        .out_unnamed_triangular14(triangular_B9_merge_out_unnamed_triangular14),
        .out_unnamed_triangular15(triangular_B9_merge_out_unnamed_triangular15),
        .out_valid_out(triangular_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B9_stall_region(BLACKBOX,2)
    triangular_bb_B9_stall_region thebb_triangular_B9_stall_region (
        .in_flush(in_flush),
        .in_forked44(triangular_B9_merge_out_forked44),
        .in_i20_039123(triangular_B9_merge_out_i20_039123),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_lim_ext94_pop33119(triangular_B9_merge_out_lim_ext94_pop33119),
        .in_lim_ext95_pop25127(triangular_B9_merge_out_lim_ext95_pop25127),
        .in_lm122_triangular_avm_readdata(in_lm122_triangular_avm_readdata),
        .in_lm122_triangular_avm_readdatavalid(in_lm122_triangular_avm_readdatavalid),
        .in_lm122_triangular_avm_waitrequest(in_lm122_triangular_avm_waitrequest),
        .in_lm122_triangular_avm_writeack(in_lm122_triangular_avm_writeack),
        .in_lm143_triangular_avm_readdata(in_lm143_triangular_avm_readdata),
        .in_lm143_triangular_avm_readdatavalid(in_lm143_triangular_avm_readdatavalid),
        .in_lm143_triangular_avm_waitrequest(in_lm143_triangular_avm_waitrequest),
        .in_lm143_triangular_avm_writeack(in_lm143_triangular_avm_writeack),
        .in_lm1_triangular_avm_readdata(in_lm1_triangular_avm_readdata),
        .in_lm1_triangular_avm_readdatavalid(in_lm1_triangular_avm_readdatavalid),
        .in_lm1_triangular_avm_waitrequest(in_lm1_triangular_avm_waitrequest),
        .in_lm1_triangular_avm_writeack(in_lm1_triangular_avm_writeack),
        .in_memdep_5_triangular_avm_readdata(in_memdep_5_triangular_avm_readdata),
        .in_memdep_5_triangular_avm_readdatavalid(in_memdep_5_triangular_avm_readdatavalid),
        .in_memdep_5_triangular_avm_waitrequest(in_memdep_5_triangular_avm_waitrequest),
        .in_memdep_5_triangular_avm_writeack(in_memdep_5_triangular_avm_writeack),
        .in_memdep_phi6_pop24126(triangular_B9_merge_out_memdep_phi6_pop24126),
        .in_notcmp62125(triangular_B9_merge_out_notcmp62125),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_reorder_limiter_enter112(triangular_B9_merge_out_reorder_limiter_enter112),
        .in_reorder_limiter_enter97_pop26128(triangular_B9_merge_out_reorder_limiter_enter97_pop26128),
        .in_stall_in(triangular_B9_branch_out_stall_out),
        .in_sub25124(triangular_B9_merge_out_sub25124),
        .in_unnamed_triangular13(triangular_B9_merge_out_unnamed_triangular13),
        .in_unnamed_triangular14(triangular_B9_merge_out_unnamed_triangular14),
        .in_unnamed_triangular15(triangular_B9_merge_out_unnamed_triangular15),
        .in_valid_in(triangular_B9_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_stall_out(bb_triangular_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_valid_out(bb_triangular_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_valid_out),
        .out_c0_exe2208(bb_triangular_B9_stall_region_out_c0_exe2208),
        .out_c0_exe3209(bb_triangular_B9_stall_region_out_c0_exe3209),
        .out_c0_exe4210(bb_triangular_B9_stall_region_out_c0_exe4210),
        .out_c0_exe5211(bb_triangular_B9_stall_region_out_c0_exe5211),
        .out_c0_exe6212(bb_triangular_B9_stall_region_out_c0_exe6212),
        .out_lm122_triangular_avm_address(bb_triangular_B9_stall_region_out_lm122_triangular_avm_address),
        .out_lm122_triangular_avm_burstcount(bb_triangular_B9_stall_region_out_lm122_triangular_avm_burstcount),
        .out_lm122_triangular_avm_byteenable(bb_triangular_B9_stall_region_out_lm122_triangular_avm_byteenable),
        .out_lm122_triangular_avm_enable(bb_triangular_B9_stall_region_out_lm122_triangular_avm_enable),
        .out_lm122_triangular_avm_read(bb_triangular_B9_stall_region_out_lm122_triangular_avm_read),
        .out_lm122_triangular_avm_write(bb_triangular_B9_stall_region_out_lm122_triangular_avm_write),
        .out_lm122_triangular_avm_writedata(bb_triangular_B9_stall_region_out_lm122_triangular_avm_writedata),
        .out_lm143_triangular_avm_address(bb_triangular_B9_stall_region_out_lm143_triangular_avm_address),
        .out_lm143_triangular_avm_burstcount(bb_triangular_B9_stall_region_out_lm143_triangular_avm_burstcount),
        .out_lm143_triangular_avm_byteenable(bb_triangular_B9_stall_region_out_lm143_triangular_avm_byteenable),
        .out_lm143_triangular_avm_enable(bb_triangular_B9_stall_region_out_lm143_triangular_avm_enable),
        .out_lm143_triangular_avm_read(bb_triangular_B9_stall_region_out_lm143_triangular_avm_read),
        .out_lm143_triangular_avm_write(bb_triangular_B9_stall_region_out_lm143_triangular_avm_write),
        .out_lm143_triangular_avm_writedata(bb_triangular_B9_stall_region_out_lm143_triangular_avm_writedata),
        .out_lm1_triangular_avm_address(bb_triangular_B9_stall_region_out_lm1_triangular_avm_address),
        .out_lm1_triangular_avm_burstcount(bb_triangular_B9_stall_region_out_lm1_triangular_avm_burstcount),
        .out_lm1_triangular_avm_byteenable(bb_triangular_B9_stall_region_out_lm1_triangular_avm_byteenable),
        .out_lm1_triangular_avm_enable(bb_triangular_B9_stall_region_out_lm1_triangular_avm_enable),
        .out_lm1_triangular_avm_read(bb_triangular_B9_stall_region_out_lm1_triangular_avm_read),
        .out_lm1_triangular_avm_write(bb_triangular_B9_stall_region_out_lm1_triangular_avm_write),
        .out_lm1_triangular_avm_writedata(bb_triangular_B9_stall_region_out_lm1_triangular_avm_writedata),
        .out_memdep_5_triangular_avm_address(bb_triangular_B9_stall_region_out_memdep_5_triangular_avm_address),
        .out_memdep_5_triangular_avm_burstcount(bb_triangular_B9_stall_region_out_memdep_5_triangular_avm_burstcount),
        .out_memdep_5_triangular_avm_byteenable(bb_triangular_B9_stall_region_out_memdep_5_triangular_avm_byteenable),
        .out_memdep_5_triangular_avm_enable(bb_triangular_B9_stall_region_out_memdep_5_triangular_avm_enable),
        .out_memdep_5_triangular_avm_read(bb_triangular_B9_stall_region_out_memdep_5_triangular_avm_read),
        .out_memdep_5_triangular_avm_write(bb_triangular_B9_stall_region_out_memdep_5_triangular_avm_write),
        .out_memdep_5_triangular_avm_writedata(bb_triangular_B9_stall_region_out_memdep_5_triangular_avm_writedata),
        .out_pipeline_valid_out(bb_triangular_B9_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_triangular_B9_stall_region_out_stall_out),
        .out_valid_out(bb_triangular_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // triangular_B9_branch(BLACKBOX,92)
    triangular_B9_branch thetriangular_B9_branch (
        .in_c0_exe2208(bb_triangular_B9_stall_region_out_c0_exe2208),
        .in_c0_exe3209(bb_triangular_B9_stall_region_out_c0_exe3209),
        .in_c0_exe4210(bb_triangular_B9_stall_region_out_c0_exe4210),
        .in_c0_exe5211(bb_triangular_B9_stall_region_out_c0_exe5211),
        .in_c0_exe6212(bb_triangular_B9_stall_region_out_c0_exe6212),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_triangular_B9_stall_region_out_valid_out),
        .out_c0_exe2208(triangular_B9_branch_out_c0_exe2208),
        .out_c0_exe4210(triangular_B9_branch_out_c0_exe4210),
        .out_c0_exe5211(triangular_B9_branch_out_c0_exe5211),
        .out_c0_exe6212(triangular_B9_branch_out_c0_exe6212),
        .out_stall_out(triangular_B9_branch_out_stall_out),
        .out_valid_out_0(triangular_B9_branch_out_valid_out_0),
        .out_valid_out_1(triangular_B9_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2208(GPOUT,49)
    assign out_c0_exe2208 = triangular_B9_branch_out_c0_exe2208;

    // out_c0_exe4210(GPOUT,50)
    assign out_c0_exe4210 = triangular_B9_branch_out_c0_exe4210;

    // out_c0_exe5211(GPOUT,51)
    assign out_c0_exe5211 = triangular_B9_branch_out_c0_exe5211;

    // out_c0_exe6212(GPOUT,52)
    assign out_c0_exe6212 = triangular_B9_branch_out_c0_exe6212;

    // out_exiting_stall_out(GPOUT,53)
    assign out_exiting_stall_out = bb_triangular_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,54)
    assign out_exiting_valid_out = bb_triangular_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_valid_out;

    // out_lm122_triangular_avm_address(GPOUT,55)
    assign out_lm122_triangular_avm_address = bb_triangular_B9_stall_region_out_lm122_triangular_avm_address;

    // out_lm122_triangular_avm_burstcount(GPOUT,56)
    assign out_lm122_triangular_avm_burstcount = bb_triangular_B9_stall_region_out_lm122_triangular_avm_burstcount;

    // out_lm122_triangular_avm_byteenable(GPOUT,57)
    assign out_lm122_triangular_avm_byteenable = bb_triangular_B9_stall_region_out_lm122_triangular_avm_byteenable;

    // out_lm122_triangular_avm_enable(GPOUT,58)
    assign out_lm122_triangular_avm_enable = bb_triangular_B9_stall_region_out_lm122_triangular_avm_enable;

    // out_lm122_triangular_avm_read(GPOUT,59)
    assign out_lm122_triangular_avm_read = bb_triangular_B9_stall_region_out_lm122_triangular_avm_read;

    // out_lm122_triangular_avm_write(GPOUT,60)
    assign out_lm122_triangular_avm_write = bb_triangular_B9_stall_region_out_lm122_triangular_avm_write;

    // out_lm122_triangular_avm_writedata(GPOUT,61)
    assign out_lm122_triangular_avm_writedata = bb_triangular_B9_stall_region_out_lm122_triangular_avm_writedata;

    // out_lm143_triangular_avm_address(GPOUT,62)
    assign out_lm143_triangular_avm_address = bb_triangular_B9_stall_region_out_lm143_triangular_avm_address;

    // out_lm143_triangular_avm_burstcount(GPOUT,63)
    assign out_lm143_triangular_avm_burstcount = bb_triangular_B9_stall_region_out_lm143_triangular_avm_burstcount;

    // out_lm143_triangular_avm_byteenable(GPOUT,64)
    assign out_lm143_triangular_avm_byteenable = bb_triangular_B9_stall_region_out_lm143_triangular_avm_byteenable;

    // out_lm143_triangular_avm_enable(GPOUT,65)
    assign out_lm143_triangular_avm_enable = bb_triangular_B9_stall_region_out_lm143_triangular_avm_enable;

    // out_lm143_triangular_avm_read(GPOUT,66)
    assign out_lm143_triangular_avm_read = bb_triangular_B9_stall_region_out_lm143_triangular_avm_read;

    // out_lm143_triangular_avm_write(GPOUT,67)
    assign out_lm143_triangular_avm_write = bb_triangular_B9_stall_region_out_lm143_triangular_avm_write;

    // out_lm143_triangular_avm_writedata(GPOUT,68)
    assign out_lm143_triangular_avm_writedata = bb_triangular_B9_stall_region_out_lm143_triangular_avm_writedata;

    // out_lm1_triangular_avm_address(GPOUT,69)
    assign out_lm1_triangular_avm_address = bb_triangular_B9_stall_region_out_lm1_triangular_avm_address;

    // out_lm1_triangular_avm_burstcount(GPOUT,70)
    assign out_lm1_triangular_avm_burstcount = bb_triangular_B9_stall_region_out_lm1_triangular_avm_burstcount;

    // out_lm1_triangular_avm_byteenable(GPOUT,71)
    assign out_lm1_triangular_avm_byteenable = bb_triangular_B9_stall_region_out_lm1_triangular_avm_byteenable;

    // out_lm1_triangular_avm_enable(GPOUT,72)
    assign out_lm1_triangular_avm_enable = bb_triangular_B9_stall_region_out_lm1_triangular_avm_enable;

    // out_lm1_triangular_avm_read(GPOUT,73)
    assign out_lm1_triangular_avm_read = bb_triangular_B9_stall_region_out_lm1_triangular_avm_read;

    // out_lm1_triangular_avm_write(GPOUT,74)
    assign out_lm1_triangular_avm_write = bb_triangular_B9_stall_region_out_lm1_triangular_avm_write;

    // out_lm1_triangular_avm_writedata(GPOUT,75)
    assign out_lm1_triangular_avm_writedata = bb_triangular_B9_stall_region_out_lm1_triangular_avm_writedata;

    // out_memdep_5_triangular_avm_address(GPOUT,76)
    assign out_memdep_5_triangular_avm_address = bb_triangular_B9_stall_region_out_memdep_5_triangular_avm_address;

    // out_memdep_5_triangular_avm_burstcount(GPOUT,77)
    assign out_memdep_5_triangular_avm_burstcount = bb_triangular_B9_stall_region_out_memdep_5_triangular_avm_burstcount;

    // out_memdep_5_triangular_avm_byteenable(GPOUT,78)
    assign out_memdep_5_triangular_avm_byteenable = bb_triangular_B9_stall_region_out_memdep_5_triangular_avm_byteenable;

    // out_memdep_5_triangular_avm_enable(GPOUT,79)
    assign out_memdep_5_triangular_avm_enable = bb_triangular_B9_stall_region_out_memdep_5_triangular_avm_enable;

    // out_memdep_5_triangular_avm_read(GPOUT,80)
    assign out_memdep_5_triangular_avm_read = bb_triangular_B9_stall_region_out_memdep_5_triangular_avm_read;

    // out_memdep_5_triangular_avm_write(GPOUT,81)
    assign out_memdep_5_triangular_avm_write = bb_triangular_B9_stall_region_out_memdep_5_triangular_avm_write;

    // out_memdep_5_triangular_avm_writedata(GPOUT,82)
    assign out_memdep_5_triangular_avm_writedata = bb_triangular_B9_stall_region_out_memdep_5_triangular_avm_writedata;

    // out_stall_in_0(GPOUT,83)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,84)
    assign out_stall_out_0 = triangular_B9_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,85)
    assign out_stall_out_1 = triangular_B9_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,86)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,87)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,88)
    assign out_valid_out_0 = triangular_B9_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,89)
    assign out_valid_out_1 = triangular_B9_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,91)
    assign out_pipeline_valid_out = bb_triangular_B9_stall_region_out_pipeline_valid_out;

endmodule
