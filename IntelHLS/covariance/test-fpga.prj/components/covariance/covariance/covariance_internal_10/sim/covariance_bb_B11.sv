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

// SystemVerilog created from bb_covariance_B11
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:05 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B11 (
    input wire [0:0] in_exitcond16148_pop53195_0,
    input wire [0:0] in_exitcond16148_pop53195_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked70_0,
    input wire [0:0] in_forked70_1,
    input wire [63:0] in_idxprom36190_0,
    input wire [63:0] in_idxprom36190_1,
    input wire [31:0] in_lim_ext133_pop44173_0,
    input wire [31:0] in_lim_ext133_pop44173_1,
    input wire [31:0] in_lim_ext135_pop52193_0,
    input wire [31:0] in_lim_ext135_pop52193_1,
    input wire [31:0] in_memdep_2_covariance_avm_readdata,
    input wire [0:0] in_memdep_2_covariance_avm_readdatavalid,
    input wire [0:0] in_memdep_2_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_2_covariance_avm_writeack,
    input wire [31:0] in_mul189_0,
    input wire [31:0] in_mul189_1,
    input wire [0:0] in_notcmp101150_pop54197_0,
    input wire [0:0] in_notcmp101150_pop54197_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_covariance7_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance7_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance7_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance7_covariance_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe2339,
    output wire [31:0] out_c0_exe4341,
    output wire [0:0] out_c0_exe5342,
    output wire [0:0] out_c0_exe6343,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_memdep_2_covariance_avm_address,
    output wire [0:0] out_memdep_2_covariance_avm_burstcount,
    output wire [3:0] out_memdep_2_covariance_avm_byteenable,
    output wire [0:0] out_memdep_2_covariance_avm_enable,
    output wire [0:0] out_memdep_2_covariance_avm_read,
    output wire [0:0] out_memdep_2_covariance_avm_write,
    output wire [31:0] out_memdep_2_covariance_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_covariance7_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance7_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance7_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance7_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance7_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance7_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance7_covariance_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_covariance_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_covariance6_exiting_stall_out;
    wire [0:0] bb_covariance_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_covariance6_exiting_valid_out;
    wire [0:0] bb_covariance_B11_stall_region_out_c0_exe2339;
    wire [0:0] bb_covariance_B11_stall_region_out_c0_exe3340;
    wire [31:0] bb_covariance_B11_stall_region_out_c0_exe4341;
    wire [0:0] bb_covariance_B11_stall_region_out_c0_exe5342;
    wire [0:0] bb_covariance_B11_stall_region_out_c0_exe6343;
    wire [31:0] bb_covariance_B11_stall_region_out_memdep_2_covariance_avm_address;
    wire [0:0] bb_covariance_B11_stall_region_out_memdep_2_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B11_stall_region_out_memdep_2_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B11_stall_region_out_memdep_2_covariance_avm_enable;
    wire [0:0] bb_covariance_B11_stall_region_out_memdep_2_covariance_avm_read;
    wire [0:0] bb_covariance_B11_stall_region_out_memdep_2_covariance_avm_write;
    wire [31:0] bb_covariance_B11_stall_region_out_memdep_2_covariance_avm_writedata;
    wire [0:0] bb_covariance_B11_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B11_stall_region_out_stall_out;
    wire [31:0] bb_covariance_B11_stall_region_out_unnamed_covariance7_covariance_avm_address;
    wire [0:0] bb_covariance_B11_stall_region_out_unnamed_covariance7_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B11_stall_region_out_unnamed_covariance7_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B11_stall_region_out_unnamed_covariance7_covariance_avm_enable;
    wire [0:0] bb_covariance_B11_stall_region_out_unnamed_covariance7_covariance_avm_read;
    wire [0:0] bb_covariance_B11_stall_region_out_unnamed_covariance7_covariance_avm_write;
    wire [31:0] bb_covariance_B11_stall_region_out_unnamed_covariance7_covariance_avm_writedata;
    wire [0:0] bb_covariance_B11_stall_region_out_valid_out;
    wire [0:0] covariance_B11_branch_out_c0_exe2339;
    wire [31:0] covariance_B11_branch_out_c0_exe4341;
    wire [0:0] covariance_B11_branch_out_c0_exe5342;
    wire [0:0] covariance_B11_branch_out_c0_exe6343;
    wire [0:0] covariance_B11_branch_out_stall_out;
    wire [0:0] covariance_B11_branch_out_valid_out_0;
    wire [0:0] covariance_B11_branch_out_valid_out_1;
    wire [0:0] covariance_B11_merge_out_exitcond16148_pop53195;
    wire [0:0] covariance_B11_merge_out_forked70;
    wire [63:0] covariance_B11_merge_out_idxprom36190;
    wire [31:0] covariance_B11_merge_out_lim_ext133_pop44173;
    wire [31:0] covariance_B11_merge_out_lim_ext135_pop52193;
    wire [31:0] covariance_B11_merge_out_mul189;
    wire [0:0] covariance_B11_merge_out_notcmp101150_pop54197;
    wire [0:0] covariance_B11_merge_out_stall_out_0;
    wire [0:0] covariance_B11_merge_out_stall_out_1;
    wire [0:0] covariance_B11_merge_out_valid_out;


    // covariance_B11_merge(BLACKBOX,4)
    covariance_B11_merge thecovariance_B11_merge (
        .in_exitcond16148_pop53195_0(in_exitcond16148_pop53195_0),
        .in_exitcond16148_pop53195_1(in_exitcond16148_pop53195_1),
        .in_forked70_0(in_forked70_0),
        .in_forked70_1(in_forked70_1),
        .in_idxprom36190_0(in_idxprom36190_0),
        .in_idxprom36190_1(in_idxprom36190_1),
        .in_lim_ext133_pop44173_0(in_lim_ext133_pop44173_0),
        .in_lim_ext133_pop44173_1(in_lim_ext133_pop44173_1),
        .in_lim_ext135_pop52193_0(in_lim_ext135_pop52193_0),
        .in_lim_ext135_pop52193_1(in_lim_ext135_pop52193_1),
        .in_mul189_0(in_mul189_0),
        .in_mul189_1(in_mul189_1),
        .in_notcmp101150_pop54197_0(in_notcmp101150_pop54197_0),
        .in_notcmp101150_pop54197_1(in_notcmp101150_pop54197_1),
        .in_stall_in(bb_covariance_B11_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond16148_pop53195(covariance_B11_merge_out_exitcond16148_pop53195),
        .out_forked70(covariance_B11_merge_out_forked70),
        .out_idxprom36190(covariance_B11_merge_out_idxprom36190),
        .out_lim_ext133_pop44173(covariance_B11_merge_out_lim_ext133_pop44173),
        .out_lim_ext135_pop52193(covariance_B11_merge_out_lim_ext135_pop52193),
        .out_mul189(covariance_B11_merge_out_mul189),
        .out_notcmp101150_pop54197(covariance_B11_merge_out_notcmp101150_pop54197),
        .out_stall_out_0(covariance_B11_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B11_merge_out_stall_out_1),
        .out_valid_out(covariance_B11_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B11_stall_region(BLACKBOX,2)
    covariance_bb_B11_stall_region thebb_covariance_B11_stall_region (
        .in_exitcond16148_pop53195(covariance_B11_merge_out_exitcond16148_pop53195),
        .in_flush(in_flush),
        .in_forked70(covariance_B11_merge_out_forked70),
        .in_idxprom36190(covariance_B11_merge_out_idxprom36190),
        .in_lim_ext133_pop44173(covariance_B11_merge_out_lim_ext133_pop44173),
        .in_lim_ext135_pop52193(covariance_B11_merge_out_lim_ext135_pop52193),
        .in_memdep_2_covariance_avm_readdata(in_memdep_2_covariance_avm_readdata),
        .in_memdep_2_covariance_avm_readdatavalid(in_memdep_2_covariance_avm_readdatavalid),
        .in_memdep_2_covariance_avm_waitrequest(in_memdep_2_covariance_avm_waitrequest),
        .in_memdep_2_covariance_avm_writeack(in_memdep_2_covariance_avm_writeack),
        .in_mul189(covariance_B11_merge_out_mul189),
        .in_notcmp101150_pop54197(covariance_B11_merge_out_notcmp101150_pop54197),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(covariance_B11_branch_out_stall_out),
        .in_unnamed_covariance7_covariance_avm_readdata(in_unnamed_covariance7_covariance_avm_readdata),
        .in_unnamed_covariance7_covariance_avm_readdatavalid(in_unnamed_covariance7_covariance_avm_readdatavalid),
        .in_unnamed_covariance7_covariance_avm_waitrequest(in_unnamed_covariance7_covariance_avm_waitrequest),
        .in_unnamed_covariance7_covariance_avm_writeack(in_unnamed_covariance7_covariance_avm_writeack),
        .in_valid_in(covariance_B11_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_covariance6_exiting_stall_out(bb_covariance_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_covariance6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_covariance6_exiting_valid_out(bb_covariance_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_covariance6_exiting_valid_out),
        .out_c0_exe2339(bb_covariance_B11_stall_region_out_c0_exe2339),
        .out_c0_exe3340(bb_covariance_B11_stall_region_out_c0_exe3340),
        .out_c0_exe4341(bb_covariance_B11_stall_region_out_c0_exe4341),
        .out_c0_exe5342(bb_covariance_B11_stall_region_out_c0_exe5342),
        .out_c0_exe6343(bb_covariance_B11_stall_region_out_c0_exe6343),
        .out_memdep_2_covariance_avm_address(bb_covariance_B11_stall_region_out_memdep_2_covariance_avm_address),
        .out_memdep_2_covariance_avm_burstcount(bb_covariance_B11_stall_region_out_memdep_2_covariance_avm_burstcount),
        .out_memdep_2_covariance_avm_byteenable(bb_covariance_B11_stall_region_out_memdep_2_covariance_avm_byteenable),
        .out_memdep_2_covariance_avm_enable(bb_covariance_B11_stall_region_out_memdep_2_covariance_avm_enable),
        .out_memdep_2_covariance_avm_read(bb_covariance_B11_stall_region_out_memdep_2_covariance_avm_read),
        .out_memdep_2_covariance_avm_write(bb_covariance_B11_stall_region_out_memdep_2_covariance_avm_write),
        .out_memdep_2_covariance_avm_writedata(bb_covariance_B11_stall_region_out_memdep_2_covariance_avm_writedata),
        .out_pipeline_valid_out(bb_covariance_B11_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_covariance_B11_stall_region_out_stall_out),
        .out_unnamed_covariance7_covariance_avm_address(bb_covariance_B11_stall_region_out_unnamed_covariance7_covariance_avm_address),
        .out_unnamed_covariance7_covariance_avm_burstcount(bb_covariance_B11_stall_region_out_unnamed_covariance7_covariance_avm_burstcount),
        .out_unnamed_covariance7_covariance_avm_byteenable(bb_covariance_B11_stall_region_out_unnamed_covariance7_covariance_avm_byteenable),
        .out_unnamed_covariance7_covariance_avm_enable(bb_covariance_B11_stall_region_out_unnamed_covariance7_covariance_avm_enable),
        .out_unnamed_covariance7_covariance_avm_read(bb_covariance_B11_stall_region_out_unnamed_covariance7_covariance_avm_read),
        .out_unnamed_covariance7_covariance_avm_write(bb_covariance_B11_stall_region_out_unnamed_covariance7_covariance_avm_write),
        .out_unnamed_covariance7_covariance_avm_writedata(bb_covariance_B11_stall_region_out_unnamed_covariance7_covariance_avm_writedata),
        .out_valid_out(bb_covariance_B11_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B11_branch(BLACKBOX,3)
    covariance_B11_branch thecovariance_B11_branch (
        .in_c0_exe2339(bb_covariance_B11_stall_region_out_c0_exe2339),
        .in_c0_exe3340(bb_covariance_B11_stall_region_out_c0_exe3340),
        .in_c0_exe4341(bb_covariance_B11_stall_region_out_c0_exe4341),
        .in_c0_exe5342(bb_covariance_B11_stall_region_out_c0_exe5342),
        .in_c0_exe6343(bb_covariance_B11_stall_region_out_c0_exe6343),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_covariance_B11_stall_region_out_valid_out),
        .out_c0_exe2339(covariance_B11_branch_out_c0_exe2339),
        .out_c0_exe4341(covariance_B11_branch_out_c0_exe4341),
        .out_c0_exe5342(covariance_B11_branch_out_c0_exe5342),
        .out_c0_exe6343(covariance_B11_branch_out_c0_exe6343),
        .out_stall_out(covariance_B11_branch_out_stall_out),
        .out_valid_out_0(covariance_B11_branch_out_valid_out_0),
        .out_valid_out_1(covariance_B11_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2339(GPOUT,32)
    assign out_c0_exe2339 = covariance_B11_branch_out_c0_exe2339;

    // out_c0_exe4341(GPOUT,33)
    assign out_c0_exe4341 = covariance_B11_branch_out_c0_exe4341;

    // out_c0_exe5342(GPOUT,34)
    assign out_c0_exe5342 = covariance_B11_branch_out_c0_exe5342;

    // out_c0_exe6343(GPOUT,35)
    assign out_c0_exe6343 = covariance_B11_branch_out_c0_exe6343;

    // out_exiting_stall_out(GPOUT,36)
    assign out_exiting_stall_out = bb_covariance_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_covariance6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,37)
    assign out_exiting_valid_out = bb_covariance_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going73_covariance6_exiting_valid_out;

    // out_memdep_2_covariance_avm_address(GPOUT,38)
    assign out_memdep_2_covariance_avm_address = bb_covariance_B11_stall_region_out_memdep_2_covariance_avm_address;

    // out_memdep_2_covariance_avm_burstcount(GPOUT,39)
    assign out_memdep_2_covariance_avm_burstcount = bb_covariance_B11_stall_region_out_memdep_2_covariance_avm_burstcount;

    // out_memdep_2_covariance_avm_byteenable(GPOUT,40)
    assign out_memdep_2_covariance_avm_byteenable = bb_covariance_B11_stall_region_out_memdep_2_covariance_avm_byteenable;

    // out_memdep_2_covariance_avm_enable(GPOUT,41)
    assign out_memdep_2_covariance_avm_enable = bb_covariance_B11_stall_region_out_memdep_2_covariance_avm_enable;

    // out_memdep_2_covariance_avm_read(GPOUT,42)
    assign out_memdep_2_covariance_avm_read = bb_covariance_B11_stall_region_out_memdep_2_covariance_avm_read;

    // out_memdep_2_covariance_avm_write(GPOUT,43)
    assign out_memdep_2_covariance_avm_write = bb_covariance_B11_stall_region_out_memdep_2_covariance_avm_write;

    // out_memdep_2_covariance_avm_writedata(GPOUT,44)
    assign out_memdep_2_covariance_avm_writedata = bb_covariance_B11_stall_region_out_memdep_2_covariance_avm_writedata;

    // out_stall_in_0(GPOUT,45)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,46)
    assign out_stall_out_0 = covariance_B11_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,47)
    assign out_stall_out_1 = covariance_B11_merge_out_stall_out_1;

    // out_unnamed_covariance7_covariance_avm_address(GPOUT,48)
    assign out_unnamed_covariance7_covariance_avm_address = bb_covariance_B11_stall_region_out_unnamed_covariance7_covariance_avm_address;

    // out_unnamed_covariance7_covariance_avm_burstcount(GPOUT,49)
    assign out_unnamed_covariance7_covariance_avm_burstcount = bb_covariance_B11_stall_region_out_unnamed_covariance7_covariance_avm_burstcount;

    // out_unnamed_covariance7_covariance_avm_byteenable(GPOUT,50)
    assign out_unnamed_covariance7_covariance_avm_byteenable = bb_covariance_B11_stall_region_out_unnamed_covariance7_covariance_avm_byteenable;

    // out_unnamed_covariance7_covariance_avm_enable(GPOUT,51)
    assign out_unnamed_covariance7_covariance_avm_enable = bb_covariance_B11_stall_region_out_unnamed_covariance7_covariance_avm_enable;

    // out_unnamed_covariance7_covariance_avm_read(GPOUT,52)
    assign out_unnamed_covariance7_covariance_avm_read = bb_covariance_B11_stall_region_out_unnamed_covariance7_covariance_avm_read;

    // out_unnamed_covariance7_covariance_avm_write(GPOUT,53)
    assign out_unnamed_covariance7_covariance_avm_write = bb_covariance_B11_stall_region_out_unnamed_covariance7_covariance_avm_write;

    // out_unnamed_covariance7_covariance_avm_writedata(GPOUT,54)
    assign out_unnamed_covariance7_covariance_avm_writedata = bb_covariance_B11_stall_region_out_unnamed_covariance7_covariance_avm_writedata;

    // out_valid_in_0(GPOUT,55)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,56)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,57)
    assign out_valid_out_0 = covariance_B11_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,58)
    assign out_valid_out_1 = covariance_B11_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,60)
    assign out_pipeline_valid_out = bb_covariance_B11_stall_region_out_pipeline_valid_out;

endmodule
