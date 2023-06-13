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

// SystemVerilog created from bb_kernel_3mm_B9
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:42 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B9 (
    input wire [0:0] in_feedback_in_40,
    output wire [0:0] out_feedback_stall_out_40,
    input wire [0:0] in_feedback_valid_in_40,
    input wire [0:0] in_exitcond25203_0,
    input wire [0:0] in_exitcond25203_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked137_0,
    input wire [0:0] in_forked137_1,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_memdep_phi5_pop27209_0,
    input wire [0:0] in_memdep_phi5_pop27209_1,
    input wire [31:0] in_mul31_add40200_0,
    input wire [31:0] in_mul31_add40200_1,
    input wire [0:0] in_notcmp90206_0,
    input wire [0:0] in_notcmp90206_1,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_kernel_3mm20_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm20_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm20_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm20_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10360,
    output wire [0:0] out_c0_exe11361,
    output wire [0:0] out_c0_exe12362,
    output wire [0:0] out_c0_exe13363,
    output wire [31:0] out_c0_exe1351,
    output wire [31:0] out_c0_exe2352,
    output wire [63:0] out_c0_exe3353,
    output wire [0:0] out_c0_exe4354,
    output wire [0:0] out_c0_exe5355,
    output wire [0:0] out_c0_exe6356,
    output wire [0:0] out_c0_exe7357,
    output wire [0:0] out_c0_exe8358,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_10_0,
    output wire [0:0] out_memdep_phi4_pop40,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_3mm20,
    output wire [31:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_exiting_valid_out;
    wire [31:0] bb_kernel_3mm_B9_stall_region_out_c0_exe10360;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_c0_exe11361;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_c0_exe12362;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_c0_exe13363;
    wire [31:0] bb_kernel_3mm_B9_stall_region_out_c0_exe1351;
    wire [31:0] bb_kernel_3mm_B9_stall_region_out_c0_exe2352;
    wire [63:0] bb_kernel_3mm_B9_stall_region_out_c0_exe3353;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_c0_exe4354;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_c0_exe5355;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_c0_exe6356;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_c0_exe7357;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_c0_exe8358;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_feedback_stall_out_40;
    wire [63:0] bb_kernel_3mm_B9_stall_region_out_intel_reserved_ffwd_10_0;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_memdep_phi4_pop40;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_stall_out;
    wire [31:0] bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20;
    wire [31:0] bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B9_stall_region_out_valid_out;
    wire [31:0] kernel_3mm_B9_branch_out_c0_exe10360;
    wire [0:0] kernel_3mm_B9_branch_out_c0_exe11361;
    wire [0:0] kernel_3mm_B9_branch_out_c0_exe12362;
    wire [0:0] kernel_3mm_B9_branch_out_c0_exe13363;
    wire [31:0] kernel_3mm_B9_branch_out_c0_exe1351;
    wire [31:0] kernel_3mm_B9_branch_out_c0_exe2352;
    wire [63:0] kernel_3mm_B9_branch_out_c0_exe3353;
    wire [0:0] kernel_3mm_B9_branch_out_c0_exe4354;
    wire [0:0] kernel_3mm_B9_branch_out_c0_exe5355;
    wire [0:0] kernel_3mm_B9_branch_out_c0_exe6356;
    wire [0:0] kernel_3mm_B9_branch_out_c0_exe7357;
    wire [0:0] kernel_3mm_B9_branch_out_c0_exe8358;
    wire [0:0] kernel_3mm_B9_branch_out_memdep_phi4_pop40;
    wire [0:0] kernel_3mm_B9_branch_out_stall_out;
    wire [31:0] kernel_3mm_B9_branch_out_unnamed_kernel_3mm20;
    wire [0:0] kernel_3mm_B9_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B9_merge_out_exitcond25203;
    wire [0:0] kernel_3mm_B9_merge_out_forked137;
    wire [0:0] kernel_3mm_B9_merge_out_memdep_phi5_pop27209;
    wire [31:0] kernel_3mm_B9_merge_out_mul31_add40200;
    wire [0:0] kernel_3mm_B9_merge_out_notcmp90206;
    wire [0:0] kernel_3mm_B9_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B9_merge_out_stall_out_1;
    wire [0:0] kernel_3mm_B9_merge_out_valid_out;


    // kernel_3mm_B9_branch(BLACKBOX,25)
    kernel_3mm_B9_branch thekernel_3mm_B9_branch (
        .in_c0_exe10360(bb_kernel_3mm_B9_stall_region_out_c0_exe10360),
        .in_c0_exe11361(bb_kernel_3mm_B9_stall_region_out_c0_exe11361),
        .in_c0_exe12362(bb_kernel_3mm_B9_stall_region_out_c0_exe12362),
        .in_c0_exe13363(bb_kernel_3mm_B9_stall_region_out_c0_exe13363),
        .in_c0_exe1351(bb_kernel_3mm_B9_stall_region_out_c0_exe1351),
        .in_c0_exe2352(bb_kernel_3mm_B9_stall_region_out_c0_exe2352),
        .in_c0_exe3353(bb_kernel_3mm_B9_stall_region_out_c0_exe3353),
        .in_c0_exe4354(bb_kernel_3mm_B9_stall_region_out_c0_exe4354),
        .in_c0_exe5355(bb_kernel_3mm_B9_stall_region_out_c0_exe5355),
        .in_c0_exe6356(bb_kernel_3mm_B9_stall_region_out_c0_exe6356),
        .in_c0_exe7357(bb_kernel_3mm_B9_stall_region_out_c0_exe7357),
        .in_c0_exe8358(bb_kernel_3mm_B9_stall_region_out_c0_exe8358),
        .in_memdep_phi4_pop40(bb_kernel_3mm_B9_stall_region_out_memdep_phi4_pop40),
        .in_stall_in_0(in_stall_in_0),
        .in_unnamed_kernel_3mm20(bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20),
        .in_valid_in(bb_kernel_3mm_B9_stall_region_out_valid_out),
        .out_c0_exe10360(kernel_3mm_B9_branch_out_c0_exe10360),
        .out_c0_exe11361(kernel_3mm_B9_branch_out_c0_exe11361),
        .out_c0_exe12362(kernel_3mm_B9_branch_out_c0_exe12362),
        .out_c0_exe13363(kernel_3mm_B9_branch_out_c0_exe13363),
        .out_c0_exe1351(kernel_3mm_B9_branch_out_c0_exe1351),
        .out_c0_exe2352(kernel_3mm_B9_branch_out_c0_exe2352),
        .out_c0_exe3353(kernel_3mm_B9_branch_out_c0_exe3353),
        .out_c0_exe4354(kernel_3mm_B9_branch_out_c0_exe4354),
        .out_c0_exe5355(kernel_3mm_B9_branch_out_c0_exe5355),
        .out_c0_exe6356(kernel_3mm_B9_branch_out_c0_exe6356),
        .out_c0_exe7357(kernel_3mm_B9_branch_out_c0_exe7357),
        .out_c0_exe8358(kernel_3mm_B9_branch_out_c0_exe8358),
        .out_memdep_phi4_pop40(kernel_3mm_B9_branch_out_memdep_phi4_pop40),
        .out_stall_out(kernel_3mm_B9_branch_out_stall_out),
        .out_unnamed_kernel_3mm20(kernel_3mm_B9_branch_out_unnamed_kernel_3mm20),
        .out_valid_out_0(kernel_3mm_B9_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B9_merge(BLACKBOX,26)
    kernel_3mm_B9_merge thekernel_3mm_B9_merge (
        .in_exitcond25203_0(in_exitcond25203_0),
        .in_exitcond25203_1(in_exitcond25203_1),
        .in_forked137_0(in_forked137_0),
        .in_forked137_1(in_forked137_1),
        .in_memdep_phi5_pop27209_0(in_memdep_phi5_pop27209_0),
        .in_memdep_phi5_pop27209_1(in_memdep_phi5_pop27209_1),
        .in_mul31_add40200_0(in_mul31_add40200_0),
        .in_mul31_add40200_1(in_mul31_add40200_1),
        .in_notcmp90206_0(in_notcmp90206_0),
        .in_notcmp90206_1(in_notcmp90206_1),
        .in_stall_in(bb_kernel_3mm_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond25203(kernel_3mm_B9_merge_out_exitcond25203),
        .out_forked137(kernel_3mm_B9_merge_out_forked137),
        .out_memdep_phi5_pop27209(kernel_3mm_B9_merge_out_memdep_phi5_pop27209),
        .out_mul31_add40200(kernel_3mm_B9_merge_out_mul31_add40200),
        .out_notcmp90206(kernel_3mm_B9_merge_out_notcmp90206),
        .out_stall_out_0(kernel_3mm_B9_merge_out_stall_out_0),
        .out_stall_out_1(kernel_3mm_B9_merge_out_stall_out_1),
        .out_valid_out(kernel_3mm_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B9_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B9_stall_region thebb_kernel_3mm_B9_stall_region (
        .in_exitcond25203(kernel_3mm_B9_merge_out_exitcond25203),
        .in_feedback_in_40(in_feedback_in_40),
        .in_feedback_valid_in_40(in_feedback_valid_in_40),
        .in_flush(in_flush),
        .in_forked137(kernel_3mm_B9_merge_out_forked137),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_memdep_phi5_pop27209(kernel_3mm_B9_merge_out_memdep_phi5_pop27209),
        .in_mul31_add40200(kernel_3mm_B9_merge_out_mul31_add40200),
        .in_notcmp90206(kernel_3mm_B9_merge_out_notcmp90206),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_3mm_B9_branch_out_stall_out),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm20_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm20_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm20_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm20_kernel_3mm_avm_writeack),
        .in_valid_in(kernel_3mm_B9_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_exiting_stall_out(bb_kernel_3mm_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_exiting_valid_out(bb_kernel_3mm_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_exiting_valid_out),
        .out_c0_exe10360(bb_kernel_3mm_B9_stall_region_out_c0_exe10360),
        .out_c0_exe11361(bb_kernel_3mm_B9_stall_region_out_c0_exe11361),
        .out_c0_exe12362(bb_kernel_3mm_B9_stall_region_out_c0_exe12362),
        .out_c0_exe13363(bb_kernel_3mm_B9_stall_region_out_c0_exe13363),
        .out_c0_exe1351(bb_kernel_3mm_B9_stall_region_out_c0_exe1351),
        .out_c0_exe2352(bb_kernel_3mm_B9_stall_region_out_c0_exe2352),
        .out_c0_exe3353(bb_kernel_3mm_B9_stall_region_out_c0_exe3353),
        .out_c0_exe4354(bb_kernel_3mm_B9_stall_region_out_c0_exe4354),
        .out_c0_exe5355(bb_kernel_3mm_B9_stall_region_out_c0_exe5355),
        .out_c0_exe6356(bb_kernel_3mm_B9_stall_region_out_c0_exe6356),
        .out_c0_exe7357(bb_kernel_3mm_B9_stall_region_out_c0_exe7357),
        .out_c0_exe8358(bb_kernel_3mm_B9_stall_region_out_c0_exe8358),
        .out_feedback_stall_out_40(bb_kernel_3mm_B9_stall_region_out_feedback_stall_out_40),
        .out_intel_reserved_ffwd_10_0(bb_kernel_3mm_B9_stall_region_out_intel_reserved_ffwd_10_0),
        .out_memdep_phi4_pop40(bb_kernel_3mm_B9_stall_region_out_memdep_phi4_pop40),
        .out_pipeline_valid_out(bb_kernel_3mm_B9_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_3mm_B9_stall_region_out_stall_out),
        .out_unnamed_kernel_3mm20(bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_address(bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount(bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable(bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_enable(bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_read(bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_write(bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata(bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata),
        .out_valid_out(bb_kernel_3mm_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_40_sync(GPOUT,4)
    assign out_feedback_stall_out_40 = bb_kernel_3mm_B9_stall_region_out_feedback_stall_out_40;

    // out_c0_exe10360(GPOUT,27)
    assign out_c0_exe10360 = kernel_3mm_B9_branch_out_c0_exe10360;

    // out_c0_exe11361(GPOUT,28)
    assign out_c0_exe11361 = kernel_3mm_B9_branch_out_c0_exe11361;

    // out_c0_exe12362(GPOUT,29)
    assign out_c0_exe12362 = kernel_3mm_B9_branch_out_c0_exe12362;

    // out_c0_exe13363(GPOUT,30)
    assign out_c0_exe13363 = kernel_3mm_B9_branch_out_c0_exe13363;

    // out_c0_exe1351(GPOUT,31)
    assign out_c0_exe1351 = kernel_3mm_B9_branch_out_c0_exe1351;

    // out_c0_exe2352(GPOUT,32)
    assign out_c0_exe2352 = kernel_3mm_B9_branch_out_c0_exe2352;

    // out_c0_exe3353(GPOUT,33)
    assign out_c0_exe3353 = kernel_3mm_B9_branch_out_c0_exe3353;

    // out_c0_exe4354(GPOUT,34)
    assign out_c0_exe4354 = kernel_3mm_B9_branch_out_c0_exe4354;

    // out_c0_exe5355(GPOUT,35)
    assign out_c0_exe5355 = kernel_3mm_B9_branch_out_c0_exe5355;

    // out_c0_exe6356(GPOUT,36)
    assign out_c0_exe6356 = kernel_3mm_B9_branch_out_c0_exe6356;

    // out_c0_exe7357(GPOUT,37)
    assign out_c0_exe7357 = kernel_3mm_B9_branch_out_c0_exe7357;

    // out_c0_exe8358(GPOUT,38)
    assign out_c0_exe8358 = kernel_3mm_B9_branch_out_c0_exe8358;

    // out_exiting_stall_out(GPOUT,39)
    assign out_exiting_stall_out = bb_kernel_3mm_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,40)
    assign out_exiting_valid_out = bb_kernel_3mm_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going87_kernel_3mm2_exiting_valid_out;

    // out_intel_reserved_ffwd_10_0(GPOUT,41)
    assign out_intel_reserved_ffwd_10_0 = bb_kernel_3mm_B9_stall_region_out_intel_reserved_ffwd_10_0;

    // out_memdep_phi4_pop40(GPOUT,42)
    assign out_memdep_phi4_pop40 = kernel_3mm_B9_branch_out_memdep_phi4_pop40;

    // out_stall_out_0(GPOUT,43)
    assign out_stall_out_0 = kernel_3mm_B9_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,44)
    assign out_stall_out_1 = kernel_3mm_B9_merge_out_stall_out_1;

    // out_unnamed_kernel_3mm20(GPOUT,45)
    assign out_unnamed_kernel_3mm20 = kernel_3mm_B9_branch_out_unnamed_kernel_3mm20;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_address(GPOUT,46)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_address = bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount(GPOUT,47)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount = bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable(GPOUT,48)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable = bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_enable(GPOUT,49)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_enable = bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_read(GPOUT,50)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_read = bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_write(GPOUT,51)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_write = bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata(GPOUT,52)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata = bb_kernel_3mm_B9_stall_region_out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata;

    // out_valid_in_0(GPOUT,53)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,54)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,55)
    assign out_valid_out_0 = kernel_3mm_B9_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,57)
    assign out_pipeline_valid_out = bb_kernel_3mm_B9_stall_region_out_pipeline_valid_out;

endmodule
