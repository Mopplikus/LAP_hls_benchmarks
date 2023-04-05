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

// SystemVerilog created from bb_kernel_2mm_B15
// Created for function/kernel kernel_2mm
// SystemVerilog created on Wed Apr  5 01:12:28 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B15 (
    input wire [63:0] in_arrayidx1019170_0,
    input wire [63:0] in_arrayidx1019170_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked45_0,
    input wire [0:0] in_forked45_1,
    input wire [63:0] in_idxprom100168_0,
    input wire [63:0] in_idxprom100168_1,
    input wire [63:0] in_idxprom57129_pop41169_0,
    input wire [63:0] in_idxprom57129_pop41169_1,
    input wire [63:0] in_idxprom57133_pop55157_0,
    input wire [63:0] in_idxprom57133_pop55157_1,
    input wire [31:0] in_mul102171_0,
    input wire [31:0] in_mul102171_1,
    input wire [0:0] in_notcmp60172_0,
    input wire [0:0] in_notcmp60172_1,
    input wire [0:0] in_notcmp86123_pop53163_0,
    input wire [0:0] in_notcmp86123_pop53163_1,
    input wire [0:0] in_notcmp86124_pop40173_0,
    input wire [0:0] in_notcmp86124_pop40173_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_kernel_2mm18_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm18_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm18_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm18_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm19_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm19_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm19_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm19_kernel_2mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe2315,
    output wire [0:0] out_c0_exe4317,
    output wire [63:0] out_c0_exe5318,
    output wire [0:0] out_c0_exe6319,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_2mm18_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm18_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm18_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm18_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm18_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm18_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm18_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm19_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm19_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm19_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm19_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_2mm_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_exiting_valid_out;
    wire [31:0] bb_kernel_2mm_B15_stall_region_out_c0_exe2315;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_c0_exe3316;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_c0_exe4317;
    wire [63:0] bb_kernel_2mm_B15_stall_region_out_c0_exe5318;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_c0_exe6319;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_stall_out;
    wire [31:0] bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm18_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm18_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm18_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm18_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm18_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm18_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm18_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_valid_out;
    wire [31:0] kernel_2mm_B15_branch_out_c0_exe2315;
    wire [0:0] kernel_2mm_B15_branch_out_c0_exe4317;
    wire [63:0] kernel_2mm_B15_branch_out_c0_exe5318;
    wire [0:0] kernel_2mm_B15_branch_out_c0_exe6319;
    wire [0:0] kernel_2mm_B15_branch_out_stall_out;
    wire [0:0] kernel_2mm_B15_branch_out_valid_out_0;
    wire [0:0] kernel_2mm_B15_branch_out_valid_out_1;
    wire [63:0] kernel_2mm_B15_merge_out_arrayidx1019170;
    wire [0:0] kernel_2mm_B15_merge_out_forked45;
    wire [63:0] kernel_2mm_B15_merge_out_idxprom100168;
    wire [63:0] kernel_2mm_B15_merge_out_idxprom57129_pop41169;
    wire [63:0] kernel_2mm_B15_merge_out_idxprom57133_pop55157;
    wire [31:0] kernel_2mm_B15_merge_out_mul102171;
    wire [0:0] kernel_2mm_B15_merge_out_notcmp60172;
    wire [0:0] kernel_2mm_B15_merge_out_notcmp86123_pop53163;
    wire [0:0] kernel_2mm_B15_merge_out_notcmp86124_pop40173;
    wire [0:0] kernel_2mm_B15_merge_out_stall_out_0;
    wire [0:0] kernel_2mm_B15_merge_out_stall_out_1;
    wire [0:0] kernel_2mm_B15_merge_out_valid_out;


    // kernel_2mm_B15_merge(BLACKBOX,35)
    kernel_2mm_B15_merge thekernel_2mm_B15_merge (
        .in_arrayidx1019170_0(in_arrayidx1019170_0),
        .in_arrayidx1019170_1(in_arrayidx1019170_1),
        .in_forked45_0(in_forked45_0),
        .in_forked45_1(in_forked45_1),
        .in_idxprom100168_0(in_idxprom100168_0),
        .in_idxprom100168_1(in_idxprom100168_1),
        .in_idxprom57129_pop41169_0(in_idxprom57129_pop41169_0),
        .in_idxprom57129_pop41169_1(in_idxprom57129_pop41169_1),
        .in_idxprom57133_pop55157_0(in_idxprom57133_pop55157_0),
        .in_idxprom57133_pop55157_1(in_idxprom57133_pop55157_1),
        .in_mul102171_0(in_mul102171_0),
        .in_mul102171_1(in_mul102171_1),
        .in_notcmp60172_0(in_notcmp60172_0),
        .in_notcmp60172_1(in_notcmp60172_1),
        .in_notcmp86123_pop53163_0(in_notcmp86123_pop53163_0),
        .in_notcmp86123_pop53163_1(in_notcmp86123_pop53163_1),
        .in_notcmp86124_pop40173_0(in_notcmp86124_pop40173_0),
        .in_notcmp86124_pop40173_1(in_notcmp86124_pop40173_1),
        .in_stall_in(bb_kernel_2mm_B15_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_arrayidx1019170(kernel_2mm_B15_merge_out_arrayidx1019170),
        .out_forked45(kernel_2mm_B15_merge_out_forked45),
        .out_idxprom100168(kernel_2mm_B15_merge_out_idxprom100168),
        .out_idxprom57129_pop41169(kernel_2mm_B15_merge_out_idxprom57129_pop41169),
        .out_idxprom57133_pop55157(kernel_2mm_B15_merge_out_idxprom57133_pop55157),
        .out_mul102171(kernel_2mm_B15_merge_out_mul102171),
        .out_notcmp60172(kernel_2mm_B15_merge_out_notcmp60172),
        .out_notcmp86123_pop53163(kernel_2mm_B15_merge_out_notcmp86123_pop53163),
        .out_notcmp86124_pop40173(kernel_2mm_B15_merge_out_notcmp86124_pop40173),
        .out_stall_out_0(kernel_2mm_B15_merge_out_stall_out_0),
        .out_stall_out_1(kernel_2mm_B15_merge_out_stall_out_1),
        .out_valid_out(kernel_2mm_B15_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B15_stall_region(BLACKBOX,2)
    kernel_2mm_bb_B15_stall_region thebb_kernel_2mm_B15_stall_region (
        .in_arrayidx1019170(kernel_2mm_B15_merge_out_arrayidx1019170),
        .in_flush(in_flush),
        .in_forked45(kernel_2mm_B15_merge_out_forked45),
        .in_idxprom100168(kernel_2mm_B15_merge_out_idxprom100168),
        .in_idxprom57129_pop41169(kernel_2mm_B15_merge_out_idxprom57129_pop41169),
        .in_idxprom57133_pop55157(kernel_2mm_B15_merge_out_idxprom57133_pop55157),
        .in_mul102171(kernel_2mm_B15_merge_out_mul102171),
        .in_notcmp60172(kernel_2mm_B15_merge_out_notcmp60172),
        .in_notcmp86123_pop53163(kernel_2mm_B15_merge_out_notcmp86123_pop53163),
        .in_notcmp86124_pop40173(kernel_2mm_B15_merge_out_notcmp86124_pop40173),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_2mm_B15_branch_out_stall_out),
        .in_unnamed_kernel_2mm18_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm18_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm18_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm18_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm18_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm18_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm18_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm18_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm19_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm19_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm19_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm19_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm19_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm19_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm19_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm19_kernel_2mm_avm_writeack),
        .in_valid_in(kernel_2mm_B15_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_exiting_stall_out(bb_kernel_2mm_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_exiting_valid_out(bb_kernel_2mm_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_exiting_valid_out),
        .out_c0_exe2315(bb_kernel_2mm_B15_stall_region_out_c0_exe2315),
        .out_c0_exe3316(bb_kernel_2mm_B15_stall_region_out_c0_exe3316),
        .out_c0_exe4317(bb_kernel_2mm_B15_stall_region_out_c0_exe4317),
        .out_c0_exe5318(bb_kernel_2mm_B15_stall_region_out_c0_exe5318),
        .out_c0_exe6319(bb_kernel_2mm_B15_stall_region_out_c0_exe6319),
        .out_pipeline_valid_out(bb_kernel_2mm_B15_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_2mm_B15_stall_region_out_stall_out),
        .out_unnamed_kernel_2mm18_kernel_2mm_avm_address(bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm18_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm18_kernel_2mm_avm_burstcount(bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm18_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm18_kernel_2mm_avm_byteenable(bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm18_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm18_kernel_2mm_avm_enable(bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm18_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm18_kernel_2mm_avm_read(bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm18_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm18_kernel_2mm_avm_write(bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm18_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm18_kernel_2mm_avm_writedata(bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm18_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_address(bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount(bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable(bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_enable(bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_read(bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_write(bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata(bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata),
        .out_valid_out(bb_kernel_2mm_B15_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B15_branch(BLACKBOX,34)
    kernel_2mm_B15_branch thekernel_2mm_B15_branch (
        .in_c0_exe2315(bb_kernel_2mm_B15_stall_region_out_c0_exe2315),
        .in_c0_exe3316(bb_kernel_2mm_B15_stall_region_out_c0_exe3316),
        .in_c0_exe4317(bb_kernel_2mm_B15_stall_region_out_c0_exe4317),
        .in_c0_exe5318(bb_kernel_2mm_B15_stall_region_out_c0_exe5318),
        .in_c0_exe6319(bb_kernel_2mm_B15_stall_region_out_c0_exe6319),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_2mm_B15_stall_region_out_valid_out),
        .out_c0_exe2315(kernel_2mm_B15_branch_out_c0_exe2315),
        .out_c0_exe4317(kernel_2mm_B15_branch_out_c0_exe4317),
        .out_c0_exe5318(kernel_2mm_B15_branch_out_c0_exe5318),
        .out_c0_exe6319(kernel_2mm_B15_branch_out_c0_exe6319),
        .out_stall_out(kernel_2mm_B15_branch_out_stall_out),
        .out_valid_out_0(kernel_2mm_B15_branch_out_valid_out_0),
        .out_valid_out_1(kernel_2mm_B15_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2315(GPOUT,36)
    assign out_c0_exe2315 = kernel_2mm_B15_branch_out_c0_exe2315;

    // out_c0_exe4317(GPOUT,37)
    assign out_c0_exe4317 = kernel_2mm_B15_branch_out_c0_exe4317;

    // out_c0_exe5318(GPOUT,38)
    assign out_c0_exe5318 = kernel_2mm_B15_branch_out_c0_exe5318;

    // out_c0_exe6319(GPOUT,39)
    assign out_c0_exe6319 = kernel_2mm_B15_branch_out_c0_exe6319;

    // out_exiting_stall_out(GPOUT,40)
    assign out_exiting_stall_out = bb_kernel_2mm_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,41)
    assign out_exiting_valid_out = bb_kernel_2mm_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_exiting_valid_out;

    // out_stall_in_0(GPOUT,42)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,43)
    assign out_stall_out_0 = kernel_2mm_B15_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,44)
    assign out_stall_out_1 = kernel_2mm_B15_merge_out_stall_out_1;

    // out_unnamed_kernel_2mm18_kernel_2mm_avm_address(GPOUT,45)
    assign out_unnamed_kernel_2mm18_kernel_2mm_avm_address = bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm18_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm18_kernel_2mm_avm_burstcount(GPOUT,46)
    assign out_unnamed_kernel_2mm18_kernel_2mm_avm_burstcount = bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm18_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm18_kernel_2mm_avm_byteenable(GPOUT,47)
    assign out_unnamed_kernel_2mm18_kernel_2mm_avm_byteenable = bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm18_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm18_kernel_2mm_avm_enable(GPOUT,48)
    assign out_unnamed_kernel_2mm18_kernel_2mm_avm_enable = bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm18_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm18_kernel_2mm_avm_read(GPOUT,49)
    assign out_unnamed_kernel_2mm18_kernel_2mm_avm_read = bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm18_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm18_kernel_2mm_avm_write(GPOUT,50)
    assign out_unnamed_kernel_2mm18_kernel_2mm_avm_write = bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm18_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm18_kernel_2mm_avm_writedata(GPOUT,51)
    assign out_unnamed_kernel_2mm18_kernel_2mm_avm_writedata = bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm18_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_address(GPOUT,52)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_address = bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount(GPOUT,53)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount = bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable(GPOUT,54)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable = bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_enable(GPOUT,55)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_enable = bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_read(GPOUT,56)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_read = bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_write(GPOUT,57)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_write = bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata(GPOUT,58)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata = bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata;

    // out_valid_in_0(GPOUT,59)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,60)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,61)
    assign out_valid_out_0 = kernel_2mm_B15_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,62)
    assign out_valid_out_1 = kernel_2mm_B15_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,64)
    assign out_pipeline_valid_out = bb_kernel_2mm_B15_stall_region_out_pipeline_valid_out;

endmodule
