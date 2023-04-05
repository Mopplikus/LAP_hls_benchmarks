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

// SystemVerilog created from bb_kernel_2mm_B5
// Created for function/kernel kernel_2mm
// SystemVerilog created on Wed Apr  5 01:12:29 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B5 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked92_0,
    input wire [0:0] in_forked92_1,
    input wire [31:0] in_i_075_pop23141_0,
    input wire [31:0] in_i_075_pop23141_1,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_memdep_1_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_1_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_memdep_1_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_1_kernel_2mm_avm_writeack,
    input wire [31:0] in_memdep_2_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_2_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_memdep_2_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_2_kernel_2mm_avm_writeack,
    input wire [31:0] in_memdep_3_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_3_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_memdep_3_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_3_kernel_2mm_avm_writeack,
    input wire [31:0] in_memdep_4_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_4_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_memdep_4_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_4_kernel_2mm_avm_writeack,
    input wire [31:0] in_memdep_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_memdep_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_kernel_2mm_avm_writeack,
    input wire [0:0] in_notcmp107140_0,
    input wire [0:0] in_notcmp107140_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [63:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack,
    input wire [63:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack,
    input wire [63:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack,
    input wire [63:0] in_unnamed_kernel_2mm9_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm9_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm9_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm9_kernel_2mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe12,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_memdep_1_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_1_kernel_2mm_avm_burstcount,
    output wire [3:0] out_memdep_1_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_1_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_1_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_1_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_1_kernel_2mm_avm_writedata,
    output wire [31:0] out_memdep_2_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_2_kernel_2mm_avm_burstcount,
    output wire [3:0] out_memdep_2_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_2_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_2_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_2_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_2_kernel_2mm_avm_writedata,
    output wire [31:0] out_memdep_3_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_3_kernel_2mm_avm_burstcount,
    output wire [3:0] out_memdep_3_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_3_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_3_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_3_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_3_kernel_2mm_avm_writedata,
    output wire [31:0] out_memdep_4_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_4_kernel_2mm_avm_burstcount,
    output wire [3:0] out_memdep_4_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_4_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_4_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_4_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_4_kernel_2mm_avm_writedata,
    output wire [31:0] out_memdep_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_kernel_2mm_avm_burstcount,
    output wire [3:0] out_memdep_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_kernel_2mm_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [63:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_write,
    output wire [63:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata,
    output wire [63:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_write,
    output wire [63:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata,
    output wire [63:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_write,
    output wire [63:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata,
    output wire [63:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_write,
    output wire [63:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_2mm_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_c0_exe11;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_c0_exe12;
    wire [31:0] bb_kernel_2mm_B5_stall_region_out_memdep_1_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_memdep_1_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B5_stall_region_out_memdep_1_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_memdep_1_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_memdep_1_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_memdep_1_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B5_stall_region_out_memdep_1_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B5_stall_region_out_memdep_2_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_memdep_2_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B5_stall_region_out_memdep_2_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_memdep_2_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_memdep_2_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_memdep_2_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B5_stall_region_out_memdep_2_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B5_stall_region_out_memdep_3_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_memdep_3_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B5_stall_region_out_memdep_3_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_memdep_3_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_memdep_3_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_memdep_3_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B5_stall_region_out_memdep_3_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B5_stall_region_out_memdep_4_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_memdep_4_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B5_stall_region_out_memdep_4_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_memdep_4_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_memdep_4_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_memdep_4_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B5_stall_region_out_memdep_4_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B5_stall_region_out_memdep_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_memdep_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B5_stall_region_out_memdep_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_memdep_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_memdep_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_memdep_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B5_stall_region_out_memdep_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_stall_out;
    wire [63:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount;
    wire [7:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_write;
    wire [63:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata;
    wire [63:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount;
    wire [7:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_write;
    wire [63:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata;
    wire [63:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount;
    wire [7:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_write;
    wire [63:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata;
    wire [63:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount;
    wire [7:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_write;
    wire [63:0] bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B5_stall_region_out_valid_out;
    wire [0:0] kernel_2mm_B5_branch_out_c0_exe12;
    wire [0:0] kernel_2mm_B5_branch_out_stall_out;
    wire [0:0] kernel_2mm_B5_branch_out_valid_out_0;
    wire [0:0] kernel_2mm_B5_branch_out_valid_out_1;
    wire [0:0] kernel_2mm_B5_merge_out_forked92;
    wire [31:0] kernel_2mm_B5_merge_out_i_075_pop23141;
    wire [0:0] kernel_2mm_B5_merge_out_notcmp107140;
    wire [0:0] kernel_2mm_B5_merge_out_stall_out_0;
    wire [0:0] kernel_2mm_B5_merge_out_stall_out_1;
    wire [0:0] kernel_2mm_B5_merge_out_valid_out;


    // kernel_2mm_B5_merge(BLACKBOX,55)
    kernel_2mm_B5_merge thekernel_2mm_B5_merge (
        .in_forked92_0(in_forked92_0),
        .in_forked92_1(in_forked92_1),
        .in_i_075_pop23141_0(in_i_075_pop23141_0),
        .in_i_075_pop23141_1(in_i_075_pop23141_1),
        .in_notcmp107140_0(in_notcmp107140_0),
        .in_notcmp107140_1(in_notcmp107140_1),
        .in_stall_in(bb_kernel_2mm_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked92(kernel_2mm_B5_merge_out_forked92),
        .out_i_075_pop23141(kernel_2mm_B5_merge_out_i_075_pop23141),
        .out_notcmp107140(kernel_2mm_B5_merge_out_notcmp107140),
        .out_stall_out_0(kernel_2mm_B5_merge_out_stall_out_0),
        .out_stall_out_1(kernel_2mm_B5_merge_out_stall_out_1),
        .out_valid_out(kernel_2mm_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B5_stall_region(BLACKBOX,2)
    kernel_2mm_bb_B5_stall_region thebb_kernel_2mm_B5_stall_region (
        .in_flush(in_flush),
        .in_forked92(kernel_2mm_B5_merge_out_forked92),
        .in_i_075_pop23141(kernel_2mm_B5_merge_out_i_075_pop23141),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_memdep_1_kernel_2mm_avm_readdata(in_memdep_1_kernel_2mm_avm_readdata),
        .in_memdep_1_kernel_2mm_avm_readdatavalid(in_memdep_1_kernel_2mm_avm_readdatavalid),
        .in_memdep_1_kernel_2mm_avm_waitrequest(in_memdep_1_kernel_2mm_avm_waitrequest),
        .in_memdep_1_kernel_2mm_avm_writeack(in_memdep_1_kernel_2mm_avm_writeack),
        .in_memdep_2_kernel_2mm_avm_readdata(in_memdep_2_kernel_2mm_avm_readdata),
        .in_memdep_2_kernel_2mm_avm_readdatavalid(in_memdep_2_kernel_2mm_avm_readdatavalid),
        .in_memdep_2_kernel_2mm_avm_waitrequest(in_memdep_2_kernel_2mm_avm_waitrequest),
        .in_memdep_2_kernel_2mm_avm_writeack(in_memdep_2_kernel_2mm_avm_writeack),
        .in_memdep_3_kernel_2mm_avm_readdata(in_memdep_3_kernel_2mm_avm_readdata),
        .in_memdep_3_kernel_2mm_avm_readdatavalid(in_memdep_3_kernel_2mm_avm_readdatavalid),
        .in_memdep_3_kernel_2mm_avm_waitrequest(in_memdep_3_kernel_2mm_avm_waitrequest),
        .in_memdep_3_kernel_2mm_avm_writeack(in_memdep_3_kernel_2mm_avm_writeack),
        .in_memdep_4_kernel_2mm_avm_readdata(in_memdep_4_kernel_2mm_avm_readdata),
        .in_memdep_4_kernel_2mm_avm_readdatavalid(in_memdep_4_kernel_2mm_avm_readdatavalid),
        .in_memdep_4_kernel_2mm_avm_waitrequest(in_memdep_4_kernel_2mm_avm_waitrequest),
        .in_memdep_4_kernel_2mm_avm_writeack(in_memdep_4_kernel_2mm_avm_writeack),
        .in_memdep_kernel_2mm_avm_readdata(in_memdep_kernel_2mm_avm_readdata),
        .in_memdep_kernel_2mm_avm_readdatavalid(in_memdep_kernel_2mm_avm_readdatavalid),
        .in_memdep_kernel_2mm_avm_waitrequest(in_memdep_kernel_2mm_avm_waitrequest),
        .in_memdep_kernel_2mm_avm_writeack(in_memdep_kernel_2mm_avm_writeack),
        .in_notcmp107140(kernel_2mm_B5_merge_out_notcmp107140),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_2mm_B5_branch_out_stall_out),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm9_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm9_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm9_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm9_kernel_2mm_avm_writeack),
        .in_valid_in(kernel_2mm_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_stall_out(bb_kernel_2mm_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_valid_out(bb_kernel_2mm_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_valid_out),
        .out_c0_exe11(bb_kernel_2mm_B5_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_kernel_2mm_B5_stall_region_out_c0_exe12),
        .out_memdep_1_kernel_2mm_avm_address(bb_kernel_2mm_B5_stall_region_out_memdep_1_kernel_2mm_avm_address),
        .out_memdep_1_kernel_2mm_avm_burstcount(bb_kernel_2mm_B5_stall_region_out_memdep_1_kernel_2mm_avm_burstcount),
        .out_memdep_1_kernel_2mm_avm_byteenable(bb_kernel_2mm_B5_stall_region_out_memdep_1_kernel_2mm_avm_byteenable),
        .out_memdep_1_kernel_2mm_avm_enable(bb_kernel_2mm_B5_stall_region_out_memdep_1_kernel_2mm_avm_enable),
        .out_memdep_1_kernel_2mm_avm_read(bb_kernel_2mm_B5_stall_region_out_memdep_1_kernel_2mm_avm_read),
        .out_memdep_1_kernel_2mm_avm_write(bb_kernel_2mm_B5_stall_region_out_memdep_1_kernel_2mm_avm_write),
        .out_memdep_1_kernel_2mm_avm_writedata(bb_kernel_2mm_B5_stall_region_out_memdep_1_kernel_2mm_avm_writedata),
        .out_memdep_2_kernel_2mm_avm_address(bb_kernel_2mm_B5_stall_region_out_memdep_2_kernel_2mm_avm_address),
        .out_memdep_2_kernel_2mm_avm_burstcount(bb_kernel_2mm_B5_stall_region_out_memdep_2_kernel_2mm_avm_burstcount),
        .out_memdep_2_kernel_2mm_avm_byteenable(bb_kernel_2mm_B5_stall_region_out_memdep_2_kernel_2mm_avm_byteenable),
        .out_memdep_2_kernel_2mm_avm_enable(bb_kernel_2mm_B5_stall_region_out_memdep_2_kernel_2mm_avm_enable),
        .out_memdep_2_kernel_2mm_avm_read(bb_kernel_2mm_B5_stall_region_out_memdep_2_kernel_2mm_avm_read),
        .out_memdep_2_kernel_2mm_avm_write(bb_kernel_2mm_B5_stall_region_out_memdep_2_kernel_2mm_avm_write),
        .out_memdep_2_kernel_2mm_avm_writedata(bb_kernel_2mm_B5_stall_region_out_memdep_2_kernel_2mm_avm_writedata),
        .out_memdep_3_kernel_2mm_avm_address(bb_kernel_2mm_B5_stall_region_out_memdep_3_kernel_2mm_avm_address),
        .out_memdep_3_kernel_2mm_avm_burstcount(bb_kernel_2mm_B5_stall_region_out_memdep_3_kernel_2mm_avm_burstcount),
        .out_memdep_3_kernel_2mm_avm_byteenable(bb_kernel_2mm_B5_stall_region_out_memdep_3_kernel_2mm_avm_byteenable),
        .out_memdep_3_kernel_2mm_avm_enable(bb_kernel_2mm_B5_stall_region_out_memdep_3_kernel_2mm_avm_enable),
        .out_memdep_3_kernel_2mm_avm_read(bb_kernel_2mm_B5_stall_region_out_memdep_3_kernel_2mm_avm_read),
        .out_memdep_3_kernel_2mm_avm_write(bb_kernel_2mm_B5_stall_region_out_memdep_3_kernel_2mm_avm_write),
        .out_memdep_3_kernel_2mm_avm_writedata(bb_kernel_2mm_B5_stall_region_out_memdep_3_kernel_2mm_avm_writedata),
        .out_memdep_4_kernel_2mm_avm_address(bb_kernel_2mm_B5_stall_region_out_memdep_4_kernel_2mm_avm_address),
        .out_memdep_4_kernel_2mm_avm_burstcount(bb_kernel_2mm_B5_stall_region_out_memdep_4_kernel_2mm_avm_burstcount),
        .out_memdep_4_kernel_2mm_avm_byteenable(bb_kernel_2mm_B5_stall_region_out_memdep_4_kernel_2mm_avm_byteenable),
        .out_memdep_4_kernel_2mm_avm_enable(bb_kernel_2mm_B5_stall_region_out_memdep_4_kernel_2mm_avm_enable),
        .out_memdep_4_kernel_2mm_avm_read(bb_kernel_2mm_B5_stall_region_out_memdep_4_kernel_2mm_avm_read),
        .out_memdep_4_kernel_2mm_avm_write(bb_kernel_2mm_B5_stall_region_out_memdep_4_kernel_2mm_avm_write),
        .out_memdep_4_kernel_2mm_avm_writedata(bb_kernel_2mm_B5_stall_region_out_memdep_4_kernel_2mm_avm_writedata),
        .out_memdep_kernel_2mm_avm_address(bb_kernel_2mm_B5_stall_region_out_memdep_kernel_2mm_avm_address),
        .out_memdep_kernel_2mm_avm_burstcount(bb_kernel_2mm_B5_stall_region_out_memdep_kernel_2mm_avm_burstcount),
        .out_memdep_kernel_2mm_avm_byteenable(bb_kernel_2mm_B5_stall_region_out_memdep_kernel_2mm_avm_byteenable),
        .out_memdep_kernel_2mm_avm_enable(bb_kernel_2mm_B5_stall_region_out_memdep_kernel_2mm_avm_enable),
        .out_memdep_kernel_2mm_avm_read(bb_kernel_2mm_B5_stall_region_out_memdep_kernel_2mm_avm_read),
        .out_memdep_kernel_2mm_avm_write(bb_kernel_2mm_B5_stall_region_out_memdep_kernel_2mm_avm_write),
        .out_memdep_kernel_2mm_avm_writedata(bb_kernel_2mm_B5_stall_region_out_memdep_kernel_2mm_avm_writedata),
        .out_pipeline_valid_out(bb_kernel_2mm_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_2mm_B5_stall_region_out_stall_out),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_address(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_enable(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_read(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_write(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_address(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_enable(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_read(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_write(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_address(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_enable(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_read(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_write(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_address(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_enable(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_read(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_write(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata(bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata),
        .out_valid_out(bb_kernel_2mm_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B5_branch(BLACKBOX,54)
    kernel_2mm_B5_branch thekernel_2mm_B5_branch (
        .in_c0_exe11(bb_kernel_2mm_B5_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_kernel_2mm_B5_stall_region_out_c0_exe12),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_2mm_B5_stall_region_out_valid_out),
        .out_c0_exe12(kernel_2mm_B5_branch_out_c0_exe12),
        .out_stall_out(kernel_2mm_B5_branch_out_stall_out),
        .out_valid_out_0(kernel_2mm_B5_branch_out_valid_out_0),
        .out_valid_out_1(kernel_2mm_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe12(GPOUT,56)
    assign out_c0_exe12 = kernel_2mm_B5_branch_out_c0_exe12;

    // out_exiting_stall_out(GPOUT,57)
    assign out_exiting_stall_out = bb_kernel_2mm_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,58)
    assign out_exiting_valid_out = bb_kernel_2mm_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_exiting_valid_out;

    // out_memdep_1_kernel_2mm_avm_address(GPOUT,59)
    assign out_memdep_1_kernel_2mm_avm_address = bb_kernel_2mm_B5_stall_region_out_memdep_1_kernel_2mm_avm_address;

    // out_memdep_1_kernel_2mm_avm_burstcount(GPOUT,60)
    assign out_memdep_1_kernel_2mm_avm_burstcount = bb_kernel_2mm_B5_stall_region_out_memdep_1_kernel_2mm_avm_burstcount;

    // out_memdep_1_kernel_2mm_avm_byteenable(GPOUT,61)
    assign out_memdep_1_kernel_2mm_avm_byteenable = bb_kernel_2mm_B5_stall_region_out_memdep_1_kernel_2mm_avm_byteenable;

    // out_memdep_1_kernel_2mm_avm_enable(GPOUT,62)
    assign out_memdep_1_kernel_2mm_avm_enable = bb_kernel_2mm_B5_stall_region_out_memdep_1_kernel_2mm_avm_enable;

    // out_memdep_1_kernel_2mm_avm_read(GPOUT,63)
    assign out_memdep_1_kernel_2mm_avm_read = bb_kernel_2mm_B5_stall_region_out_memdep_1_kernel_2mm_avm_read;

    // out_memdep_1_kernel_2mm_avm_write(GPOUT,64)
    assign out_memdep_1_kernel_2mm_avm_write = bb_kernel_2mm_B5_stall_region_out_memdep_1_kernel_2mm_avm_write;

    // out_memdep_1_kernel_2mm_avm_writedata(GPOUT,65)
    assign out_memdep_1_kernel_2mm_avm_writedata = bb_kernel_2mm_B5_stall_region_out_memdep_1_kernel_2mm_avm_writedata;

    // out_memdep_2_kernel_2mm_avm_address(GPOUT,66)
    assign out_memdep_2_kernel_2mm_avm_address = bb_kernel_2mm_B5_stall_region_out_memdep_2_kernel_2mm_avm_address;

    // out_memdep_2_kernel_2mm_avm_burstcount(GPOUT,67)
    assign out_memdep_2_kernel_2mm_avm_burstcount = bb_kernel_2mm_B5_stall_region_out_memdep_2_kernel_2mm_avm_burstcount;

    // out_memdep_2_kernel_2mm_avm_byteenable(GPOUT,68)
    assign out_memdep_2_kernel_2mm_avm_byteenable = bb_kernel_2mm_B5_stall_region_out_memdep_2_kernel_2mm_avm_byteenable;

    // out_memdep_2_kernel_2mm_avm_enable(GPOUT,69)
    assign out_memdep_2_kernel_2mm_avm_enable = bb_kernel_2mm_B5_stall_region_out_memdep_2_kernel_2mm_avm_enable;

    // out_memdep_2_kernel_2mm_avm_read(GPOUT,70)
    assign out_memdep_2_kernel_2mm_avm_read = bb_kernel_2mm_B5_stall_region_out_memdep_2_kernel_2mm_avm_read;

    // out_memdep_2_kernel_2mm_avm_write(GPOUT,71)
    assign out_memdep_2_kernel_2mm_avm_write = bb_kernel_2mm_B5_stall_region_out_memdep_2_kernel_2mm_avm_write;

    // out_memdep_2_kernel_2mm_avm_writedata(GPOUT,72)
    assign out_memdep_2_kernel_2mm_avm_writedata = bb_kernel_2mm_B5_stall_region_out_memdep_2_kernel_2mm_avm_writedata;

    // out_memdep_3_kernel_2mm_avm_address(GPOUT,73)
    assign out_memdep_3_kernel_2mm_avm_address = bb_kernel_2mm_B5_stall_region_out_memdep_3_kernel_2mm_avm_address;

    // out_memdep_3_kernel_2mm_avm_burstcount(GPOUT,74)
    assign out_memdep_3_kernel_2mm_avm_burstcount = bb_kernel_2mm_B5_stall_region_out_memdep_3_kernel_2mm_avm_burstcount;

    // out_memdep_3_kernel_2mm_avm_byteenable(GPOUT,75)
    assign out_memdep_3_kernel_2mm_avm_byteenable = bb_kernel_2mm_B5_stall_region_out_memdep_3_kernel_2mm_avm_byteenable;

    // out_memdep_3_kernel_2mm_avm_enable(GPOUT,76)
    assign out_memdep_3_kernel_2mm_avm_enable = bb_kernel_2mm_B5_stall_region_out_memdep_3_kernel_2mm_avm_enable;

    // out_memdep_3_kernel_2mm_avm_read(GPOUT,77)
    assign out_memdep_3_kernel_2mm_avm_read = bb_kernel_2mm_B5_stall_region_out_memdep_3_kernel_2mm_avm_read;

    // out_memdep_3_kernel_2mm_avm_write(GPOUT,78)
    assign out_memdep_3_kernel_2mm_avm_write = bb_kernel_2mm_B5_stall_region_out_memdep_3_kernel_2mm_avm_write;

    // out_memdep_3_kernel_2mm_avm_writedata(GPOUT,79)
    assign out_memdep_3_kernel_2mm_avm_writedata = bb_kernel_2mm_B5_stall_region_out_memdep_3_kernel_2mm_avm_writedata;

    // out_memdep_4_kernel_2mm_avm_address(GPOUT,80)
    assign out_memdep_4_kernel_2mm_avm_address = bb_kernel_2mm_B5_stall_region_out_memdep_4_kernel_2mm_avm_address;

    // out_memdep_4_kernel_2mm_avm_burstcount(GPOUT,81)
    assign out_memdep_4_kernel_2mm_avm_burstcount = bb_kernel_2mm_B5_stall_region_out_memdep_4_kernel_2mm_avm_burstcount;

    // out_memdep_4_kernel_2mm_avm_byteenable(GPOUT,82)
    assign out_memdep_4_kernel_2mm_avm_byteenable = bb_kernel_2mm_B5_stall_region_out_memdep_4_kernel_2mm_avm_byteenable;

    // out_memdep_4_kernel_2mm_avm_enable(GPOUT,83)
    assign out_memdep_4_kernel_2mm_avm_enable = bb_kernel_2mm_B5_stall_region_out_memdep_4_kernel_2mm_avm_enable;

    // out_memdep_4_kernel_2mm_avm_read(GPOUT,84)
    assign out_memdep_4_kernel_2mm_avm_read = bb_kernel_2mm_B5_stall_region_out_memdep_4_kernel_2mm_avm_read;

    // out_memdep_4_kernel_2mm_avm_write(GPOUT,85)
    assign out_memdep_4_kernel_2mm_avm_write = bb_kernel_2mm_B5_stall_region_out_memdep_4_kernel_2mm_avm_write;

    // out_memdep_4_kernel_2mm_avm_writedata(GPOUT,86)
    assign out_memdep_4_kernel_2mm_avm_writedata = bb_kernel_2mm_B5_stall_region_out_memdep_4_kernel_2mm_avm_writedata;

    // out_memdep_kernel_2mm_avm_address(GPOUT,87)
    assign out_memdep_kernel_2mm_avm_address = bb_kernel_2mm_B5_stall_region_out_memdep_kernel_2mm_avm_address;

    // out_memdep_kernel_2mm_avm_burstcount(GPOUT,88)
    assign out_memdep_kernel_2mm_avm_burstcount = bb_kernel_2mm_B5_stall_region_out_memdep_kernel_2mm_avm_burstcount;

    // out_memdep_kernel_2mm_avm_byteenable(GPOUT,89)
    assign out_memdep_kernel_2mm_avm_byteenable = bb_kernel_2mm_B5_stall_region_out_memdep_kernel_2mm_avm_byteenable;

    // out_memdep_kernel_2mm_avm_enable(GPOUT,90)
    assign out_memdep_kernel_2mm_avm_enable = bb_kernel_2mm_B5_stall_region_out_memdep_kernel_2mm_avm_enable;

    // out_memdep_kernel_2mm_avm_read(GPOUT,91)
    assign out_memdep_kernel_2mm_avm_read = bb_kernel_2mm_B5_stall_region_out_memdep_kernel_2mm_avm_read;

    // out_memdep_kernel_2mm_avm_write(GPOUT,92)
    assign out_memdep_kernel_2mm_avm_write = bb_kernel_2mm_B5_stall_region_out_memdep_kernel_2mm_avm_write;

    // out_memdep_kernel_2mm_avm_writedata(GPOUT,93)
    assign out_memdep_kernel_2mm_avm_writedata = bb_kernel_2mm_B5_stall_region_out_memdep_kernel_2mm_avm_writedata;

    // out_stall_in_0(GPOUT,94)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,95)
    assign out_stall_out_0 = kernel_2mm_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,96)
    assign out_stall_out_1 = kernel_2mm_B5_merge_out_stall_out_1;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_address(GPOUT,97)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_address = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount(GPOUT,98)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable(GPOUT,99)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_enable(GPOUT,100)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_enable = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_read(GPOUT,101)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_read = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_write(GPOUT,102)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_write = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata(GPOUT,103)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_address(GPOUT,104)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_address = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount(GPOUT,105)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable(GPOUT,106)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_enable(GPOUT,107)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_enable = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_read(GPOUT,108)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_read = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_write(GPOUT,109)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_write = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata(GPOUT,110)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_address(GPOUT,111)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_address = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount(GPOUT,112)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable(GPOUT,113)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_enable(GPOUT,114)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_enable = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_read(GPOUT,115)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_read = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_write(GPOUT,116)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_write = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata(GPOUT,117)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_address(GPOUT,118)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_address = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount(GPOUT,119)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable(GPOUT,120)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_enable(GPOUT,121)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_enable = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_read(GPOUT,122)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_read = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_write(GPOUT,123)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_write = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata(GPOUT,124)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata = bb_kernel_2mm_B5_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata;

    // out_valid_in_0(GPOUT,125)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,126)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,127)
    assign out_valid_out_0 = kernel_2mm_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,128)
    assign out_valid_out_1 = kernel_2mm_B5_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,130)
    assign out_pipeline_valid_out = bb_kernel_2mm_B5_stall_region_out_pipeline_valid_out;

endmodule
