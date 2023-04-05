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

// SystemVerilog created from bb_stencil_2d_B13
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Apr  4 22:01:35 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B13 (
    input wire [31:0] in_c_035_pop27129_0,
    input wire [31:0] in_c_035_pop27129_1,
    input wire [31:0] in_c_035_pop2794_pop37142_0,
    input wire [31:0] in_c_035_pop2794_pop37142_1,
    input wire [31:0] in_dot_prod_add143_0,
    input wire [31:0] in_dot_prod_add143_1,
    input wire [0:0] in_exitcond10144_0,
    input wire [0:0] in_exitcond10144_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked79139_0,
    input wire [0:0] in_forked79139_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_mul33_add18140_0,
    input wire [31:0] in_mul33_add18140_1,
    input wire [31:0] in_mul50117_0,
    input wire [31:0] in_mul50117_1,
    input wire [31:0] in_mul5086_pop29135_0,
    input wire [31:0] in_mul5086_pop29135_1,
    input wire [31:0] in_mul5087_pop34146_0,
    input wire [31:0] in_mul5087_pop34146_1,
    input wire [0:0] in_notcmp29145_0,
    input wire [0:0] in_notcmp29145_1,
    input wire [0:0] in_notcmp34126_0,
    input wire [0:0] in_notcmp34126_1,
    input wire [0:0] in_notcmp3492_pop36148_0,
    input wire [0:0] in_notcmp3492_pop36148_1,
    input wire [0:0] in_notcmp39122_0,
    input wire [0:0] in_notcmp39122_1,
    input wire [0:0] in_notcmp3989_pop30138_0,
    input wire [0:0] in_notcmp3989_pop30138_1,
    input wire [0:0] in_notcmp3990_pop35147_0,
    input wire [0:0] in_notcmp3990_pop35147_1,
    input wire [31:0] in_r_036_pop25112_0,
    input wire [31:0] in_r_036_pop25112_1,
    input wire [31:0] in_r_036_pop2583_pop28132_0,
    input wire [31:0] in_r_036_pop2583_pop28132_1,
    input wire [31:0] in_r_036_pop2584_pop33141_0,
    input wire [31:0] in_r_036_pop2584_pop33141_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_stencil_2d5_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_writeack,
    input wire [31:0] in_unnamed_stencil_2d6_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d6_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_stencil_2d6_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d6_stencil_2d_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe2258,
    output wire [31:0] out_c0_exe4260,
    output wire [0:0] out_c0_exe5261,
    output wire [0:0] out_c0_exe6262,
    output wire [31:0] out_c0_exe7263,
    output wire [0:0] out_c0_exe8264,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_stencil_2d5_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_burstcount,
    output wire [3:0] out_unnamed_stencil_2d5_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d5_stencil_2d_avm_writedata,
    output wire [31:0] out_unnamed_stencil_2d6_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_burstcount,
    output wire [3:0] out_unnamed_stencil_2d6_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d6_stencil_2d_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_stencil_2d_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out;
    wire [31:0] bb_stencil_2d_B13_stall_region_out_c0_exe2258;
    wire [0:0] bb_stencil_2d_B13_stall_region_out_c0_exe3259;
    wire [31:0] bb_stencil_2d_B13_stall_region_out_c0_exe4260;
    wire [0:0] bb_stencil_2d_B13_stall_region_out_c0_exe5261;
    wire [0:0] bb_stencil_2d_B13_stall_region_out_c0_exe6262;
    wire [31:0] bb_stencil_2d_B13_stall_region_out_c0_exe7263;
    wire [0:0] bb_stencil_2d_B13_stall_region_out_c0_exe8264;
    wire [31:0] bb_stencil_2d_B13_stall_region_out_intel_reserved_ffwd_0_0;
    wire [0:0] bb_stencil_2d_B13_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B13_stall_region_out_stall_out;
    wire [31:0] bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount;
    wire [3:0] bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_write;
    wire [31:0] bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_writedata;
    wire [31:0] bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_burstcount;
    wire [3:0] bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_write;
    wire [31:0] bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_writedata;
    wire [0:0] bb_stencil_2d_B13_stall_region_out_valid_out;
    wire [31:0] stencil_2d_B13_branch_out_c0_exe2258;
    wire [31:0] stencil_2d_B13_branch_out_c0_exe4260;
    wire [0:0] stencil_2d_B13_branch_out_c0_exe5261;
    wire [0:0] stencil_2d_B13_branch_out_c0_exe6262;
    wire [31:0] stencil_2d_B13_branch_out_c0_exe7263;
    wire [0:0] stencil_2d_B13_branch_out_c0_exe8264;
    wire [0:0] stencil_2d_B13_branch_out_stall_out;
    wire [0:0] stencil_2d_B13_branch_out_valid_out_0;
    wire [0:0] stencil_2d_B13_branch_out_valid_out_1;
    wire [31:0] stencil_2d_B13_merge_out_c_035_pop27129;
    wire [31:0] stencil_2d_B13_merge_out_c_035_pop2794_pop37142;
    wire [31:0] stencil_2d_B13_merge_out_dot_prod_add143;
    wire [0:0] stencil_2d_B13_merge_out_exitcond10144;
    wire [0:0] stencil_2d_B13_merge_out_forked;
    wire [0:0] stencil_2d_B13_merge_out_forked79139;
    wire [31:0] stencil_2d_B13_merge_out_mul33_add18140;
    wire [31:0] stencil_2d_B13_merge_out_mul50117;
    wire [31:0] stencil_2d_B13_merge_out_mul5086_pop29135;
    wire [31:0] stencil_2d_B13_merge_out_mul5087_pop34146;
    wire [0:0] stencil_2d_B13_merge_out_notcmp29145;
    wire [0:0] stencil_2d_B13_merge_out_notcmp34126;
    wire [0:0] stencil_2d_B13_merge_out_notcmp3492_pop36148;
    wire [0:0] stencil_2d_B13_merge_out_notcmp39122;
    wire [0:0] stencil_2d_B13_merge_out_notcmp3989_pop30138;
    wire [0:0] stencil_2d_B13_merge_out_notcmp3990_pop35147;
    wire [31:0] stencil_2d_B13_merge_out_r_036_pop25112;
    wire [31:0] stencil_2d_B13_merge_out_r_036_pop2583_pop28132;
    wire [31:0] stencil_2d_B13_merge_out_r_036_pop2584_pop33141;
    wire [0:0] stencil_2d_B13_merge_out_stall_out_0;
    wire [0:0] stencil_2d_B13_merge_out_stall_out_1;
    wire [0:0] stencil_2d_B13_merge_out_valid_out;


    // stencil_2d_B13_merge(BLACKBOX,87)
    stencil_2d_B13_merge thestencil_2d_B13_merge (
        .in_c_035_pop27129_0(in_c_035_pop27129_0),
        .in_c_035_pop27129_1(in_c_035_pop27129_1),
        .in_c_035_pop2794_pop37142_0(in_c_035_pop2794_pop37142_0),
        .in_c_035_pop2794_pop37142_1(in_c_035_pop2794_pop37142_1),
        .in_dot_prod_add143_0(in_dot_prod_add143_0),
        .in_dot_prod_add143_1(in_dot_prod_add143_1),
        .in_exitcond10144_0(in_exitcond10144_0),
        .in_exitcond10144_1(in_exitcond10144_1),
        .in_forked79139_0(in_forked79139_0),
        .in_forked79139_1(in_forked79139_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_mul33_add18140_0(in_mul33_add18140_0),
        .in_mul33_add18140_1(in_mul33_add18140_1),
        .in_mul50117_0(in_mul50117_0),
        .in_mul50117_1(in_mul50117_1),
        .in_mul5086_pop29135_0(in_mul5086_pop29135_0),
        .in_mul5086_pop29135_1(in_mul5086_pop29135_1),
        .in_mul5087_pop34146_0(in_mul5087_pop34146_0),
        .in_mul5087_pop34146_1(in_mul5087_pop34146_1),
        .in_notcmp29145_0(in_notcmp29145_0),
        .in_notcmp29145_1(in_notcmp29145_1),
        .in_notcmp34126_0(in_notcmp34126_0),
        .in_notcmp34126_1(in_notcmp34126_1),
        .in_notcmp3492_pop36148_0(in_notcmp3492_pop36148_0),
        .in_notcmp3492_pop36148_1(in_notcmp3492_pop36148_1),
        .in_notcmp39122_0(in_notcmp39122_0),
        .in_notcmp39122_1(in_notcmp39122_1),
        .in_notcmp3989_pop30138_0(in_notcmp3989_pop30138_0),
        .in_notcmp3989_pop30138_1(in_notcmp3989_pop30138_1),
        .in_notcmp3990_pop35147_0(in_notcmp3990_pop35147_0),
        .in_notcmp3990_pop35147_1(in_notcmp3990_pop35147_1),
        .in_r_036_pop25112_0(in_r_036_pop25112_0),
        .in_r_036_pop25112_1(in_r_036_pop25112_1),
        .in_r_036_pop2583_pop28132_0(in_r_036_pop2583_pop28132_0),
        .in_r_036_pop2583_pop28132_1(in_r_036_pop2583_pop28132_1),
        .in_r_036_pop2584_pop33141_0(in_r_036_pop2584_pop33141_0),
        .in_r_036_pop2584_pop33141_1(in_r_036_pop2584_pop33141_1),
        .in_stall_in(bb_stencil_2d_B13_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_c_035_pop27129(stencil_2d_B13_merge_out_c_035_pop27129),
        .out_c_035_pop2794_pop37142(stencil_2d_B13_merge_out_c_035_pop2794_pop37142),
        .out_dot_prod_add143(stencil_2d_B13_merge_out_dot_prod_add143),
        .out_exitcond10144(stencil_2d_B13_merge_out_exitcond10144),
        .out_forked(stencil_2d_B13_merge_out_forked),
        .out_forked79139(stencil_2d_B13_merge_out_forked79139),
        .out_mul33_add18140(stencil_2d_B13_merge_out_mul33_add18140),
        .out_mul50117(stencil_2d_B13_merge_out_mul50117),
        .out_mul5086_pop29135(stencil_2d_B13_merge_out_mul5086_pop29135),
        .out_mul5087_pop34146(stencil_2d_B13_merge_out_mul5087_pop34146),
        .out_notcmp29145(stencil_2d_B13_merge_out_notcmp29145),
        .out_notcmp34126(stencil_2d_B13_merge_out_notcmp34126),
        .out_notcmp3492_pop36148(stencil_2d_B13_merge_out_notcmp3492_pop36148),
        .out_notcmp39122(stencil_2d_B13_merge_out_notcmp39122),
        .out_notcmp3989_pop30138(stencil_2d_B13_merge_out_notcmp3989_pop30138),
        .out_notcmp3990_pop35147(stencil_2d_B13_merge_out_notcmp3990_pop35147),
        .out_r_036_pop25112(stencil_2d_B13_merge_out_r_036_pop25112),
        .out_r_036_pop2583_pop28132(stencil_2d_B13_merge_out_r_036_pop2583_pop28132),
        .out_r_036_pop2584_pop33141(stencil_2d_B13_merge_out_r_036_pop2584_pop33141),
        .out_stall_out_0(stencil_2d_B13_merge_out_stall_out_0),
        .out_stall_out_1(stencil_2d_B13_merge_out_stall_out_1),
        .out_valid_out(stencil_2d_B13_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B13_stall_region(BLACKBOX,2)
    stencil_2d_bb_B13_stall_region thebb_stencil_2d_B13_stall_region (
        .in_c_035_pop27129(stencil_2d_B13_merge_out_c_035_pop27129),
        .in_c_035_pop2794_pop37142(stencil_2d_B13_merge_out_c_035_pop2794_pop37142),
        .in_dot_prod_add143(stencil_2d_B13_merge_out_dot_prod_add143),
        .in_exitcond10144(stencil_2d_B13_merge_out_exitcond10144),
        .in_flush(in_flush),
        .in_forked(stencil_2d_B13_merge_out_forked),
        .in_forked79139(stencil_2d_B13_merge_out_forked79139),
        .in_mul33_add18140(stencil_2d_B13_merge_out_mul33_add18140),
        .in_mul50117(stencil_2d_B13_merge_out_mul50117),
        .in_mul5086_pop29135(stencil_2d_B13_merge_out_mul5086_pop29135),
        .in_mul5087_pop34146(stencil_2d_B13_merge_out_mul5087_pop34146),
        .in_notcmp29145(stencil_2d_B13_merge_out_notcmp29145),
        .in_notcmp34126(stencil_2d_B13_merge_out_notcmp34126),
        .in_notcmp3492_pop36148(stencil_2d_B13_merge_out_notcmp3492_pop36148),
        .in_notcmp39122(stencil_2d_B13_merge_out_notcmp39122),
        .in_notcmp3989_pop30138(stencil_2d_B13_merge_out_notcmp3989_pop30138),
        .in_notcmp3990_pop35147(stencil_2d_B13_merge_out_notcmp3990_pop35147),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_r_036_pop25112(stencil_2d_B13_merge_out_r_036_pop25112),
        .in_r_036_pop2583_pop28132(stencil_2d_B13_merge_out_r_036_pop2583_pop28132),
        .in_r_036_pop2584_pop33141(stencil_2d_B13_merge_out_r_036_pop2584_pop33141),
        .in_stall_in(stencil_2d_B13_branch_out_stall_out),
        .in_unnamed_stencil_2d5_stencil_2d_avm_readdata(in_unnamed_stencil_2d5_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d5_stencil_2d_avm_writeack(in_unnamed_stencil_2d5_stencil_2d_avm_writeack),
        .in_unnamed_stencil_2d6_stencil_2d_avm_readdata(in_unnamed_stencil_2d6_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d6_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d6_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d6_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d6_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d6_stencil_2d_avm_writeack(in_unnamed_stencil_2d6_stencil_2d_avm_writeack),
        .in_valid_in(stencil_2d_B13_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out(bb_stencil_2d_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out(bb_stencil_2d_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out),
        .out_c0_exe2258(bb_stencil_2d_B13_stall_region_out_c0_exe2258),
        .out_c0_exe3259(bb_stencil_2d_B13_stall_region_out_c0_exe3259),
        .out_c0_exe4260(bb_stencil_2d_B13_stall_region_out_c0_exe4260),
        .out_c0_exe5261(bb_stencil_2d_B13_stall_region_out_c0_exe5261),
        .out_c0_exe6262(bb_stencil_2d_B13_stall_region_out_c0_exe6262),
        .out_c0_exe7263(bb_stencil_2d_B13_stall_region_out_c0_exe7263),
        .out_c0_exe8264(bb_stencil_2d_B13_stall_region_out_c0_exe8264),
        .out_intel_reserved_ffwd_0_0(bb_stencil_2d_B13_stall_region_out_intel_reserved_ffwd_0_0),
        .out_pipeline_valid_out(bb_stencil_2d_B13_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_stencil_2d_B13_stall_region_out_stall_out),
        .out_unnamed_stencil_2d5_stencil_2d_avm_address(bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_address),
        .out_unnamed_stencil_2d5_stencil_2d_avm_burstcount(bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d5_stencil_2d_avm_byteenable(bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d5_stencil_2d_avm_enable(bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d5_stencil_2d_avm_read(bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_read),
        .out_unnamed_stencil_2d5_stencil_2d_avm_write(bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_write),
        .out_unnamed_stencil_2d5_stencil_2d_avm_writedata(bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_writedata),
        .out_unnamed_stencil_2d6_stencil_2d_avm_address(bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_address),
        .out_unnamed_stencil_2d6_stencil_2d_avm_burstcount(bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d6_stencil_2d_avm_byteenable(bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d6_stencil_2d_avm_enable(bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d6_stencil_2d_avm_read(bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_read),
        .out_unnamed_stencil_2d6_stencil_2d_avm_write(bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_write),
        .out_unnamed_stencil_2d6_stencil_2d_avm_writedata(bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_writedata),
        .out_valid_out(bb_stencil_2d_B13_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B13_branch(BLACKBOX,86)
    stencil_2d_B13_branch thestencil_2d_B13_branch (
        .in_c0_exe2258(bb_stencil_2d_B13_stall_region_out_c0_exe2258),
        .in_c0_exe3259(bb_stencil_2d_B13_stall_region_out_c0_exe3259),
        .in_c0_exe4260(bb_stencil_2d_B13_stall_region_out_c0_exe4260),
        .in_c0_exe5261(bb_stencil_2d_B13_stall_region_out_c0_exe5261),
        .in_c0_exe6262(bb_stencil_2d_B13_stall_region_out_c0_exe6262),
        .in_c0_exe7263(bb_stencil_2d_B13_stall_region_out_c0_exe7263),
        .in_c0_exe8264(bb_stencil_2d_B13_stall_region_out_c0_exe8264),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_stencil_2d_B13_stall_region_out_valid_out),
        .out_c0_exe2258(stencil_2d_B13_branch_out_c0_exe2258),
        .out_c0_exe4260(stencil_2d_B13_branch_out_c0_exe4260),
        .out_c0_exe5261(stencil_2d_B13_branch_out_c0_exe5261),
        .out_c0_exe6262(stencil_2d_B13_branch_out_c0_exe6262),
        .out_c0_exe7263(stencil_2d_B13_branch_out_c0_exe7263),
        .out_c0_exe8264(stencil_2d_B13_branch_out_c0_exe8264),
        .out_stall_out(stencil_2d_B13_branch_out_stall_out),
        .out_valid_out_0(stencil_2d_B13_branch_out_valid_out_0),
        .out_valid_out_1(stencil_2d_B13_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2258(GPOUT,54)
    assign out_c0_exe2258 = stencil_2d_B13_branch_out_c0_exe2258;

    // out_c0_exe4260(GPOUT,55)
    assign out_c0_exe4260 = stencil_2d_B13_branch_out_c0_exe4260;

    // out_c0_exe5261(GPOUT,56)
    assign out_c0_exe5261 = stencil_2d_B13_branch_out_c0_exe5261;

    // out_c0_exe6262(GPOUT,57)
    assign out_c0_exe6262 = stencil_2d_B13_branch_out_c0_exe6262;

    // out_c0_exe7263(GPOUT,58)
    assign out_c0_exe7263 = stencil_2d_B13_branch_out_c0_exe7263;

    // out_c0_exe8264(GPOUT,59)
    assign out_c0_exe8264 = stencil_2d_B13_branch_out_c0_exe8264;

    // out_exiting_stall_out(GPOUT,60)
    assign out_exiting_stall_out = bb_stencil_2d_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,61)
    assign out_exiting_valid_out = bb_stencil_2d_B13_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out;

    // out_intel_reserved_ffwd_0_0(GPOUT,62)
    assign out_intel_reserved_ffwd_0_0 = bb_stencil_2d_B13_stall_region_out_intel_reserved_ffwd_0_0;

    // out_stall_in_0(GPOUT,63)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,64)
    assign out_stall_out_0 = stencil_2d_B13_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,65)
    assign out_stall_out_1 = stencil_2d_B13_merge_out_stall_out_1;

    // out_unnamed_stencil_2d5_stencil_2d_avm_address(GPOUT,66)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_address = bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_address;

    // out_unnamed_stencil_2d5_stencil_2d_avm_burstcount(GPOUT,67)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_burstcount = bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount;

    // out_unnamed_stencil_2d5_stencil_2d_avm_byteenable(GPOUT,68)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_byteenable = bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable;

    // out_unnamed_stencil_2d5_stencil_2d_avm_enable(GPOUT,69)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_enable = bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_enable;

    // out_unnamed_stencil_2d5_stencil_2d_avm_read(GPOUT,70)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_read = bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_read;

    // out_unnamed_stencil_2d5_stencil_2d_avm_write(GPOUT,71)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_write = bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_write;

    // out_unnamed_stencil_2d5_stencil_2d_avm_writedata(GPOUT,72)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_writedata = bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_writedata;

    // out_unnamed_stencil_2d6_stencil_2d_avm_address(GPOUT,73)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_address = bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_address;

    // out_unnamed_stencil_2d6_stencil_2d_avm_burstcount(GPOUT,74)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_burstcount = bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_burstcount;

    // out_unnamed_stencil_2d6_stencil_2d_avm_byteenable(GPOUT,75)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_byteenable = bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_byteenable;

    // out_unnamed_stencil_2d6_stencil_2d_avm_enable(GPOUT,76)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_enable = bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_enable;

    // out_unnamed_stencil_2d6_stencil_2d_avm_read(GPOUT,77)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_read = bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_read;

    // out_unnamed_stencil_2d6_stencil_2d_avm_write(GPOUT,78)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_write = bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_write;

    // out_unnamed_stencil_2d6_stencil_2d_avm_writedata(GPOUT,79)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_writedata = bb_stencil_2d_B13_stall_region_out_unnamed_stencil_2d6_stencil_2d_avm_writedata;

    // out_valid_in_0(GPOUT,80)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,81)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,82)
    assign out_valid_out_0 = stencil_2d_B13_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,83)
    assign out_valid_out_1 = stencil_2d_B13_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,85)
    assign out_pipeline_valid_out = bb_stencil_2d_B13_stall_region_out_pipeline_valid_out;

endmodule
