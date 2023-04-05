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

// SystemVerilog created from bb_triangular_B5
// Created for function/kernel triangular
// SystemVerilog created on Wed Apr  5 14:46:58 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B5 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked68_0,
    input wire [0:0] in_forked68_1,
    input wire [31:0] in_i_041_pop19114_0,
    input wire [31:0] in_i_041_pop19114_1,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_lim_ext109_0,
    input wire [31:0] in_lim_ext109_1,
    input wire [31:0] in_lim_ext93_pop20115_0,
    input wire [31:0] in_lim_ext93_pop20115_1,
    input wire [31:0] in_memdep_4_triangular_avm_readdata,
    input wire [0:0] in_memdep_4_triangular_avm_readdatavalid,
    input wire [0:0] in_memdep_4_triangular_avm_waitrequest,
    input wire [0:0] in_memdep_4_triangular_avm_writeack,
    input wire [0:0] in_notcmp83113_0,
    input wire [0:0] in_notcmp83113_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [63:0] in_unnamed_triangular9_triangular_avm_readdata,
    input wire [0:0] in_unnamed_triangular9_triangular_avm_readdatavalid,
    input wire [0:0] in_unnamed_triangular9_triangular_avm_waitrequest,
    input wire [0:0] in_unnamed_triangular9_triangular_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_c0_exe3158,
    output wire [31:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_memdep_4_triangular_avm_address,
    output wire [0:0] out_memdep_4_triangular_avm_burstcount,
    output wire [3:0] out_memdep_4_triangular_avm_byteenable,
    output wire [0:0] out_memdep_4_triangular_avm_enable,
    output wire [0:0] out_memdep_4_triangular_avm_read,
    output wire [0:0] out_memdep_4_triangular_avm_write,
    output wire [31:0] out_memdep_4_triangular_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [63:0] out_unnamed_triangular9_triangular_avm_address,
    output wire [0:0] out_unnamed_triangular9_triangular_avm_burstcount,
    output wire [7:0] out_unnamed_triangular9_triangular_avm_byteenable,
    output wire [0:0] out_unnamed_triangular9_triangular_avm_enable,
    output wire [0:0] out_unnamed_triangular9_triangular_avm_read,
    output wire [0:0] out_unnamed_triangular9_triangular_avm_write,
    output wire [63:0] out_unnamed_triangular9_triangular_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_triangular_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_stall_out;
    wire [0:0] bb_triangular_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_valid_out;
    wire [63:0] bb_triangular_B5_stall_region_out_c0_exe3158;
    wire [0:0] bb_triangular_B5_stall_region_out_c0_exe6;
    wire [31:0] bb_triangular_B5_stall_region_out_c0_exe7;
    wire [0:0] bb_triangular_B5_stall_region_out_c0_exe8;
    wire [31:0] bb_triangular_B5_stall_region_out_memdep_4_triangular_avm_address;
    wire [0:0] bb_triangular_B5_stall_region_out_memdep_4_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B5_stall_region_out_memdep_4_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B5_stall_region_out_memdep_4_triangular_avm_enable;
    wire [0:0] bb_triangular_B5_stall_region_out_memdep_4_triangular_avm_read;
    wire [0:0] bb_triangular_B5_stall_region_out_memdep_4_triangular_avm_write;
    wire [31:0] bb_triangular_B5_stall_region_out_memdep_4_triangular_avm_writedata;
    wire [0:0] bb_triangular_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_triangular_B5_stall_region_out_stall_out;
    wire [63:0] bb_triangular_B5_stall_region_out_unnamed_triangular9_triangular_avm_address;
    wire [0:0] bb_triangular_B5_stall_region_out_unnamed_triangular9_triangular_avm_burstcount;
    wire [7:0] bb_triangular_B5_stall_region_out_unnamed_triangular9_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B5_stall_region_out_unnamed_triangular9_triangular_avm_enable;
    wire [0:0] bb_triangular_B5_stall_region_out_unnamed_triangular9_triangular_avm_read;
    wire [0:0] bb_triangular_B5_stall_region_out_unnamed_triangular9_triangular_avm_write;
    wire [63:0] bb_triangular_B5_stall_region_out_unnamed_triangular9_triangular_avm_writedata;
    wire [0:0] bb_triangular_B5_stall_region_out_valid_out;
    wire [63:0] triangular_B5_branch_out_c0_exe3158;
    wire [31:0] triangular_B5_branch_out_c0_exe7;
    wire [0:0] triangular_B5_branch_out_c0_exe8;
    wire [0:0] triangular_B5_branch_out_stall_out;
    wire [0:0] triangular_B5_branch_out_valid_out_0;
    wire [0:0] triangular_B5_branch_out_valid_out_1;
    wire [0:0] triangular_B5_merge_out_forked68;
    wire [31:0] triangular_B5_merge_out_i_041_pop19114;
    wire [31:0] triangular_B5_merge_out_lim_ext109;
    wire [31:0] triangular_B5_merge_out_lim_ext93_pop20115;
    wire [0:0] triangular_B5_merge_out_notcmp83113;
    wire [0:0] triangular_B5_merge_out_stall_out_0;
    wire [0:0] triangular_B5_merge_out_stall_out_1;
    wire [0:0] triangular_B5_merge_out_valid_out;


    // triangular_B5_merge(BLACKBOX,56)
    triangular_B5_merge thetriangular_B5_merge (
        .in_forked68_0(in_forked68_0),
        .in_forked68_1(in_forked68_1),
        .in_i_041_pop19114_0(in_i_041_pop19114_0),
        .in_i_041_pop19114_1(in_i_041_pop19114_1),
        .in_lim_ext109_0(in_lim_ext109_0),
        .in_lim_ext109_1(in_lim_ext109_1),
        .in_lim_ext93_pop20115_0(in_lim_ext93_pop20115_0),
        .in_lim_ext93_pop20115_1(in_lim_ext93_pop20115_1),
        .in_notcmp83113_0(in_notcmp83113_0),
        .in_notcmp83113_1(in_notcmp83113_1),
        .in_stall_in(bb_triangular_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked68(triangular_B5_merge_out_forked68),
        .out_i_041_pop19114(triangular_B5_merge_out_i_041_pop19114),
        .out_lim_ext109(triangular_B5_merge_out_lim_ext109),
        .out_lim_ext93_pop20115(triangular_B5_merge_out_lim_ext93_pop20115),
        .out_notcmp83113(triangular_B5_merge_out_notcmp83113),
        .out_stall_out_0(triangular_B5_merge_out_stall_out_0),
        .out_stall_out_1(triangular_B5_merge_out_stall_out_1),
        .out_valid_out(triangular_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B5_stall_region(BLACKBOX,2)
    triangular_bb_B5_stall_region thebb_triangular_B5_stall_region (
        .in_flush(in_flush),
        .in_forked68(triangular_B5_merge_out_forked68),
        .in_i_041_pop19114(triangular_B5_merge_out_i_041_pop19114),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_lim_ext109(triangular_B5_merge_out_lim_ext109),
        .in_lim_ext93_pop20115(triangular_B5_merge_out_lim_ext93_pop20115),
        .in_memdep_4_triangular_avm_readdata(in_memdep_4_triangular_avm_readdata),
        .in_memdep_4_triangular_avm_readdatavalid(in_memdep_4_triangular_avm_readdatavalid),
        .in_memdep_4_triangular_avm_waitrequest(in_memdep_4_triangular_avm_waitrequest),
        .in_memdep_4_triangular_avm_writeack(in_memdep_4_triangular_avm_writeack),
        .in_notcmp83113(triangular_B5_merge_out_notcmp83113),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(triangular_B5_branch_out_stall_out),
        .in_unnamed_triangular9_triangular_avm_readdata(in_unnamed_triangular9_triangular_avm_readdata),
        .in_unnamed_triangular9_triangular_avm_readdatavalid(in_unnamed_triangular9_triangular_avm_readdatavalid),
        .in_unnamed_triangular9_triangular_avm_waitrequest(in_unnamed_triangular9_triangular_avm_waitrequest),
        .in_unnamed_triangular9_triangular_avm_writeack(in_unnamed_triangular9_triangular_avm_writeack),
        .in_valid_in(triangular_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_stall_out(bb_triangular_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_valid_out(bb_triangular_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_valid_out),
        .out_c0_exe3158(bb_triangular_B5_stall_region_out_c0_exe3158),
        .out_c0_exe6(bb_triangular_B5_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_triangular_B5_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_triangular_B5_stall_region_out_c0_exe8),
        .out_memdep_4_triangular_avm_address(bb_triangular_B5_stall_region_out_memdep_4_triangular_avm_address),
        .out_memdep_4_triangular_avm_burstcount(bb_triangular_B5_stall_region_out_memdep_4_triangular_avm_burstcount),
        .out_memdep_4_triangular_avm_byteenable(bb_triangular_B5_stall_region_out_memdep_4_triangular_avm_byteenable),
        .out_memdep_4_triangular_avm_enable(bb_triangular_B5_stall_region_out_memdep_4_triangular_avm_enable),
        .out_memdep_4_triangular_avm_read(bb_triangular_B5_stall_region_out_memdep_4_triangular_avm_read),
        .out_memdep_4_triangular_avm_write(bb_triangular_B5_stall_region_out_memdep_4_triangular_avm_write),
        .out_memdep_4_triangular_avm_writedata(bb_triangular_B5_stall_region_out_memdep_4_triangular_avm_writedata),
        .out_pipeline_valid_out(bb_triangular_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_triangular_B5_stall_region_out_stall_out),
        .out_unnamed_triangular9_triangular_avm_address(bb_triangular_B5_stall_region_out_unnamed_triangular9_triangular_avm_address),
        .out_unnamed_triangular9_triangular_avm_burstcount(bb_triangular_B5_stall_region_out_unnamed_triangular9_triangular_avm_burstcount),
        .out_unnamed_triangular9_triangular_avm_byteenable(bb_triangular_B5_stall_region_out_unnamed_triangular9_triangular_avm_byteenable),
        .out_unnamed_triangular9_triangular_avm_enable(bb_triangular_B5_stall_region_out_unnamed_triangular9_triangular_avm_enable),
        .out_unnamed_triangular9_triangular_avm_read(bb_triangular_B5_stall_region_out_unnamed_triangular9_triangular_avm_read),
        .out_unnamed_triangular9_triangular_avm_write(bb_triangular_B5_stall_region_out_unnamed_triangular9_triangular_avm_write),
        .out_unnamed_triangular9_triangular_avm_writedata(bb_triangular_B5_stall_region_out_unnamed_triangular9_triangular_avm_writedata),
        .out_valid_out(bb_triangular_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // triangular_B5_branch(BLACKBOX,55)
    triangular_B5_branch thetriangular_B5_branch (
        .in_c0_exe3158(bb_triangular_B5_stall_region_out_c0_exe3158),
        .in_c0_exe6(bb_triangular_B5_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_triangular_B5_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_triangular_B5_stall_region_out_c0_exe8),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_triangular_B5_stall_region_out_valid_out),
        .out_c0_exe3158(triangular_B5_branch_out_c0_exe3158),
        .out_c0_exe7(triangular_B5_branch_out_c0_exe7),
        .out_c0_exe8(triangular_B5_branch_out_c0_exe8),
        .out_stall_out(triangular_B5_branch_out_stall_out),
        .out_valid_out_0(triangular_B5_branch_out_valid_out_0),
        .out_valid_out_1(triangular_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe3158(GPOUT,27)
    assign out_c0_exe3158 = triangular_B5_branch_out_c0_exe3158;

    // out_c0_exe7(GPOUT,28)
    assign out_c0_exe7 = triangular_B5_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,29)
    assign out_c0_exe8 = triangular_B5_branch_out_c0_exe8;

    // out_exiting_stall_out(GPOUT,30)
    assign out_exiting_stall_out = bb_triangular_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,31)
    assign out_exiting_valid_out = bb_triangular_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_valid_out;

    // out_memdep_4_triangular_avm_address(GPOUT,32)
    assign out_memdep_4_triangular_avm_address = bb_triangular_B5_stall_region_out_memdep_4_triangular_avm_address;

    // out_memdep_4_triangular_avm_burstcount(GPOUT,33)
    assign out_memdep_4_triangular_avm_burstcount = bb_triangular_B5_stall_region_out_memdep_4_triangular_avm_burstcount;

    // out_memdep_4_triangular_avm_byteenable(GPOUT,34)
    assign out_memdep_4_triangular_avm_byteenable = bb_triangular_B5_stall_region_out_memdep_4_triangular_avm_byteenable;

    // out_memdep_4_triangular_avm_enable(GPOUT,35)
    assign out_memdep_4_triangular_avm_enable = bb_triangular_B5_stall_region_out_memdep_4_triangular_avm_enable;

    // out_memdep_4_triangular_avm_read(GPOUT,36)
    assign out_memdep_4_triangular_avm_read = bb_triangular_B5_stall_region_out_memdep_4_triangular_avm_read;

    // out_memdep_4_triangular_avm_write(GPOUT,37)
    assign out_memdep_4_triangular_avm_write = bb_triangular_B5_stall_region_out_memdep_4_triangular_avm_write;

    // out_memdep_4_triangular_avm_writedata(GPOUT,38)
    assign out_memdep_4_triangular_avm_writedata = bb_triangular_B5_stall_region_out_memdep_4_triangular_avm_writedata;

    // out_stall_in_0(GPOUT,39)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,40)
    assign out_stall_out_0 = triangular_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,41)
    assign out_stall_out_1 = triangular_B5_merge_out_stall_out_1;

    // out_unnamed_triangular9_triangular_avm_address(GPOUT,42)
    assign out_unnamed_triangular9_triangular_avm_address = bb_triangular_B5_stall_region_out_unnamed_triangular9_triangular_avm_address;

    // out_unnamed_triangular9_triangular_avm_burstcount(GPOUT,43)
    assign out_unnamed_triangular9_triangular_avm_burstcount = bb_triangular_B5_stall_region_out_unnamed_triangular9_triangular_avm_burstcount;

    // out_unnamed_triangular9_triangular_avm_byteenable(GPOUT,44)
    assign out_unnamed_triangular9_triangular_avm_byteenable = bb_triangular_B5_stall_region_out_unnamed_triangular9_triangular_avm_byteenable;

    // out_unnamed_triangular9_triangular_avm_enable(GPOUT,45)
    assign out_unnamed_triangular9_triangular_avm_enable = bb_triangular_B5_stall_region_out_unnamed_triangular9_triangular_avm_enable;

    // out_unnamed_triangular9_triangular_avm_read(GPOUT,46)
    assign out_unnamed_triangular9_triangular_avm_read = bb_triangular_B5_stall_region_out_unnamed_triangular9_triangular_avm_read;

    // out_unnamed_triangular9_triangular_avm_write(GPOUT,47)
    assign out_unnamed_triangular9_triangular_avm_write = bb_triangular_B5_stall_region_out_unnamed_triangular9_triangular_avm_write;

    // out_unnamed_triangular9_triangular_avm_writedata(GPOUT,48)
    assign out_unnamed_triangular9_triangular_avm_writedata = bb_triangular_B5_stall_region_out_unnamed_triangular9_triangular_avm_writedata;

    // out_valid_in_0(GPOUT,49)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,50)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,51)
    assign out_valid_out_0 = triangular_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,52)
    assign out_valid_out_1 = triangular_B5_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,54)
    assign out_pipeline_valid_out = bb_triangular_B5_stall_region_out_pipeline_valid_out;

endmodule
