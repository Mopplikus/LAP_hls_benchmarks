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

// SystemVerilog created from bb_bicg_B7
// Created for function/kernel bicg
// SystemVerilog created on Wed Apr  5 16:26:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_bb_B7 (
    input wire [0:0] in_feedback_in_18,
    output wire [0:0] out_feedback_stall_out_18,
    input wire [0:0] in_feedback_valid_in_18,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked73_0,
    input wire [0:0] in_forked73_1,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_bicg13_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg13_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg13_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg13_bicg_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_c0_exe1119,
    output wire [63:0] out_c0_exe2120,
    output wire [31:0] out_c0_exe3121,
    output wire [0:0] out_c0_exe4122,
    output wire [0:0] out_c0_exe5123,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_phi_pop18,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_bicg13_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg13_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg13_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg13_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg13_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg13_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg13_bicg_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_bicg_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_bicg2_exiting_stall_out;
    wire [0:0] bb_bicg_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_bicg2_exiting_valid_out;
    wire [63:0] bb_bicg_B7_stall_region_out_c0_exe1119;
    wire [63:0] bb_bicg_B7_stall_region_out_c0_exe2120;
    wire [31:0] bb_bicg_B7_stall_region_out_c0_exe3121;
    wire [0:0] bb_bicg_B7_stall_region_out_c0_exe4122;
    wire [0:0] bb_bicg_B7_stall_region_out_c0_exe5123;
    wire [0:0] bb_bicg_B7_stall_region_out_feedback_stall_out_18;
    wire [0:0] bb_bicg_B7_stall_region_out_memdep_phi_pop18;
    wire [0:0] bb_bicg_B7_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_bicg_B7_stall_region_out_stall_out;
    wire [31:0] bb_bicg_B7_stall_region_out_unnamed_bicg13_bicg_avm_address;
    wire [0:0] bb_bicg_B7_stall_region_out_unnamed_bicg13_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B7_stall_region_out_unnamed_bicg13_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B7_stall_region_out_unnamed_bicg13_bicg_avm_enable;
    wire [0:0] bb_bicg_B7_stall_region_out_unnamed_bicg13_bicg_avm_read;
    wire [0:0] bb_bicg_B7_stall_region_out_unnamed_bicg13_bicg_avm_write;
    wire [31:0] bb_bicg_B7_stall_region_out_unnamed_bicg13_bicg_avm_writedata;
    wire [0:0] bb_bicg_B7_stall_region_out_valid_out;
    wire [63:0] bicg_B7_branch_out_c0_exe1119;
    wire [63:0] bicg_B7_branch_out_c0_exe2120;
    wire [31:0] bicg_B7_branch_out_c0_exe3121;
    wire [0:0] bicg_B7_branch_out_c0_exe4122;
    wire [0:0] bicg_B7_branch_out_c0_exe5123;
    wire [0:0] bicg_B7_branch_out_memdep_phi_pop18;
    wire [0:0] bicg_B7_branch_out_stall_out;
    wire [0:0] bicg_B7_branch_out_valid_out_0;
    wire [0:0] bicg_B7_merge_out_forked73;
    wire [0:0] bicg_B7_merge_out_stall_out_0;
    wire [0:0] bicg_B7_merge_out_stall_out_1;
    wire [0:0] bicg_B7_merge_out_valid_out;


    // bicg_B7_branch(BLACKBOX,3)
    bicg_B7_branch thebicg_B7_branch (
        .in_c0_exe1119(bb_bicg_B7_stall_region_out_c0_exe1119),
        .in_c0_exe2120(bb_bicg_B7_stall_region_out_c0_exe2120),
        .in_c0_exe3121(bb_bicg_B7_stall_region_out_c0_exe3121),
        .in_c0_exe4122(bb_bicg_B7_stall_region_out_c0_exe4122),
        .in_c0_exe5123(bb_bicg_B7_stall_region_out_c0_exe5123),
        .in_memdep_phi_pop18(bb_bicg_B7_stall_region_out_memdep_phi_pop18),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_bicg_B7_stall_region_out_valid_out),
        .out_c0_exe1119(bicg_B7_branch_out_c0_exe1119),
        .out_c0_exe2120(bicg_B7_branch_out_c0_exe2120),
        .out_c0_exe3121(bicg_B7_branch_out_c0_exe3121),
        .out_c0_exe4122(bicg_B7_branch_out_c0_exe4122),
        .out_c0_exe5123(bicg_B7_branch_out_c0_exe5123),
        .out_memdep_phi_pop18(bicg_B7_branch_out_memdep_phi_pop18),
        .out_stall_out(bicg_B7_branch_out_stall_out),
        .out_valid_out_0(bicg_B7_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bicg_B7_merge(BLACKBOX,4)
    bicg_B7_merge thebicg_B7_merge (
        .in_forked73_0(in_forked73_0),
        .in_forked73_1(in_forked73_1),
        .in_stall_in(bb_bicg_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked73(bicg_B7_merge_out_forked73),
        .out_stall_out_0(bicg_B7_merge_out_stall_out_0),
        .out_stall_out_1(bicg_B7_merge_out_stall_out_1),
        .out_valid_out(bicg_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B7_stall_region(BLACKBOX,2)
    bicg_bb_B7_stall_region thebb_bicg_B7_stall_region (
        .in_feedback_in_18(in_feedback_in_18),
        .in_feedback_valid_in_18(in_feedback_valid_in_18),
        .in_flush(in_flush),
        .in_forked73(bicg_B7_merge_out_forked73),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(bicg_B7_branch_out_stall_out),
        .in_unnamed_bicg13_bicg_avm_readdata(in_unnamed_bicg13_bicg_avm_readdata),
        .in_unnamed_bicg13_bicg_avm_readdatavalid(in_unnamed_bicg13_bicg_avm_readdatavalid),
        .in_unnamed_bicg13_bicg_avm_waitrequest(in_unnamed_bicg13_bicg_avm_waitrequest),
        .in_unnamed_bicg13_bicg_avm_writeack(in_unnamed_bicg13_bicg_avm_writeack),
        .in_valid_in(bicg_B7_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_bicg2_exiting_stall_out(bb_bicg_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_bicg2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_bicg2_exiting_valid_out(bb_bicg_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_bicg2_exiting_valid_out),
        .out_c0_exe1119(bb_bicg_B7_stall_region_out_c0_exe1119),
        .out_c0_exe2120(bb_bicg_B7_stall_region_out_c0_exe2120),
        .out_c0_exe3121(bb_bicg_B7_stall_region_out_c0_exe3121),
        .out_c0_exe4122(bb_bicg_B7_stall_region_out_c0_exe4122),
        .out_c0_exe5123(bb_bicg_B7_stall_region_out_c0_exe5123),
        .out_feedback_stall_out_18(bb_bicg_B7_stall_region_out_feedback_stall_out_18),
        .out_memdep_phi_pop18(bb_bicg_B7_stall_region_out_memdep_phi_pop18),
        .out_pipeline_valid_out(bb_bicg_B7_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_bicg_B7_stall_region_out_stall_out),
        .out_unnamed_bicg13_bicg_avm_address(bb_bicg_B7_stall_region_out_unnamed_bicg13_bicg_avm_address),
        .out_unnamed_bicg13_bicg_avm_burstcount(bb_bicg_B7_stall_region_out_unnamed_bicg13_bicg_avm_burstcount),
        .out_unnamed_bicg13_bicg_avm_byteenable(bb_bicg_B7_stall_region_out_unnamed_bicg13_bicg_avm_byteenable),
        .out_unnamed_bicg13_bicg_avm_enable(bb_bicg_B7_stall_region_out_unnamed_bicg13_bicg_avm_enable),
        .out_unnamed_bicg13_bicg_avm_read(bb_bicg_B7_stall_region_out_unnamed_bicg13_bicg_avm_read),
        .out_unnamed_bicg13_bicg_avm_write(bb_bicg_B7_stall_region_out_unnamed_bicg13_bicg_avm_write),
        .out_unnamed_bicg13_bicg_avm_writedata(bb_bicg_B7_stall_region_out_unnamed_bicg13_bicg_avm_writedata),
        .out_valid_out(bb_bicg_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_18_sync(GPOUT,6)
    assign out_feedback_stall_out_18 = bb_bicg_B7_stall_region_out_feedback_stall_out_18;

    // out_c0_exe1119(GPOUT,18)
    assign out_c0_exe1119 = bicg_B7_branch_out_c0_exe1119;

    // out_c0_exe2120(GPOUT,19)
    assign out_c0_exe2120 = bicg_B7_branch_out_c0_exe2120;

    // out_c0_exe3121(GPOUT,20)
    assign out_c0_exe3121 = bicg_B7_branch_out_c0_exe3121;

    // out_c0_exe4122(GPOUT,21)
    assign out_c0_exe4122 = bicg_B7_branch_out_c0_exe4122;

    // out_c0_exe5123(GPOUT,22)
    assign out_c0_exe5123 = bicg_B7_branch_out_c0_exe5123;

    // out_exiting_stall_out(GPOUT,23)
    assign out_exiting_stall_out = bb_bicg_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_bicg2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,24)
    assign out_exiting_valid_out = bb_bicg_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going44_bicg2_exiting_valid_out;

    // out_memdep_phi_pop18(GPOUT,25)
    assign out_memdep_phi_pop18 = bicg_B7_branch_out_memdep_phi_pop18;

    // out_stall_out_0(GPOUT,26)
    assign out_stall_out_0 = bicg_B7_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,27)
    assign out_stall_out_1 = bicg_B7_merge_out_stall_out_1;

    // out_unnamed_bicg13_bicg_avm_address(GPOUT,28)
    assign out_unnamed_bicg13_bicg_avm_address = bb_bicg_B7_stall_region_out_unnamed_bicg13_bicg_avm_address;

    // out_unnamed_bicg13_bicg_avm_burstcount(GPOUT,29)
    assign out_unnamed_bicg13_bicg_avm_burstcount = bb_bicg_B7_stall_region_out_unnamed_bicg13_bicg_avm_burstcount;

    // out_unnamed_bicg13_bicg_avm_byteenable(GPOUT,30)
    assign out_unnamed_bicg13_bicg_avm_byteenable = bb_bicg_B7_stall_region_out_unnamed_bicg13_bicg_avm_byteenable;

    // out_unnamed_bicg13_bicg_avm_enable(GPOUT,31)
    assign out_unnamed_bicg13_bicg_avm_enable = bb_bicg_B7_stall_region_out_unnamed_bicg13_bicg_avm_enable;

    // out_unnamed_bicg13_bicg_avm_read(GPOUT,32)
    assign out_unnamed_bicg13_bicg_avm_read = bb_bicg_B7_stall_region_out_unnamed_bicg13_bicg_avm_read;

    // out_unnamed_bicg13_bicg_avm_write(GPOUT,33)
    assign out_unnamed_bicg13_bicg_avm_write = bb_bicg_B7_stall_region_out_unnamed_bicg13_bicg_avm_write;

    // out_unnamed_bicg13_bicg_avm_writedata(GPOUT,34)
    assign out_unnamed_bicg13_bicg_avm_writedata = bb_bicg_B7_stall_region_out_unnamed_bicg13_bicg_avm_writedata;

    // out_valid_in_0(GPOUT,35)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,36)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,37)
    assign out_valid_out_0 = bicg_B7_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,39)
    assign out_pipeline_valid_out = bb_bicg_B7_stall_region_out_pipeline_valid_out;

endmodule
