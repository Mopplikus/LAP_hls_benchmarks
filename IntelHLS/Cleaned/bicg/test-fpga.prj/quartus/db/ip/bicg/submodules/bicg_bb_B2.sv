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

// SystemVerilog created from bb_bicg_B2
// Created for function/kernel bicg
// SystemVerilog created on Tue Jun 13 12:13:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_bb_B2 (
    input wire [0:0] in_feedback_in_10,
    input wire [0:0] in_feedback_in_11,
    input wire [0:0] in_feedback_in_12,
    output wire [0:0] out_feedback_stall_out_10,
    output wire [0:0] out_feedback_stall_out_11,
    output wire [0:0] out_feedback_stall_out_12,
    input wire [0:0] in_feedback_valid_in_10,
    input wire [0:0] in_feedback_valid_in_11,
    input wire [0:0] in_feedback_valid_in_12,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked29_0,
    input wire [0:0] in_forked29_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_bicg8_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe155,
    output wire [0:0] out_c0_exe2,
    output wire [63:0] out_c1_exe1,
    output wire [31:0] out_c1_exe2,
    output wire [63:0] out_c1_exe3,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi5_pop11,
    output wire [0:0] out_memdep_phi7_pop12,
    output wire [0:0] out_memdep_phi_pop10,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_bicg8,
    output wire [31:0] out_unnamed_bicg8_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg8_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg8_bicg_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_bicg_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_stall_out;
    wire [0:0] bb_bicg_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_valid_out;
    wire [0:0] bb_bicg_B2_stall_region_out_c0_exe155;
    wire [0:0] bb_bicg_B2_stall_region_out_c0_exe2;
    wire [63:0] bb_bicg_B2_stall_region_out_c1_exe1;
    wire [31:0] bb_bicg_B2_stall_region_out_c1_exe2;
    wire [63:0] bb_bicg_B2_stall_region_out_c1_exe3;
    wire [0:0] bb_bicg_B2_stall_region_out_feedback_stall_out_10;
    wire [0:0] bb_bicg_B2_stall_region_out_feedback_stall_out_11;
    wire [0:0] bb_bicg_B2_stall_region_out_feedback_stall_out_12;
    wire [0:0] bb_bicg_B2_stall_region_out_memdep_phi5_pop11;
    wire [0:0] bb_bicg_B2_stall_region_out_memdep_phi7_pop12;
    wire [0:0] bb_bicg_B2_stall_region_out_memdep_phi_pop10;
    wire [0:0] bb_bicg_B2_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_bicg_B2_stall_region_out_stall_out;
    wire [31:0] bb_bicg_B2_stall_region_out_unnamed_bicg8;
    wire [31:0] bb_bicg_B2_stall_region_out_unnamed_bicg8_bicg_avm_address;
    wire [0:0] bb_bicg_B2_stall_region_out_unnamed_bicg8_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B2_stall_region_out_unnamed_bicg8_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B2_stall_region_out_unnamed_bicg8_bicg_avm_enable;
    wire [0:0] bb_bicg_B2_stall_region_out_unnamed_bicg8_bicg_avm_read;
    wire [0:0] bb_bicg_B2_stall_region_out_unnamed_bicg8_bicg_avm_write;
    wire [31:0] bb_bicg_B2_stall_region_out_unnamed_bicg8_bicg_avm_writedata;
    wire [0:0] bb_bicg_B2_stall_region_out_valid_out;
    wire [0:0] bicg_B2_branch_out_c0_exe155;
    wire [0:0] bicg_B2_branch_out_c0_exe2;
    wire [63:0] bicg_B2_branch_out_c1_exe1;
    wire [31:0] bicg_B2_branch_out_c1_exe2;
    wire [63:0] bicg_B2_branch_out_c1_exe3;
    wire [0:0] bicg_B2_branch_out_memdep_phi5_pop11;
    wire [0:0] bicg_B2_branch_out_memdep_phi7_pop12;
    wire [0:0] bicg_B2_branch_out_memdep_phi_pop10;
    wire [0:0] bicg_B2_branch_out_stall_out;
    wire [31:0] bicg_B2_branch_out_unnamed_bicg8;
    wire [0:0] bicg_B2_branch_out_valid_out_0;
    wire [0:0] bicg_B2_merge_out_forked29;
    wire [0:0] bicg_B2_merge_out_stall_out_0;
    wire [0:0] bicg_B2_merge_out_stall_out_1;
    wire [0:0] bicg_B2_merge_out_valid_out;


    // bicg_B2_branch(BLACKBOX,3)
    bicg_B2_branch thebicg_B2_branch (
        .in_c0_exe155(bb_bicg_B2_stall_region_out_c0_exe155),
        .in_c0_exe2(bb_bicg_B2_stall_region_out_c0_exe2),
        .in_c1_exe1(bb_bicg_B2_stall_region_out_c1_exe1),
        .in_c1_exe2(bb_bicg_B2_stall_region_out_c1_exe2),
        .in_c1_exe3(bb_bicg_B2_stall_region_out_c1_exe3),
        .in_memdep_phi5_pop11(bb_bicg_B2_stall_region_out_memdep_phi5_pop11),
        .in_memdep_phi7_pop12(bb_bicg_B2_stall_region_out_memdep_phi7_pop12),
        .in_memdep_phi_pop10(bb_bicg_B2_stall_region_out_memdep_phi_pop10),
        .in_stall_in_0(in_stall_in_0),
        .in_unnamed_bicg8(bb_bicg_B2_stall_region_out_unnamed_bicg8),
        .in_valid_in(bb_bicg_B2_stall_region_out_valid_out),
        .out_c0_exe155(bicg_B2_branch_out_c0_exe155),
        .out_c0_exe2(bicg_B2_branch_out_c0_exe2),
        .out_c1_exe1(bicg_B2_branch_out_c1_exe1),
        .out_c1_exe2(bicg_B2_branch_out_c1_exe2),
        .out_c1_exe3(bicg_B2_branch_out_c1_exe3),
        .out_memdep_phi5_pop11(bicg_B2_branch_out_memdep_phi5_pop11),
        .out_memdep_phi7_pop12(bicg_B2_branch_out_memdep_phi7_pop12),
        .out_memdep_phi_pop10(bicg_B2_branch_out_memdep_phi_pop10),
        .out_stall_out(bicg_B2_branch_out_stall_out),
        .out_unnamed_bicg8(bicg_B2_branch_out_unnamed_bicg8),
        .out_valid_out_0(bicg_B2_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bicg_B2_merge(BLACKBOX,4)
    bicg_B2_merge thebicg_B2_merge (
        .in_forked29_0(in_forked29_0),
        .in_forked29_1(in_forked29_1),
        .in_stall_in(bb_bicg_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked29(bicg_B2_merge_out_forked29),
        .out_stall_out_0(bicg_B2_merge_out_stall_out_0),
        .out_stall_out_1(bicg_B2_merge_out_stall_out_1),
        .out_valid_out(bicg_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B2_stall_region(BLACKBOX,2)
    bicg_bb_B2_stall_region thebb_bicg_B2_stall_region (
        .in_feedback_in_10(in_feedback_in_10),
        .in_feedback_in_11(in_feedback_in_11),
        .in_feedback_in_12(in_feedback_in_12),
        .in_feedback_valid_in_10(in_feedback_valid_in_10),
        .in_feedback_valid_in_11(in_feedback_valid_in_11),
        .in_feedback_valid_in_12(in_feedback_valid_in_12),
        .in_flush(in_flush),
        .in_forked29(bicg_B2_merge_out_forked29),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(bicg_B2_branch_out_stall_out),
        .in_unnamed_bicg8_bicg_avm_readdata(in_unnamed_bicg8_bicg_avm_readdata),
        .in_unnamed_bicg8_bicg_avm_readdatavalid(in_unnamed_bicg8_bicg_avm_readdatavalid),
        .in_unnamed_bicg8_bicg_avm_waitrequest(in_unnamed_bicg8_bicg_avm_waitrequest),
        .in_unnamed_bicg8_bicg_avm_writeack(in_unnamed_bicg8_bicg_avm_writeack),
        .in_valid_in(bicg_B2_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_stall_out(bb_bicg_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_valid_out(bb_bicg_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_valid_out),
        .out_c0_exe155(bb_bicg_B2_stall_region_out_c0_exe155),
        .out_c0_exe2(bb_bicg_B2_stall_region_out_c0_exe2),
        .out_c1_exe1(bb_bicg_B2_stall_region_out_c1_exe1),
        .out_c1_exe2(bb_bicg_B2_stall_region_out_c1_exe2),
        .out_c1_exe3(bb_bicg_B2_stall_region_out_c1_exe3),
        .out_feedback_stall_out_10(bb_bicg_B2_stall_region_out_feedback_stall_out_10),
        .out_feedback_stall_out_11(bb_bicg_B2_stall_region_out_feedback_stall_out_11),
        .out_feedback_stall_out_12(bb_bicg_B2_stall_region_out_feedback_stall_out_12),
        .out_memdep_phi5_pop11(bb_bicg_B2_stall_region_out_memdep_phi5_pop11),
        .out_memdep_phi7_pop12(bb_bicg_B2_stall_region_out_memdep_phi7_pop12),
        .out_memdep_phi_pop10(bb_bicg_B2_stall_region_out_memdep_phi_pop10),
        .out_pipeline_valid_out(bb_bicg_B2_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_bicg_B2_stall_region_out_stall_out),
        .out_unnamed_bicg8(bb_bicg_B2_stall_region_out_unnamed_bicg8),
        .out_unnamed_bicg8_bicg_avm_address(bb_bicg_B2_stall_region_out_unnamed_bicg8_bicg_avm_address),
        .out_unnamed_bicg8_bicg_avm_burstcount(bb_bicg_B2_stall_region_out_unnamed_bicg8_bicg_avm_burstcount),
        .out_unnamed_bicg8_bicg_avm_byteenable(bb_bicg_B2_stall_region_out_unnamed_bicg8_bicg_avm_byteenable),
        .out_unnamed_bicg8_bicg_avm_enable(bb_bicg_B2_stall_region_out_unnamed_bicg8_bicg_avm_enable),
        .out_unnamed_bicg8_bicg_avm_read(bb_bicg_B2_stall_region_out_unnamed_bicg8_bicg_avm_read),
        .out_unnamed_bicg8_bicg_avm_write(bb_bicg_B2_stall_region_out_unnamed_bicg8_bicg_avm_write),
        .out_unnamed_bicg8_bicg_avm_writedata(bb_bicg_B2_stall_region_out_unnamed_bicg8_bicg_avm_writedata),
        .out_valid_out(bb_bicg_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_10_sync(GPOUT,8)
    assign out_feedback_stall_out_10 = bb_bicg_B2_stall_region_out_feedback_stall_out_10;

    // feedback_stall_out_11_sync(GPOUT,9)
    assign out_feedback_stall_out_11 = bb_bicg_B2_stall_region_out_feedback_stall_out_11;

    // feedback_stall_out_12_sync(GPOUT,10)
    assign out_feedback_stall_out_12 = bb_bicg_B2_stall_region_out_feedback_stall_out_12;

    // out_c0_exe155(GPOUT,26)
    assign out_c0_exe155 = bicg_B2_branch_out_c0_exe155;

    // out_c0_exe2(GPOUT,27)
    assign out_c0_exe2 = bicg_B2_branch_out_c0_exe2;

    // out_c1_exe1(GPOUT,28)
    assign out_c1_exe1 = bicg_B2_branch_out_c1_exe1;

    // out_c1_exe2(GPOUT,29)
    assign out_c1_exe2 = bicg_B2_branch_out_c1_exe2;

    // out_c1_exe3(GPOUT,30)
    assign out_c1_exe3 = bicg_B2_branch_out_c1_exe3;

    // out_exiting_stall_out(GPOUT,31)
    assign out_exiting_stall_out = bb_bicg_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,32)
    assign out_exiting_valid_out = bb_bicg_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_valid_out;

    // out_memdep_phi5_pop11(GPOUT,33)
    assign out_memdep_phi5_pop11 = bicg_B2_branch_out_memdep_phi5_pop11;

    // out_memdep_phi7_pop12(GPOUT,34)
    assign out_memdep_phi7_pop12 = bicg_B2_branch_out_memdep_phi7_pop12;

    // out_memdep_phi_pop10(GPOUT,35)
    assign out_memdep_phi_pop10 = bicg_B2_branch_out_memdep_phi_pop10;

    // out_stall_out_0(GPOUT,36)
    assign out_stall_out_0 = bicg_B2_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,37)
    assign out_stall_out_1 = bicg_B2_merge_out_stall_out_1;

    // out_unnamed_bicg8(GPOUT,38)
    assign out_unnamed_bicg8 = bicg_B2_branch_out_unnamed_bicg8;

    // out_unnamed_bicg8_bicg_avm_address(GPOUT,39)
    assign out_unnamed_bicg8_bicg_avm_address = bb_bicg_B2_stall_region_out_unnamed_bicg8_bicg_avm_address;

    // out_unnamed_bicg8_bicg_avm_burstcount(GPOUT,40)
    assign out_unnamed_bicg8_bicg_avm_burstcount = bb_bicg_B2_stall_region_out_unnamed_bicg8_bicg_avm_burstcount;

    // out_unnamed_bicg8_bicg_avm_byteenable(GPOUT,41)
    assign out_unnamed_bicg8_bicg_avm_byteenable = bb_bicg_B2_stall_region_out_unnamed_bicg8_bicg_avm_byteenable;

    // out_unnamed_bicg8_bicg_avm_enable(GPOUT,42)
    assign out_unnamed_bicg8_bicg_avm_enable = bb_bicg_B2_stall_region_out_unnamed_bicg8_bicg_avm_enable;

    // out_unnamed_bicg8_bicg_avm_read(GPOUT,43)
    assign out_unnamed_bicg8_bicg_avm_read = bb_bicg_B2_stall_region_out_unnamed_bicg8_bicg_avm_read;

    // out_unnamed_bicg8_bicg_avm_write(GPOUT,44)
    assign out_unnamed_bicg8_bicg_avm_write = bb_bicg_B2_stall_region_out_unnamed_bicg8_bicg_avm_write;

    // out_unnamed_bicg8_bicg_avm_writedata(GPOUT,45)
    assign out_unnamed_bicg8_bicg_avm_writedata = bb_bicg_B2_stall_region_out_unnamed_bicg8_bicg_avm_writedata;

    // out_valid_in_0(GPOUT,46)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,47)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,48)
    assign out_valid_out_0 = bicg_B2_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,50)
    assign out_pipeline_valid_out = bb_bicg_B2_stall_region_out_pipeline_valid_out;

endmodule
