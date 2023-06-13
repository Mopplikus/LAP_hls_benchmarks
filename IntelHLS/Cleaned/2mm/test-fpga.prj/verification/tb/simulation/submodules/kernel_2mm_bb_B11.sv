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

// SystemVerilog created from bb_kernel_2mm_B11
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 01:31:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B11 (
    input wire [63:0] in_arrayidx243147_0,
    input wire [63:0] in_arrayidx243147_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked52_0,
    input wire [0:0] in_forked52_1,
    input wire [31:0] in_i11_082_pop23108_pop35145_0,
    input wire [31:0] in_i11_082_pop23108_pop35145_1,
    input wire [31:0] in_i11_082_pop23138_0,
    input wire [31:0] in_i11_082_pop23138_1,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_j16_081_pop34146_0,
    input wire [31:0] in_j16_081_pop34146_1,
    input wire [31:0] in_mul_add26110_pop36149_0,
    input wire [31:0] in_mul_add26110_pop36149_1,
    input wire [31:0] in_mul_add26141_0,
    input wire [31:0] in_mul_add26141_1,
    input wire [0:0] in_notcmp67148_0,
    input wire [0:0] in_notcmp67148_1,
    input wire [0:0] in_notcmp72112_pop37150_0,
    input wire [0:0] in_notcmp72112_pop37150_1,
    input wire [0:0] in_notcmp72144_0,
    input wire [0:0] in_notcmp72144_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_kernel_2mm12_0,
    input wire [31:0] in_unnamed_kernel_2mm12_1,
    input wire [31:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm16_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm16_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm16_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm16_kernel_2mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe6257,
    output wire [63:0] out_c0_exe7258,
    output wire [0:0] out_c0_exe8259,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_2mm_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_c0_exe5256;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_c0_exe6257;
    wire [63:0] bb_kernel_2mm_B11_stall_region_out_c0_exe7258;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_c0_exe8259;
    wire [31:0] bb_kernel_2mm_B11_stall_region_out_c1_exe1;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_stall_out;
    wire [31:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_valid_out;
    wire [0:0] kernel_2mm_B11_branch_out_c0_exe6257;
    wire [63:0] kernel_2mm_B11_branch_out_c0_exe7258;
    wire [0:0] kernel_2mm_B11_branch_out_c0_exe8259;
    wire [31:0] kernel_2mm_B11_branch_out_c1_exe1;
    wire [0:0] kernel_2mm_B11_branch_out_stall_out;
    wire [0:0] kernel_2mm_B11_branch_out_valid_out_0;
    wire [0:0] kernel_2mm_B11_branch_out_valid_out_1;
    wire [63:0] kernel_2mm_B11_merge_out_arrayidx243147;
    wire [0:0] kernel_2mm_B11_merge_out_forked52;
    wire [31:0] kernel_2mm_B11_merge_out_i11_082_pop23108_pop35145;
    wire [31:0] kernel_2mm_B11_merge_out_i11_082_pop23138;
    wire [31:0] kernel_2mm_B11_merge_out_j16_081_pop34146;
    wire [31:0] kernel_2mm_B11_merge_out_mul_add26110_pop36149;
    wire [31:0] kernel_2mm_B11_merge_out_mul_add26141;
    wire [0:0] kernel_2mm_B11_merge_out_notcmp67148;
    wire [0:0] kernel_2mm_B11_merge_out_notcmp72112_pop37150;
    wire [0:0] kernel_2mm_B11_merge_out_notcmp72144;
    wire [0:0] kernel_2mm_B11_merge_out_stall_out_0;
    wire [0:0] kernel_2mm_B11_merge_out_stall_out_1;
    wire [31:0] kernel_2mm_B11_merge_out_unnamed_kernel_2mm12;
    wire [0:0] kernel_2mm_B11_merge_out_valid_out;


    // kernel_2mm_B11_merge(BLACKBOX,42)
    kernel_2mm_B11_merge thekernel_2mm_B11_merge (
        .in_arrayidx243147_0(in_arrayidx243147_0),
        .in_arrayidx243147_1(in_arrayidx243147_1),
        .in_forked52_0(in_forked52_0),
        .in_forked52_1(in_forked52_1),
        .in_i11_082_pop23108_pop35145_0(in_i11_082_pop23108_pop35145_0),
        .in_i11_082_pop23108_pop35145_1(in_i11_082_pop23108_pop35145_1),
        .in_i11_082_pop23138_0(in_i11_082_pop23138_0),
        .in_i11_082_pop23138_1(in_i11_082_pop23138_1),
        .in_j16_081_pop34146_0(in_j16_081_pop34146_0),
        .in_j16_081_pop34146_1(in_j16_081_pop34146_1),
        .in_mul_add26110_pop36149_0(in_mul_add26110_pop36149_0),
        .in_mul_add26110_pop36149_1(in_mul_add26110_pop36149_1),
        .in_mul_add26141_0(in_mul_add26141_0),
        .in_mul_add26141_1(in_mul_add26141_1),
        .in_notcmp67148_0(in_notcmp67148_0),
        .in_notcmp67148_1(in_notcmp67148_1),
        .in_notcmp72112_pop37150_0(in_notcmp72112_pop37150_0),
        .in_notcmp72112_pop37150_1(in_notcmp72112_pop37150_1),
        .in_notcmp72144_0(in_notcmp72144_0),
        .in_notcmp72144_1(in_notcmp72144_1),
        .in_stall_in(bb_kernel_2mm_B11_stall_region_out_stall_out),
        .in_unnamed_kernel_2mm12_0(in_unnamed_kernel_2mm12_0),
        .in_unnamed_kernel_2mm12_1(in_unnamed_kernel_2mm12_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_arrayidx243147(kernel_2mm_B11_merge_out_arrayidx243147),
        .out_forked52(kernel_2mm_B11_merge_out_forked52),
        .out_i11_082_pop23108_pop35145(kernel_2mm_B11_merge_out_i11_082_pop23108_pop35145),
        .out_i11_082_pop23138(kernel_2mm_B11_merge_out_i11_082_pop23138),
        .out_j16_081_pop34146(kernel_2mm_B11_merge_out_j16_081_pop34146),
        .out_mul_add26110_pop36149(kernel_2mm_B11_merge_out_mul_add26110_pop36149),
        .out_mul_add26141(kernel_2mm_B11_merge_out_mul_add26141),
        .out_notcmp67148(kernel_2mm_B11_merge_out_notcmp67148),
        .out_notcmp72112_pop37150(kernel_2mm_B11_merge_out_notcmp72112_pop37150),
        .out_notcmp72144(kernel_2mm_B11_merge_out_notcmp72144),
        .out_stall_out_0(kernel_2mm_B11_merge_out_stall_out_0),
        .out_stall_out_1(kernel_2mm_B11_merge_out_stall_out_1),
        .out_unnamed_kernel_2mm12(kernel_2mm_B11_merge_out_unnamed_kernel_2mm12),
        .out_valid_out(kernel_2mm_B11_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B11_stall_region(BLACKBOX,2)
    kernel_2mm_bb_B11_stall_region thebb_kernel_2mm_B11_stall_region (
        .in_arrayidx243147(kernel_2mm_B11_merge_out_arrayidx243147),
        .in_flush(in_flush),
        .in_forked52(kernel_2mm_B11_merge_out_forked52),
        .in_i11_082_pop23108_pop35145(kernel_2mm_B11_merge_out_i11_082_pop23108_pop35145),
        .in_i11_082_pop23138(kernel_2mm_B11_merge_out_i11_082_pop23138),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_j16_081_pop34146(kernel_2mm_B11_merge_out_j16_081_pop34146),
        .in_mul_add26110_pop36149(kernel_2mm_B11_merge_out_mul_add26110_pop36149),
        .in_mul_add26141(kernel_2mm_B11_merge_out_mul_add26141),
        .in_notcmp67148(kernel_2mm_B11_merge_out_notcmp67148),
        .in_notcmp72112_pop37150(kernel_2mm_B11_merge_out_notcmp72112_pop37150),
        .in_notcmp72144(kernel_2mm_B11_merge_out_notcmp72144),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kernel_2mm_B11_branch_out_stall_out),
        .in_unnamed_kernel_2mm12(kernel_2mm_B11_merge_out_unnamed_kernel_2mm12),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm16_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm16_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm16_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm16_kernel_2mm_avm_writeack),
        .in_valid_in(kernel_2mm_B11_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_stall_out(bb_kernel_2mm_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_valid_out(bb_kernel_2mm_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_valid_out),
        .out_c0_exe5256(bb_kernel_2mm_B11_stall_region_out_c0_exe5256),
        .out_c0_exe6257(bb_kernel_2mm_B11_stall_region_out_c0_exe6257),
        .out_c0_exe7258(bb_kernel_2mm_B11_stall_region_out_c0_exe7258),
        .out_c0_exe8259(bb_kernel_2mm_B11_stall_region_out_c0_exe8259),
        .out_c1_exe1(bb_kernel_2mm_B11_stall_region_out_c1_exe1),
        .out_pipeline_valid_out(bb_kernel_2mm_B11_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kernel_2mm_B11_stall_region_out_stall_out),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_address(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_enable(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_read(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_write(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_address(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_enable(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_read(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_write(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata),
        .out_valid_out(bb_kernel_2mm_B11_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B11_branch(BLACKBOX,41)
    kernel_2mm_B11_branch thekernel_2mm_B11_branch (
        .in_c0_exe5256(bb_kernel_2mm_B11_stall_region_out_c0_exe5256),
        .in_c0_exe6257(bb_kernel_2mm_B11_stall_region_out_c0_exe6257),
        .in_c0_exe7258(bb_kernel_2mm_B11_stall_region_out_c0_exe7258),
        .in_c0_exe8259(bb_kernel_2mm_B11_stall_region_out_c0_exe8259),
        .in_c1_exe1(bb_kernel_2mm_B11_stall_region_out_c1_exe1),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_2mm_B11_stall_region_out_valid_out),
        .out_c0_exe6257(kernel_2mm_B11_branch_out_c0_exe6257),
        .out_c0_exe7258(kernel_2mm_B11_branch_out_c0_exe7258),
        .out_c0_exe8259(kernel_2mm_B11_branch_out_c0_exe8259),
        .out_c1_exe1(kernel_2mm_B11_branch_out_c1_exe1),
        .out_stall_out(kernel_2mm_B11_branch_out_stall_out),
        .out_valid_out_0(kernel_2mm_B11_branch_out_valid_out_0),
        .out_valid_out_1(kernel_2mm_B11_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe6257(GPOUT,43)
    assign out_c0_exe6257 = kernel_2mm_B11_branch_out_c0_exe6257;

    // out_c0_exe7258(GPOUT,44)
    assign out_c0_exe7258 = kernel_2mm_B11_branch_out_c0_exe7258;

    // out_c0_exe8259(GPOUT,45)
    assign out_c0_exe8259 = kernel_2mm_B11_branch_out_c0_exe8259;

    // out_c1_exe1(GPOUT,46)
    assign out_c1_exe1 = kernel_2mm_B11_branch_out_c1_exe1;

    // out_exiting_stall_out(GPOUT,47)
    assign out_exiting_stall_out = bb_kernel_2mm_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,48)
    assign out_exiting_valid_out = bb_kernel_2mm_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_valid_out;

    // out_stall_in_0(GPOUT,49)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,50)
    assign out_stall_out_0 = kernel_2mm_B11_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,51)
    assign out_stall_out_1 = kernel_2mm_B11_merge_out_stall_out_1;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_address(GPOUT,52)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_address = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount(GPOUT,53)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable(GPOUT,54)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_enable(GPOUT,55)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_enable = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_read(GPOUT,56)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_read = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_write(GPOUT,57)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_write = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata(GPOUT,58)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_address(GPOUT,59)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_address = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount(GPOUT,60)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable(GPOUT,61)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_enable(GPOUT,62)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_enable = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_read(GPOUT,63)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_read = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_write(GPOUT,64)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_write = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata(GPOUT,65)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata;

    // out_valid_in_0(GPOUT,66)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,67)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,68)
    assign out_valid_out_0 = kernel_2mm_B11_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,69)
    assign out_valid_out_1 = kernel_2mm_B11_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,71)
    assign out_pipeline_valid_out = bb_kernel_2mm_B11_stall_region_out_pipeline_valid_out;

endmodule
