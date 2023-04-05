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

// SystemVerilog created from bb_kernel_3mm_B10
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B10 (
    input wire [63:0] in_arrayidx11211210_0,
    input wire [63:0] in_arrayidx11211210_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked81_0,
    input wire [0:0] in_forked81_1,
    input wire [31:0] in_i_1102_pop29155_pop59203_0,
    input wire [31:0] in_i_1102_pop29155_pop59203_1,
    input wire [31:0] in_i_1102_pop29184_0,
    input wire [31:0] in_i_1102_pop29184_1,
    input wire [63:0] in_idxprom74167_pop61198_0,
    input wire [63:0] in_idxprom74167_pop61198_1,
    input wire [63:0] in_idxprom76169_pop62200_0,
    input wire [63:0] in_idxprom76169_pop62200_1,
    input wire [0:0] in_notcmp112172_pop64208_0,
    input wire [0:0] in_notcmp112172_pop64208_1,
    input wire [0:0] in_notcmp117158_pop60205_0,
    input wire [0:0] in_notcmp117158_pop60205_1,
    input wire [0:0] in_notcmp117189_0,
    input wire [0:0] in_notcmp117189_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_kernel_3mm22_0,
    input wire [31:0] in_unnamed_kernel_3mm22_1,
    input wire [31:0] in_unnamed_kernel_3mm23_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm23_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm23_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm23_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm24_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm24_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm24_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm24_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe2359,
    output wire [0:0] out_c0_exe4361,
    output wire [0:0] out_c0_exe5362,
    output wire [63:0] out_c0_exe6363,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_3mm23_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm23_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm23_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm23_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm23_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm23_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm23_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm24_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm24_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm24_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm24_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm24_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm24_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm24_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_exiting_valid_out;
    wire [31:0] bb_kernel_3mm_B10_stall_region_out_c0_exe2359;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_c0_exe3360;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_c0_exe4361;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_c0_exe5362;
    wire [63:0] bb_kernel_3mm_B10_stall_region_out_c0_exe6363;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_stall_out;
    wire [31:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm23_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm23_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm23_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm23_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm23_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm23_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm23_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm24_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm24_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm24_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm24_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm24_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm24_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm24_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B10_stall_region_out_valid_out;
    wire [31:0] kernel_3mm_B10_branch_out_c0_exe2359;
    wire [0:0] kernel_3mm_B10_branch_out_c0_exe4361;
    wire [0:0] kernel_3mm_B10_branch_out_c0_exe5362;
    wire [63:0] kernel_3mm_B10_branch_out_c0_exe6363;
    wire [0:0] kernel_3mm_B10_branch_out_stall_out;
    wire [0:0] kernel_3mm_B10_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B10_branch_out_valid_out_1;
    wire [63:0] kernel_3mm_B10_merge_out_arrayidx11211210;
    wire [0:0] kernel_3mm_B10_merge_out_forked81;
    wire [31:0] kernel_3mm_B10_merge_out_i_1102_pop29155_pop59203;
    wire [31:0] kernel_3mm_B10_merge_out_i_1102_pop29184;
    wire [63:0] kernel_3mm_B10_merge_out_idxprom74167_pop61198;
    wire [63:0] kernel_3mm_B10_merge_out_idxprom76169_pop62200;
    wire [0:0] kernel_3mm_B10_merge_out_notcmp112172_pop64208;
    wire [0:0] kernel_3mm_B10_merge_out_notcmp117158_pop60205;
    wire [0:0] kernel_3mm_B10_merge_out_notcmp117189;
    wire [0:0] kernel_3mm_B10_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B10_merge_out_stall_out_1;
    wire [31:0] kernel_3mm_B10_merge_out_unnamed_kernel_3mm22;
    wire [0:0] kernel_3mm_B10_merge_out_valid_out;


    // kernel_3mm_B10_merge(BLACKBOX,37)
    kernel_3mm_B10_merge thekernel_3mm_B10_merge (
        .in_arrayidx11211210_0(in_arrayidx11211210_0),
        .in_arrayidx11211210_1(in_arrayidx11211210_1),
        .in_forked81_0(in_forked81_0),
        .in_forked81_1(in_forked81_1),
        .in_i_1102_pop29155_pop59203_0(in_i_1102_pop29155_pop59203_0),
        .in_i_1102_pop29155_pop59203_1(in_i_1102_pop29155_pop59203_1),
        .in_i_1102_pop29184_0(in_i_1102_pop29184_0),
        .in_i_1102_pop29184_1(in_i_1102_pop29184_1),
        .in_idxprom74167_pop61198_0(in_idxprom74167_pop61198_0),
        .in_idxprom74167_pop61198_1(in_idxprom74167_pop61198_1),
        .in_idxprom76169_pop62200_0(in_idxprom76169_pop62200_0),
        .in_idxprom76169_pop62200_1(in_idxprom76169_pop62200_1),
        .in_notcmp112172_pop64208_0(in_notcmp112172_pop64208_0),
        .in_notcmp112172_pop64208_1(in_notcmp112172_pop64208_1),
        .in_notcmp117158_pop60205_0(in_notcmp117158_pop60205_0),
        .in_notcmp117158_pop60205_1(in_notcmp117158_pop60205_1),
        .in_notcmp117189_0(in_notcmp117189_0),
        .in_notcmp117189_1(in_notcmp117189_1),
        .in_stall_in(bb_kernel_3mm_B10_stall_region_out_stall_out),
        .in_unnamed_kernel_3mm22_0(in_unnamed_kernel_3mm22_0),
        .in_unnamed_kernel_3mm22_1(in_unnamed_kernel_3mm22_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_arrayidx11211210(kernel_3mm_B10_merge_out_arrayidx11211210),
        .out_forked81(kernel_3mm_B10_merge_out_forked81),
        .out_i_1102_pop29155_pop59203(kernel_3mm_B10_merge_out_i_1102_pop29155_pop59203),
        .out_i_1102_pop29184(kernel_3mm_B10_merge_out_i_1102_pop29184),
        .out_idxprom74167_pop61198(kernel_3mm_B10_merge_out_idxprom74167_pop61198),
        .out_idxprom76169_pop62200(kernel_3mm_B10_merge_out_idxprom76169_pop62200),
        .out_notcmp112172_pop64208(kernel_3mm_B10_merge_out_notcmp112172_pop64208),
        .out_notcmp117158_pop60205(kernel_3mm_B10_merge_out_notcmp117158_pop60205),
        .out_notcmp117189(kernel_3mm_B10_merge_out_notcmp117189),
        .out_stall_out_0(kernel_3mm_B10_merge_out_stall_out_0),
        .out_stall_out_1(kernel_3mm_B10_merge_out_stall_out_1),
        .out_unnamed_kernel_3mm22(kernel_3mm_B10_merge_out_unnamed_kernel_3mm22),
        .out_valid_out(kernel_3mm_B10_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B10_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B10_stall_region thebb_kernel_3mm_B10_stall_region (
        .in_arrayidx11211210(kernel_3mm_B10_merge_out_arrayidx11211210),
        .in_flush(in_flush),
        .in_forked81(kernel_3mm_B10_merge_out_forked81),
        .in_i_1102_pop29155_pop59203(kernel_3mm_B10_merge_out_i_1102_pop29155_pop59203),
        .in_i_1102_pop29184(kernel_3mm_B10_merge_out_i_1102_pop29184),
        .in_idxprom74167_pop61198(kernel_3mm_B10_merge_out_idxprom74167_pop61198),
        .in_idxprom76169_pop62200(kernel_3mm_B10_merge_out_idxprom76169_pop62200),
        .in_notcmp112172_pop64208(kernel_3mm_B10_merge_out_notcmp112172_pop64208),
        .in_notcmp117158_pop60205(kernel_3mm_B10_merge_out_notcmp117158_pop60205),
        .in_notcmp117189(kernel_3mm_B10_merge_out_notcmp117189),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_3mm_B10_branch_out_stall_out),
        .in_unnamed_kernel_3mm22(kernel_3mm_B10_merge_out_unnamed_kernel_3mm22),
        .in_unnamed_kernel_3mm23_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm23_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm23_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm23_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm23_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm23_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm23_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm23_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm24_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm24_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm24_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm24_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm24_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm24_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm24_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm24_kernel_3mm_avm_writeack),
        .in_valid_in(kernel_3mm_B10_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_exiting_stall_out(bb_kernel_3mm_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_exiting_valid_out(bb_kernel_3mm_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_exiting_valid_out),
        .out_c0_exe2359(bb_kernel_3mm_B10_stall_region_out_c0_exe2359),
        .out_c0_exe3360(bb_kernel_3mm_B10_stall_region_out_c0_exe3360),
        .out_c0_exe4361(bb_kernel_3mm_B10_stall_region_out_c0_exe4361),
        .out_c0_exe5362(bb_kernel_3mm_B10_stall_region_out_c0_exe5362),
        .out_c0_exe6363(bb_kernel_3mm_B10_stall_region_out_c0_exe6363),
        .out_pipeline_valid_out(bb_kernel_3mm_B10_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_3mm_B10_stall_region_out_stall_out),
        .out_unnamed_kernel_3mm23_kernel_3mm_avm_address(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm23_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm23_kernel_3mm_avm_burstcount(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm23_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm23_kernel_3mm_avm_byteenable(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm23_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm23_kernel_3mm_avm_enable(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm23_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm23_kernel_3mm_avm_read(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm23_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm23_kernel_3mm_avm_write(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm23_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm23_kernel_3mm_avm_writedata(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm23_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm24_kernel_3mm_avm_address(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm24_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm24_kernel_3mm_avm_burstcount(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm24_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm24_kernel_3mm_avm_byteenable(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm24_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm24_kernel_3mm_avm_enable(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm24_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm24_kernel_3mm_avm_read(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm24_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm24_kernel_3mm_avm_write(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm24_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm24_kernel_3mm_avm_writedata(bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm24_kernel_3mm_avm_writedata),
        .out_valid_out(bb_kernel_3mm_B10_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B10_branch(BLACKBOX,36)
    kernel_3mm_B10_branch thekernel_3mm_B10_branch (
        .in_c0_exe2359(bb_kernel_3mm_B10_stall_region_out_c0_exe2359),
        .in_c0_exe3360(bb_kernel_3mm_B10_stall_region_out_c0_exe3360),
        .in_c0_exe4361(bb_kernel_3mm_B10_stall_region_out_c0_exe4361),
        .in_c0_exe5362(bb_kernel_3mm_B10_stall_region_out_c0_exe5362),
        .in_c0_exe6363(bb_kernel_3mm_B10_stall_region_out_c0_exe6363),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_3mm_B10_stall_region_out_valid_out),
        .out_c0_exe2359(kernel_3mm_B10_branch_out_c0_exe2359),
        .out_c0_exe4361(kernel_3mm_B10_branch_out_c0_exe4361),
        .out_c0_exe5362(kernel_3mm_B10_branch_out_c0_exe5362),
        .out_c0_exe6363(kernel_3mm_B10_branch_out_c0_exe6363),
        .out_stall_out(kernel_3mm_B10_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B10_branch_out_valid_out_0),
        .out_valid_out_1(kernel_3mm_B10_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2359(GPOUT,38)
    assign out_c0_exe2359 = kernel_3mm_B10_branch_out_c0_exe2359;

    // out_c0_exe4361(GPOUT,39)
    assign out_c0_exe4361 = kernel_3mm_B10_branch_out_c0_exe4361;

    // out_c0_exe5362(GPOUT,40)
    assign out_c0_exe5362 = kernel_3mm_B10_branch_out_c0_exe5362;

    // out_c0_exe6363(GPOUT,41)
    assign out_c0_exe6363 = kernel_3mm_B10_branch_out_c0_exe6363;

    // out_exiting_stall_out(GPOUT,42)
    assign out_exiting_stall_out = bb_kernel_3mm_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,43)
    assign out_exiting_valid_out = bb_kernel_3mm_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_exiting_valid_out;

    // out_stall_in_0(GPOUT,44)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,45)
    assign out_stall_out_0 = kernel_3mm_B10_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,46)
    assign out_stall_out_1 = kernel_3mm_B10_merge_out_stall_out_1;

    // out_unnamed_kernel_3mm23_kernel_3mm_avm_address(GPOUT,47)
    assign out_unnamed_kernel_3mm23_kernel_3mm_avm_address = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm23_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm23_kernel_3mm_avm_burstcount(GPOUT,48)
    assign out_unnamed_kernel_3mm23_kernel_3mm_avm_burstcount = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm23_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm23_kernel_3mm_avm_byteenable(GPOUT,49)
    assign out_unnamed_kernel_3mm23_kernel_3mm_avm_byteenable = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm23_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm23_kernel_3mm_avm_enable(GPOUT,50)
    assign out_unnamed_kernel_3mm23_kernel_3mm_avm_enable = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm23_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm23_kernel_3mm_avm_read(GPOUT,51)
    assign out_unnamed_kernel_3mm23_kernel_3mm_avm_read = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm23_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm23_kernel_3mm_avm_write(GPOUT,52)
    assign out_unnamed_kernel_3mm23_kernel_3mm_avm_write = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm23_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm23_kernel_3mm_avm_writedata(GPOUT,53)
    assign out_unnamed_kernel_3mm23_kernel_3mm_avm_writedata = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm23_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm24_kernel_3mm_avm_address(GPOUT,54)
    assign out_unnamed_kernel_3mm24_kernel_3mm_avm_address = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm24_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm24_kernel_3mm_avm_burstcount(GPOUT,55)
    assign out_unnamed_kernel_3mm24_kernel_3mm_avm_burstcount = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm24_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm24_kernel_3mm_avm_byteenable(GPOUT,56)
    assign out_unnamed_kernel_3mm24_kernel_3mm_avm_byteenable = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm24_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm24_kernel_3mm_avm_enable(GPOUT,57)
    assign out_unnamed_kernel_3mm24_kernel_3mm_avm_enable = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm24_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm24_kernel_3mm_avm_read(GPOUT,58)
    assign out_unnamed_kernel_3mm24_kernel_3mm_avm_read = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm24_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm24_kernel_3mm_avm_write(GPOUT,59)
    assign out_unnamed_kernel_3mm24_kernel_3mm_avm_write = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm24_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm24_kernel_3mm_avm_writedata(GPOUT,60)
    assign out_unnamed_kernel_3mm24_kernel_3mm_avm_writedata = bb_kernel_3mm_B10_stall_region_out_unnamed_kernel_3mm24_kernel_3mm_avm_writedata;

    // out_valid_in_0(GPOUT,61)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,62)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,63)
    assign out_valid_out_0 = kernel_3mm_B10_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,64)
    assign out_valid_out_1 = kernel_3mm_B10_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,66)
    assign out_pipeline_valid_out = bb_kernel_3mm_B10_stall_region_out_pipeline_valid_out;

endmodule
