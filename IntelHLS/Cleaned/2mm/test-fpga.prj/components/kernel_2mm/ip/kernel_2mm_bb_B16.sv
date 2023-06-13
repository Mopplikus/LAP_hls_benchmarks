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

// SystemVerilog created from bb_kernel_2mm_B16
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 01:31:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B16 (
    output wire [0:0] out_feedback_out_40,
    input wire [0:0] in_feedback_stall_in_40,
    output wire [0:0] out_feedback_valid_out_40,
    input wire [0:0] in_c0_exe1037113_0,
    input wire [0:0] in_c0_exe1137214_0,
    input wire [0:0] in_c0_exe73689_0,
    input wire [0:0] in_c0_exe836911_0,
    input wire [63:0] in_c0_exe937012_0,
    input wire [31:0] in_c1_exe139015_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_2_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_2_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_memdep_2_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_2_kernel_2mm_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe73689,
    output wire [0:0] out_c0_exe836911,
    output wire [0:0] out_lsu_memdep_2_o_active,
    output wire [0:0] out_memdep_2,
    output wire [31:0] out_memdep_2_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_2_kernel_2mm_avm_burstcount,
    output wire [3:0] out_memdep_2_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_2_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_2_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_2_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_2_kernel_2mm_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_2mm_B16_stall_region_out_c0_exe1137214;
    wire [0:0] bb_kernel_2mm_B16_stall_region_out_c0_exe73689;
    wire [0:0] bb_kernel_2mm_B16_stall_region_out_c0_exe836911;
    wire [0:0] bb_kernel_2mm_B16_stall_region_out_feedback_out_40;
    wire [0:0] bb_kernel_2mm_B16_stall_region_out_feedback_valid_out_40;
    wire [0:0] bb_kernel_2mm_B16_stall_region_out_lsu_memdep_2_o_active;
    wire [0:0] bb_kernel_2mm_B16_stall_region_out_memdep_2;
    wire [31:0] bb_kernel_2mm_B16_stall_region_out_memdep_2_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B16_stall_region_out_memdep_2_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B16_stall_region_out_memdep_2_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B16_stall_region_out_memdep_2_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B16_stall_region_out_memdep_2_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B16_stall_region_out_memdep_2_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B16_stall_region_out_memdep_2_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B16_stall_region_out_stall_out;
    wire [0:0] bb_kernel_2mm_B16_stall_region_out_valid_out;
    wire [0:0] kernel_2mm_B16_branch_out_c0_exe73689;
    wire [0:0] kernel_2mm_B16_branch_out_c0_exe836911;
    wire [0:0] kernel_2mm_B16_branch_out_memdep_2;
    wire [0:0] kernel_2mm_B16_branch_out_stall_out;
    wire [0:0] kernel_2mm_B16_branch_out_valid_out_0;
    wire [0:0] kernel_2mm_B16_branch_out_valid_out_1;
    wire [0:0] kernel_2mm_B16_merge_out_c0_exe1037113;
    wire [0:0] kernel_2mm_B16_merge_out_c0_exe1137214;
    wire [0:0] kernel_2mm_B16_merge_out_c0_exe73689;
    wire [0:0] kernel_2mm_B16_merge_out_c0_exe836911;
    wire [63:0] kernel_2mm_B16_merge_out_c0_exe937012;
    wire [31:0] kernel_2mm_B16_merge_out_c1_exe139015;
    wire [0:0] kernel_2mm_B16_merge_out_stall_out_0;
    wire [0:0] kernel_2mm_B16_merge_out_valid_out;


    // kernel_2mm_B16_branch(BLACKBOX,20)
    kernel_2mm_B16_branch thekernel_2mm_B16_branch (
        .in_c0_exe1137214(bb_kernel_2mm_B16_stall_region_out_c0_exe1137214),
        .in_c0_exe73689(bb_kernel_2mm_B16_stall_region_out_c0_exe73689),
        .in_c0_exe836911(bb_kernel_2mm_B16_stall_region_out_c0_exe836911),
        .in_memdep_2(bb_kernel_2mm_B16_stall_region_out_memdep_2),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_2mm_B16_stall_region_out_valid_out),
        .out_c0_exe73689(kernel_2mm_B16_branch_out_c0_exe73689),
        .out_c0_exe836911(kernel_2mm_B16_branch_out_c0_exe836911),
        .out_memdep_2(kernel_2mm_B16_branch_out_memdep_2),
        .out_stall_out(kernel_2mm_B16_branch_out_stall_out),
        .out_valid_out_0(kernel_2mm_B16_branch_out_valid_out_0),
        .out_valid_out_1(kernel_2mm_B16_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B16_merge(BLACKBOX,21)
    kernel_2mm_B16_merge thekernel_2mm_B16_merge (
        .in_c0_exe1037113_0(in_c0_exe1037113_0),
        .in_c0_exe1137214_0(in_c0_exe1137214_0),
        .in_c0_exe73689_0(in_c0_exe73689_0),
        .in_c0_exe836911_0(in_c0_exe836911_0),
        .in_c0_exe937012_0(in_c0_exe937012_0),
        .in_c1_exe139015_0(in_c1_exe139015_0),
        .in_stall_in(bb_kernel_2mm_B16_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe1037113(kernel_2mm_B16_merge_out_c0_exe1037113),
        .out_c0_exe1137214(kernel_2mm_B16_merge_out_c0_exe1137214),
        .out_c0_exe73689(kernel_2mm_B16_merge_out_c0_exe73689),
        .out_c0_exe836911(kernel_2mm_B16_merge_out_c0_exe836911),
        .out_c0_exe937012(kernel_2mm_B16_merge_out_c0_exe937012),
        .out_c1_exe139015(kernel_2mm_B16_merge_out_c1_exe139015),
        .out_stall_out_0(kernel_2mm_B16_merge_out_stall_out_0),
        .out_valid_out(kernel_2mm_B16_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B16_stall_region(BLACKBOX,2)
    kernel_2mm_bb_B16_stall_region thebb_kernel_2mm_B16_stall_region (
        .in_c0_exe1037113(kernel_2mm_B16_merge_out_c0_exe1037113),
        .in_c0_exe1137214(kernel_2mm_B16_merge_out_c0_exe1137214),
        .in_c0_exe73689(kernel_2mm_B16_merge_out_c0_exe73689),
        .in_c0_exe836911(kernel_2mm_B16_merge_out_c0_exe836911),
        .in_c0_exe937012(kernel_2mm_B16_merge_out_c0_exe937012),
        .in_c1_exe139015(kernel_2mm_B16_merge_out_c1_exe139015),
        .in_feedback_stall_in_40(in_feedback_stall_in_40),
        .in_flush(in_flush),
        .in_memdep_2_kernel_2mm_avm_readdata(in_memdep_2_kernel_2mm_avm_readdata),
        .in_memdep_2_kernel_2mm_avm_readdatavalid(in_memdep_2_kernel_2mm_avm_readdatavalid),
        .in_memdep_2_kernel_2mm_avm_waitrequest(in_memdep_2_kernel_2mm_avm_waitrequest),
        .in_memdep_2_kernel_2mm_avm_writeack(in_memdep_2_kernel_2mm_avm_writeack),
        .in_stall_in(kernel_2mm_B16_branch_out_stall_out),
        .in_valid_in(kernel_2mm_B16_merge_out_valid_out),
        .out_c0_exe1137214(bb_kernel_2mm_B16_stall_region_out_c0_exe1137214),
        .out_c0_exe73689(bb_kernel_2mm_B16_stall_region_out_c0_exe73689),
        .out_c0_exe836911(bb_kernel_2mm_B16_stall_region_out_c0_exe836911),
        .out_feedback_out_40(bb_kernel_2mm_B16_stall_region_out_feedback_out_40),
        .out_feedback_valid_out_40(bb_kernel_2mm_B16_stall_region_out_feedback_valid_out_40),
        .out_lsu_memdep_2_o_active(bb_kernel_2mm_B16_stall_region_out_lsu_memdep_2_o_active),
        .out_memdep_2(bb_kernel_2mm_B16_stall_region_out_memdep_2),
        .out_memdep_2_kernel_2mm_avm_address(bb_kernel_2mm_B16_stall_region_out_memdep_2_kernel_2mm_avm_address),
        .out_memdep_2_kernel_2mm_avm_burstcount(bb_kernel_2mm_B16_stall_region_out_memdep_2_kernel_2mm_avm_burstcount),
        .out_memdep_2_kernel_2mm_avm_byteenable(bb_kernel_2mm_B16_stall_region_out_memdep_2_kernel_2mm_avm_byteenable),
        .out_memdep_2_kernel_2mm_avm_enable(bb_kernel_2mm_B16_stall_region_out_memdep_2_kernel_2mm_avm_enable),
        .out_memdep_2_kernel_2mm_avm_read(bb_kernel_2mm_B16_stall_region_out_memdep_2_kernel_2mm_avm_read),
        .out_memdep_2_kernel_2mm_avm_write(bb_kernel_2mm_B16_stall_region_out_memdep_2_kernel_2mm_avm_write),
        .out_memdep_2_kernel_2mm_avm_writedata(bb_kernel_2mm_B16_stall_region_out_memdep_2_kernel_2mm_avm_writedata),
        .out_stall_out(bb_kernel_2mm_B16_stall_region_out_stall_out),
        .out_valid_out(bb_kernel_2mm_B16_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_40_sync(GPOUT,3)
    assign out_feedback_out_40 = bb_kernel_2mm_B16_stall_region_out_feedback_out_40;

    // feedback_valid_out_40_sync(GPOUT,5)
    assign out_feedback_valid_out_40 = bb_kernel_2mm_B16_stall_region_out_feedback_valid_out_40;

    // out_c0_exe73689(GPOUT,22)
    assign out_c0_exe73689 = kernel_2mm_B16_branch_out_c0_exe73689;

    // out_c0_exe836911(GPOUT,23)
    assign out_c0_exe836911 = kernel_2mm_B16_branch_out_c0_exe836911;

    // out_lsu_memdep_2_o_active(GPOUT,24)
    assign out_lsu_memdep_2_o_active = bb_kernel_2mm_B16_stall_region_out_lsu_memdep_2_o_active;

    // out_memdep_2(GPOUT,25)
    assign out_memdep_2 = kernel_2mm_B16_branch_out_memdep_2;

    // out_memdep_2_kernel_2mm_avm_address(GPOUT,26)
    assign out_memdep_2_kernel_2mm_avm_address = bb_kernel_2mm_B16_stall_region_out_memdep_2_kernel_2mm_avm_address;

    // out_memdep_2_kernel_2mm_avm_burstcount(GPOUT,27)
    assign out_memdep_2_kernel_2mm_avm_burstcount = bb_kernel_2mm_B16_stall_region_out_memdep_2_kernel_2mm_avm_burstcount;

    // out_memdep_2_kernel_2mm_avm_byteenable(GPOUT,28)
    assign out_memdep_2_kernel_2mm_avm_byteenable = bb_kernel_2mm_B16_stall_region_out_memdep_2_kernel_2mm_avm_byteenable;

    // out_memdep_2_kernel_2mm_avm_enable(GPOUT,29)
    assign out_memdep_2_kernel_2mm_avm_enable = bb_kernel_2mm_B16_stall_region_out_memdep_2_kernel_2mm_avm_enable;

    // out_memdep_2_kernel_2mm_avm_read(GPOUT,30)
    assign out_memdep_2_kernel_2mm_avm_read = bb_kernel_2mm_B16_stall_region_out_memdep_2_kernel_2mm_avm_read;

    // out_memdep_2_kernel_2mm_avm_write(GPOUT,31)
    assign out_memdep_2_kernel_2mm_avm_write = bb_kernel_2mm_B16_stall_region_out_memdep_2_kernel_2mm_avm_write;

    // out_memdep_2_kernel_2mm_avm_writedata(GPOUT,32)
    assign out_memdep_2_kernel_2mm_avm_writedata = bb_kernel_2mm_B16_stall_region_out_memdep_2_kernel_2mm_avm_writedata;

    // out_stall_in_0(GPOUT,33)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,34)
    assign out_stall_out_0 = kernel_2mm_B16_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,35)
    assign out_valid_out_0 = kernel_2mm_B16_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,36)
    assign out_valid_out_1 = kernel_2mm_B16_branch_out_valid_out_1;

endmodule
