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

// SystemVerilog created from bb_jacobi_1d_B4
// Created for function/kernel jacobi_1d
// SystemVerilog created on Tue Jun 13 02:54:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_bb_B4 (
    input wire [0:0] in_exitcond1758_0,
    input wire [0:0] in_exitcond1758_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked24_0,
    input wire [0:0] in_forked24_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_memdep_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_memdep_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_jacobi_1d_avm_writeack,
    input wire [0:0] in_memdep_phi1_pop1160_0,
    input wire [0:0] in_memdep_phi1_pop1160_1,
    input wire [0:0] in_memdep_phi4_pop1261_0,
    input wire [0:0] in_memdep_phi4_pop1261_1,
    input wire [0:0] in_memdep_phi6_pop1362_0,
    input wire [0:0] in_memdep_phi6_pop1362_1,
    input wire [0:0] in_notcmp3959_0,
    input wire [0:0] in_notcmp3959_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_writeack,
    input wire [31:0] in_unnamed_jacobi_1d7_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d7_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d7_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d7_jacobi_1d_avm_writeack,
    input wire [31:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond1749_pop19,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [63:0] out_mPtr_bitcast7076,
    output wire [0:0] out_memdep,
    output wire [31:0] out_memdep_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_jacobi_1d_avm_burstcount,
    output wire [3:0] out_memdep_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_jacobi_1d_avm_write,
    output wire [31:0] out_memdep_jacobi_1d_avm_writedata,
    output wire [0:0] out_memdep_phi6_pop1355_pop23,
    output wire [0:0] out_notcmp3951_pop20,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount,
    output wire [3:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata,
    output wire [31:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount,
    output wire [3:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata,
    output wire [31:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount,
    output wire [3:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_jacobi_1d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_exiting_stall_out;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_exiting_valid_out;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_exitcond1749_pop19;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_lsu_memdep_o_active;
    wire [63:0] bb_jacobi_1d_B4_stall_region_out_mPtr_bitcast7076;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_masked36;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_memdep;
    wire [31:0] bb_jacobi_1d_B4_stall_region_out_memdep_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_memdep_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B4_stall_region_out_memdep_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_memdep_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_memdep_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_memdep_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B4_stall_region_out_memdep_jacobi_1d_avm_writedata;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_memdep_phi6_pop1355_pop23;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_notcmp3951_pop20;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_stall_out;
    wire [31:0] bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata;
    wire [31:0] bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d7_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d7_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d7_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d7_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata;
    wire [31:0] bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata;
    wire [0:0] bb_jacobi_1d_B4_stall_region_out_valid_out;
    wire [0:0] jacobi_1d_B4_branch_out_exitcond1749_pop19;
    wire [63:0] jacobi_1d_B4_branch_out_mPtr_bitcast7076;
    wire [0:0] jacobi_1d_B4_branch_out_memdep;
    wire [0:0] jacobi_1d_B4_branch_out_memdep_phi6_pop1355_pop23;
    wire [0:0] jacobi_1d_B4_branch_out_notcmp3951_pop20;
    wire [0:0] jacobi_1d_B4_branch_out_stall_out;
    wire [0:0] jacobi_1d_B4_branch_out_valid_out_0;
    wire [0:0] jacobi_1d_B4_branch_out_valid_out_1;
    wire [0:0] jacobi_1d_B4_merge_out_exitcond1758;
    wire [0:0] jacobi_1d_B4_merge_out_forked24;
    wire [0:0] jacobi_1d_B4_merge_out_memdep_phi1_pop1160;
    wire [0:0] jacobi_1d_B4_merge_out_memdep_phi4_pop1261;
    wire [0:0] jacobi_1d_B4_merge_out_memdep_phi6_pop1362;
    wire [0:0] jacobi_1d_B4_merge_out_notcmp3959;
    wire [0:0] jacobi_1d_B4_merge_out_stall_out_0;
    wire [0:0] jacobi_1d_B4_merge_out_stall_out_1;
    wire [0:0] jacobi_1d_B4_merge_out_valid_out;


    // jacobi_1d_B4_merge(BLACKBOX,39)
    jacobi_1d_B4_merge thejacobi_1d_B4_merge (
        .in_exitcond1758_0(in_exitcond1758_0),
        .in_exitcond1758_1(in_exitcond1758_1),
        .in_forked24_0(in_forked24_0),
        .in_forked24_1(in_forked24_1),
        .in_memdep_phi1_pop1160_0(in_memdep_phi1_pop1160_0),
        .in_memdep_phi1_pop1160_1(in_memdep_phi1_pop1160_1),
        .in_memdep_phi4_pop1261_0(in_memdep_phi4_pop1261_0),
        .in_memdep_phi4_pop1261_1(in_memdep_phi4_pop1261_1),
        .in_memdep_phi6_pop1362_0(in_memdep_phi6_pop1362_0),
        .in_memdep_phi6_pop1362_1(in_memdep_phi6_pop1362_1),
        .in_notcmp3959_0(in_notcmp3959_0),
        .in_notcmp3959_1(in_notcmp3959_1),
        .in_stall_in(bb_jacobi_1d_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond1758(jacobi_1d_B4_merge_out_exitcond1758),
        .out_forked24(jacobi_1d_B4_merge_out_forked24),
        .out_memdep_phi1_pop1160(jacobi_1d_B4_merge_out_memdep_phi1_pop1160),
        .out_memdep_phi4_pop1261(jacobi_1d_B4_merge_out_memdep_phi4_pop1261),
        .out_memdep_phi6_pop1362(jacobi_1d_B4_merge_out_memdep_phi6_pop1362),
        .out_notcmp3959(jacobi_1d_B4_merge_out_notcmp3959),
        .out_stall_out_0(jacobi_1d_B4_merge_out_stall_out_0),
        .out_stall_out_1(jacobi_1d_B4_merge_out_stall_out_1),
        .out_valid_out(jacobi_1d_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B4_stall_region(BLACKBOX,2)
    jacobi_1d_bb_B4_stall_region thebb_jacobi_1d_B4_stall_region (
        .in_exitcond1758(jacobi_1d_B4_merge_out_exitcond1758),
        .in_flush(in_flush),
        .in_forked24(jacobi_1d_B4_merge_out_forked24),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_memdep_jacobi_1d_avm_readdata(in_memdep_jacobi_1d_avm_readdata),
        .in_memdep_jacobi_1d_avm_readdatavalid(in_memdep_jacobi_1d_avm_readdatavalid),
        .in_memdep_jacobi_1d_avm_waitrequest(in_memdep_jacobi_1d_avm_waitrequest),
        .in_memdep_jacobi_1d_avm_writeack(in_memdep_jacobi_1d_avm_writeack),
        .in_memdep_phi1_pop1160(jacobi_1d_B4_merge_out_memdep_phi1_pop1160),
        .in_memdep_phi4_pop1261(jacobi_1d_B4_merge_out_memdep_phi4_pop1261),
        .in_memdep_phi6_pop1362(jacobi_1d_B4_merge_out_memdep_phi6_pop1362),
        .in_notcmp3959(jacobi_1d_B4_merge_out_notcmp3959),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(jacobi_1d_B4_branch_out_stall_out),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d11_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d11_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d11_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d11_jacobi_1d_avm_writeack),
        .in_unnamed_jacobi_1d7_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d7_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d7_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d7_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d7_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d7_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d7_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d7_jacobi_1d_avm_writeack),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d9_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d9_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d9_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d9_jacobi_1d_avm_writeack),
        .in_valid_in(jacobi_1d_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_exiting_stall_out(bb_jacobi_1d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_exiting_valid_out(bb_jacobi_1d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_exiting_valid_out),
        .out_exitcond1749_pop19(bb_jacobi_1d_B4_stall_region_out_exitcond1749_pop19),
        .out_lsu_memdep_o_active(bb_jacobi_1d_B4_stall_region_out_lsu_memdep_o_active),
        .out_mPtr_bitcast7076(bb_jacobi_1d_B4_stall_region_out_mPtr_bitcast7076),
        .out_masked36(bb_jacobi_1d_B4_stall_region_out_masked36),
        .out_memdep(bb_jacobi_1d_B4_stall_region_out_memdep),
        .out_memdep_jacobi_1d_avm_address(bb_jacobi_1d_B4_stall_region_out_memdep_jacobi_1d_avm_address),
        .out_memdep_jacobi_1d_avm_burstcount(bb_jacobi_1d_B4_stall_region_out_memdep_jacobi_1d_avm_burstcount),
        .out_memdep_jacobi_1d_avm_byteenable(bb_jacobi_1d_B4_stall_region_out_memdep_jacobi_1d_avm_byteenable),
        .out_memdep_jacobi_1d_avm_enable(bb_jacobi_1d_B4_stall_region_out_memdep_jacobi_1d_avm_enable),
        .out_memdep_jacobi_1d_avm_read(bb_jacobi_1d_B4_stall_region_out_memdep_jacobi_1d_avm_read),
        .out_memdep_jacobi_1d_avm_write(bb_jacobi_1d_B4_stall_region_out_memdep_jacobi_1d_avm_write),
        .out_memdep_jacobi_1d_avm_writedata(bb_jacobi_1d_B4_stall_region_out_memdep_jacobi_1d_avm_writedata),
        .out_memdep_phi6_pop1355_pop23(bb_jacobi_1d_B4_stall_region_out_memdep_phi6_pop1355_pop23),
        .out_notcmp3951_pop20(bb_jacobi_1d_B4_stall_region_out_notcmp3951_pop20),
        .out_pipeline_valid_out(bb_jacobi_1d_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_jacobi_1d_B4_stall_region_out_stall_out),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_address(bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount(bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable(bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_enable(bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_read(bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_write(bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata(bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_address(bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d7_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount(bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable(bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_enable(bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d7_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_read(bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d7_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_write(bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d7_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata(bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_address(bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount(bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable(bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_enable(bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_read(bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_write(bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata(bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata),
        .out_valid_out(bb_jacobi_1d_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // jacobi_1d_B4_branch(BLACKBOX,38)
    jacobi_1d_B4_branch thejacobi_1d_B4_branch (
        .in_exitcond1749_pop19(bb_jacobi_1d_B4_stall_region_out_exitcond1749_pop19),
        .in_mPtr_bitcast7076(bb_jacobi_1d_B4_stall_region_out_mPtr_bitcast7076),
        .in_masked36(bb_jacobi_1d_B4_stall_region_out_masked36),
        .in_memdep(bb_jacobi_1d_B4_stall_region_out_memdep),
        .in_memdep_phi6_pop1355_pop23(bb_jacobi_1d_B4_stall_region_out_memdep_phi6_pop1355_pop23),
        .in_notcmp3951_pop20(bb_jacobi_1d_B4_stall_region_out_notcmp3951_pop20),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_jacobi_1d_B4_stall_region_out_valid_out),
        .out_exitcond1749_pop19(jacobi_1d_B4_branch_out_exitcond1749_pop19),
        .out_mPtr_bitcast7076(jacobi_1d_B4_branch_out_mPtr_bitcast7076),
        .out_memdep(jacobi_1d_B4_branch_out_memdep),
        .out_memdep_phi6_pop1355_pop23(jacobi_1d_B4_branch_out_memdep_phi6_pop1355_pop23),
        .out_notcmp3951_pop20(jacobi_1d_B4_branch_out_notcmp3951_pop20),
        .out_stall_out(jacobi_1d_B4_branch_out_stall_out),
        .out_valid_out_0(jacobi_1d_B4_branch_out_valid_out_0),
        .out_valid_out_1(jacobi_1d_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exitcond1749_pop19(GPOUT,40)
    assign out_exitcond1749_pop19 = jacobi_1d_B4_branch_out_exitcond1749_pop19;

    // out_exiting_stall_out(GPOUT,41)
    assign out_exiting_stall_out = bb_jacobi_1d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,42)
    assign out_exiting_valid_out = bb_jacobi_1d_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_exiting_valid_out;

    // out_lsu_memdep_o_active(GPOUT,43)
    assign out_lsu_memdep_o_active = bb_jacobi_1d_B4_stall_region_out_lsu_memdep_o_active;

    // out_mPtr_bitcast7076(GPOUT,44)
    assign out_mPtr_bitcast7076 = jacobi_1d_B4_branch_out_mPtr_bitcast7076;

    // out_memdep(GPOUT,45)
    assign out_memdep = jacobi_1d_B4_branch_out_memdep;

    // out_memdep_jacobi_1d_avm_address(GPOUT,46)
    assign out_memdep_jacobi_1d_avm_address = bb_jacobi_1d_B4_stall_region_out_memdep_jacobi_1d_avm_address;

    // out_memdep_jacobi_1d_avm_burstcount(GPOUT,47)
    assign out_memdep_jacobi_1d_avm_burstcount = bb_jacobi_1d_B4_stall_region_out_memdep_jacobi_1d_avm_burstcount;

    // out_memdep_jacobi_1d_avm_byteenable(GPOUT,48)
    assign out_memdep_jacobi_1d_avm_byteenable = bb_jacobi_1d_B4_stall_region_out_memdep_jacobi_1d_avm_byteenable;

    // out_memdep_jacobi_1d_avm_enable(GPOUT,49)
    assign out_memdep_jacobi_1d_avm_enable = bb_jacobi_1d_B4_stall_region_out_memdep_jacobi_1d_avm_enable;

    // out_memdep_jacobi_1d_avm_read(GPOUT,50)
    assign out_memdep_jacobi_1d_avm_read = bb_jacobi_1d_B4_stall_region_out_memdep_jacobi_1d_avm_read;

    // out_memdep_jacobi_1d_avm_write(GPOUT,51)
    assign out_memdep_jacobi_1d_avm_write = bb_jacobi_1d_B4_stall_region_out_memdep_jacobi_1d_avm_write;

    // out_memdep_jacobi_1d_avm_writedata(GPOUT,52)
    assign out_memdep_jacobi_1d_avm_writedata = bb_jacobi_1d_B4_stall_region_out_memdep_jacobi_1d_avm_writedata;

    // out_memdep_phi6_pop1355_pop23(GPOUT,53)
    assign out_memdep_phi6_pop1355_pop23 = jacobi_1d_B4_branch_out_memdep_phi6_pop1355_pop23;

    // out_notcmp3951_pop20(GPOUT,54)
    assign out_notcmp3951_pop20 = jacobi_1d_B4_branch_out_notcmp3951_pop20;

    // out_stall_in_0(GPOUT,55)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,56)
    assign out_stall_out_0 = jacobi_1d_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,57)
    assign out_stall_out_1 = jacobi_1d_B4_merge_out_stall_out_1;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_address(GPOUT,58)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_address = bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount(GPOUT,59)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount = bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable(GPOUT,60)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable = bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_enable(GPOUT,61)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_enable = bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_read(GPOUT,62)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_read = bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_write(GPOUT,63)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_write = bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata(GPOUT,64)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata = bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata;

    // out_unnamed_jacobi_1d7_jacobi_1d_avm_address(GPOUT,65)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_address = bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d7_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount(GPOUT,66)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount = bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable(GPOUT,67)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable = bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d7_jacobi_1d_avm_enable(GPOUT,68)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_enable = bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d7_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d7_jacobi_1d_avm_read(GPOUT,69)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_read = bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d7_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d7_jacobi_1d_avm_write(GPOUT,70)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_write = bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d7_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata(GPOUT,71)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata = bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_address(GPOUT,72)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_address = bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount(GPOUT,73)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount = bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable(GPOUT,74)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable = bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_enable(GPOUT,75)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_enable = bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_read(GPOUT,76)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_read = bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_write(GPOUT,77)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_write = bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata(GPOUT,78)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata = bb_jacobi_1d_B4_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata;

    // out_valid_in_0(GPOUT,79)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,80)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,81)
    assign out_valid_out_0 = jacobi_1d_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,82)
    assign out_valid_out_1 = jacobi_1d_B4_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,84)
    assign out_pipeline_valid_out = bb_jacobi_1d_B4_stall_region_out_pipeline_valid_out;

endmodule
