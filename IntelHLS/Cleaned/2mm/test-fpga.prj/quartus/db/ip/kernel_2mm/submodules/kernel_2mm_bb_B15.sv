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
// SystemVerilog created on Tue Jun 13 12:37:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B15 (
    input wire [0:0] in_feedback_in_40,
    output wire [0:0] out_feedback_stall_out_40,
    input wire [0:0] in_feedback_valid_in_40,
    input wire [0:0] in_exitcond24162_0,
    input wire [0:0] in_exitcond24162_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked114_0,
    input wire [0:0] in_forked114_1,
    input wire [31:0] in_i48_078_pop25156_0,
    input wire [31:0] in_i48_078_pop25156_1,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_6_0,
    input wire [0:0] in_memdep_phi3_pop26168_0,
    input wire [0:0] in_memdep_phi3_pop26168_1,
    input wire [31:0] in_mul59_add30159_0,
    input wire [31:0] in_mul59_add30159_1,
    input wire [0:0] in_notcmp46165_0,
    input wire [0:0] in_notcmp46165_1,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_kernel_2mm19_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm19_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm19_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm19_kernel_2mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe11314,
    output wire [31:0] out_c0_exe12315,
    output wire [31:0] out_c0_exe1304,
    output wire [0:0] out_c0_exe13316,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_c0_exe15,
    output wire [31:0] out_c0_exe2305,
    output wire [63:0] out_c0_exe3306,
    output wire [0:0] out_c0_exe4307,
    output wire [0:0] out_c0_exe5308,
    output wire [31:0] out_c0_exe6309,
    output wire [0:0] out_c0_exe7310,
    output wire [0:0] out_c0_exe8311,
    output wire [0:0] out_c0_exe9312,
    output wire [31:0] out_c1_exe1322,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi_pop40,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
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
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_2mm_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_exiting_valid_out;
    wire [31:0] bb_kernel_2mm_B15_stall_region_out_c0_exe11314;
    wire [31:0] bb_kernel_2mm_B15_stall_region_out_c0_exe12315;
    wire [31:0] bb_kernel_2mm_B15_stall_region_out_c0_exe1304;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_c0_exe13316;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_c0_exe14;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_c0_exe15;
    wire [31:0] bb_kernel_2mm_B15_stall_region_out_c0_exe2305;
    wire [63:0] bb_kernel_2mm_B15_stall_region_out_c0_exe3306;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_c0_exe4307;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_c0_exe5308;
    wire [31:0] bb_kernel_2mm_B15_stall_region_out_c0_exe6309;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_c0_exe7310;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_c0_exe8311;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_c0_exe9312;
    wire [31:0] bb_kernel_2mm_B15_stall_region_out_c1_exe1322;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_feedback_stall_out_40;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_memdep_phi_pop40;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_stall_out;
    wire [31:0] bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B15_stall_region_out_valid_out;
    wire [31:0] kernel_2mm_B15_branch_out_c0_exe11314;
    wire [31:0] kernel_2mm_B15_branch_out_c0_exe12315;
    wire [31:0] kernel_2mm_B15_branch_out_c0_exe1304;
    wire [0:0] kernel_2mm_B15_branch_out_c0_exe13316;
    wire [0:0] kernel_2mm_B15_branch_out_c0_exe14;
    wire [0:0] kernel_2mm_B15_branch_out_c0_exe15;
    wire [31:0] kernel_2mm_B15_branch_out_c0_exe2305;
    wire [63:0] kernel_2mm_B15_branch_out_c0_exe3306;
    wire [0:0] kernel_2mm_B15_branch_out_c0_exe4307;
    wire [0:0] kernel_2mm_B15_branch_out_c0_exe5308;
    wire [31:0] kernel_2mm_B15_branch_out_c0_exe6309;
    wire [0:0] kernel_2mm_B15_branch_out_c0_exe7310;
    wire [0:0] kernel_2mm_B15_branch_out_c0_exe8311;
    wire [0:0] kernel_2mm_B15_branch_out_c0_exe9312;
    wire [31:0] kernel_2mm_B15_branch_out_c1_exe1322;
    wire [0:0] kernel_2mm_B15_branch_out_memdep_phi_pop40;
    wire [0:0] kernel_2mm_B15_branch_out_stall_out;
    wire [0:0] kernel_2mm_B15_branch_out_valid_out_0;
    wire [0:0] kernel_2mm_B15_merge_out_exitcond24162;
    wire [0:0] kernel_2mm_B15_merge_out_forked114;
    wire [31:0] kernel_2mm_B15_merge_out_i48_078_pop25156;
    wire [0:0] kernel_2mm_B15_merge_out_memdep_phi3_pop26168;
    wire [31:0] kernel_2mm_B15_merge_out_mul59_add30159;
    wire [0:0] kernel_2mm_B15_merge_out_notcmp46165;
    wire [0:0] kernel_2mm_B15_merge_out_stall_out_0;
    wire [0:0] kernel_2mm_B15_merge_out_stall_out_1;
    wire [0:0] kernel_2mm_B15_merge_out_valid_out;


    // kernel_2mm_B15_branch(BLACKBOX,28)
    kernel_2mm_B15_branch thekernel_2mm_B15_branch (
        .in_c0_exe11314(bb_kernel_2mm_B15_stall_region_out_c0_exe11314),
        .in_c0_exe12315(bb_kernel_2mm_B15_stall_region_out_c0_exe12315),
        .in_c0_exe1304(bb_kernel_2mm_B15_stall_region_out_c0_exe1304),
        .in_c0_exe13316(bb_kernel_2mm_B15_stall_region_out_c0_exe13316),
        .in_c0_exe14(bb_kernel_2mm_B15_stall_region_out_c0_exe14),
        .in_c0_exe15(bb_kernel_2mm_B15_stall_region_out_c0_exe15),
        .in_c0_exe2305(bb_kernel_2mm_B15_stall_region_out_c0_exe2305),
        .in_c0_exe3306(bb_kernel_2mm_B15_stall_region_out_c0_exe3306),
        .in_c0_exe4307(bb_kernel_2mm_B15_stall_region_out_c0_exe4307),
        .in_c0_exe5308(bb_kernel_2mm_B15_stall_region_out_c0_exe5308),
        .in_c0_exe6309(bb_kernel_2mm_B15_stall_region_out_c0_exe6309),
        .in_c0_exe7310(bb_kernel_2mm_B15_stall_region_out_c0_exe7310),
        .in_c0_exe8311(bb_kernel_2mm_B15_stall_region_out_c0_exe8311),
        .in_c0_exe9312(bb_kernel_2mm_B15_stall_region_out_c0_exe9312),
        .in_c1_exe1322(bb_kernel_2mm_B15_stall_region_out_c1_exe1322),
        .in_memdep_phi_pop40(bb_kernel_2mm_B15_stall_region_out_memdep_phi_pop40),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_2mm_B15_stall_region_out_valid_out),
        .out_c0_exe11314(kernel_2mm_B15_branch_out_c0_exe11314),
        .out_c0_exe12315(kernel_2mm_B15_branch_out_c0_exe12315),
        .out_c0_exe1304(kernel_2mm_B15_branch_out_c0_exe1304),
        .out_c0_exe13316(kernel_2mm_B15_branch_out_c0_exe13316),
        .out_c0_exe14(kernel_2mm_B15_branch_out_c0_exe14),
        .out_c0_exe15(kernel_2mm_B15_branch_out_c0_exe15),
        .out_c0_exe2305(kernel_2mm_B15_branch_out_c0_exe2305),
        .out_c0_exe3306(kernel_2mm_B15_branch_out_c0_exe3306),
        .out_c0_exe4307(kernel_2mm_B15_branch_out_c0_exe4307),
        .out_c0_exe5308(kernel_2mm_B15_branch_out_c0_exe5308),
        .out_c0_exe6309(kernel_2mm_B15_branch_out_c0_exe6309),
        .out_c0_exe7310(kernel_2mm_B15_branch_out_c0_exe7310),
        .out_c0_exe8311(kernel_2mm_B15_branch_out_c0_exe8311),
        .out_c0_exe9312(kernel_2mm_B15_branch_out_c0_exe9312),
        .out_c1_exe1322(kernel_2mm_B15_branch_out_c1_exe1322),
        .out_memdep_phi_pop40(kernel_2mm_B15_branch_out_memdep_phi_pop40),
        .out_stall_out(kernel_2mm_B15_branch_out_stall_out),
        .out_valid_out_0(kernel_2mm_B15_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B15_merge(BLACKBOX,29)
    kernel_2mm_B15_merge thekernel_2mm_B15_merge (
        .in_exitcond24162_0(in_exitcond24162_0),
        .in_exitcond24162_1(in_exitcond24162_1),
        .in_forked114_0(in_forked114_0),
        .in_forked114_1(in_forked114_1),
        .in_i48_078_pop25156_0(in_i48_078_pop25156_0),
        .in_i48_078_pop25156_1(in_i48_078_pop25156_1),
        .in_memdep_phi3_pop26168_0(in_memdep_phi3_pop26168_0),
        .in_memdep_phi3_pop26168_1(in_memdep_phi3_pop26168_1),
        .in_mul59_add30159_0(in_mul59_add30159_0),
        .in_mul59_add30159_1(in_mul59_add30159_1),
        .in_notcmp46165_0(in_notcmp46165_0),
        .in_notcmp46165_1(in_notcmp46165_1),
        .in_stall_in(bb_kernel_2mm_B15_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond24162(kernel_2mm_B15_merge_out_exitcond24162),
        .out_forked114(kernel_2mm_B15_merge_out_forked114),
        .out_i48_078_pop25156(kernel_2mm_B15_merge_out_i48_078_pop25156),
        .out_memdep_phi3_pop26168(kernel_2mm_B15_merge_out_memdep_phi3_pop26168),
        .out_mul59_add30159(kernel_2mm_B15_merge_out_mul59_add30159),
        .out_notcmp46165(kernel_2mm_B15_merge_out_notcmp46165),
        .out_stall_out_0(kernel_2mm_B15_merge_out_stall_out_0),
        .out_stall_out_1(kernel_2mm_B15_merge_out_stall_out_1),
        .out_valid_out(kernel_2mm_B15_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B15_stall_region(BLACKBOX,2)
    kernel_2mm_bb_B15_stall_region thebb_kernel_2mm_B15_stall_region (
        .in_exitcond24162(kernel_2mm_B15_merge_out_exitcond24162),
        .in_feedback_in_40(in_feedback_in_40),
        .in_feedback_valid_in_40(in_feedback_valid_in_40),
        .in_flush(in_flush),
        .in_forked114(kernel_2mm_B15_merge_out_forked114),
        .in_i48_078_pop25156(kernel_2mm_B15_merge_out_i48_078_pop25156),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_memdep_phi3_pop26168(kernel_2mm_B15_merge_out_memdep_phi3_pop26168),
        .in_mul59_add30159(kernel_2mm_B15_merge_out_mul59_add30159),
        .in_notcmp46165(kernel_2mm_B15_merge_out_notcmp46165),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_2mm_B15_branch_out_stall_out),
        .in_unnamed_kernel_2mm19_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm19_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm19_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm19_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm19_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm19_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm19_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm19_kernel_2mm_avm_writeack),
        .in_valid_in(kernel_2mm_B15_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_exiting_stall_out(bb_kernel_2mm_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_exiting_valid_out(bb_kernel_2mm_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_exiting_valid_out),
        .out_c0_exe11314(bb_kernel_2mm_B15_stall_region_out_c0_exe11314),
        .out_c0_exe12315(bb_kernel_2mm_B15_stall_region_out_c0_exe12315),
        .out_c0_exe1304(bb_kernel_2mm_B15_stall_region_out_c0_exe1304),
        .out_c0_exe13316(bb_kernel_2mm_B15_stall_region_out_c0_exe13316),
        .out_c0_exe14(bb_kernel_2mm_B15_stall_region_out_c0_exe14),
        .out_c0_exe15(bb_kernel_2mm_B15_stall_region_out_c0_exe15),
        .out_c0_exe2305(bb_kernel_2mm_B15_stall_region_out_c0_exe2305),
        .out_c0_exe3306(bb_kernel_2mm_B15_stall_region_out_c0_exe3306),
        .out_c0_exe4307(bb_kernel_2mm_B15_stall_region_out_c0_exe4307),
        .out_c0_exe5308(bb_kernel_2mm_B15_stall_region_out_c0_exe5308),
        .out_c0_exe6309(bb_kernel_2mm_B15_stall_region_out_c0_exe6309),
        .out_c0_exe7310(bb_kernel_2mm_B15_stall_region_out_c0_exe7310),
        .out_c0_exe8311(bb_kernel_2mm_B15_stall_region_out_c0_exe8311),
        .out_c0_exe9312(bb_kernel_2mm_B15_stall_region_out_c0_exe9312),
        .out_c1_exe1322(bb_kernel_2mm_B15_stall_region_out_c1_exe1322),
        .out_feedback_stall_out_40(bb_kernel_2mm_B15_stall_region_out_feedback_stall_out_40),
        .out_memdep_phi_pop40(bb_kernel_2mm_B15_stall_region_out_memdep_phi_pop40),
        .out_pipeline_valid_out(bb_kernel_2mm_B15_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_2mm_B15_stall_region_out_stall_out),
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

    // feedback_stall_out_40_sync(GPOUT,4)
    assign out_feedback_stall_out_40 = bb_kernel_2mm_B15_stall_region_out_feedback_stall_out_40;

    // out_c0_exe11314(GPOUT,30)
    assign out_c0_exe11314 = kernel_2mm_B15_branch_out_c0_exe11314;

    // out_c0_exe12315(GPOUT,31)
    assign out_c0_exe12315 = kernel_2mm_B15_branch_out_c0_exe12315;

    // out_c0_exe1304(GPOUT,32)
    assign out_c0_exe1304 = kernel_2mm_B15_branch_out_c0_exe1304;

    // out_c0_exe13316(GPOUT,33)
    assign out_c0_exe13316 = kernel_2mm_B15_branch_out_c0_exe13316;

    // out_c0_exe14(GPOUT,34)
    assign out_c0_exe14 = kernel_2mm_B15_branch_out_c0_exe14;

    // out_c0_exe15(GPOUT,35)
    assign out_c0_exe15 = kernel_2mm_B15_branch_out_c0_exe15;

    // out_c0_exe2305(GPOUT,36)
    assign out_c0_exe2305 = kernel_2mm_B15_branch_out_c0_exe2305;

    // out_c0_exe3306(GPOUT,37)
    assign out_c0_exe3306 = kernel_2mm_B15_branch_out_c0_exe3306;

    // out_c0_exe4307(GPOUT,38)
    assign out_c0_exe4307 = kernel_2mm_B15_branch_out_c0_exe4307;

    // out_c0_exe5308(GPOUT,39)
    assign out_c0_exe5308 = kernel_2mm_B15_branch_out_c0_exe5308;

    // out_c0_exe6309(GPOUT,40)
    assign out_c0_exe6309 = kernel_2mm_B15_branch_out_c0_exe6309;

    // out_c0_exe7310(GPOUT,41)
    assign out_c0_exe7310 = kernel_2mm_B15_branch_out_c0_exe7310;

    // out_c0_exe8311(GPOUT,42)
    assign out_c0_exe8311 = kernel_2mm_B15_branch_out_c0_exe8311;

    // out_c0_exe9312(GPOUT,43)
    assign out_c0_exe9312 = kernel_2mm_B15_branch_out_c0_exe9312;

    // out_c1_exe1322(GPOUT,44)
    assign out_c1_exe1322 = kernel_2mm_B15_branch_out_c1_exe1322;

    // out_exiting_stall_out(GPOUT,45)
    assign out_exiting_stall_out = bb_kernel_2mm_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,46)
    assign out_exiting_valid_out = bb_kernel_2mm_B15_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kernel_2mm2_exiting_valid_out;

    // out_memdep_phi_pop40(GPOUT,47)
    assign out_memdep_phi_pop40 = kernel_2mm_B15_branch_out_memdep_phi_pop40;

    // out_stall_out_0(GPOUT,48)
    assign out_stall_out_0 = kernel_2mm_B15_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,49)
    assign out_stall_out_1 = kernel_2mm_B15_merge_out_stall_out_1;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_address(GPOUT,50)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_address = bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount(GPOUT,51)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount = bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable(GPOUT,52)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable = bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_enable(GPOUT,53)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_enable = bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_read(GPOUT,54)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_read = bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_write(GPOUT,55)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_write = bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata(GPOUT,56)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata = bb_kernel_2mm_B15_stall_region_out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata;

    // out_valid_in_0(GPOUT,57)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,58)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,59)
    assign out_valid_out_0 = kernel_2mm_B15_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,61)
    assign out_pipeline_valid_out = bb_kernel_2mm_B15_stall_region_out_pipeline_valid_out;

endmodule
