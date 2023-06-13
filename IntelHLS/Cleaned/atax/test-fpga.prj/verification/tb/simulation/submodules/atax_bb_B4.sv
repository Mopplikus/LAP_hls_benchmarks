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

// SystemVerilog created from bb_atax_B4
// Created for function/kernel atax
// SystemVerilog created on Tue Jun 13 01:54:01 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B4 (
    input wire [0:0] in_exitcond1262_0,
    input wire [0:0] in_exitcond1262_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked20_0,
    input wire [0:0] in_forked20_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_mPtr_bitcast_index8859_0,
    input wire [63:0] in_mPtr_bitcast_index8859_1,
    input wire [0:0] in_memdep_phi3_pop1364_0,
    input wire [0:0] in_memdep_phi3_pop1364_1,
    input wire [0:0] in_memdep_phi_pop1260_0,
    input wire [0:0] in_memdep_phi_pop1260_1,
    input wire [31:0] in_mul_add1461_0,
    input wire [31:0] in_mul_add1461_1,
    input wire [0:0] in_notcmp3563_0,
    input wire [0:0] in_notcmp3563_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_atax12_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax12_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax12_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax12_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax13_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax13_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax13_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax13_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax9_0,
    input wire [31:0] in_unnamed_atax9_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_c0_exe10,
    output wire [0:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [63:0] out_c0_exe399,
    output wire [31:0] out_c0_exe4,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [31:0] out_c1_exe1107,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_atax12_atax_avm_address,
    output wire [0:0] out_unnamed_atax12_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax12_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax12_atax_avm_enable,
    output wire [0:0] out_unnamed_atax12_atax_avm_read,
    output wire [0:0] out_unnamed_atax12_atax_avm_write,
    output wire [31:0] out_unnamed_atax12_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax13_atax_avm_address,
    output wire [0:0] out_unnamed_atax13_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax13_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax13_atax_avm_enable,
    output wire [0:0] out_unnamed_atax13_atax_avm_read,
    output wire [0:0] out_unnamed_atax13_atax_avm_write,
    output wire [31:0] out_unnamed_atax13_atax_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [63:0] atax_B4_branch_out_c0_exe10;
    wire [0:0] atax_B4_branch_out_c0_exe11;
    wire [0:0] atax_B4_branch_out_c0_exe12;
    wire [63:0] atax_B4_branch_out_c0_exe399;
    wire [31:0] atax_B4_branch_out_c0_exe4;
    wire [0:0] atax_B4_branch_out_c0_exe6;
    wire [0:0] atax_B4_branch_out_c0_exe7;
    wire [31:0] atax_B4_branch_out_c1_exe1107;
    wire [0:0] atax_B4_branch_out_stall_out;
    wire [0:0] atax_B4_branch_out_valid_out_0;
    wire [0:0] atax_B4_branch_out_valid_out_1;
    wire [0:0] atax_B4_merge_out_exitcond1262;
    wire [0:0] atax_B4_merge_out_forked20;
    wire [63:0] atax_B4_merge_out_mPtr_bitcast_index8859;
    wire [0:0] atax_B4_merge_out_memdep_phi3_pop1364;
    wire [0:0] atax_B4_merge_out_memdep_phi_pop1260;
    wire [31:0] atax_B4_merge_out_mul_add1461;
    wire [0:0] atax_B4_merge_out_notcmp3563;
    wire [0:0] atax_B4_merge_out_stall_out_0;
    wire [0:0] atax_B4_merge_out_stall_out_1;
    wire [31:0] atax_B4_merge_out_unnamed_atax9;
    wire [0:0] atax_B4_merge_out_valid_out;
    wire [0:0] bb_atax_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_stall_out;
    wire [0:0] bb_atax_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_valid_out;
    wire [63:0] bb_atax_B4_stall_region_out_c0_exe10;
    wire [0:0] bb_atax_B4_stall_region_out_c0_exe11;
    wire [0:0] bb_atax_B4_stall_region_out_c0_exe12;
    wire [63:0] bb_atax_B4_stall_region_out_c0_exe399;
    wire [31:0] bb_atax_B4_stall_region_out_c0_exe4;
    wire [0:0] bb_atax_B4_stall_region_out_c0_exe6;
    wire [0:0] bb_atax_B4_stall_region_out_c0_exe7;
    wire [0:0] bb_atax_B4_stall_region_out_c0_exe9;
    wire [31:0] bb_atax_B4_stall_region_out_c1_exe1107;
    wire [0:0] bb_atax_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_atax_B4_stall_region_out_stall_out;
    wire [31:0] bb_atax_B4_stall_region_out_unnamed_atax12_atax_avm_address;
    wire [0:0] bb_atax_B4_stall_region_out_unnamed_atax12_atax_avm_burstcount;
    wire [3:0] bb_atax_B4_stall_region_out_unnamed_atax12_atax_avm_byteenable;
    wire [0:0] bb_atax_B4_stall_region_out_unnamed_atax12_atax_avm_enable;
    wire [0:0] bb_atax_B4_stall_region_out_unnamed_atax12_atax_avm_read;
    wire [0:0] bb_atax_B4_stall_region_out_unnamed_atax12_atax_avm_write;
    wire [31:0] bb_atax_B4_stall_region_out_unnamed_atax12_atax_avm_writedata;
    wire [31:0] bb_atax_B4_stall_region_out_unnamed_atax13_atax_avm_address;
    wire [0:0] bb_atax_B4_stall_region_out_unnamed_atax13_atax_avm_burstcount;
    wire [3:0] bb_atax_B4_stall_region_out_unnamed_atax13_atax_avm_byteenable;
    wire [0:0] bb_atax_B4_stall_region_out_unnamed_atax13_atax_avm_enable;
    wire [0:0] bb_atax_B4_stall_region_out_unnamed_atax13_atax_avm_read;
    wire [0:0] bb_atax_B4_stall_region_out_unnamed_atax13_atax_avm_write;
    wire [31:0] bb_atax_B4_stall_region_out_unnamed_atax13_atax_avm_writedata;
    wire [0:0] bb_atax_B4_stall_region_out_valid_out;


    // atax_B4_merge(BLACKBOX,3)
    atax_B4_merge theatax_B4_merge (
        .in_exitcond1262_0(in_exitcond1262_0),
        .in_exitcond1262_1(in_exitcond1262_1),
        .in_forked20_0(in_forked20_0),
        .in_forked20_1(in_forked20_1),
        .in_mPtr_bitcast_index8859_0(in_mPtr_bitcast_index8859_0),
        .in_mPtr_bitcast_index8859_1(in_mPtr_bitcast_index8859_1),
        .in_memdep_phi3_pop1364_0(in_memdep_phi3_pop1364_0),
        .in_memdep_phi3_pop1364_1(in_memdep_phi3_pop1364_1),
        .in_memdep_phi_pop1260_0(in_memdep_phi_pop1260_0),
        .in_memdep_phi_pop1260_1(in_memdep_phi_pop1260_1),
        .in_mul_add1461_0(in_mul_add1461_0),
        .in_mul_add1461_1(in_mul_add1461_1),
        .in_notcmp3563_0(in_notcmp3563_0),
        .in_notcmp3563_1(in_notcmp3563_1),
        .in_stall_in(bb_atax_B4_stall_region_out_stall_out),
        .in_unnamed_atax9_0(in_unnamed_atax9_0),
        .in_unnamed_atax9_1(in_unnamed_atax9_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond1262(atax_B4_merge_out_exitcond1262),
        .out_forked20(atax_B4_merge_out_forked20),
        .out_mPtr_bitcast_index8859(atax_B4_merge_out_mPtr_bitcast_index8859),
        .out_memdep_phi3_pop1364(atax_B4_merge_out_memdep_phi3_pop1364),
        .out_memdep_phi_pop1260(atax_B4_merge_out_memdep_phi_pop1260),
        .out_mul_add1461(atax_B4_merge_out_mul_add1461),
        .out_notcmp3563(atax_B4_merge_out_notcmp3563),
        .out_stall_out_0(atax_B4_merge_out_stall_out_0),
        .out_stall_out_1(atax_B4_merge_out_stall_out_1),
        .out_unnamed_atax9(atax_B4_merge_out_unnamed_atax9),
        .out_valid_out(atax_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B4_stall_region(BLACKBOX,4)
    atax_bb_B4_stall_region thebb_atax_B4_stall_region (
        .in_exitcond1262(atax_B4_merge_out_exitcond1262),
        .in_flush(in_flush),
        .in_forked20(atax_B4_merge_out_forked20),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_mPtr_bitcast_index8859(atax_B4_merge_out_mPtr_bitcast_index8859),
        .in_memdep_phi3_pop1364(atax_B4_merge_out_memdep_phi3_pop1364),
        .in_memdep_phi_pop1260(atax_B4_merge_out_memdep_phi_pop1260),
        .in_mul_add1461(atax_B4_merge_out_mul_add1461),
        .in_notcmp3563(atax_B4_merge_out_notcmp3563),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(atax_B4_branch_out_stall_out),
        .in_unnamed_atax12_atax_avm_readdata(in_unnamed_atax12_atax_avm_readdata),
        .in_unnamed_atax12_atax_avm_readdatavalid(in_unnamed_atax12_atax_avm_readdatavalid),
        .in_unnamed_atax12_atax_avm_waitrequest(in_unnamed_atax12_atax_avm_waitrequest),
        .in_unnamed_atax12_atax_avm_writeack(in_unnamed_atax12_atax_avm_writeack),
        .in_unnamed_atax13_atax_avm_readdata(in_unnamed_atax13_atax_avm_readdata),
        .in_unnamed_atax13_atax_avm_readdatavalid(in_unnamed_atax13_atax_avm_readdatavalid),
        .in_unnamed_atax13_atax_avm_waitrequest(in_unnamed_atax13_atax_avm_waitrequest),
        .in_unnamed_atax13_atax_avm_writeack(in_unnamed_atax13_atax_avm_writeack),
        .in_unnamed_atax9(atax_B4_merge_out_unnamed_atax9),
        .in_valid_in(atax_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_stall_out(bb_atax_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_valid_out(bb_atax_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_valid_out),
        .out_c0_exe10(bb_atax_B4_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_atax_B4_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_atax_B4_stall_region_out_c0_exe12),
        .out_c0_exe399(bb_atax_B4_stall_region_out_c0_exe399),
        .out_c0_exe4(bb_atax_B4_stall_region_out_c0_exe4),
        .out_c0_exe6(bb_atax_B4_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_atax_B4_stall_region_out_c0_exe7),
        .out_c0_exe9(bb_atax_B4_stall_region_out_c0_exe9),
        .out_c1_exe1107(bb_atax_B4_stall_region_out_c1_exe1107),
        .out_pipeline_valid_out(bb_atax_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_atax_B4_stall_region_out_stall_out),
        .out_unnamed_atax12_atax_avm_address(bb_atax_B4_stall_region_out_unnamed_atax12_atax_avm_address),
        .out_unnamed_atax12_atax_avm_burstcount(bb_atax_B4_stall_region_out_unnamed_atax12_atax_avm_burstcount),
        .out_unnamed_atax12_atax_avm_byteenable(bb_atax_B4_stall_region_out_unnamed_atax12_atax_avm_byteenable),
        .out_unnamed_atax12_atax_avm_enable(bb_atax_B4_stall_region_out_unnamed_atax12_atax_avm_enable),
        .out_unnamed_atax12_atax_avm_read(bb_atax_B4_stall_region_out_unnamed_atax12_atax_avm_read),
        .out_unnamed_atax12_atax_avm_write(bb_atax_B4_stall_region_out_unnamed_atax12_atax_avm_write),
        .out_unnamed_atax12_atax_avm_writedata(bb_atax_B4_stall_region_out_unnamed_atax12_atax_avm_writedata),
        .out_unnamed_atax13_atax_avm_address(bb_atax_B4_stall_region_out_unnamed_atax13_atax_avm_address),
        .out_unnamed_atax13_atax_avm_burstcount(bb_atax_B4_stall_region_out_unnamed_atax13_atax_avm_burstcount),
        .out_unnamed_atax13_atax_avm_byteenable(bb_atax_B4_stall_region_out_unnamed_atax13_atax_avm_byteenable),
        .out_unnamed_atax13_atax_avm_enable(bb_atax_B4_stall_region_out_unnamed_atax13_atax_avm_enable),
        .out_unnamed_atax13_atax_avm_read(bb_atax_B4_stall_region_out_unnamed_atax13_atax_avm_read),
        .out_unnamed_atax13_atax_avm_write(bb_atax_B4_stall_region_out_unnamed_atax13_atax_avm_write),
        .out_unnamed_atax13_atax_avm_writedata(bb_atax_B4_stall_region_out_unnamed_atax13_atax_avm_writedata),
        .out_valid_out(bb_atax_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B4_branch(BLACKBOX,2)
    atax_B4_branch theatax_B4_branch (
        .in_c0_exe10(bb_atax_B4_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_atax_B4_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_atax_B4_stall_region_out_c0_exe12),
        .in_c0_exe399(bb_atax_B4_stall_region_out_c0_exe399),
        .in_c0_exe4(bb_atax_B4_stall_region_out_c0_exe4),
        .in_c0_exe6(bb_atax_B4_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_atax_B4_stall_region_out_c0_exe7),
        .in_c0_exe9(bb_atax_B4_stall_region_out_c0_exe9),
        .in_c1_exe1107(bb_atax_B4_stall_region_out_c1_exe1107),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_atax_B4_stall_region_out_valid_out),
        .out_c0_exe10(atax_B4_branch_out_c0_exe10),
        .out_c0_exe11(atax_B4_branch_out_c0_exe11),
        .out_c0_exe12(atax_B4_branch_out_c0_exe12),
        .out_c0_exe399(atax_B4_branch_out_c0_exe399),
        .out_c0_exe4(atax_B4_branch_out_c0_exe4),
        .out_c0_exe6(atax_B4_branch_out_c0_exe6),
        .out_c0_exe7(atax_B4_branch_out_c0_exe7),
        .out_c1_exe1107(atax_B4_branch_out_c1_exe1107),
        .out_stall_out(atax_B4_branch_out_stall_out),
        .out_valid_out_0(atax_B4_branch_out_valid_out_0),
        .out_valid_out_1(atax_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10(GPOUT,36)
    assign out_c0_exe10 = atax_B4_branch_out_c0_exe10;

    // out_c0_exe11(GPOUT,37)
    assign out_c0_exe11 = atax_B4_branch_out_c0_exe11;

    // out_c0_exe12(GPOUT,38)
    assign out_c0_exe12 = atax_B4_branch_out_c0_exe12;

    // out_c0_exe399(GPOUT,39)
    assign out_c0_exe399 = atax_B4_branch_out_c0_exe399;

    // out_c0_exe4(GPOUT,40)
    assign out_c0_exe4 = atax_B4_branch_out_c0_exe4;

    // out_c0_exe6(GPOUT,41)
    assign out_c0_exe6 = atax_B4_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,42)
    assign out_c0_exe7 = atax_B4_branch_out_c0_exe7;

    // out_c1_exe1107(GPOUT,43)
    assign out_c1_exe1107 = atax_B4_branch_out_c1_exe1107;

    // out_exiting_stall_out(GPOUT,44)
    assign out_exiting_stall_out = bb_atax_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,45)
    assign out_exiting_valid_out = bb_atax_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_valid_out;

    // out_stall_in_0(GPOUT,46)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,47)
    assign out_stall_out_0 = atax_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,48)
    assign out_stall_out_1 = atax_B4_merge_out_stall_out_1;

    // out_unnamed_atax12_atax_avm_address(GPOUT,49)
    assign out_unnamed_atax12_atax_avm_address = bb_atax_B4_stall_region_out_unnamed_atax12_atax_avm_address;

    // out_unnamed_atax12_atax_avm_burstcount(GPOUT,50)
    assign out_unnamed_atax12_atax_avm_burstcount = bb_atax_B4_stall_region_out_unnamed_atax12_atax_avm_burstcount;

    // out_unnamed_atax12_atax_avm_byteenable(GPOUT,51)
    assign out_unnamed_atax12_atax_avm_byteenable = bb_atax_B4_stall_region_out_unnamed_atax12_atax_avm_byteenable;

    // out_unnamed_atax12_atax_avm_enable(GPOUT,52)
    assign out_unnamed_atax12_atax_avm_enable = bb_atax_B4_stall_region_out_unnamed_atax12_atax_avm_enable;

    // out_unnamed_atax12_atax_avm_read(GPOUT,53)
    assign out_unnamed_atax12_atax_avm_read = bb_atax_B4_stall_region_out_unnamed_atax12_atax_avm_read;

    // out_unnamed_atax12_atax_avm_write(GPOUT,54)
    assign out_unnamed_atax12_atax_avm_write = bb_atax_B4_stall_region_out_unnamed_atax12_atax_avm_write;

    // out_unnamed_atax12_atax_avm_writedata(GPOUT,55)
    assign out_unnamed_atax12_atax_avm_writedata = bb_atax_B4_stall_region_out_unnamed_atax12_atax_avm_writedata;

    // out_unnamed_atax13_atax_avm_address(GPOUT,56)
    assign out_unnamed_atax13_atax_avm_address = bb_atax_B4_stall_region_out_unnamed_atax13_atax_avm_address;

    // out_unnamed_atax13_atax_avm_burstcount(GPOUT,57)
    assign out_unnamed_atax13_atax_avm_burstcount = bb_atax_B4_stall_region_out_unnamed_atax13_atax_avm_burstcount;

    // out_unnamed_atax13_atax_avm_byteenable(GPOUT,58)
    assign out_unnamed_atax13_atax_avm_byteenable = bb_atax_B4_stall_region_out_unnamed_atax13_atax_avm_byteenable;

    // out_unnamed_atax13_atax_avm_enable(GPOUT,59)
    assign out_unnamed_atax13_atax_avm_enable = bb_atax_B4_stall_region_out_unnamed_atax13_atax_avm_enable;

    // out_unnamed_atax13_atax_avm_read(GPOUT,60)
    assign out_unnamed_atax13_atax_avm_read = bb_atax_B4_stall_region_out_unnamed_atax13_atax_avm_read;

    // out_unnamed_atax13_atax_avm_write(GPOUT,61)
    assign out_unnamed_atax13_atax_avm_write = bb_atax_B4_stall_region_out_unnamed_atax13_atax_avm_write;

    // out_unnamed_atax13_atax_avm_writedata(GPOUT,62)
    assign out_unnamed_atax13_atax_avm_writedata = bb_atax_B4_stall_region_out_unnamed_atax13_atax_avm_writedata;

    // out_valid_in_0(GPOUT,63)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,64)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,65)
    assign out_valid_out_0 = atax_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,66)
    assign out_valid_out_1 = atax_B4_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,68)
    assign out_pipeline_valid_out = bb_atax_B4_stall_region_out_pipeline_valid_out;

endmodule
