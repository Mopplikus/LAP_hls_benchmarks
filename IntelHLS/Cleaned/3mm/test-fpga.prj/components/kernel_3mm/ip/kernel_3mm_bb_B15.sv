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

// SystemVerilog created from bb_kernel_3mm_B15
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B15 (
    input wire [0:0] in_feedback_in_47,
    output wire [0:0] out_feedback_stall_out_47,
    input wire [0:0] in_feedback_valid_in_47,
    input wire [0:0] in_exitcond34233_0,
    input wire [0:0] in_exitcond34233_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked146_0,
    input wire [0:0] in_forked146_1,
    input wire [63:0] in_intel_reserved_ffwd_11_0,
    input wire [0:0] in_memdep_phi9_pop30239_0,
    input wire [0:0] in_memdep_phi9_pop30239_1,
    input wire [31:0] in_mul64_add44230_0,
    input wire [31:0] in_mul64_add44230_1,
    input wire [0:0] in_notcmp64236_0,
    input wire [0:0] in_notcmp64236_1,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_kernel_3mm29_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm29_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm29_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm29_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10490,
    output wire [0:0] out_c0_exe11491,
    output wire [0:0] out_c0_exe12492,
    output wire [0:0] out_c0_exe13493,
    output wire [31:0] out_c0_exe1481,
    output wire [31:0] out_c0_exe2482,
    output wire [63:0] out_c0_exe3483,
    output wire [0:0] out_c0_exe4484,
    output wire [0:0] out_c0_exe5485,
    output wire [0:0] out_c0_exe6486,
    output wire [0:0] out_c0_exe7487,
    output wire [0:0] out_c0_exe8488,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi8_pop47,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_3mm29,
    output wire [31:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_valid_out;
    wire [31:0] bb_kernel_3mm_B15_stall_region_out_c0_exe10490;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_c0_exe11491;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_c0_exe12492;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_c0_exe13493;
    wire [31:0] bb_kernel_3mm_B15_stall_region_out_c0_exe1481;
    wire [31:0] bb_kernel_3mm_B15_stall_region_out_c0_exe2482;
    wire [63:0] bb_kernel_3mm_B15_stall_region_out_c0_exe3483;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_c0_exe4484;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_c0_exe5485;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_c0_exe6486;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_c0_exe7487;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_c0_exe8488;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_feedback_stall_out_47;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_memdep_phi8_pop47;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_stall_out;
    wire [31:0] bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29;
    wire [31:0] bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B15_stall_region_out_valid_out;
    wire [31:0] kernel_3mm_B15_branch_out_c0_exe10490;
    wire [0:0] kernel_3mm_B15_branch_out_c0_exe11491;
    wire [0:0] kernel_3mm_B15_branch_out_c0_exe12492;
    wire [0:0] kernel_3mm_B15_branch_out_c0_exe13493;
    wire [31:0] kernel_3mm_B15_branch_out_c0_exe1481;
    wire [31:0] kernel_3mm_B15_branch_out_c0_exe2482;
    wire [63:0] kernel_3mm_B15_branch_out_c0_exe3483;
    wire [0:0] kernel_3mm_B15_branch_out_c0_exe4484;
    wire [0:0] kernel_3mm_B15_branch_out_c0_exe5485;
    wire [0:0] kernel_3mm_B15_branch_out_c0_exe6486;
    wire [0:0] kernel_3mm_B15_branch_out_c0_exe7487;
    wire [0:0] kernel_3mm_B15_branch_out_c0_exe8488;
    wire [0:0] kernel_3mm_B15_branch_out_memdep_phi8_pop47;
    wire [0:0] kernel_3mm_B15_branch_out_stall_out;
    wire [31:0] kernel_3mm_B15_branch_out_unnamed_kernel_3mm29;
    wire [0:0] kernel_3mm_B15_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B15_merge_out_exitcond34233;
    wire [0:0] kernel_3mm_B15_merge_out_forked146;
    wire [0:0] kernel_3mm_B15_merge_out_memdep_phi9_pop30239;
    wire [31:0] kernel_3mm_B15_merge_out_mul64_add44230;
    wire [0:0] kernel_3mm_B15_merge_out_notcmp64236;
    wire [0:0] kernel_3mm_B15_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B15_merge_out_stall_out_1;
    wire [0:0] kernel_3mm_B15_merge_out_valid_out;


    // kernel_3mm_B15_branch(BLACKBOX,25)
    kernel_3mm_B15_branch thekernel_3mm_B15_branch (
        .in_c0_exe10490(bb_kernel_3mm_B15_stall_region_out_c0_exe10490),
        .in_c0_exe11491(bb_kernel_3mm_B15_stall_region_out_c0_exe11491),
        .in_c0_exe12492(bb_kernel_3mm_B15_stall_region_out_c0_exe12492),
        .in_c0_exe13493(bb_kernel_3mm_B15_stall_region_out_c0_exe13493),
        .in_c0_exe1481(bb_kernel_3mm_B15_stall_region_out_c0_exe1481),
        .in_c0_exe2482(bb_kernel_3mm_B15_stall_region_out_c0_exe2482),
        .in_c0_exe3483(bb_kernel_3mm_B15_stall_region_out_c0_exe3483),
        .in_c0_exe4484(bb_kernel_3mm_B15_stall_region_out_c0_exe4484),
        .in_c0_exe5485(bb_kernel_3mm_B15_stall_region_out_c0_exe5485),
        .in_c0_exe6486(bb_kernel_3mm_B15_stall_region_out_c0_exe6486),
        .in_c0_exe7487(bb_kernel_3mm_B15_stall_region_out_c0_exe7487),
        .in_c0_exe8488(bb_kernel_3mm_B15_stall_region_out_c0_exe8488),
        .in_memdep_phi8_pop47(bb_kernel_3mm_B15_stall_region_out_memdep_phi8_pop47),
        .in_stall_in_0(in_stall_in_0),
        .in_unnamed_kernel_3mm29(bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29),
        .in_valid_in(bb_kernel_3mm_B15_stall_region_out_valid_out),
        .out_c0_exe10490(kernel_3mm_B15_branch_out_c0_exe10490),
        .out_c0_exe11491(kernel_3mm_B15_branch_out_c0_exe11491),
        .out_c0_exe12492(kernel_3mm_B15_branch_out_c0_exe12492),
        .out_c0_exe13493(kernel_3mm_B15_branch_out_c0_exe13493),
        .out_c0_exe1481(kernel_3mm_B15_branch_out_c0_exe1481),
        .out_c0_exe2482(kernel_3mm_B15_branch_out_c0_exe2482),
        .out_c0_exe3483(kernel_3mm_B15_branch_out_c0_exe3483),
        .out_c0_exe4484(kernel_3mm_B15_branch_out_c0_exe4484),
        .out_c0_exe5485(kernel_3mm_B15_branch_out_c0_exe5485),
        .out_c0_exe6486(kernel_3mm_B15_branch_out_c0_exe6486),
        .out_c0_exe7487(kernel_3mm_B15_branch_out_c0_exe7487),
        .out_c0_exe8488(kernel_3mm_B15_branch_out_c0_exe8488),
        .out_memdep_phi8_pop47(kernel_3mm_B15_branch_out_memdep_phi8_pop47),
        .out_stall_out(kernel_3mm_B15_branch_out_stall_out),
        .out_unnamed_kernel_3mm29(kernel_3mm_B15_branch_out_unnamed_kernel_3mm29),
        .out_valid_out_0(kernel_3mm_B15_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B15_merge(BLACKBOX,26)
    kernel_3mm_B15_merge thekernel_3mm_B15_merge (
        .in_exitcond34233_0(in_exitcond34233_0),
        .in_exitcond34233_1(in_exitcond34233_1),
        .in_forked146_0(in_forked146_0),
        .in_forked146_1(in_forked146_1),
        .in_memdep_phi9_pop30239_0(in_memdep_phi9_pop30239_0),
        .in_memdep_phi9_pop30239_1(in_memdep_phi9_pop30239_1),
        .in_mul64_add44230_0(in_mul64_add44230_0),
        .in_mul64_add44230_1(in_mul64_add44230_1),
        .in_notcmp64236_0(in_notcmp64236_0),
        .in_notcmp64236_1(in_notcmp64236_1),
        .in_stall_in(bb_kernel_3mm_B15_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond34233(kernel_3mm_B15_merge_out_exitcond34233),
        .out_forked146(kernel_3mm_B15_merge_out_forked146),
        .out_memdep_phi9_pop30239(kernel_3mm_B15_merge_out_memdep_phi9_pop30239),
        .out_mul64_add44230(kernel_3mm_B15_merge_out_mul64_add44230),
        .out_notcmp64236(kernel_3mm_B15_merge_out_notcmp64236),
        .out_stall_out_0(kernel_3mm_B15_merge_out_stall_out_0),
        .out_stall_out_1(kernel_3mm_B15_merge_out_stall_out_1),
        .out_valid_out(kernel_3mm_B15_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B15_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B15_stall_region thebb_kernel_3mm_B15_stall_region (
        .in_exitcond34233(kernel_3mm_B15_merge_out_exitcond34233),
        .in_feedback_in_47(in_feedback_in_47),
        .in_feedback_valid_in_47(in_feedback_valid_in_47),
        .in_flush(in_flush),
        .in_forked146(kernel_3mm_B15_merge_out_forked146),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_memdep_phi9_pop30239(kernel_3mm_B15_merge_out_memdep_phi9_pop30239),
        .in_mul64_add44230(kernel_3mm_B15_merge_out_mul64_add44230),
        .in_notcmp64236(kernel_3mm_B15_merge_out_notcmp64236),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_3mm_B15_branch_out_stall_out),
        .in_unnamed_kernel_3mm29_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm29_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm29_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm29_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm29_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm29_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm29_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm29_kernel_3mm_avm_writeack),
        .in_valid_in(kernel_3mm_B15_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_stall_out(bb_kernel_3mm_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_valid_out(bb_kernel_3mm_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_valid_out),
        .out_c0_exe10490(bb_kernel_3mm_B15_stall_region_out_c0_exe10490),
        .out_c0_exe11491(bb_kernel_3mm_B15_stall_region_out_c0_exe11491),
        .out_c0_exe12492(bb_kernel_3mm_B15_stall_region_out_c0_exe12492),
        .out_c0_exe13493(bb_kernel_3mm_B15_stall_region_out_c0_exe13493),
        .out_c0_exe1481(bb_kernel_3mm_B15_stall_region_out_c0_exe1481),
        .out_c0_exe2482(bb_kernel_3mm_B15_stall_region_out_c0_exe2482),
        .out_c0_exe3483(bb_kernel_3mm_B15_stall_region_out_c0_exe3483),
        .out_c0_exe4484(bb_kernel_3mm_B15_stall_region_out_c0_exe4484),
        .out_c0_exe5485(bb_kernel_3mm_B15_stall_region_out_c0_exe5485),
        .out_c0_exe6486(bb_kernel_3mm_B15_stall_region_out_c0_exe6486),
        .out_c0_exe7487(bb_kernel_3mm_B15_stall_region_out_c0_exe7487),
        .out_c0_exe8488(bb_kernel_3mm_B15_stall_region_out_c0_exe8488),
        .out_feedback_stall_out_47(bb_kernel_3mm_B15_stall_region_out_feedback_stall_out_47),
        .out_memdep_phi8_pop47(bb_kernel_3mm_B15_stall_region_out_memdep_phi8_pop47),
        .out_pipeline_valid_out(bb_kernel_3mm_B15_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_3mm_B15_stall_region_out_stall_out),
        .out_unnamed_kernel_3mm29(bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_address(bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount(bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable(bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_enable(bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_read(bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_write(bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata(bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata),
        .out_valid_out(bb_kernel_3mm_B15_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_47_sync(GPOUT,4)
    assign out_feedback_stall_out_47 = bb_kernel_3mm_B15_stall_region_out_feedback_stall_out_47;

    // out_c0_exe10490(GPOUT,27)
    assign out_c0_exe10490 = kernel_3mm_B15_branch_out_c0_exe10490;

    // out_c0_exe11491(GPOUT,28)
    assign out_c0_exe11491 = kernel_3mm_B15_branch_out_c0_exe11491;

    // out_c0_exe12492(GPOUT,29)
    assign out_c0_exe12492 = kernel_3mm_B15_branch_out_c0_exe12492;

    // out_c0_exe13493(GPOUT,30)
    assign out_c0_exe13493 = kernel_3mm_B15_branch_out_c0_exe13493;

    // out_c0_exe1481(GPOUT,31)
    assign out_c0_exe1481 = kernel_3mm_B15_branch_out_c0_exe1481;

    // out_c0_exe2482(GPOUT,32)
    assign out_c0_exe2482 = kernel_3mm_B15_branch_out_c0_exe2482;

    // out_c0_exe3483(GPOUT,33)
    assign out_c0_exe3483 = kernel_3mm_B15_branch_out_c0_exe3483;

    // out_c0_exe4484(GPOUT,34)
    assign out_c0_exe4484 = kernel_3mm_B15_branch_out_c0_exe4484;

    // out_c0_exe5485(GPOUT,35)
    assign out_c0_exe5485 = kernel_3mm_B15_branch_out_c0_exe5485;

    // out_c0_exe6486(GPOUT,36)
    assign out_c0_exe6486 = kernel_3mm_B15_branch_out_c0_exe6486;

    // out_c0_exe7487(GPOUT,37)
    assign out_c0_exe7487 = kernel_3mm_B15_branch_out_c0_exe7487;

    // out_c0_exe8488(GPOUT,38)
    assign out_c0_exe8488 = kernel_3mm_B15_branch_out_c0_exe8488;

    // out_exiting_stall_out(GPOUT,39)
    assign out_exiting_stall_out = bb_kernel_3mm_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,40)
    assign out_exiting_valid_out = bb_kernel_3mm_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_kernel_3mm2_exiting_valid_out;

    // out_memdep_phi8_pop47(GPOUT,41)
    assign out_memdep_phi8_pop47 = kernel_3mm_B15_branch_out_memdep_phi8_pop47;

    // out_stall_out_0(GPOUT,42)
    assign out_stall_out_0 = kernel_3mm_B15_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,43)
    assign out_stall_out_1 = kernel_3mm_B15_merge_out_stall_out_1;

    // out_unnamed_kernel_3mm29(GPOUT,44)
    assign out_unnamed_kernel_3mm29 = kernel_3mm_B15_branch_out_unnamed_kernel_3mm29;

    // out_unnamed_kernel_3mm29_kernel_3mm_avm_address(GPOUT,45)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_address = bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount(GPOUT,46)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount = bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable(GPOUT,47)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable = bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm29_kernel_3mm_avm_enable(GPOUT,48)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_enable = bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm29_kernel_3mm_avm_read(GPOUT,49)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_read = bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm29_kernel_3mm_avm_write(GPOUT,50)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_write = bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata(GPOUT,51)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata = bb_kernel_3mm_B15_stall_region_out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata;

    // out_valid_in_0(GPOUT,52)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,53)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,54)
    assign out_valid_out_0 = kernel_3mm_B15_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,56)
    assign out_pipeline_valid_out = bb_kernel_3mm_B15_stall_region_out_pipeline_valid_out;

endmodule
