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

// SystemVerilog created from bb_covariance_B7
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B7 (
    input wire [0:0] in_exitcond1089_pop34136_0,
    input wire [0:0] in_exitcond1089_pop34136_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked38_0,
    input wire [0:0] in_forked38_1,
    input wire [31:0] in_j_077_pop1993_pop36131_0,
    input wire [31:0] in_j_077_pop1993_pop36131_1,
    input wire [31:0] in_lim_ext115_0,
    input wire [31:0] in_lim_ext115_1,
    input wire [31:0] in_lim_ext80_pop33134_0,
    input wire [31:0] in_lim_ext80_pop33134_1,
    input wire [63:0] in_mPtr_bitcast8286129_0,
    input wire [63:0] in_mPtr_bitcast8286129_1,
    input wire [31:0] in_memdep_covariance_avm_readdata,
    input wire [0:0] in_memdep_covariance_avm_readdatavalid,
    input wire [0:0] in_memdep_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_covariance_avm_writeack,
    input wire [31:0] in_mul6128_0,
    input wire [31:0] in_mul6128_1,
    input wire [0:0] in_notcmp6991_pop35138_0,
    input wire [0:0] in_notcmp6991_pop35138_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_covariance10_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance10_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance10_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance10_covariance_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe5263,
    output wire [0:0] out_c0_exe6264,
    output wire [0:0] out_c0_exe7265,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_memdep,
    output wire [31:0] out_memdep_covariance_avm_address,
    output wire [0:0] out_memdep_covariance_avm_burstcount,
    output wire [3:0] out_memdep_covariance_avm_byteenable,
    output wire [0:0] out_memdep_covariance_avm_enable,
    output wire [0:0] out_memdep_covariance_avm_read,
    output wire [0:0] out_memdep_covariance_avm_write,
    output wire [31:0] out_memdep_covariance_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_covariance10_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance10_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance10_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance10_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance10_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance10_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance10_covariance_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_covariance_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_stall_out;
    wire [0:0] bb_covariance_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_valid_out;
    wire [0:0] bb_covariance_B7_stall_region_out_c0_exe4262;
    wire [31:0] bb_covariance_B7_stall_region_out_c0_exe5263;
    wire [0:0] bb_covariance_B7_stall_region_out_c0_exe6264;
    wire [0:0] bb_covariance_B7_stall_region_out_c0_exe7265;
    wire [0:0] bb_covariance_B7_stall_region_out_lsu_memdep_o_active;
    wire [0:0] bb_covariance_B7_stall_region_out_memdep;
    wire [31:0] bb_covariance_B7_stall_region_out_memdep_covariance_avm_address;
    wire [0:0] bb_covariance_B7_stall_region_out_memdep_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B7_stall_region_out_memdep_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B7_stall_region_out_memdep_covariance_avm_enable;
    wire [0:0] bb_covariance_B7_stall_region_out_memdep_covariance_avm_read;
    wire [0:0] bb_covariance_B7_stall_region_out_memdep_covariance_avm_write;
    wire [31:0] bb_covariance_B7_stall_region_out_memdep_covariance_avm_writedata;
    wire [0:0] bb_covariance_B7_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B7_stall_region_out_stall_out;
    wire [31:0] bb_covariance_B7_stall_region_out_unnamed_covariance10_covariance_avm_address;
    wire [0:0] bb_covariance_B7_stall_region_out_unnamed_covariance10_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B7_stall_region_out_unnamed_covariance10_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B7_stall_region_out_unnamed_covariance10_covariance_avm_enable;
    wire [0:0] bb_covariance_B7_stall_region_out_unnamed_covariance10_covariance_avm_read;
    wire [0:0] bb_covariance_B7_stall_region_out_unnamed_covariance10_covariance_avm_write;
    wire [31:0] bb_covariance_B7_stall_region_out_unnamed_covariance10_covariance_avm_writedata;
    wire [0:0] bb_covariance_B7_stall_region_out_valid_out;
    wire [31:0] covariance_B7_branch_out_c0_exe5263;
    wire [0:0] covariance_B7_branch_out_c0_exe6264;
    wire [0:0] covariance_B7_branch_out_c0_exe7265;
    wire [0:0] covariance_B7_branch_out_memdep;
    wire [0:0] covariance_B7_branch_out_stall_out;
    wire [0:0] covariance_B7_branch_out_valid_out_0;
    wire [0:0] covariance_B7_branch_out_valid_out_1;
    wire [0:0] covariance_B7_merge_out_exitcond1089_pop34136;
    wire [0:0] covariance_B7_merge_out_forked38;
    wire [31:0] covariance_B7_merge_out_j_077_pop1993_pop36131;
    wire [31:0] covariance_B7_merge_out_lim_ext115;
    wire [31:0] covariance_B7_merge_out_lim_ext80_pop33134;
    wire [63:0] covariance_B7_merge_out_mPtr_bitcast8286129;
    wire [31:0] covariance_B7_merge_out_mul6128;
    wire [0:0] covariance_B7_merge_out_notcmp6991_pop35138;
    wire [0:0] covariance_B7_merge_out_stall_out_0;
    wire [0:0] covariance_B7_merge_out_stall_out_1;
    wire [0:0] covariance_B7_merge_out_valid_out;


    // covariance_B7_merge(BLACKBOX,4)
    covariance_B7_merge thecovariance_B7_merge (
        .in_exitcond1089_pop34136_0(in_exitcond1089_pop34136_0),
        .in_exitcond1089_pop34136_1(in_exitcond1089_pop34136_1),
        .in_forked38_0(in_forked38_0),
        .in_forked38_1(in_forked38_1),
        .in_j_077_pop1993_pop36131_0(in_j_077_pop1993_pop36131_0),
        .in_j_077_pop1993_pop36131_1(in_j_077_pop1993_pop36131_1),
        .in_lim_ext115_0(in_lim_ext115_0),
        .in_lim_ext115_1(in_lim_ext115_1),
        .in_lim_ext80_pop33134_0(in_lim_ext80_pop33134_0),
        .in_lim_ext80_pop33134_1(in_lim_ext80_pop33134_1),
        .in_mPtr_bitcast8286129_0(in_mPtr_bitcast8286129_0),
        .in_mPtr_bitcast8286129_1(in_mPtr_bitcast8286129_1),
        .in_mul6128_0(in_mul6128_0),
        .in_mul6128_1(in_mul6128_1),
        .in_notcmp6991_pop35138_0(in_notcmp6991_pop35138_0),
        .in_notcmp6991_pop35138_1(in_notcmp6991_pop35138_1),
        .in_stall_in(bb_covariance_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond1089_pop34136(covariance_B7_merge_out_exitcond1089_pop34136),
        .out_forked38(covariance_B7_merge_out_forked38),
        .out_j_077_pop1993_pop36131(covariance_B7_merge_out_j_077_pop1993_pop36131),
        .out_lim_ext115(covariance_B7_merge_out_lim_ext115),
        .out_lim_ext80_pop33134(covariance_B7_merge_out_lim_ext80_pop33134),
        .out_mPtr_bitcast8286129(covariance_B7_merge_out_mPtr_bitcast8286129),
        .out_mul6128(covariance_B7_merge_out_mul6128),
        .out_notcmp6991_pop35138(covariance_B7_merge_out_notcmp6991_pop35138),
        .out_stall_out_0(covariance_B7_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B7_merge_out_stall_out_1),
        .out_valid_out(covariance_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B7_stall_region(BLACKBOX,2)
    covariance_bb_B7_stall_region thebb_covariance_B7_stall_region (
        .in_exitcond1089_pop34136(covariance_B7_merge_out_exitcond1089_pop34136),
        .in_flush(in_flush),
        .in_forked38(covariance_B7_merge_out_forked38),
        .in_j_077_pop1993_pop36131(covariance_B7_merge_out_j_077_pop1993_pop36131),
        .in_lim_ext115(covariance_B7_merge_out_lim_ext115),
        .in_lim_ext80_pop33134(covariance_B7_merge_out_lim_ext80_pop33134),
        .in_mPtr_bitcast8286129(covariance_B7_merge_out_mPtr_bitcast8286129),
        .in_memdep_covariance_avm_readdata(in_memdep_covariance_avm_readdata),
        .in_memdep_covariance_avm_readdatavalid(in_memdep_covariance_avm_readdatavalid),
        .in_memdep_covariance_avm_waitrequest(in_memdep_covariance_avm_waitrequest),
        .in_memdep_covariance_avm_writeack(in_memdep_covariance_avm_writeack),
        .in_mul6128(covariance_B7_merge_out_mul6128),
        .in_notcmp6991_pop35138(covariance_B7_merge_out_notcmp6991_pop35138),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(covariance_B7_branch_out_stall_out),
        .in_unnamed_covariance10_covariance_avm_readdata(in_unnamed_covariance10_covariance_avm_readdata),
        .in_unnamed_covariance10_covariance_avm_readdatavalid(in_unnamed_covariance10_covariance_avm_readdatavalid),
        .in_unnamed_covariance10_covariance_avm_waitrequest(in_unnamed_covariance10_covariance_avm_waitrequest),
        .in_unnamed_covariance10_covariance_avm_writeack(in_unnamed_covariance10_covariance_avm_writeack),
        .in_valid_in(covariance_B7_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_stall_out(bb_covariance_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_valid_out(bb_covariance_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_valid_out),
        .out_c0_exe4262(bb_covariance_B7_stall_region_out_c0_exe4262),
        .out_c0_exe5263(bb_covariance_B7_stall_region_out_c0_exe5263),
        .out_c0_exe6264(bb_covariance_B7_stall_region_out_c0_exe6264),
        .out_c0_exe7265(bb_covariance_B7_stall_region_out_c0_exe7265),
        .out_lsu_memdep_o_active(bb_covariance_B7_stall_region_out_lsu_memdep_o_active),
        .out_memdep(bb_covariance_B7_stall_region_out_memdep),
        .out_memdep_covariance_avm_address(bb_covariance_B7_stall_region_out_memdep_covariance_avm_address),
        .out_memdep_covariance_avm_burstcount(bb_covariance_B7_stall_region_out_memdep_covariance_avm_burstcount),
        .out_memdep_covariance_avm_byteenable(bb_covariance_B7_stall_region_out_memdep_covariance_avm_byteenable),
        .out_memdep_covariance_avm_enable(bb_covariance_B7_stall_region_out_memdep_covariance_avm_enable),
        .out_memdep_covariance_avm_read(bb_covariance_B7_stall_region_out_memdep_covariance_avm_read),
        .out_memdep_covariance_avm_write(bb_covariance_B7_stall_region_out_memdep_covariance_avm_write),
        .out_memdep_covariance_avm_writedata(bb_covariance_B7_stall_region_out_memdep_covariance_avm_writedata),
        .out_pipeline_valid_out(bb_covariance_B7_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_covariance_B7_stall_region_out_stall_out),
        .out_unnamed_covariance10_covariance_avm_address(bb_covariance_B7_stall_region_out_unnamed_covariance10_covariance_avm_address),
        .out_unnamed_covariance10_covariance_avm_burstcount(bb_covariance_B7_stall_region_out_unnamed_covariance10_covariance_avm_burstcount),
        .out_unnamed_covariance10_covariance_avm_byteenable(bb_covariance_B7_stall_region_out_unnamed_covariance10_covariance_avm_byteenable),
        .out_unnamed_covariance10_covariance_avm_enable(bb_covariance_B7_stall_region_out_unnamed_covariance10_covariance_avm_enable),
        .out_unnamed_covariance10_covariance_avm_read(bb_covariance_B7_stall_region_out_unnamed_covariance10_covariance_avm_read),
        .out_unnamed_covariance10_covariance_avm_write(bb_covariance_B7_stall_region_out_unnamed_covariance10_covariance_avm_write),
        .out_unnamed_covariance10_covariance_avm_writedata(bb_covariance_B7_stall_region_out_unnamed_covariance10_covariance_avm_writedata),
        .out_valid_out(bb_covariance_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B7_branch(BLACKBOX,3)
    covariance_B7_branch thecovariance_B7_branch (
        .in_c0_exe4262(bb_covariance_B7_stall_region_out_c0_exe4262),
        .in_c0_exe5263(bb_covariance_B7_stall_region_out_c0_exe5263),
        .in_c0_exe6264(bb_covariance_B7_stall_region_out_c0_exe6264),
        .in_c0_exe7265(bb_covariance_B7_stall_region_out_c0_exe7265),
        .in_memdep(bb_covariance_B7_stall_region_out_memdep),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_covariance_B7_stall_region_out_valid_out),
        .out_c0_exe5263(covariance_B7_branch_out_c0_exe5263),
        .out_c0_exe6264(covariance_B7_branch_out_c0_exe6264),
        .out_c0_exe7265(covariance_B7_branch_out_c0_exe7265),
        .out_memdep(covariance_B7_branch_out_memdep),
        .out_stall_out(covariance_B7_branch_out_stall_out),
        .out_valid_out_0(covariance_B7_branch_out_valid_out_0),
        .out_valid_out_1(covariance_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe5263(GPOUT,34)
    assign out_c0_exe5263 = covariance_B7_branch_out_c0_exe5263;

    // out_c0_exe6264(GPOUT,35)
    assign out_c0_exe6264 = covariance_B7_branch_out_c0_exe6264;

    // out_c0_exe7265(GPOUT,36)
    assign out_c0_exe7265 = covariance_B7_branch_out_c0_exe7265;

    // out_exiting_stall_out(GPOUT,37)
    assign out_exiting_stall_out = bb_covariance_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,38)
    assign out_exiting_valid_out = bb_covariance_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_covariance6_exiting_valid_out;

    // out_lsu_memdep_o_active(GPOUT,39)
    assign out_lsu_memdep_o_active = bb_covariance_B7_stall_region_out_lsu_memdep_o_active;

    // out_memdep(GPOUT,40)
    assign out_memdep = covariance_B7_branch_out_memdep;

    // out_memdep_covariance_avm_address(GPOUT,41)
    assign out_memdep_covariance_avm_address = bb_covariance_B7_stall_region_out_memdep_covariance_avm_address;

    // out_memdep_covariance_avm_burstcount(GPOUT,42)
    assign out_memdep_covariance_avm_burstcount = bb_covariance_B7_stall_region_out_memdep_covariance_avm_burstcount;

    // out_memdep_covariance_avm_byteenable(GPOUT,43)
    assign out_memdep_covariance_avm_byteenable = bb_covariance_B7_stall_region_out_memdep_covariance_avm_byteenable;

    // out_memdep_covariance_avm_enable(GPOUT,44)
    assign out_memdep_covariance_avm_enable = bb_covariance_B7_stall_region_out_memdep_covariance_avm_enable;

    // out_memdep_covariance_avm_read(GPOUT,45)
    assign out_memdep_covariance_avm_read = bb_covariance_B7_stall_region_out_memdep_covariance_avm_read;

    // out_memdep_covariance_avm_write(GPOUT,46)
    assign out_memdep_covariance_avm_write = bb_covariance_B7_stall_region_out_memdep_covariance_avm_write;

    // out_memdep_covariance_avm_writedata(GPOUT,47)
    assign out_memdep_covariance_avm_writedata = bb_covariance_B7_stall_region_out_memdep_covariance_avm_writedata;

    // out_stall_in_0(GPOUT,48)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,49)
    assign out_stall_out_0 = covariance_B7_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,50)
    assign out_stall_out_1 = covariance_B7_merge_out_stall_out_1;

    // out_unnamed_covariance10_covariance_avm_address(GPOUT,51)
    assign out_unnamed_covariance10_covariance_avm_address = bb_covariance_B7_stall_region_out_unnamed_covariance10_covariance_avm_address;

    // out_unnamed_covariance10_covariance_avm_burstcount(GPOUT,52)
    assign out_unnamed_covariance10_covariance_avm_burstcount = bb_covariance_B7_stall_region_out_unnamed_covariance10_covariance_avm_burstcount;

    // out_unnamed_covariance10_covariance_avm_byteenable(GPOUT,53)
    assign out_unnamed_covariance10_covariance_avm_byteenable = bb_covariance_B7_stall_region_out_unnamed_covariance10_covariance_avm_byteenable;

    // out_unnamed_covariance10_covariance_avm_enable(GPOUT,54)
    assign out_unnamed_covariance10_covariance_avm_enable = bb_covariance_B7_stall_region_out_unnamed_covariance10_covariance_avm_enable;

    // out_unnamed_covariance10_covariance_avm_read(GPOUT,55)
    assign out_unnamed_covariance10_covariance_avm_read = bb_covariance_B7_stall_region_out_unnamed_covariance10_covariance_avm_read;

    // out_unnamed_covariance10_covariance_avm_write(GPOUT,56)
    assign out_unnamed_covariance10_covariance_avm_write = bb_covariance_B7_stall_region_out_unnamed_covariance10_covariance_avm_write;

    // out_unnamed_covariance10_covariance_avm_writedata(GPOUT,57)
    assign out_unnamed_covariance10_covariance_avm_writedata = bb_covariance_B7_stall_region_out_unnamed_covariance10_covariance_avm_writedata;

    // out_valid_in_0(GPOUT,58)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,59)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,60)
    assign out_valid_out_0 = covariance_B7_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,61)
    assign out_valid_out_1 = covariance_B7_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,63)
    assign out_pipeline_valid_out = bb_covariance_B7_stall_region_out_pipeline_valid_out;

endmodule
