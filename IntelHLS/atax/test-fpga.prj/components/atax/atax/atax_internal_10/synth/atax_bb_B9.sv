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

// SystemVerilog created from bb_atax_B9
// Created for function/kernel atax
// SystemVerilog created on Wed Apr  5 13:56:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B9 (
    input wire [63:0] in_arrayidx365113_0,
    input wire [63:0] in_arrayidx365113_1,
    input wire [0:0] in_exitcond20114_0,
    input wire [0:0] in_exitcond20114_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked47_0,
    input wire [0:0] in_forked47_1,
    input wire [0:0] in_forked93111_0,
    input wire [0:0] in_forked93111_1,
    input wire [63:0] in_idxprom35112_0,
    input wire [63:0] in_idxprom35112_1,
    input wire [0:0] in_notcmp62115_0,
    input wire [0:0] in_notcmp62115_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_atax12_0,
    input wire [31:0] in_unnamed_atax12_1,
    input wire [31:0] in_unnamed_atax13_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax13_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax13_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax13_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax14_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax14_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax14_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax14_atax_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_c0_exe2179,
    output wire [31:0] out_c0_exe3180,
    output wire [0:0] out_c0_exe5182,
    output wire [63:0] out_c0_exe6183,
    output wire [0:0] out_c0_exe7184,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_atax13_atax_avm_address,
    output wire [0:0] out_unnamed_atax13_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax13_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax13_atax_avm_enable,
    output wire [0:0] out_unnamed_atax13_atax_avm_read,
    output wire [0:0] out_unnamed_atax13_atax_avm_write,
    output wire [31:0] out_unnamed_atax13_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax14_atax_avm_address,
    output wire [0:0] out_unnamed_atax14_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax14_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax14_atax_avm_enable,
    output wire [0:0] out_unnamed_atax14_atax_avm_read,
    output wire [0:0] out_unnamed_atax14_atax_avm_write,
    output wire [31:0] out_unnamed_atax14_atax_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [63:0] atax_B9_branch_out_c0_exe2179;
    wire [31:0] atax_B9_branch_out_c0_exe3180;
    wire [0:0] atax_B9_branch_out_c0_exe5182;
    wire [63:0] atax_B9_branch_out_c0_exe6183;
    wire [0:0] atax_B9_branch_out_c0_exe7184;
    wire [0:0] atax_B9_branch_out_c0_exe8;
    wire [0:0] atax_B9_branch_out_stall_out;
    wire [0:0] atax_B9_branch_out_valid_out_0;
    wire [0:0] atax_B9_branch_out_valid_out_1;
    wire [63:0] atax_B9_merge_out_arrayidx365113;
    wire [0:0] atax_B9_merge_out_exitcond20114;
    wire [0:0] atax_B9_merge_out_forked47;
    wire [0:0] atax_B9_merge_out_forked93111;
    wire [63:0] atax_B9_merge_out_idxprom35112;
    wire [0:0] atax_B9_merge_out_notcmp62115;
    wire [0:0] atax_B9_merge_out_stall_out_0;
    wire [0:0] atax_B9_merge_out_stall_out_1;
    wire [31:0] atax_B9_merge_out_unnamed_atax12;
    wire [0:0] atax_B9_merge_out_valid_out;
    wire [0:0] bb_atax_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_atax6_exiting_stall_out;
    wire [0:0] bb_atax_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_atax6_exiting_valid_out;
    wire [63:0] bb_atax_B9_stall_region_out_c0_exe2179;
    wire [31:0] bb_atax_B9_stall_region_out_c0_exe3180;
    wire [0:0] bb_atax_B9_stall_region_out_c0_exe4181;
    wire [0:0] bb_atax_B9_stall_region_out_c0_exe5182;
    wire [63:0] bb_atax_B9_stall_region_out_c0_exe6183;
    wire [0:0] bb_atax_B9_stall_region_out_c0_exe7184;
    wire [0:0] bb_atax_B9_stall_region_out_c0_exe8;
    wire [0:0] bb_atax_B9_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_atax_B9_stall_region_out_stall_out;
    wire [31:0] bb_atax_B9_stall_region_out_unnamed_atax13_atax_avm_address;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax13_atax_avm_burstcount;
    wire [3:0] bb_atax_B9_stall_region_out_unnamed_atax13_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax13_atax_avm_enable;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax13_atax_avm_read;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax13_atax_avm_write;
    wire [31:0] bb_atax_B9_stall_region_out_unnamed_atax13_atax_avm_writedata;
    wire [31:0] bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_address;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_burstcount;
    wire [3:0] bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_byteenable;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_enable;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_read;
    wire [0:0] bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_write;
    wire [31:0] bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_writedata;
    wire [0:0] bb_atax_B9_stall_region_out_valid_out;


    // atax_B9_merge(BLACKBOX,3)
    atax_B9_merge theatax_B9_merge (
        .in_arrayidx365113_0(in_arrayidx365113_0),
        .in_arrayidx365113_1(in_arrayidx365113_1),
        .in_exitcond20114_0(in_exitcond20114_0),
        .in_exitcond20114_1(in_exitcond20114_1),
        .in_forked47_0(in_forked47_0),
        .in_forked47_1(in_forked47_1),
        .in_forked93111_0(in_forked93111_0),
        .in_forked93111_1(in_forked93111_1),
        .in_idxprom35112_0(in_idxprom35112_0),
        .in_idxprom35112_1(in_idxprom35112_1),
        .in_notcmp62115_0(in_notcmp62115_0),
        .in_notcmp62115_1(in_notcmp62115_1),
        .in_stall_in(bb_atax_B9_stall_region_out_stall_out),
        .in_unnamed_atax12_0(in_unnamed_atax12_0),
        .in_unnamed_atax12_1(in_unnamed_atax12_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_arrayidx365113(atax_B9_merge_out_arrayidx365113),
        .out_exitcond20114(atax_B9_merge_out_exitcond20114),
        .out_forked47(atax_B9_merge_out_forked47),
        .out_forked93111(atax_B9_merge_out_forked93111),
        .out_idxprom35112(atax_B9_merge_out_idxprom35112),
        .out_notcmp62115(atax_B9_merge_out_notcmp62115),
        .out_stall_out_0(atax_B9_merge_out_stall_out_0),
        .out_stall_out_1(atax_B9_merge_out_stall_out_1),
        .out_unnamed_atax12(atax_B9_merge_out_unnamed_atax12),
        .out_valid_out(atax_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B9_stall_region(BLACKBOX,4)
    atax_bb_B9_stall_region thebb_atax_B9_stall_region (
        .in_arrayidx365113(atax_B9_merge_out_arrayidx365113),
        .in_exitcond20114(atax_B9_merge_out_exitcond20114),
        .in_flush(in_flush),
        .in_forked47(atax_B9_merge_out_forked47),
        .in_forked93111(atax_B9_merge_out_forked93111),
        .in_idxprom35112(atax_B9_merge_out_idxprom35112),
        .in_notcmp62115(atax_B9_merge_out_notcmp62115),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(atax_B9_branch_out_stall_out),
        .in_unnamed_atax12(atax_B9_merge_out_unnamed_atax12),
        .in_unnamed_atax13_atax_avm_readdata(in_unnamed_atax13_atax_avm_readdata),
        .in_unnamed_atax13_atax_avm_readdatavalid(in_unnamed_atax13_atax_avm_readdatavalid),
        .in_unnamed_atax13_atax_avm_waitrequest(in_unnamed_atax13_atax_avm_waitrequest),
        .in_unnamed_atax13_atax_avm_writeack(in_unnamed_atax13_atax_avm_writeack),
        .in_unnamed_atax14_atax_avm_readdata(in_unnamed_atax14_atax_avm_readdata),
        .in_unnamed_atax14_atax_avm_readdatavalid(in_unnamed_atax14_atax_avm_readdatavalid),
        .in_unnamed_atax14_atax_avm_waitrequest(in_unnamed_atax14_atax_avm_waitrequest),
        .in_unnamed_atax14_atax_avm_writeack(in_unnamed_atax14_atax_avm_writeack),
        .in_valid_in(atax_B9_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_atax6_exiting_stall_out(bb_atax_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_atax6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_atax6_exiting_valid_out(bb_atax_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_atax6_exiting_valid_out),
        .out_c0_exe2179(bb_atax_B9_stall_region_out_c0_exe2179),
        .out_c0_exe3180(bb_atax_B9_stall_region_out_c0_exe3180),
        .out_c0_exe4181(bb_atax_B9_stall_region_out_c0_exe4181),
        .out_c0_exe5182(bb_atax_B9_stall_region_out_c0_exe5182),
        .out_c0_exe6183(bb_atax_B9_stall_region_out_c0_exe6183),
        .out_c0_exe7184(bb_atax_B9_stall_region_out_c0_exe7184),
        .out_c0_exe8(bb_atax_B9_stall_region_out_c0_exe8),
        .out_pipeline_valid_out(bb_atax_B9_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_atax_B9_stall_region_out_stall_out),
        .out_unnamed_atax13_atax_avm_address(bb_atax_B9_stall_region_out_unnamed_atax13_atax_avm_address),
        .out_unnamed_atax13_atax_avm_burstcount(bb_atax_B9_stall_region_out_unnamed_atax13_atax_avm_burstcount),
        .out_unnamed_atax13_atax_avm_byteenable(bb_atax_B9_stall_region_out_unnamed_atax13_atax_avm_byteenable),
        .out_unnamed_atax13_atax_avm_enable(bb_atax_B9_stall_region_out_unnamed_atax13_atax_avm_enable),
        .out_unnamed_atax13_atax_avm_read(bb_atax_B9_stall_region_out_unnamed_atax13_atax_avm_read),
        .out_unnamed_atax13_atax_avm_write(bb_atax_B9_stall_region_out_unnamed_atax13_atax_avm_write),
        .out_unnamed_atax13_atax_avm_writedata(bb_atax_B9_stall_region_out_unnamed_atax13_atax_avm_writedata),
        .out_unnamed_atax14_atax_avm_address(bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_address),
        .out_unnamed_atax14_atax_avm_burstcount(bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_burstcount),
        .out_unnamed_atax14_atax_avm_byteenable(bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_byteenable),
        .out_unnamed_atax14_atax_avm_enable(bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_enable),
        .out_unnamed_atax14_atax_avm_read(bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_read),
        .out_unnamed_atax14_atax_avm_write(bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_write),
        .out_unnamed_atax14_atax_avm_writedata(bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_writedata),
        .out_valid_out(bb_atax_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B9_branch(BLACKBOX,2)
    atax_B9_branch theatax_B9_branch (
        .in_c0_exe2179(bb_atax_B9_stall_region_out_c0_exe2179),
        .in_c0_exe3180(bb_atax_B9_stall_region_out_c0_exe3180),
        .in_c0_exe4181(bb_atax_B9_stall_region_out_c0_exe4181),
        .in_c0_exe5182(bb_atax_B9_stall_region_out_c0_exe5182),
        .in_c0_exe6183(bb_atax_B9_stall_region_out_c0_exe6183),
        .in_c0_exe7184(bb_atax_B9_stall_region_out_c0_exe7184),
        .in_c0_exe8(bb_atax_B9_stall_region_out_c0_exe8),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_atax_B9_stall_region_out_valid_out),
        .out_c0_exe2179(atax_B9_branch_out_c0_exe2179),
        .out_c0_exe3180(atax_B9_branch_out_c0_exe3180),
        .out_c0_exe5182(atax_B9_branch_out_c0_exe5182),
        .out_c0_exe6183(atax_B9_branch_out_c0_exe6183),
        .out_c0_exe7184(atax_B9_branch_out_c0_exe7184),
        .out_c0_exe8(atax_B9_branch_out_c0_exe8),
        .out_stall_out(atax_B9_branch_out_stall_out),
        .out_valid_out_0(atax_B9_branch_out_valid_out_0),
        .out_valid_out_1(atax_B9_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2179(GPOUT,32)
    assign out_c0_exe2179 = atax_B9_branch_out_c0_exe2179;

    // out_c0_exe3180(GPOUT,33)
    assign out_c0_exe3180 = atax_B9_branch_out_c0_exe3180;

    // out_c0_exe5182(GPOUT,34)
    assign out_c0_exe5182 = atax_B9_branch_out_c0_exe5182;

    // out_c0_exe6183(GPOUT,35)
    assign out_c0_exe6183 = atax_B9_branch_out_c0_exe6183;

    // out_c0_exe7184(GPOUT,36)
    assign out_c0_exe7184 = atax_B9_branch_out_c0_exe7184;

    // out_c0_exe8(GPOUT,37)
    assign out_c0_exe8 = atax_B9_branch_out_c0_exe8;

    // out_exiting_stall_out(GPOUT,38)
    assign out_exiting_stall_out = bb_atax_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_atax6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,39)
    assign out_exiting_valid_out = bb_atax_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_atax6_exiting_valid_out;

    // out_stall_in_0(GPOUT,40)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,41)
    assign out_stall_out_0 = atax_B9_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,42)
    assign out_stall_out_1 = atax_B9_merge_out_stall_out_1;

    // out_unnamed_atax13_atax_avm_address(GPOUT,43)
    assign out_unnamed_atax13_atax_avm_address = bb_atax_B9_stall_region_out_unnamed_atax13_atax_avm_address;

    // out_unnamed_atax13_atax_avm_burstcount(GPOUT,44)
    assign out_unnamed_atax13_atax_avm_burstcount = bb_atax_B9_stall_region_out_unnamed_atax13_atax_avm_burstcount;

    // out_unnamed_atax13_atax_avm_byteenable(GPOUT,45)
    assign out_unnamed_atax13_atax_avm_byteenable = bb_atax_B9_stall_region_out_unnamed_atax13_atax_avm_byteenable;

    // out_unnamed_atax13_atax_avm_enable(GPOUT,46)
    assign out_unnamed_atax13_atax_avm_enable = bb_atax_B9_stall_region_out_unnamed_atax13_atax_avm_enable;

    // out_unnamed_atax13_atax_avm_read(GPOUT,47)
    assign out_unnamed_atax13_atax_avm_read = bb_atax_B9_stall_region_out_unnamed_atax13_atax_avm_read;

    // out_unnamed_atax13_atax_avm_write(GPOUT,48)
    assign out_unnamed_atax13_atax_avm_write = bb_atax_B9_stall_region_out_unnamed_atax13_atax_avm_write;

    // out_unnamed_atax13_atax_avm_writedata(GPOUT,49)
    assign out_unnamed_atax13_atax_avm_writedata = bb_atax_B9_stall_region_out_unnamed_atax13_atax_avm_writedata;

    // out_unnamed_atax14_atax_avm_address(GPOUT,50)
    assign out_unnamed_atax14_atax_avm_address = bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_address;

    // out_unnamed_atax14_atax_avm_burstcount(GPOUT,51)
    assign out_unnamed_atax14_atax_avm_burstcount = bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_burstcount;

    // out_unnamed_atax14_atax_avm_byteenable(GPOUT,52)
    assign out_unnamed_atax14_atax_avm_byteenable = bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_byteenable;

    // out_unnamed_atax14_atax_avm_enable(GPOUT,53)
    assign out_unnamed_atax14_atax_avm_enable = bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_enable;

    // out_unnamed_atax14_atax_avm_read(GPOUT,54)
    assign out_unnamed_atax14_atax_avm_read = bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_read;

    // out_unnamed_atax14_atax_avm_write(GPOUT,55)
    assign out_unnamed_atax14_atax_avm_write = bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_write;

    // out_unnamed_atax14_atax_avm_writedata(GPOUT,56)
    assign out_unnamed_atax14_atax_avm_writedata = bb_atax_B9_stall_region_out_unnamed_atax14_atax_avm_writedata;

    // out_valid_in_0(GPOUT,57)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,58)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,59)
    assign out_valid_out_0 = atax_B9_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,60)
    assign out_valid_out_1 = atax_B9_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,62)
    assign out_pipeline_valid_out = bb_atax_B9_stall_region_out_pipeline_valid_out;

endmodule
