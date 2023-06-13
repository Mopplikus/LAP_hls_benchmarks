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

// SystemVerilog created from bb_triangular_B4
// Created for function/kernel triangular
// SystemVerilog created on Tue Jun 13 03:05:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B4 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked23_0,
    input wire [0:0] in_forked23_1,
    input wire [31:0] in_i_03650_0,
    input wire [31:0] in_i_03650_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_lim_ext35_pop1455_0,
    input wire [31:0] in_lim_ext35_pop1455_1,
    input wire [31:0] in_lim_ext46_0,
    input wire [31:0] in_lim_ext46_1,
    input wire [31:0] in_lm1_triangular_avm_readdata,
    input wire [0:0] in_lm1_triangular_avm_readdatavalid,
    input wire [0:0] in_lm1_triangular_avm_waitrequest,
    input wire [0:0] in_lm1_triangular_avm_writeack,
    input wire [31:0] in_lm62_triangular_avm_readdata,
    input wire [0:0] in_lm62_triangular_avm_readdatavalid,
    input wire [0:0] in_lm62_triangular_avm_waitrequest,
    input wire [0:0] in_lm62_triangular_avm_writeack,
    input wire [31:0] in_lm83_triangular_avm_readdata,
    input wire [0:0] in_lm83_triangular_avm_readdatavalid,
    input wire [0:0] in_lm83_triangular_avm_waitrequest,
    input wire [0:0] in_lm83_triangular_avm_writeack,
    input wire [63:0] in_mPtr_bitcast_index52_0,
    input wire [63:0] in_mPtr_bitcast_index52_1,
    input wire [0:0] in_memdep_phi4_pop1354_0,
    input wire [0:0] in_memdep_phi4_pop1354_1,
    input wire [31:0] in_memdep_triangular_avm_readdata,
    input wire [0:0] in_memdep_triangular_avm_readdatavalid,
    input wire [0:0] in_memdep_triangular_avm_waitrequest,
    input wire [0:0] in_memdep_triangular_avm_writeack,
    input wire [0:0] in_notcmp2753_0,
    input wire [0:0] in_notcmp2753_1,
    input wire [31:0] in_reorder_limiter_enter37_pop1556_0,
    input wire [31:0] in_reorder_limiter_enter37_pop1556_1,
    input wire [31:0] in_reorder_limiter_enter49_0,
    input wire [31:0] in_reorder_limiter_enter49_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_sub151_0,
    input wire [31:0] in_sub151_1,
    input wire [32:0] in_unnamed_triangular11_0,
    input wire [32:0] in_unnamed_triangular11_1,
    input wire [0:0] in_unnamed_triangular12_0,
    input wire [0:0] in_unnamed_triangular12_1,
    input wire [0:0] in_unnamed_triangular13_0,
    input wire [0:0] in_unnamed_triangular13_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe695,
    output wire [31:0] out_c0_exe796,
    output wire [0:0] out_c0_exe897,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_lm1_triangular_avm_address,
    output wire [0:0] out_lm1_triangular_avm_burstcount,
    output wire [3:0] out_lm1_triangular_avm_byteenable,
    output wire [0:0] out_lm1_triangular_avm_enable,
    output wire [0:0] out_lm1_triangular_avm_read,
    output wire [0:0] out_lm1_triangular_avm_write,
    output wire [31:0] out_lm1_triangular_avm_writedata,
    output wire [31:0] out_lm62_triangular_avm_address,
    output wire [0:0] out_lm62_triangular_avm_burstcount,
    output wire [3:0] out_lm62_triangular_avm_byteenable,
    output wire [0:0] out_lm62_triangular_avm_enable,
    output wire [0:0] out_lm62_triangular_avm_read,
    output wire [0:0] out_lm62_triangular_avm_write,
    output wire [31:0] out_lm62_triangular_avm_writedata,
    output wire [31:0] out_lm83_triangular_avm_address,
    output wire [0:0] out_lm83_triangular_avm_burstcount,
    output wire [3:0] out_lm83_triangular_avm_byteenable,
    output wire [0:0] out_lm83_triangular_avm_enable,
    output wire [0:0] out_lm83_triangular_avm_read,
    output wire [0:0] out_lm83_triangular_avm_write,
    output wire [31:0] out_lm83_triangular_avm_writedata,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_memdep,
    output wire [31:0] out_memdep_triangular_avm_address,
    output wire [0:0] out_memdep_triangular_avm_burstcount,
    output wire [3:0] out_memdep_triangular_avm_byteenable,
    output wire [0:0] out_memdep_triangular_avm_enable,
    output wire [0:0] out_memdep_triangular_avm_read,
    output wire [0:0] out_memdep_triangular_avm_write,
    output wire [31:0] out_memdep_triangular_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_triangular_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_stall_out;
    wire [0:0] bb_triangular_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_valid_out;
    wire [0:0] bb_triangular_B4_stall_region_out_c0_exe594;
    wire [0:0] bb_triangular_B4_stall_region_out_c0_exe695;
    wire [31:0] bb_triangular_B4_stall_region_out_c0_exe796;
    wire [0:0] bb_triangular_B4_stall_region_out_c0_exe897;
    wire [31:0] bb_triangular_B4_stall_region_out_lm1_triangular_avm_address;
    wire [0:0] bb_triangular_B4_stall_region_out_lm1_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B4_stall_region_out_lm1_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B4_stall_region_out_lm1_triangular_avm_enable;
    wire [0:0] bb_triangular_B4_stall_region_out_lm1_triangular_avm_read;
    wire [0:0] bb_triangular_B4_stall_region_out_lm1_triangular_avm_write;
    wire [31:0] bb_triangular_B4_stall_region_out_lm1_triangular_avm_writedata;
    wire [31:0] bb_triangular_B4_stall_region_out_lm62_triangular_avm_address;
    wire [0:0] bb_triangular_B4_stall_region_out_lm62_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B4_stall_region_out_lm62_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B4_stall_region_out_lm62_triangular_avm_enable;
    wire [0:0] bb_triangular_B4_stall_region_out_lm62_triangular_avm_read;
    wire [0:0] bb_triangular_B4_stall_region_out_lm62_triangular_avm_write;
    wire [31:0] bb_triangular_B4_stall_region_out_lm62_triangular_avm_writedata;
    wire [31:0] bb_triangular_B4_stall_region_out_lm83_triangular_avm_address;
    wire [0:0] bb_triangular_B4_stall_region_out_lm83_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B4_stall_region_out_lm83_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B4_stall_region_out_lm83_triangular_avm_enable;
    wire [0:0] bb_triangular_B4_stall_region_out_lm83_triangular_avm_read;
    wire [0:0] bb_triangular_B4_stall_region_out_lm83_triangular_avm_write;
    wire [31:0] bb_triangular_B4_stall_region_out_lm83_triangular_avm_writedata;
    wire [0:0] bb_triangular_B4_stall_region_out_lsu_memdep_o_active;
    wire [0:0] bb_triangular_B4_stall_region_out_memdep;
    wire [31:0] bb_triangular_B4_stall_region_out_memdep_triangular_avm_address;
    wire [0:0] bb_triangular_B4_stall_region_out_memdep_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B4_stall_region_out_memdep_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B4_stall_region_out_memdep_triangular_avm_enable;
    wire [0:0] bb_triangular_B4_stall_region_out_memdep_triangular_avm_read;
    wire [0:0] bb_triangular_B4_stall_region_out_memdep_triangular_avm_write;
    wire [31:0] bb_triangular_B4_stall_region_out_memdep_triangular_avm_writedata;
    wire [0:0] bb_triangular_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_triangular_B4_stall_region_out_stall_out;
    wire [0:0] bb_triangular_B4_stall_region_out_valid_out;
    wire [0:0] triangular_B4_branch_out_c0_exe695;
    wire [31:0] triangular_B4_branch_out_c0_exe796;
    wire [0:0] triangular_B4_branch_out_c0_exe897;
    wire [0:0] triangular_B4_branch_out_memdep;
    wire [0:0] triangular_B4_branch_out_stall_out;
    wire [0:0] triangular_B4_branch_out_valid_out_0;
    wire [0:0] triangular_B4_branch_out_valid_out_1;
    wire [0:0] triangular_B4_merge_out_forked23;
    wire [31:0] triangular_B4_merge_out_i_03650;
    wire [31:0] triangular_B4_merge_out_lim_ext35_pop1455;
    wire [31:0] triangular_B4_merge_out_lim_ext46;
    wire [63:0] triangular_B4_merge_out_mPtr_bitcast_index52;
    wire [0:0] triangular_B4_merge_out_memdep_phi4_pop1354;
    wire [0:0] triangular_B4_merge_out_notcmp2753;
    wire [31:0] triangular_B4_merge_out_reorder_limiter_enter37_pop1556;
    wire [31:0] triangular_B4_merge_out_reorder_limiter_enter49;
    wire [0:0] triangular_B4_merge_out_stall_out_0;
    wire [0:0] triangular_B4_merge_out_stall_out_1;
    wire [31:0] triangular_B4_merge_out_sub151;
    wire [32:0] triangular_B4_merge_out_unnamed_triangular11;
    wire [0:0] triangular_B4_merge_out_unnamed_triangular12;
    wire [0:0] triangular_B4_merge_out_unnamed_triangular13;
    wire [0:0] triangular_B4_merge_out_valid_out;


    // triangular_B4_merge(BLACKBOX,97)
    triangular_B4_merge thetriangular_B4_merge (
        .in_forked23_0(in_forked23_0),
        .in_forked23_1(in_forked23_1),
        .in_i_03650_0(in_i_03650_0),
        .in_i_03650_1(in_i_03650_1),
        .in_lim_ext35_pop1455_0(in_lim_ext35_pop1455_0),
        .in_lim_ext35_pop1455_1(in_lim_ext35_pop1455_1),
        .in_lim_ext46_0(in_lim_ext46_0),
        .in_lim_ext46_1(in_lim_ext46_1),
        .in_mPtr_bitcast_index52_0(in_mPtr_bitcast_index52_0),
        .in_mPtr_bitcast_index52_1(in_mPtr_bitcast_index52_1),
        .in_memdep_phi4_pop1354_0(in_memdep_phi4_pop1354_0),
        .in_memdep_phi4_pop1354_1(in_memdep_phi4_pop1354_1),
        .in_notcmp2753_0(in_notcmp2753_0),
        .in_notcmp2753_1(in_notcmp2753_1),
        .in_reorder_limiter_enter37_pop1556_0(in_reorder_limiter_enter37_pop1556_0),
        .in_reorder_limiter_enter37_pop1556_1(in_reorder_limiter_enter37_pop1556_1),
        .in_reorder_limiter_enter49_0(in_reorder_limiter_enter49_0),
        .in_reorder_limiter_enter49_1(in_reorder_limiter_enter49_1),
        .in_stall_in(bb_triangular_B4_stall_region_out_stall_out),
        .in_sub151_0(in_sub151_0),
        .in_sub151_1(in_sub151_1),
        .in_unnamed_triangular11_0(in_unnamed_triangular11_0),
        .in_unnamed_triangular11_1(in_unnamed_triangular11_1),
        .in_unnamed_triangular12_0(in_unnamed_triangular12_0),
        .in_unnamed_triangular12_1(in_unnamed_triangular12_1),
        .in_unnamed_triangular13_0(in_unnamed_triangular13_0),
        .in_unnamed_triangular13_1(in_unnamed_triangular13_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked23(triangular_B4_merge_out_forked23),
        .out_i_03650(triangular_B4_merge_out_i_03650),
        .out_lim_ext35_pop1455(triangular_B4_merge_out_lim_ext35_pop1455),
        .out_lim_ext46(triangular_B4_merge_out_lim_ext46),
        .out_mPtr_bitcast_index52(triangular_B4_merge_out_mPtr_bitcast_index52),
        .out_memdep_phi4_pop1354(triangular_B4_merge_out_memdep_phi4_pop1354),
        .out_notcmp2753(triangular_B4_merge_out_notcmp2753),
        .out_reorder_limiter_enter37_pop1556(triangular_B4_merge_out_reorder_limiter_enter37_pop1556),
        .out_reorder_limiter_enter49(triangular_B4_merge_out_reorder_limiter_enter49),
        .out_stall_out_0(triangular_B4_merge_out_stall_out_0),
        .out_stall_out_1(triangular_B4_merge_out_stall_out_1),
        .out_sub151(triangular_B4_merge_out_sub151),
        .out_unnamed_triangular11(triangular_B4_merge_out_unnamed_triangular11),
        .out_unnamed_triangular12(triangular_B4_merge_out_unnamed_triangular12),
        .out_unnamed_triangular13(triangular_B4_merge_out_unnamed_triangular13),
        .out_valid_out(triangular_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B4_stall_region(BLACKBOX,2)
    triangular_bb_B4_stall_region thebb_triangular_B4_stall_region (
        .in_flush(in_flush),
        .in_forked23(triangular_B4_merge_out_forked23),
        .in_i_03650(triangular_B4_merge_out_i_03650),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_lim_ext35_pop1455(triangular_B4_merge_out_lim_ext35_pop1455),
        .in_lim_ext46(triangular_B4_merge_out_lim_ext46),
        .in_lm1_triangular_avm_readdata(in_lm1_triangular_avm_readdata),
        .in_lm1_triangular_avm_readdatavalid(in_lm1_triangular_avm_readdatavalid),
        .in_lm1_triangular_avm_waitrequest(in_lm1_triangular_avm_waitrequest),
        .in_lm1_triangular_avm_writeack(in_lm1_triangular_avm_writeack),
        .in_lm62_triangular_avm_readdata(in_lm62_triangular_avm_readdata),
        .in_lm62_triangular_avm_readdatavalid(in_lm62_triangular_avm_readdatavalid),
        .in_lm62_triangular_avm_waitrequest(in_lm62_triangular_avm_waitrequest),
        .in_lm62_triangular_avm_writeack(in_lm62_triangular_avm_writeack),
        .in_lm83_triangular_avm_readdata(in_lm83_triangular_avm_readdata),
        .in_lm83_triangular_avm_readdatavalid(in_lm83_triangular_avm_readdatavalid),
        .in_lm83_triangular_avm_waitrequest(in_lm83_triangular_avm_waitrequest),
        .in_lm83_triangular_avm_writeack(in_lm83_triangular_avm_writeack),
        .in_mPtr_bitcast_index52(triangular_B4_merge_out_mPtr_bitcast_index52),
        .in_memdep_phi4_pop1354(triangular_B4_merge_out_memdep_phi4_pop1354),
        .in_memdep_triangular_avm_readdata(in_memdep_triangular_avm_readdata),
        .in_memdep_triangular_avm_readdatavalid(in_memdep_triangular_avm_readdatavalid),
        .in_memdep_triangular_avm_waitrequest(in_memdep_triangular_avm_waitrequest),
        .in_memdep_triangular_avm_writeack(in_memdep_triangular_avm_writeack),
        .in_notcmp2753(triangular_B4_merge_out_notcmp2753),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_reorder_limiter_enter37_pop1556(triangular_B4_merge_out_reorder_limiter_enter37_pop1556),
        .in_reorder_limiter_enter49(triangular_B4_merge_out_reorder_limiter_enter49),
        .in_stall_in(triangular_B4_branch_out_stall_out),
        .in_sub151(triangular_B4_merge_out_sub151),
        .in_unnamed_triangular11(triangular_B4_merge_out_unnamed_triangular11),
        .in_unnamed_triangular12(triangular_B4_merge_out_unnamed_triangular12),
        .in_unnamed_triangular13(triangular_B4_merge_out_unnamed_triangular13),
        .in_valid_in(triangular_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_stall_out(bb_triangular_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_valid_out(bb_triangular_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_valid_out),
        .out_c0_exe594(bb_triangular_B4_stall_region_out_c0_exe594),
        .out_c0_exe695(bb_triangular_B4_stall_region_out_c0_exe695),
        .out_c0_exe796(bb_triangular_B4_stall_region_out_c0_exe796),
        .out_c0_exe897(bb_triangular_B4_stall_region_out_c0_exe897),
        .out_lm1_triangular_avm_address(bb_triangular_B4_stall_region_out_lm1_triangular_avm_address),
        .out_lm1_triangular_avm_burstcount(bb_triangular_B4_stall_region_out_lm1_triangular_avm_burstcount),
        .out_lm1_triangular_avm_byteenable(bb_triangular_B4_stall_region_out_lm1_triangular_avm_byteenable),
        .out_lm1_triangular_avm_enable(bb_triangular_B4_stall_region_out_lm1_triangular_avm_enable),
        .out_lm1_triangular_avm_read(bb_triangular_B4_stall_region_out_lm1_triangular_avm_read),
        .out_lm1_triangular_avm_write(bb_triangular_B4_stall_region_out_lm1_triangular_avm_write),
        .out_lm1_triangular_avm_writedata(bb_triangular_B4_stall_region_out_lm1_triangular_avm_writedata),
        .out_lm62_triangular_avm_address(bb_triangular_B4_stall_region_out_lm62_triangular_avm_address),
        .out_lm62_triangular_avm_burstcount(bb_triangular_B4_stall_region_out_lm62_triangular_avm_burstcount),
        .out_lm62_triangular_avm_byteenable(bb_triangular_B4_stall_region_out_lm62_triangular_avm_byteenable),
        .out_lm62_triangular_avm_enable(bb_triangular_B4_stall_region_out_lm62_triangular_avm_enable),
        .out_lm62_triangular_avm_read(bb_triangular_B4_stall_region_out_lm62_triangular_avm_read),
        .out_lm62_triangular_avm_write(bb_triangular_B4_stall_region_out_lm62_triangular_avm_write),
        .out_lm62_triangular_avm_writedata(bb_triangular_B4_stall_region_out_lm62_triangular_avm_writedata),
        .out_lm83_triangular_avm_address(bb_triangular_B4_stall_region_out_lm83_triangular_avm_address),
        .out_lm83_triangular_avm_burstcount(bb_triangular_B4_stall_region_out_lm83_triangular_avm_burstcount),
        .out_lm83_triangular_avm_byteenable(bb_triangular_B4_stall_region_out_lm83_triangular_avm_byteenable),
        .out_lm83_triangular_avm_enable(bb_triangular_B4_stall_region_out_lm83_triangular_avm_enable),
        .out_lm83_triangular_avm_read(bb_triangular_B4_stall_region_out_lm83_triangular_avm_read),
        .out_lm83_triangular_avm_write(bb_triangular_B4_stall_region_out_lm83_triangular_avm_write),
        .out_lm83_triangular_avm_writedata(bb_triangular_B4_stall_region_out_lm83_triangular_avm_writedata),
        .out_lsu_memdep_o_active(bb_triangular_B4_stall_region_out_lsu_memdep_o_active),
        .out_memdep(bb_triangular_B4_stall_region_out_memdep),
        .out_memdep_triangular_avm_address(bb_triangular_B4_stall_region_out_memdep_triangular_avm_address),
        .out_memdep_triangular_avm_burstcount(bb_triangular_B4_stall_region_out_memdep_triangular_avm_burstcount),
        .out_memdep_triangular_avm_byteenable(bb_triangular_B4_stall_region_out_memdep_triangular_avm_byteenable),
        .out_memdep_triangular_avm_enable(bb_triangular_B4_stall_region_out_memdep_triangular_avm_enable),
        .out_memdep_triangular_avm_read(bb_triangular_B4_stall_region_out_memdep_triangular_avm_read),
        .out_memdep_triangular_avm_write(bb_triangular_B4_stall_region_out_memdep_triangular_avm_write),
        .out_memdep_triangular_avm_writedata(bb_triangular_B4_stall_region_out_memdep_triangular_avm_writedata),
        .out_pipeline_valid_out(bb_triangular_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_triangular_B4_stall_region_out_stall_out),
        .out_valid_out(bb_triangular_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // triangular_B4_branch(BLACKBOX,96)
    triangular_B4_branch thetriangular_B4_branch (
        .in_c0_exe594(bb_triangular_B4_stall_region_out_c0_exe594),
        .in_c0_exe695(bb_triangular_B4_stall_region_out_c0_exe695),
        .in_c0_exe796(bb_triangular_B4_stall_region_out_c0_exe796),
        .in_c0_exe897(bb_triangular_B4_stall_region_out_c0_exe897),
        .in_memdep(bb_triangular_B4_stall_region_out_memdep),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_triangular_B4_stall_region_out_valid_out),
        .out_c0_exe695(triangular_B4_branch_out_c0_exe695),
        .out_c0_exe796(triangular_B4_branch_out_c0_exe796),
        .out_c0_exe897(triangular_B4_branch_out_c0_exe897),
        .out_memdep(triangular_B4_branch_out_memdep),
        .out_stall_out(triangular_B4_branch_out_stall_out),
        .out_valid_out_0(triangular_B4_branch_out_valid_out_0),
        .out_valid_out_1(triangular_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe695(GPOUT,52)
    assign out_c0_exe695 = triangular_B4_branch_out_c0_exe695;

    // out_c0_exe796(GPOUT,53)
    assign out_c0_exe796 = triangular_B4_branch_out_c0_exe796;

    // out_c0_exe897(GPOUT,54)
    assign out_c0_exe897 = triangular_B4_branch_out_c0_exe897;

    // out_exiting_stall_out(GPOUT,55)
    assign out_exiting_stall_out = bb_triangular_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,56)
    assign out_exiting_valid_out = bb_triangular_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_triangular6_exiting_valid_out;

    // out_lm1_triangular_avm_address(GPOUT,57)
    assign out_lm1_triangular_avm_address = bb_triangular_B4_stall_region_out_lm1_triangular_avm_address;

    // out_lm1_triangular_avm_burstcount(GPOUT,58)
    assign out_lm1_triangular_avm_burstcount = bb_triangular_B4_stall_region_out_lm1_triangular_avm_burstcount;

    // out_lm1_triangular_avm_byteenable(GPOUT,59)
    assign out_lm1_triangular_avm_byteenable = bb_triangular_B4_stall_region_out_lm1_triangular_avm_byteenable;

    // out_lm1_triangular_avm_enable(GPOUT,60)
    assign out_lm1_triangular_avm_enable = bb_triangular_B4_stall_region_out_lm1_triangular_avm_enable;

    // out_lm1_triangular_avm_read(GPOUT,61)
    assign out_lm1_triangular_avm_read = bb_triangular_B4_stall_region_out_lm1_triangular_avm_read;

    // out_lm1_triangular_avm_write(GPOUT,62)
    assign out_lm1_triangular_avm_write = bb_triangular_B4_stall_region_out_lm1_triangular_avm_write;

    // out_lm1_triangular_avm_writedata(GPOUT,63)
    assign out_lm1_triangular_avm_writedata = bb_triangular_B4_stall_region_out_lm1_triangular_avm_writedata;

    // out_lm62_triangular_avm_address(GPOUT,64)
    assign out_lm62_triangular_avm_address = bb_triangular_B4_stall_region_out_lm62_triangular_avm_address;

    // out_lm62_triangular_avm_burstcount(GPOUT,65)
    assign out_lm62_triangular_avm_burstcount = bb_triangular_B4_stall_region_out_lm62_triangular_avm_burstcount;

    // out_lm62_triangular_avm_byteenable(GPOUT,66)
    assign out_lm62_triangular_avm_byteenable = bb_triangular_B4_stall_region_out_lm62_triangular_avm_byteenable;

    // out_lm62_triangular_avm_enable(GPOUT,67)
    assign out_lm62_triangular_avm_enable = bb_triangular_B4_stall_region_out_lm62_triangular_avm_enable;

    // out_lm62_triangular_avm_read(GPOUT,68)
    assign out_lm62_triangular_avm_read = bb_triangular_B4_stall_region_out_lm62_triangular_avm_read;

    // out_lm62_triangular_avm_write(GPOUT,69)
    assign out_lm62_triangular_avm_write = bb_triangular_B4_stall_region_out_lm62_triangular_avm_write;

    // out_lm62_triangular_avm_writedata(GPOUT,70)
    assign out_lm62_triangular_avm_writedata = bb_triangular_B4_stall_region_out_lm62_triangular_avm_writedata;

    // out_lm83_triangular_avm_address(GPOUT,71)
    assign out_lm83_triangular_avm_address = bb_triangular_B4_stall_region_out_lm83_triangular_avm_address;

    // out_lm83_triangular_avm_burstcount(GPOUT,72)
    assign out_lm83_triangular_avm_burstcount = bb_triangular_B4_stall_region_out_lm83_triangular_avm_burstcount;

    // out_lm83_triangular_avm_byteenable(GPOUT,73)
    assign out_lm83_triangular_avm_byteenable = bb_triangular_B4_stall_region_out_lm83_triangular_avm_byteenable;

    // out_lm83_triangular_avm_enable(GPOUT,74)
    assign out_lm83_triangular_avm_enable = bb_triangular_B4_stall_region_out_lm83_triangular_avm_enable;

    // out_lm83_triangular_avm_read(GPOUT,75)
    assign out_lm83_triangular_avm_read = bb_triangular_B4_stall_region_out_lm83_triangular_avm_read;

    // out_lm83_triangular_avm_write(GPOUT,76)
    assign out_lm83_triangular_avm_write = bb_triangular_B4_stall_region_out_lm83_triangular_avm_write;

    // out_lm83_triangular_avm_writedata(GPOUT,77)
    assign out_lm83_triangular_avm_writedata = bb_triangular_B4_stall_region_out_lm83_triangular_avm_writedata;

    // out_lsu_memdep_o_active(GPOUT,78)
    assign out_lsu_memdep_o_active = bb_triangular_B4_stall_region_out_lsu_memdep_o_active;

    // out_memdep(GPOUT,79)
    assign out_memdep = triangular_B4_branch_out_memdep;

    // out_memdep_triangular_avm_address(GPOUT,80)
    assign out_memdep_triangular_avm_address = bb_triangular_B4_stall_region_out_memdep_triangular_avm_address;

    // out_memdep_triangular_avm_burstcount(GPOUT,81)
    assign out_memdep_triangular_avm_burstcount = bb_triangular_B4_stall_region_out_memdep_triangular_avm_burstcount;

    // out_memdep_triangular_avm_byteenable(GPOUT,82)
    assign out_memdep_triangular_avm_byteenable = bb_triangular_B4_stall_region_out_memdep_triangular_avm_byteenable;

    // out_memdep_triangular_avm_enable(GPOUT,83)
    assign out_memdep_triangular_avm_enable = bb_triangular_B4_stall_region_out_memdep_triangular_avm_enable;

    // out_memdep_triangular_avm_read(GPOUT,84)
    assign out_memdep_triangular_avm_read = bb_triangular_B4_stall_region_out_memdep_triangular_avm_read;

    // out_memdep_triangular_avm_write(GPOUT,85)
    assign out_memdep_triangular_avm_write = bb_triangular_B4_stall_region_out_memdep_triangular_avm_write;

    // out_memdep_triangular_avm_writedata(GPOUT,86)
    assign out_memdep_triangular_avm_writedata = bb_triangular_B4_stall_region_out_memdep_triangular_avm_writedata;

    // out_stall_in_0(GPOUT,87)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,88)
    assign out_stall_out_0 = triangular_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,89)
    assign out_stall_out_1 = triangular_B4_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,90)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,91)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,92)
    assign out_valid_out_0 = triangular_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,93)
    assign out_valid_out_1 = triangular_B4_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,95)
    assign out_pipeline_valid_out = bb_triangular_B4_stall_region_out_pipeline_valid_out;

endmodule
