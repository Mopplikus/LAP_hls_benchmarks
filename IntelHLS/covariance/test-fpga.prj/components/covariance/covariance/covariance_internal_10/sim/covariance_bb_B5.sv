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

// SystemVerilog created from bb_covariance_B5
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B5 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked107_0,
    input wire [0:0] in_forked107_1,
    input wire [31:0] in_i_064_pop27169_0,
    input wire [31:0] in_i_064_pop27169_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_lim_ext132_pop28170_0,
    input wire [31:0] in_lim_ext132_pop28170_1,
    input wire [31:0] in_lim_ext167_0,
    input wire [31:0] in_lim_ext167_1,
    input wire [31:0] in_memdep_1_covariance_avm_readdata,
    input wire [0:0] in_memdep_1_covariance_avm_readdatavalid,
    input wire [0:0] in_memdep_1_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_1_covariance_avm_writeack,
    input wire [31:0] in_memdep_covariance_avm_readdata,
    input wire [0:0] in_memdep_covariance_avm_readdatavalid,
    input wire [0:0] in_memdep_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_covariance_avm_writeack,
    input wire [0:0] in_notcmp122168_0,
    input wire [0:0] in_notcmp122168_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [63:0] in_unnamed_covariance4_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_writeack,
    input wire [63:0] in_unnamed_covariance5_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance5_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance5_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance5_covariance_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_memdep_1_covariance_avm_address,
    output wire [0:0] out_memdep_1_covariance_avm_burstcount,
    output wire [3:0] out_memdep_1_covariance_avm_byteenable,
    output wire [0:0] out_memdep_1_covariance_avm_enable,
    output wire [0:0] out_memdep_1_covariance_avm_read,
    output wire [0:0] out_memdep_1_covariance_avm_write,
    output wire [31:0] out_memdep_1_covariance_avm_writedata,
    output wire [31:0] out_memdep_covariance_avm_address,
    output wire [0:0] out_memdep_covariance_avm_burstcount,
    output wire [3:0] out_memdep_covariance_avm_byteenable,
    output wire [0:0] out_memdep_covariance_avm_enable,
    output wire [0:0] out_memdep_covariance_avm_read,
    output wire [0:0] out_memdep_covariance_avm_write,
    output wire [31:0] out_memdep_covariance_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [63:0] out_unnamed_covariance4_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_burstcount,
    output wire [7:0] out_unnamed_covariance4_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_write,
    output wire [63:0] out_unnamed_covariance4_covariance_avm_writedata,
    output wire [63:0] out_unnamed_covariance5_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_burstcount,
    output wire [7:0] out_unnamed_covariance5_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_write,
    output wire [63:0] out_unnamed_covariance5_covariance_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_covariance_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_stall_out;
    wire [0:0] bb_covariance_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_valid_out;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe7;
    wire [31:0] bb_covariance_B5_stall_region_out_c0_exe8;
    wire [0:0] bb_covariance_B5_stall_region_out_c0_exe9;
    wire [31:0] bb_covariance_B5_stall_region_out_memdep_1_covariance_avm_address;
    wire [0:0] bb_covariance_B5_stall_region_out_memdep_1_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B5_stall_region_out_memdep_1_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B5_stall_region_out_memdep_1_covariance_avm_enable;
    wire [0:0] bb_covariance_B5_stall_region_out_memdep_1_covariance_avm_read;
    wire [0:0] bb_covariance_B5_stall_region_out_memdep_1_covariance_avm_write;
    wire [31:0] bb_covariance_B5_stall_region_out_memdep_1_covariance_avm_writedata;
    wire [31:0] bb_covariance_B5_stall_region_out_memdep_covariance_avm_address;
    wire [0:0] bb_covariance_B5_stall_region_out_memdep_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B5_stall_region_out_memdep_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B5_stall_region_out_memdep_covariance_avm_enable;
    wire [0:0] bb_covariance_B5_stall_region_out_memdep_covariance_avm_read;
    wire [0:0] bb_covariance_B5_stall_region_out_memdep_covariance_avm_write;
    wire [31:0] bb_covariance_B5_stall_region_out_memdep_covariance_avm_writedata;
    wire [0:0] bb_covariance_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B5_stall_region_out_stall_out;
    wire [63:0] bb_covariance_B5_stall_region_out_unnamed_covariance4_covariance_avm_address;
    wire [0:0] bb_covariance_B5_stall_region_out_unnamed_covariance4_covariance_avm_burstcount;
    wire [7:0] bb_covariance_B5_stall_region_out_unnamed_covariance4_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B5_stall_region_out_unnamed_covariance4_covariance_avm_enable;
    wire [0:0] bb_covariance_B5_stall_region_out_unnamed_covariance4_covariance_avm_read;
    wire [0:0] bb_covariance_B5_stall_region_out_unnamed_covariance4_covariance_avm_write;
    wire [63:0] bb_covariance_B5_stall_region_out_unnamed_covariance4_covariance_avm_writedata;
    wire [63:0] bb_covariance_B5_stall_region_out_unnamed_covariance5_covariance_avm_address;
    wire [0:0] bb_covariance_B5_stall_region_out_unnamed_covariance5_covariance_avm_burstcount;
    wire [7:0] bb_covariance_B5_stall_region_out_unnamed_covariance5_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B5_stall_region_out_unnamed_covariance5_covariance_avm_enable;
    wire [0:0] bb_covariance_B5_stall_region_out_unnamed_covariance5_covariance_avm_read;
    wire [0:0] bb_covariance_B5_stall_region_out_unnamed_covariance5_covariance_avm_write;
    wire [63:0] bb_covariance_B5_stall_region_out_unnamed_covariance5_covariance_avm_writedata;
    wire [0:0] bb_covariance_B5_stall_region_out_valid_out;
    wire [31:0] covariance_B5_branch_out_c0_exe8;
    wire [0:0] covariance_B5_branch_out_c0_exe9;
    wire [0:0] covariance_B5_branch_out_stall_out;
    wire [0:0] covariance_B5_branch_out_valid_out_0;
    wire [0:0] covariance_B5_branch_out_valid_out_1;
    wire [0:0] covariance_B5_merge_out_forked107;
    wire [31:0] covariance_B5_merge_out_i_064_pop27169;
    wire [31:0] covariance_B5_merge_out_lim_ext132_pop28170;
    wire [31:0] covariance_B5_merge_out_lim_ext167;
    wire [0:0] covariance_B5_merge_out_notcmp122168;
    wire [0:0] covariance_B5_merge_out_stall_out_0;
    wire [0:0] covariance_B5_merge_out_stall_out_1;
    wire [0:0] covariance_B5_merge_out_valid_out;


    // covariance_B5_merge(BLACKBOX,4)
    covariance_B5_merge thecovariance_B5_merge (
        .in_forked107_0(in_forked107_0),
        .in_forked107_1(in_forked107_1),
        .in_i_064_pop27169_0(in_i_064_pop27169_0),
        .in_i_064_pop27169_1(in_i_064_pop27169_1),
        .in_lim_ext132_pop28170_0(in_lim_ext132_pop28170_0),
        .in_lim_ext132_pop28170_1(in_lim_ext132_pop28170_1),
        .in_lim_ext167_0(in_lim_ext167_0),
        .in_lim_ext167_1(in_lim_ext167_1),
        .in_notcmp122168_0(in_notcmp122168_0),
        .in_notcmp122168_1(in_notcmp122168_1),
        .in_stall_in(bb_covariance_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked107(covariance_B5_merge_out_forked107),
        .out_i_064_pop27169(covariance_B5_merge_out_i_064_pop27169),
        .out_lim_ext132_pop28170(covariance_B5_merge_out_lim_ext132_pop28170),
        .out_lim_ext167(covariance_B5_merge_out_lim_ext167),
        .out_notcmp122168(covariance_B5_merge_out_notcmp122168),
        .out_stall_out_0(covariance_B5_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B5_merge_out_stall_out_1),
        .out_valid_out(covariance_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B5_stall_region(BLACKBOX,2)
    covariance_bb_B5_stall_region thebb_covariance_B5_stall_region (
        .in_flush(in_flush),
        .in_forked107(covariance_B5_merge_out_forked107),
        .in_i_064_pop27169(covariance_B5_merge_out_i_064_pop27169),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_lim_ext132_pop28170(covariance_B5_merge_out_lim_ext132_pop28170),
        .in_lim_ext167(covariance_B5_merge_out_lim_ext167),
        .in_memdep_1_covariance_avm_readdata(in_memdep_1_covariance_avm_readdata),
        .in_memdep_1_covariance_avm_readdatavalid(in_memdep_1_covariance_avm_readdatavalid),
        .in_memdep_1_covariance_avm_waitrequest(in_memdep_1_covariance_avm_waitrequest),
        .in_memdep_1_covariance_avm_writeack(in_memdep_1_covariance_avm_writeack),
        .in_memdep_covariance_avm_readdata(in_memdep_covariance_avm_readdata),
        .in_memdep_covariance_avm_readdatavalid(in_memdep_covariance_avm_readdatavalid),
        .in_memdep_covariance_avm_waitrequest(in_memdep_covariance_avm_waitrequest),
        .in_memdep_covariance_avm_writeack(in_memdep_covariance_avm_writeack),
        .in_notcmp122168(covariance_B5_merge_out_notcmp122168),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(covariance_B5_branch_out_stall_out),
        .in_unnamed_covariance4_covariance_avm_readdata(in_unnamed_covariance4_covariance_avm_readdata),
        .in_unnamed_covariance4_covariance_avm_readdatavalid(in_unnamed_covariance4_covariance_avm_readdatavalid),
        .in_unnamed_covariance4_covariance_avm_waitrequest(in_unnamed_covariance4_covariance_avm_waitrequest),
        .in_unnamed_covariance4_covariance_avm_writeack(in_unnamed_covariance4_covariance_avm_writeack),
        .in_unnamed_covariance5_covariance_avm_readdata(in_unnamed_covariance5_covariance_avm_readdata),
        .in_unnamed_covariance5_covariance_avm_readdatavalid(in_unnamed_covariance5_covariance_avm_readdatavalid),
        .in_unnamed_covariance5_covariance_avm_waitrequest(in_unnamed_covariance5_covariance_avm_waitrequest),
        .in_unnamed_covariance5_covariance_avm_writeack(in_unnamed_covariance5_covariance_avm_writeack),
        .in_valid_in(covariance_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_stall_out(bb_covariance_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_valid_out(bb_covariance_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_valid_out),
        .out_c0_exe7(bb_covariance_B5_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_covariance_B5_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_covariance_B5_stall_region_out_c0_exe9),
        .out_memdep_1_covariance_avm_address(bb_covariance_B5_stall_region_out_memdep_1_covariance_avm_address),
        .out_memdep_1_covariance_avm_burstcount(bb_covariance_B5_stall_region_out_memdep_1_covariance_avm_burstcount),
        .out_memdep_1_covariance_avm_byteenable(bb_covariance_B5_stall_region_out_memdep_1_covariance_avm_byteenable),
        .out_memdep_1_covariance_avm_enable(bb_covariance_B5_stall_region_out_memdep_1_covariance_avm_enable),
        .out_memdep_1_covariance_avm_read(bb_covariance_B5_stall_region_out_memdep_1_covariance_avm_read),
        .out_memdep_1_covariance_avm_write(bb_covariance_B5_stall_region_out_memdep_1_covariance_avm_write),
        .out_memdep_1_covariance_avm_writedata(bb_covariance_B5_stall_region_out_memdep_1_covariance_avm_writedata),
        .out_memdep_covariance_avm_address(bb_covariance_B5_stall_region_out_memdep_covariance_avm_address),
        .out_memdep_covariance_avm_burstcount(bb_covariance_B5_stall_region_out_memdep_covariance_avm_burstcount),
        .out_memdep_covariance_avm_byteenable(bb_covariance_B5_stall_region_out_memdep_covariance_avm_byteenable),
        .out_memdep_covariance_avm_enable(bb_covariance_B5_stall_region_out_memdep_covariance_avm_enable),
        .out_memdep_covariance_avm_read(bb_covariance_B5_stall_region_out_memdep_covariance_avm_read),
        .out_memdep_covariance_avm_write(bb_covariance_B5_stall_region_out_memdep_covariance_avm_write),
        .out_memdep_covariance_avm_writedata(bb_covariance_B5_stall_region_out_memdep_covariance_avm_writedata),
        .out_pipeline_valid_out(bb_covariance_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_covariance_B5_stall_region_out_stall_out),
        .out_unnamed_covariance4_covariance_avm_address(bb_covariance_B5_stall_region_out_unnamed_covariance4_covariance_avm_address),
        .out_unnamed_covariance4_covariance_avm_burstcount(bb_covariance_B5_stall_region_out_unnamed_covariance4_covariance_avm_burstcount),
        .out_unnamed_covariance4_covariance_avm_byteenable(bb_covariance_B5_stall_region_out_unnamed_covariance4_covariance_avm_byteenable),
        .out_unnamed_covariance4_covariance_avm_enable(bb_covariance_B5_stall_region_out_unnamed_covariance4_covariance_avm_enable),
        .out_unnamed_covariance4_covariance_avm_read(bb_covariance_B5_stall_region_out_unnamed_covariance4_covariance_avm_read),
        .out_unnamed_covariance4_covariance_avm_write(bb_covariance_B5_stall_region_out_unnamed_covariance4_covariance_avm_write),
        .out_unnamed_covariance4_covariance_avm_writedata(bb_covariance_B5_stall_region_out_unnamed_covariance4_covariance_avm_writedata),
        .out_unnamed_covariance5_covariance_avm_address(bb_covariance_B5_stall_region_out_unnamed_covariance5_covariance_avm_address),
        .out_unnamed_covariance5_covariance_avm_burstcount(bb_covariance_B5_stall_region_out_unnamed_covariance5_covariance_avm_burstcount),
        .out_unnamed_covariance5_covariance_avm_byteenable(bb_covariance_B5_stall_region_out_unnamed_covariance5_covariance_avm_byteenable),
        .out_unnamed_covariance5_covariance_avm_enable(bb_covariance_B5_stall_region_out_unnamed_covariance5_covariance_avm_enable),
        .out_unnamed_covariance5_covariance_avm_read(bb_covariance_B5_stall_region_out_unnamed_covariance5_covariance_avm_read),
        .out_unnamed_covariance5_covariance_avm_write(bb_covariance_B5_stall_region_out_unnamed_covariance5_covariance_avm_write),
        .out_unnamed_covariance5_covariance_avm_writedata(bb_covariance_B5_stall_region_out_unnamed_covariance5_covariance_avm_writedata),
        .out_valid_out(bb_covariance_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B5_branch(BLACKBOX,3)
    covariance_B5_branch thecovariance_B5_branch (
        .in_c0_exe7(bb_covariance_B5_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_covariance_B5_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_covariance_B5_stall_region_out_c0_exe9),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_covariance_B5_stall_region_out_valid_out),
        .out_c0_exe8(covariance_B5_branch_out_c0_exe8),
        .out_c0_exe9(covariance_B5_branch_out_c0_exe9),
        .out_stall_out(covariance_B5_branch_out_stall_out),
        .out_valid_out_0(covariance_B5_branch_out_valid_out_0),
        .out_valid_out_1(covariance_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe8(GPOUT,38)
    assign out_c0_exe8 = covariance_B5_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,39)
    assign out_c0_exe9 = covariance_B5_branch_out_c0_exe9;

    // out_exiting_stall_out(GPOUT,40)
    assign out_exiting_stall_out = bb_covariance_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,41)
    assign out_exiting_valid_out = bb_covariance_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_valid_out;

    // out_memdep_1_covariance_avm_address(GPOUT,42)
    assign out_memdep_1_covariance_avm_address = bb_covariance_B5_stall_region_out_memdep_1_covariance_avm_address;

    // out_memdep_1_covariance_avm_burstcount(GPOUT,43)
    assign out_memdep_1_covariance_avm_burstcount = bb_covariance_B5_stall_region_out_memdep_1_covariance_avm_burstcount;

    // out_memdep_1_covariance_avm_byteenable(GPOUT,44)
    assign out_memdep_1_covariance_avm_byteenable = bb_covariance_B5_stall_region_out_memdep_1_covariance_avm_byteenable;

    // out_memdep_1_covariance_avm_enable(GPOUT,45)
    assign out_memdep_1_covariance_avm_enable = bb_covariance_B5_stall_region_out_memdep_1_covariance_avm_enable;

    // out_memdep_1_covariance_avm_read(GPOUT,46)
    assign out_memdep_1_covariance_avm_read = bb_covariance_B5_stall_region_out_memdep_1_covariance_avm_read;

    // out_memdep_1_covariance_avm_write(GPOUT,47)
    assign out_memdep_1_covariance_avm_write = bb_covariance_B5_stall_region_out_memdep_1_covariance_avm_write;

    // out_memdep_1_covariance_avm_writedata(GPOUT,48)
    assign out_memdep_1_covariance_avm_writedata = bb_covariance_B5_stall_region_out_memdep_1_covariance_avm_writedata;

    // out_memdep_covariance_avm_address(GPOUT,49)
    assign out_memdep_covariance_avm_address = bb_covariance_B5_stall_region_out_memdep_covariance_avm_address;

    // out_memdep_covariance_avm_burstcount(GPOUT,50)
    assign out_memdep_covariance_avm_burstcount = bb_covariance_B5_stall_region_out_memdep_covariance_avm_burstcount;

    // out_memdep_covariance_avm_byteenable(GPOUT,51)
    assign out_memdep_covariance_avm_byteenable = bb_covariance_B5_stall_region_out_memdep_covariance_avm_byteenable;

    // out_memdep_covariance_avm_enable(GPOUT,52)
    assign out_memdep_covariance_avm_enable = bb_covariance_B5_stall_region_out_memdep_covariance_avm_enable;

    // out_memdep_covariance_avm_read(GPOUT,53)
    assign out_memdep_covariance_avm_read = bb_covariance_B5_stall_region_out_memdep_covariance_avm_read;

    // out_memdep_covariance_avm_write(GPOUT,54)
    assign out_memdep_covariance_avm_write = bb_covariance_B5_stall_region_out_memdep_covariance_avm_write;

    // out_memdep_covariance_avm_writedata(GPOUT,55)
    assign out_memdep_covariance_avm_writedata = bb_covariance_B5_stall_region_out_memdep_covariance_avm_writedata;

    // out_stall_in_0(GPOUT,56)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,57)
    assign out_stall_out_0 = covariance_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,58)
    assign out_stall_out_1 = covariance_B5_merge_out_stall_out_1;

    // out_unnamed_covariance4_covariance_avm_address(GPOUT,59)
    assign out_unnamed_covariance4_covariance_avm_address = bb_covariance_B5_stall_region_out_unnamed_covariance4_covariance_avm_address;

    // out_unnamed_covariance4_covariance_avm_burstcount(GPOUT,60)
    assign out_unnamed_covariance4_covariance_avm_burstcount = bb_covariance_B5_stall_region_out_unnamed_covariance4_covariance_avm_burstcount;

    // out_unnamed_covariance4_covariance_avm_byteenable(GPOUT,61)
    assign out_unnamed_covariance4_covariance_avm_byteenable = bb_covariance_B5_stall_region_out_unnamed_covariance4_covariance_avm_byteenable;

    // out_unnamed_covariance4_covariance_avm_enable(GPOUT,62)
    assign out_unnamed_covariance4_covariance_avm_enable = bb_covariance_B5_stall_region_out_unnamed_covariance4_covariance_avm_enable;

    // out_unnamed_covariance4_covariance_avm_read(GPOUT,63)
    assign out_unnamed_covariance4_covariance_avm_read = bb_covariance_B5_stall_region_out_unnamed_covariance4_covariance_avm_read;

    // out_unnamed_covariance4_covariance_avm_write(GPOUT,64)
    assign out_unnamed_covariance4_covariance_avm_write = bb_covariance_B5_stall_region_out_unnamed_covariance4_covariance_avm_write;

    // out_unnamed_covariance4_covariance_avm_writedata(GPOUT,65)
    assign out_unnamed_covariance4_covariance_avm_writedata = bb_covariance_B5_stall_region_out_unnamed_covariance4_covariance_avm_writedata;

    // out_unnamed_covariance5_covariance_avm_address(GPOUT,66)
    assign out_unnamed_covariance5_covariance_avm_address = bb_covariance_B5_stall_region_out_unnamed_covariance5_covariance_avm_address;

    // out_unnamed_covariance5_covariance_avm_burstcount(GPOUT,67)
    assign out_unnamed_covariance5_covariance_avm_burstcount = bb_covariance_B5_stall_region_out_unnamed_covariance5_covariance_avm_burstcount;

    // out_unnamed_covariance5_covariance_avm_byteenable(GPOUT,68)
    assign out_unnamed_covariance5_covariance_avm_byteenable = bb_covariance_B5_stall_region_out_unnamed_covariance5_covariance_avm_byteenable;

    // out_unnamed_covariance5_covariance_avm_enable(GPOUT,69)
    assign out_unnamed_covariance5_covariance_avm_enable = bb_covariance_B5_stall_region_out_unnamed_covariance5_covariance_avm_enable;

    // out_unnamed_covariance5_covariance_avm_read(GPOUT,70)
    assign out_unnamed_covariance5_covariance_avm_read = bb_covariance_B5_stall_region_out_unnamed_covariance5_covariance_avm_read;

    // out_unnamed_covariance5_covariance_avm_write(GPOUT,71)
    assign out_unnamed_covariance5_covariance_avm_write = bb_covariance_B5_stall_region_out_unnamed_covariance5_covariance_avm_write;

    // out_unnamed_covariance5_covariance_avm_writedata(GPOUT,72)
    assign out_unnamed_covariance5_covariance_avm_writedata = bb_covariance_B5_stall_region_out_unnamed_covariance5_covariance_avm_writedata;

    // out_valid_in_0(GPOUT,73)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,74)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,75)
    assign out_valid_out_0 = covariance_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,76)
    assign out_valid_out_1 = covariance_B5_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,78)
    assign out_pipeline_valid_out = bb_covariance_B5_stall_region_out_pipeline_valid_out;

endmodule
