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

// SystemVerilog created from bb_kernel_2mm_B6
// Created for function/kernel kernel_2mm
// SystemVerilog created on Thu Apr 27 14:25:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B6 (
    input wire [63:0] in_arrayidx11169_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_i_040_pop1545_pop1966_0,
    input wire [31:0] in_i_040_pop1565_0,
    input wire [63:0] in_idxprom1068_0,
    input wire [63:0] in_idxprom67_0,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_notcmp2670_0,
    input wire [0:0] in_notcmp3141_pop1871_0,
    input wire [0:0] in_notcmp3162_0,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm8_0,
    input wire [31:0] in_unnamed_kernel_2mm9_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm9_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm9_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm9_kernel_2mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_c0_exe1133,
    output wire [31:0] out_c0_exe2134,
    output wire [0:0] out_c0_exe5137,
    output wire [63:0] out_c0_exe6138,
    output wire [0:0] out_c0_exe7139,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_2mm_B6_stall_region_out_almost_empty_out;
    wire [63:0] bb_kernel_2mm_B6_stall_region_out_c0_exe1133;
    wire [31:0] bb_kernel_2mm_B6_stall_region_out_c0_exe2134;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_c0_exe4136;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_c0_exe5137;
    wire [63:0] bb_kernel_2mm_B6_stall_region_out_c0_exe6138;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_c0_exe7139;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_empty_out;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_stall_out;
    wire [31:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B6_stall_region_out_valid_out;
    wire [63:0] kernel_2mm_B6_branch_out_c0_exe1133;
    wire [31:0] kernel_2mm_B6_branch_out_c0_exe2134;
    wire [0:0] kernel_2mm_B6_branch_out_c0_exe5137;
    wire [63:0] kernel_2mm_B6_branch_out_c0_exe6138;
    wire [0:0] kernel_2mm_B6_branch_out_c0_exe7139;
    wire [0:0] kernel_2mm_B6_branch_out_stall_out;
    wire [0:0] kernel_2mm_B6_branch_out_valid_out_0;
    wire [0:0] kernel_2mm_B6_merge_out_almost_empty_out;
    wire [63:0] kernel_2mm_B6_merge_out_arrayidx11169;
    wire [0:0] kernel_2mm_B6_merge_out_empty_out;
    wire [31:0] kernel_2mm_B6_merge_out_i_040_pop1545_pop1966;
    wire [31:0] kernel_2mm_B6_merge_out_i_040_pop1565;
    wire [63:0] kernel_2mm_B6_merge_out_idxprom1068;
    wire [63:0] kernel_2mm_B6_merge_out_idxprom67;
    wire [0:0] kernel_2mm_B6_merge_out_notcmp2670;
    wire [0:0] kernel_2mm_B6_merge_out_notcmp3141_pop1871;
    wire [0:0] kernel_2mm_B6_merge_out_notcmp3162;
    wire [0:0] kernel_2mm_B6_merge_out_stall_out_0;
    wire [31:0] kernel_2mm_B6_merge_out_unnamed_kernel_2mm8;
    wire [0:0] kernel_2mm_B6_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // kernel_2mm_B6_merge(BLACKBOX,25)
    kernel_2mm_B6_merge thekernel_2mm_B6_merge (
        .in_arrayidx11169_0(in_arrayidx11169_0),
        .in_i_040_pop1545_pop1966_0(in_i_040_pop1545_pop1966_0),
        .in_i_040_pop1565_0(in_i_040_pop1565_0),
        .in_idxprom1068_0(in_idxprom1068_0),
        .in_idxprom67_0(in_idxprom67_0),
        .in_notcmp2670_0(in_notcmp2670_0),
        .in_notcmp3141_pop1871_0(in_notcmp3141_pop1871_0),
        .in_notcmp3162_0(in_notcmp3162_0),
        .in_stall_in(bb_kernel_2mm_B6_stall_region_out_stall_out),
        .in_unnamed_kernel_2mm8_0(in_unnamed_kernel_2mm8_0),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(kernel_2mm_B6_merge_out_almost_empty_out),
        .out_arrayidx11169(kernel_2mm_B6_merge_out_arrayidx11169),
        .out_empty_out(kernel_2mm_B6_merge_out_empty_out),
        .out_i_040_pop1545_pop1966(kernel_2mm_B6_merge_out_i_040_pop1545_pop1966),
        .out_i_040_pop1565(kernel_2mm_B6_merge_out_i_040_pop1565),
        .out_idxprom1068(kernel_2mm_B6_merge_out_idxprom1068),
        .out_idxprom67(kernel_2mm_B6_merge_out_idxprom67),
        .out_notcmp2670(kernel_2mm_B6_merge_out_notcmp2670),
        .out_notcmp3141_pop1871(kernel_2mm_B6_merge_out_notcmp3141_pop1871),
        .out_notcmp3162(kernel_2mm_B6_merge_out_notcmp3162),
        .out_stall_out_0(kernel_2mm_B6_merge_out_stall_out_0),
        .out_unnamed_kernel_2mm8(kernel_2mm_B6_merge_out_unnamed_kernel_2mm8),
        .out_valid_out(kernel_2mm_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B6_stall_region(BLACKBOX,2)
    kernel_2mm_bb_B6_stall_region thebb_kernel_2mm_B6_stall_region (
        .in_almost_empty_in(kernel_2mm_B6_merge_out_almost_empty_out),
        .in_arrayidx11169(kernel_2mm_B6_merge_out_arrayidx11169),
        .in_empty_in(kernel_2mm_B6_merge_out_empty_out),
        .in_flush(in_flush),
        .in_i_040_pop1545_pop1966(kernel_2mm_B6_merge_out_i_040_pop1545_pop1966),
        .in_i_040_pop1565(kernel_2mm_B6_merge_out_i_040_pop1565),
        .in_idxprom1068(kernel_2mm_B6_merge_out_idxprom1068),
        .in_idxprom67(kernel_2mm_B6_merge_out_idxprom67),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_notcmp2670(kernel_2mm_B6_merge_out_notcmp2670),
        .in_notcmp3141_pop1871(kernel_2mm_B6_merge_out_notcmp3141_pop1871),
        .in_notcmp3162(kernel_2mm_B6_merge_out_notcmp3162),
        .in_stall_in(kernel_2mm_B6_branch_out_stall_out),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm8(kernel_2mm_B6_merge_out_unnamed_kernel_2mm8),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm9_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm9_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm9_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm9_kernel_2mm_avm_writeack),
        .in_valid_in(kernel_2mm_B6_merge_out_valid_out),
        .out_almost_empty_out(bb_kernel_2mm_B6_stall_region_out_almost_empty_out),
        .out_c0_exe1133(bb_kernel_2mm_B6_stall_region_out_c0_exe1133),
        .out_c0_exe2134(bb_kernel_2mm_B6_stall_region_out_c0_exe2134),
        .out_c0_exe4136(bb_kernel_2mm_B6_stall_region_out_c0_exe4136),
        .out_c0_exe5137(bb_kernel_2mm_B6_stall_region_out_c0_exe5137),
        .out_c0_exe6138(bb_kernel_2mm_B6_stall_region_out_c0_exe6138),
        .out_c0_exe7139(bb_kernel_2mm_B6_stall_region_out_c0_exe7139),
        .out_empty_out(bb_kernel_2mm_B6_stall_region_out_empty_out),
        .out_profile_loop_o_valid(bb_kernel_2mm_B6_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_kernel_2mm_B6_stall_region_out_stall_out),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_address(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_enable(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_read(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_write(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_address(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_enable(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_read(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_write(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata(bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata),
        .out_valid_out(bb_kernel_2mm_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B6_branch(BLACKBOX,24)
    kernel_2mm_B6_branch thekernel_2mm_B6_branch (
        .in_almost_empty_in(bb_kernel_2mm_B6_stall_region_out_almost_empty_out),
        .in_c0_exe1133(bb_kernel_2mm_B6_stall_region_out_c0_exe1133),
        .in_c0_exe2134(bb_kernel_2mm_B6_stall_region_out_c0_exe2134),
        .in_c0_exe4136(bb_kernel_2mm_B6_stall_region_out_c0_exe4136),
        .in_c0_exe5137(bb_kernel_2mm_B6_stall_region_out_c0_exe5137),
        .in_c0_exe6138(bb_kernel_2mm_B6_stall_region_out_c0_exe6138),
        .in_c0_exe7139(bb_kernel_2mm_B6_stall_region_out_c0_exe7139),
        .in_empty_in(bb_kernel_2mm_B6_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_2mm_B6_stall_region_out_valid_out),
        .out_c0_exe1133(kernel_2mm_B6_branch_out_c0_exe1133),
        .out_c0_exe2134(kernel_2mm_B6_branch_out_c0_exe2134),
        .out_c0_exe5137(kernel_2mm_B6_branch_out_c0_exe5137),
        .out_c0_exe6138(kernel_2mm_B6_branch_out_c0_exe6138),
        .out_c0_exe7139(kernel_2mm_B6_branch_out_c0_exe7139),
        .out_stall_out(kernel_2mm_B6_branch_out_stall_out),
        .out_valid_out_0(kernel_2mm_B6_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1133(GPOUT,26)
    assign out_c0_exe1133 = kernel_2mm_B6_branch_out_c0_exe1133;

    // out_c0_exe2134(GPOUT,27)
    assign out_c0_exe2134 = kernel_2mm_B6_branch_out_c0_exe2134;

    // out_c0_exe5137(GPOUT,28)
    assign out_c0_exe5137 = kernel_2mm_B6_branch_out_c0_exe5137;

    // out_c0_exe6138(GPOUT,29)
    assign out_c0_exe6138 = kernel_2mm_B6_branch_out_c0_exe6138;

    // out_c0_exe7139(GPOUT,30)
    assign out_c0_exe7139 = kernel_2mm_B6_branch_out_c0_exe7139;

    // out_profile_loop_o_valid(GPOUT,31)
    assign out_profile_loop_o_valid = bb_kernel_2mm_B6_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,32)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,33)
    assign out_stall_out_0 = kernel_2mm_B6_merge_out_stall_out_0;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_address(GPOUT,34)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_address = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount(GPOUT,35)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable(GPOUT,36)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_enable(GPOUT,37)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_enable = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_read(GPOUT,38)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_read = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_write(GPOUT,39)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_write = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata(GPOUT,40)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_address(GPOUT,41)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_address = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount(GPOUT,42)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable(GPOUT,43)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_enable(GPOUT,44)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_enable = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_read(GPOUT,45)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_read = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_write(GPOUT,46)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_write = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata(GPOUT,47)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata = bb_kernel_2mm_B6_stall_region_out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata;

    // out_valid_in_0(GPOUT,48)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,49)
    assign out_valid_out_0 = kernel_2mm_B6_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,50)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
