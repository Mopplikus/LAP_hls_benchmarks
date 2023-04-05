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

// SystemVerilog created from bb_jacobi_1d_B3
// Created for function/kernel jacobi_1d
// SystemVerilog created on Wed Apr  5 13:32:10 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_bb_B3 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked47_0,
    input wire [0:0] in_forked47_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_memdep_2_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_2_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_memdep_2_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_2_jacobi_1d_avm_writeack,
    input wire [31:0] in_memdep_3_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_3_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_memdep_3_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_3_jacobi_1d_avm_writeack,
    input wire [31:0] in_memdep_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_memdep_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_jacobi_1d_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [63:0] in_unnamed_jacobi_1d10_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d10_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d10_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d10_jacobi_1d_avm_writeack,
    input wire [63:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_writeack,
    input wire [63:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_memdep_2_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_2_jacobi_1d_avm_burstcount,
    output wire [3:0] out_memdep_2_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_2_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_2_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_2_jacobi_1d_avm_write,
    output wire [31:0] out_memdep_2_jacobi_1d_avm_writedata,
    output wire [31:0] out_memdep_3_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_3_jacobi_1d_avm_burstcount,
    output wire [3:0] out_memdep_3_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_3_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_3_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_3_jacobi_1d_avm_write,
    output wire [31:0] out_memdep_3_jacobi_1d_avm_writedata,
    output wire [31:0] out_memdep_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_jacobi_1d_avm_burstcount,
    output wire [3:0] out_memdep_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_jacobi_1d_avm_write,
    output wire [31:0] out_memdep_jacobi_1d_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [63:0] out_unnamed_jacobi_1d10_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount,
    output wire [7:0] out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d10_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d10_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d10_jacobi_1d_avm_write,
    output wire [63:0] out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata,
    output wire [63:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount,
    output wire [7:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_write,
    output wire [63:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata,
    output wire [63:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount,
    output wire [7:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_write,
    output wire [63:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_jacobi_1d_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_stall_out;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_valid_out;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_c0_exe7;
    wire [31:0] bb_jacobi_1d_B3_stall_region_out_memdep_2_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_memdep_2_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B3_stall_region_out_memdep_2_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_memdep_2_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_memdep_2_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_memdep_2_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B3_stall_region_out_memdep_2_jacobi_1d_avm_writedata;
    wire [31:0] bb_jacobi_1d_B3_stall_region_out_memdep_3_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_memdep_3_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B3_stall_region_out_memdep_3_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_memdep_3_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_memdep_3_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_memdep_3_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B3_stall_region_out_memdep_3_jacobi_1d_avm_writedata;
    wire [31:0] bb_jacobi_1d_B3_stall_region_out_memdep_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_memdep_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B3_stall_region_out_memdep_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_memdep_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_memdep_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_memdep_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B3_stall_region_out_memdep_jacobi_1d_avm_writedata;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_stall_out;
    wire [63:0] bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d10_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount;
    wire [7:0] bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d10_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d10_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d10_jacobi_1d_avm_write;
    wire [63:0] bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata;
    wire [63:0] bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount;
    wire [7:0] bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_write;
    wire [63:0] bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata;
    wire [63:0] bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount;
    wire [7:0] bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_write;
    wire [63:0] bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_valid_out;
    wire [0:0] jacobi_1d_B3_branch_out_stall_out;
    wire [0:0] jacobi_1d_B3_branch_out_valid_out_0;
    wire [0:0] jacobi_1d_B3_branch_out_valid_out_1;
    wire [0:0] jacobi_1d_B3_merge_out_forked47;
    wire [0:0] jacobi_1d_B3_merge_out_stall_out_0;
    wire [0:0] jacobi_1d_B3_merge_out_stall_out_1;
    wire [0:0] jacobi_1d_B3_merge_out_valid_out;


    // jacobi_1d_B3_branch(BLACKBOX,37)
    jacobi_1d_B3_branch thejacobi_1d_B3_branch (
        .in_c0_exe7(bb_jacobi_1d_B3_stall_region_out_c0_exe7),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_jacobi_1d_B3_stall_region_out_valid_out),
        .out_stall_out(jacobi_1d_B3_branch_out_stall_out),
        .out_valid_out_0(jacobi_1d_B3_branch_out_valid_out_0),
        .out_valid_out_1(jacobi_1d_B3_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // jacobi_1d_B3_merge(BLACKBOX,38)
    jacobi_1d_B3_merge thejacobi_1d_B3_merge (
        .in_forked47_0(in_forked47_0),
        .in_forked47_1(in_forked47_1),
        .in_stall_in(bb_jacobi_1d_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked47(jacobi_1d_B3_merge_out_forked47),
        .out_stall_out_0(jacobi_1d_B3_merge_out_stall_out_0),
        .out_stall_out_1(jacobi_1d_B3_merge_out_stall_out_1),
        .out_valid_out(jacobi_1d_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B3_stall_region(BLACKBOX,2)
    jacobi_1d_bb_B3_stall_region thebb_jacobi_1d_B3_stall_region (
        .in_flush(in_flush),
        .in_forked47(jacobi_1d_B3_merge_out_forked47),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_memdep_2_jacobi_1d_avm_readdata(in_memdep_2_jacobi_1d_avm_readdata),
        .in_memdep_2_jacobi_1d_avm_readdatavalid(in_memdep_2_jacobi_1d_avm_readdatavalid),
        .in_memdep_2_jacobi_1d_avm_waitrequest(in_memdep_2_jacobi_1d_avm_waitrequest),
        .in_memdep_2_jacobi_1d_avm_writeack(in_memdep_2_jacobi_1d_avm_writeack),
        .in_memdep_3_jacobi_1d_avm_readdata(in_memdep_3_jacobi_1d_avm_readdata),
        .in_memdep_3_jacobi_1d_avm_readdatavalid(in_memdep_3_jacobi_1d_avm_readdatavalid),
        .in_memdep_3_jacobi_1d_avm_waitrequest(in_memdep_3_jacobi_1d_avm_waitrequest),
        .in_memdep_3_jacobi_1d_avm_writeack(in_memdep_3_jacobi_1d_avm_writeack),
        .in_memdep_jacobi_1d_avm_readdata(in_memdep_jacobi_1d_avm_readdata),
        .in_memdep_jacobi_1d_avm_readdatavalid(in_memdep_jacobi_1d_avm_readdatavalid),
        .in_memdep_jacobi_1d_avm_waitrequest(in_memdep_jacobi_1d_avm_waitrequest),
        .in_memdep_jacobi_1d_avm_writeack(in_memdep_jacobi_1d_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(jacobi_1d_B3_branch_out_stall_out),
        .in_unnamed_jacobi_1d10_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d10_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d10_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d10_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d10_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d10_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d10_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d10_jacobi_1d_avm_writeack),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d11_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d11_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d11_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d11_jacobi_1d_avm_writeack),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d9_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d9_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d9_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d9_jacobi_1d_avm_writeack),
        .in_valid_in(jacobi_1d_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_stall_out(bb_jacobi_1d_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_valid_out(bb_jacobi_1d_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_valid_out),
        .out_c0_exe7(bb_jacobi_1d_B3_stall_region_out_c0_exe7),
        .out_memdep_2_jacobi_1d_avm_address(bb_jacobi_1d_B3_stall_region_out_memdep_2_jacobi_1d_avm_address),
        .out_memdep_2_jacobi_1d_avm_burstcount(bb_jacobi_1d_B3_stall_region_out_memdep_2_jacobi_1d_avm_burstcount),
        .out_memdep_2_jacobi_1d_avm_byteenable(bb_jacobi_1d_B3_stall_region_out_memdep_2_jacobi_1d_avm_byteenable),
        .out_memdep_2_jacobi_1d_avm_enable(bb_jacobi_1d_B3_stall_region_out_memdep_2_jacobi_1d_avm_enable),
        .out_memdep_2_jacobi_1d_avm_read(bb_jacobi_1d_B3_stall_region_out_memdep_2_jacobi_1d_avm_read),
        .out_memdep_2_jacobi_1d_avm_write(bb_jacobi_1d_B3_stall_region_out_memdep_2_jacobi_1d_avm_write),
        .out_memdep_2_jacobi_1d_avm_writedata(bb_jacobi_1d_B3_stall_region_out_memdep_2_jacobi_1d_avm_writedata),
        .out_memdep_3_jacobi_1d_avm_address(bb_jacobi_1d_B3_stall_region_out_memdep_3_jacobi_1d_avm_address),
        .out_memdep_3_jacobi_1d_avm_burstcount(bb_jacobi_1d_B3_stall_region_out_memdep_3_jacobi_1d_avm_burstcount),
        .out_memdep_3_jacobi_1d_avm_byteenable(bb_jacobi_1d_B3_stall_region_out_memdep_3_jacobi_1d_avm_byteenable),
        .out_memdep_3_jacobi_1d_avm_enable(bb_jacobi_1d_B3_stall_region_out_memdep_3_jacobi_1d_avm_enable),
        .out_memdep_3_jacobi_1d_avm_read(bb_jacobi_1d_B3_stall_region_out_memdep_3_jacobi_1d_avm_read),
        .out_memdep_3_jacobi_1d_avm_write(bb_jacobi_1d_B3_stall_region_out_memdep_3_jacobi_1d_avm_write),
        .out_memdep_3_jacobi_1d_avm_writedata(bb_jacobi_1d_B3_stall_region_out_memdep_3_jacobi_1d_avm_writedata),
        .out_memdep_jacobi_1d_avm_address(bb_jacobi_1d_B3_stall_region_out_memdep_jacobi_1d_avm_address),
        .out_memdep_jacobi_1d_avm_burstcount(bb_jacobi_1d_B3_stall_region_out_memdep_jacobi_1d_avm_burstcount),
        .out_memdep_jacobi_1d_avm_byteenable(bb_jacobi_1d_B3_stall_region_out_memdep_jacobi_1d_avm_byteenable),
        .out_memdep_jacobi_1d_avm_enable(bb_jacobi_1d_B3_stall_region_out_memdep_jacobi_1d_avm_enable),
        .out_memdep_jacobi_1d_avm_read(bb_jacobi_1d_B3_stall_region_out_memdep_jacobi_1d_avm_read),
        .out_memdep_jacobi_1d_avm_write(bb_jacobi_1d_B3_stall_region_out_memdep_jacobi_1d_avm_write),
        .out_memdep_jacobi_1d_avm_writedata(bb_jacobi_1d_B3_stall_region_out_memdep_jacobi_1d_avm_writedata),
        .out_pipeline_valid_out(bb_jacobi_1d_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_jacobi_1d_B3_stall_region_out_stall_out),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_address(bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d10_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount(bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable(bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_enable(bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d10_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_read(bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d10_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_write(bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d10_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata(bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_address(bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount(bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable(bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_enable(bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_read(bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_write(bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata(bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_address(bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount(bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable(bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_enable(bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_read(bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_write(bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata(bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata),
        .out_valid_out(bb_jacobi_1d_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,39)
    assign out_exiting_stall_out = bb_jacobi_1d_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,40)
    assign out_exiting_valid_out = bb_jacobi_1d_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_valid_out;

    // out_memdep_2_jacobi_1d_avm_address(GPOUT,41)
    assign out_memdep_2_jacobi_1d_avm_address = bb_jacobi_1d_B3_stall_region_out_memdep_2_jacobi_1d_avm_address;

    // out_memdep_2_jacobi_1d_avm_burstcount(GPOUT,42)
    assign out_memdep_2_jacobi_1d_avm_burstcount = bb_jacobi_1d_B3_stall_region_out_memdep_2_jacobi_1d_avm_burstcount;

    // out_memdep_2_jacobi_1d_avm_byteenable(GPOUT,43)
    assign out_memdep_2_jacobi_1d_avm_byteenable = bb_jacobi_1d_B3_stall_region_out_memdep_2_jacobi_1d_avm_byteenable;

    // out_memdep_2_jacobi_1d_avm_enable(GPOUT,44)
    assign out_memdep_2_jacobi_1d_avm_enable = bb_jacobi_1d_B3_stall_region_out_memdep_2_jacobi_1d_avm_enable;

    // out_memdep_2_jacobi_1d_avm_read(GPOUT,45)
    assign out_memdep_2_jacobi_1d_avm_read = bb_jacobi_1d_B3_stall_region_out_memdep_2_jacobi_1d_avm_read;

    // out_memdep_2_jacobi_1d_avm_write(GPOUT,46)
    assign out_memdep_2_jacobi_1d_avm_write = bb_jacobi_1d_B3_stall_region_out_memdep_2_jacobi_1d_avm_write;

    // out_memdep_2_jacobi_1d_avm_writedata(GPOUT,47)
    assign out_memdep_2_jacobi_1d_avm_writedata = bb_jacobi_1d_B3_stall_region_out_memdep_2_jacobi_1d_avm_writedata;

    // out_memdep_3_jacobi_1d_avm_address(GPOUT,48)
    assign out_memdep_3_jacobi_1d_avm_address = bb_jacobi_1d_B3_stall_region_out_memdep_3_jacobi_1d_avm_address;

    // out_memdep_3_jacobi_1d_avm_burstcount(GPOUT,49)
    assign out_memdep_3_jacobi_1d_avm_burstcount = bb_jacobi_1d_B3_stall_region_out_memdep_3_jacobi_1d_avm_burstcount;

    // out_memdep_3_jacobi_1d_avm_byteenable(GPOUT,50)
    assign out_memdep_3_jacobi_1d_avm_byteenable = bb_jacobi_1d_B3_stall_region_out_memdep_3_jacobi_1d_avm_byteenable;

    // out_memdep_3_jacobi_1d_avm_enable(GPOUT,51)
    assign out_memdep_3_jacobi_1d_avm_enable = bb_jacobi_1d_B3_stall_region_out_memdep_3_jacobi_1d_avm_enable;

    // out_memdep_3_jacobi_1d_avm_read(GPOUT,52)
    assign out_memdep_3_jacobi_1d_avm_read = bb_jacobi_1d_B3_stall_region_out_memdep_3_jacobi_1d_avm_read;

    // out_memdep_3_jacobi_1d_avm_write(GPOUT,53)
    assign out_memdep_3_jacobi_1d_avm_write = bb_jacobi_1d_B3_stall_region_out_memdep_3_jacobi_1d_avm_write;

    // out_memdep_3_jacobi_1d_avm_writedata(GPOUT,54)
    assign out_memdep_3_jacobi_1d_avm_writedata = bb_jacobi_1d_B3_stall_region_out_memdep_3_jacobi_1d_avm_writedata;

    // out_memdep_jacobi_1d_avm_address(GPOUT,55)
    assign out_memdep_jacobi_1d_avm_address = bb_jacobi_1d_B3_stall_region_out_memdep_jacobi_1d_avm_address;

    // out_memdep_jacobi_1d_avm_burstcount(GPOUT,56)
    assign out_memdep_jacobi_1d_avm_burstcount = bb_jacobi_1d_B3_stall_region_out_memdep_jacobi_1d_avm_burstcount;

    // out_memdep_jacobi_1d_avm_byteenable(GPOUT,57)
    assign out_memdep_jacobi_1d_avm_byteenable = bb_jacobi_1d_B3_stall_region_out_memdep_jacobi_1d_avm_byteenable;

    // out_memdep_jacobi_1d_avm_enable(GPOUT,58)
    assign out_memdep_jacobi_1d_avm_enable = bb_jacobi_1d_B3_stall_region_out_memdep_jacobi_1d_avm_enable;

    // out_memdep_jacobi_1d_avm_read(GPOUT,59)
    assign out_memdep_jacobi_1d_avm_read = bb_jacobi_1d_B3_stall_region_out_memdep_jacobi_1d_avm_read;

    // out_memdep_jacobi_1d_avm_write(GPOUT,60)
    assign out_memdep_jacobi_1d_avm_write = bb_jacobi_1d_B3_stall_region_out_memdep_jacobi_1d_avm_write;

    // out_memdep_jacobi_1d_avm_writedata(GPOUT,61)
    assign out_memdep_jacobi_1d_avm_writedata = bb_jacobi_1d_B3_stall_region_out_memdep_jacobi_1d_avm_writedata;

    // out_stall_in_0(GPOUT,62)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,63)
    assign out_stall_out_0 = jacobi_1d_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,64)
    assign out_stall_out_1 = jacobi_1d_B3_merge_out_stall_out_1;

    // out_unnamed_jacobi_1d10_jacobi_1d_avm_address(GPOUT,65)
    assign out_unnamed_jacobi_1d10_jacobi_1d_avm_address = bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d10_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount(GPOUT,66)
    assign out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount = bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable(GPOUT,67)
    assign out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable = bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d10_jacobi_1d_avm_enable(GPOUT,68)
    assign out_unnamed_jacobi_1d10_jacobi_1d_avm_enable = bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d10_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d10_jacobi_1d_avm_read(GPOUT,69)
    assign out_unnamed_jacobi_1d10_jacobi_1d_avm_read = bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d10_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d10_jacobi_1d_avm_write(GPOUT,70)
    assign out_unnamed_jacobi_1d10_jacobi_1d_avm_write = bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d10_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata(GPOUT,71)
    assign out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata = bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_address(GPOUT,72)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_address = bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount(GPOUT,73)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount = bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable(GPOUT,74)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable = bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_enable(GPOUT,75)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_enable = bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_read(GPOUT,76)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_read = bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_write(GPOUT,77)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_write = bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata(GPOUT,78)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata = bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_address(GPOUT,79)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_address = bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount(GPOUT,80)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount = bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable(GPOUT,81)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable = bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_enable(GPOUT,82)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_enable = bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_read(GPOUT,83)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_read = bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_write(GPOUT,84)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_write = bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata(GPOUT,85)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata = bb_jacobi_1d_B3_stall_region_out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata;

    // out_valid_in_0(GPOUT,86)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,87)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,88)
    assign out_valid_out_0 = jacobi_1d_B3_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,89)
    assign out_valid_out_1 = jacobi_1d_B3_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,91)
    assign out_pipeline_valid_out = bb_jacobi_1d_B3_stall_region_out_pipeline_valid_out;

endmodule
