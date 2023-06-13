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

// SystemVerilog created from bb_kernel_3mm_B5
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:42 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B5 (
    output wire [0:0] out_feedback_out_33,
    input wire [0:0] in_feedback_stall_in_33,
    output wire [0:0] out_feedback_valid_out_33,
    input wire [0:0] in_c0_exe103106_0,
    input wire [0:0] in_c0_exe113117_0,
    input wire [0:0] in_c0_exe73072_0,
    input wire [0:0] in_c0_exe83084_0,
    input wire [63:0] in_c0_exe93095_0,
    input wire [31:0] in_c1_exe18_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_kernel_3mm_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe73072,
    output wire [0:0] out_c0_exe83084,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [0:0] out_memdep,
    output wire [31:0] out_memdep_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_kernel_3mm_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe113117;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe73072;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe83084;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_feedback_out_33;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_feedback_valid_out_33;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_lsu_memdep_o_active;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_memdep;
    wire [31:0] bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_stall_out;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_valid_out;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe73072;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe83084;
    wire [0:0] kernel_3mm_B5_branch_out_memdep;
    wire [0:0] kernel_3mm_B5_branch_out_stall_out;
    wire [0:0] kernel_3mm_B5_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B5_branch_out_valid_out_1;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe103106;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe113117;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe73072;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe83084;
    wire [63:0] kernel_3mm_B5_merge_out_c0_exe93095;
    wire [31:0] kernel_3mm_B5_merge_out_c1_exe18;
    wire [0:0] kernel_3mm_B5_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B5_merge_out_valid_out;


    // kernel_3mm_B5_branch(BLACKBOX,20)
    kernel_3mm_B5_branch thekernel_3mm_B5_branch (
        .in_c0_exe113117(bb_kernel_3mm_B5_stall_region_out_c0_exe113117),
        .in_c0_exe73072(bb_kernel_3mm_B5_stall_region_out_c0_exe73072),
        .in_c0_exe83084(bb_kernel_3mm_B5_stall_region_out_c0_exe83084),
        .in_memdep(bb_kernel_3mm_B5_stall_region_out_memdep),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_3mm_B5_stall_region_out_valid_out),
        .out_c0_exe73072(kernel_3mm_B5_branch_out_c0_exe73072),
        .out_c0_exe83084(kernel_3mm_B5_branch_out_c0_exe83084),
        .out_memdep(kernel_3mm_B5_branch_out_memdep),
        .out_stall_out(kernel_3mm_B5_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B5_branch_out_valid_out_0),
        .out_valid_out_1(kernel_3mm_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B5_merge(BLACKBOX,21)
    kernel_3mm_B5_merge thekernel_3mm_B5_merge (
        .in_c0_exe103106_0(in_c0_exe103106_0),
        .in_c0_exe113117_0(in_c0_exe113117_0),
        .in_c0_exe73072_0(in_c0_exe73072_0),
        .in_c0_exe83084_0(in_c0_exe83084_0),
        .in_c0_exe93095_0(in_c0_exe93095_0),
        .in_c1_exe18_0(in_c1_exe18_0),
        .in_stall_in(bb_kernel_3mm_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe103106(kernel_3mm_B5_merge_out_c0_exe103106),
        .out_c0_exe113117(kernel_3mm_B5_merge_out_c0_exe113117),
        .out_c0_exe73072(kernel_3mm_B5_merge_out_c0_exe73072),
        .out_c0_exe83084(kernel_3mm_B5_merge_out_c0_exe83084),
        .out_c0_exe93095(kernel_3mm_B5_merge_out_c0_exe93095),
        .out_c1_exe18(kernel_3mm_B5_merge_out_c1_exe18),
        .out_stall_out_0(kernel_3mm_B5_merge_out_stall_out_0),
        .out_valid_out(kernel_3mm_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B5_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B5_stall_region thebb_kernel_3mm_B5_stall_region (
        .in_c0_exe103106(kernel_3mm_B5_merge_out_c0_exe103106),
        .in_c0_exe113117(kernel_3mm_B5_merge_out_c0_exe113117),
        .in_c0_exe73072(kernel_3mm_B5_merge_out_c0_exe73072),
        .in_c0_exe83084(kernel_3mm_B5_merge_out_c0_exe83084),
        .in_c0_exe93095(kernel_3mm_B5_merge_out_c0_exe93095),
        .in_c1_exe18(kernel_3mm_B5_merge_out_c1_exe18),
        .in_feedback_stall_in_33(in_feedback_stall_in_33),
        .in_flush(in_flush),
        .in_memdep_kernel_3mm_avm_readdata(in_memdep_kernel_3mm_avm_readdata),
        .in_memdep_kernel_3mm_avm_readdatavalid(in_memdep_kernel_3mm_avm_readdatavalid),
        .in_memdep_kernel_3mm_avm_waitrequest(in_memdep_kernel_3mm_avm_waitrequest),
        .in_memdep_kernel_3mm_avm_writeack(in_memdep_kernel_3mm_avm_writeack),
        .in_stall_in(kernel_3mm_B5_branch_out_stall_out),
        .in_valid_in(kernel_3mm_B5_merge_out_valid_out),
        .out_c0_exe113117(bb_kernel_3mm_B5_stall_region_out_c0_exe113117),
        .out_c0_exe73072(bb_kernel_3mm_B5_stall_region_out_c0_exe73072),
        .out_c0_exe83084(bb_kernel_3mm_B5_stall_region_out_c0_exe83084),
        .out_feedback_out_33(bb_kernel_3mm_B5_stall_region_out_feedback_out_33),
        .out_feedback_valid_out_33(bb_kernel_3mm_B5_stall_region_out_feedback_valid_out_33),
        .out_lsu_memdep_o_active(bb_kernel_3mm_B5_stall_region_out_lsu_memdep_o_active),
        .out_memdep(bb_kernel_3mm_B5_stall_region_out_memdep),
        .out_memdep_kernel_3mm_avm_address(bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_address),
        .out_memdep_kernel_3mm_avm_burstcount(bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_burstcount),
        .out_memdep_kernel_3mm_avm_byteenable(bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_byteenable),
        .out_memdep_kernel_3mm_avm_enable(bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_enable),
        .out_memdep_kernel_3mm_avm_read(bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_read),
        .out_memdep_kernel_3mm_avm_write(bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_write),
        .out_memdep_kernel_3mm_avm_writedata(bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_writedata),
        .out_stall_out(bb_kernel_3mm_B5_stall_region_out_stall_out),
        .out_valid_out(bb_kernel_3mm_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_33_sync(GPOUT,3)
    assign out_feedback_out_33 = bb_kernel_3mm_B5_stall_region_out_feedback_out_33;

    // feedback_valid_out_33_sync(GPOUT,5)
    assign out_feedback_valid_out_33 = bb_kernel_3mm_B5_stall_region_out_feedback_valid_out_33;

    // out_c0_exe73072(GPOUT,22)
    assign out_c0_exe73072 = kernel_3mm_B5_branch_out_c0_exe73072;

    // out_c0_exe83084(GPOUT,23)
    assign out_c0_exe83084 = kernel_3mm_B5_branch_out_c0_exe83084;

    // out_lsu_memdep_o_active(GPOUT,24)
    assign out_lsu_memdep_o_active = bb_kernel_3mm_B5_stall_region_out_lsu_memdep_o_active;

    // out_memdep(GPOUT,25)
    assign out_memdep = kernel_3mm_B5_branch_out_memdep;

    // out_memdep_kernel_3mm_avm_address(GPOUT,26)
    assign out_memdep_kernel_3mm_avm_address = bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_address;

    // out_memdep_kernel_3mm_avm_burstcount(GPOUT,27)
    assign out_memdep_kernel_3mm_avm_burstcount = bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_burstcount;

    // out_memdep_kernel_3mm_avm_byteenable(GPOUT,28)
    assign out_memdep_kernel_3mm_avm_byteenable = bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_byteenable;

    // out_memdep_kernel_3mm_avm_enable(GPOUT,29)
    assign out_memdep_kernel_3mm_avm_enable = bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_enable;

    // out_memdep_kernel_3mm_avm_read(GPOUT,30)
    assign out_memdep_kernel_3mm_avm_read = bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_read;

    // out_memdep_kernel_3mm_avm_write(GPOUT,31)
    assign out_memdep_kernel_3mm_avm_write = bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_write;

    // out_memdep_kernel_3mm_avm_writedata(GPOUT,32)
    assign out_memdep_kernel_3mm_avm_writedata = bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_writedata;

    // out_stall_in_0(GPOUT,33)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,34)
    assign out_stall_out_0 = kernel_3mm_B5_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,35)
    assign out_valid_out_0 = kernel_3mm_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,36)
    assign out_valid_out_1 = kernel_3mm_B5_branch_out_valid_out_1;

endmodule
