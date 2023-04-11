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

// SystemVerilog created from bb_kernel_3mm_B13
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B13 (
    input wire [0:0] in_c0_exe261238_0,
    input wire [31:0] in_c0_exe461439_0,
    input wire [0:0] in_c0_exe661641_0,
    input wire [63:0] in_c0_exe761742_0,
    input wire [0:0] in_c0_exe861843_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_6_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_6_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_6_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_6_kernel_3mm_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe261238,
    output wire [0:0] out_c0_exe661641,
    output wire [0:0] out_memdep_6,
    output wire [31:0] out_memdep_6_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_6_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_6_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_6_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_6_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_6_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_6_kernel_3mm_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B13_stall_region_out_c0_exe261238;
    wire [0:0] bb_kernel_3mm_B13_stall_region_out_c0_exe661641;
    wire [0:0] bb_kernel_3mm_B13_stall_region_out_c0_exe861843;
    wire [0:0] bb_kernel_3mm_B13_stall_region_out_memdep_6;
    wire [31:0] bb_kernel_3mm_B13_stall_region_out_memdep_6_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B13_stall_region_out_memdep_6_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B13_stall_region_out_memdep_6_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B13_stall_region_out_memdep_6_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B13_stall_region_out_memdep_6_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B13_stall_region_out_memdep_6_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B13_stall_region_out_memdep_6_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B13_stall_region_out_stall_out;
    wire [0:0] bb_kernel_3mm_B13_stall_region_out_valid_out;
    wire [0:0] kernel_3mm_B13_branch_out_c0_exe261238;
    wire [0:0] kernel_3mm_B13_branch_out_c0_exe661641;
    wire [0:0] kernel_3mm_B13_branch_out_memdep_6;
    wire [0:0] kernel_3mm_B13_branch_out_stall_out;
    wire [0:0] kernel_3mm_B13_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B13_branch_out_valid_out_1;
    wire [0:0] kernel_3mm_B13_merge_out_c0_exe261238;
    wire [31:0] kernel_3mm_B13_merge_out_c0_exe461439;
    wire [0:0] kernel_3mm_B13_merge_out_c0_exe661641;
    wire [63:0] kernel_3mm_B13_merge_out_c0_exe761742;
    wire [0:0] kernel_3mm_B13_merge_out_c0_exe861843;
    wire [0:0] kernel_3mm_B13_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B13_merge_out_valid_out;


    // kernel_3mm_B13_merge(BLACKBOX,17)
    kernel_3mm_B13_merge thekernel_3mm_B13_merge (
        .in_c0_exe261238_0(in_c0_exe261238_0),
        .in_c0_exe461439_0(in_c0_exe461439_0),
        .in_c0_exe661641_0(in_c0_exe661641_0),
        .in_c0_exe761742_0(in_c0_exe761742_0),
        .in_c0_exe861843_0(in_c0_exe861843_0),
        .in_stall_in(bb_kernel_3mm_B13_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe261238(kernel_3mm_B13_merge_out_c0_exe261238),
        .out_c0_exe461439(kernel_3mm_B13_merge_out_c0_exe461439),
        .out_c0_exe661641(kernel_3mm_B13_merge_out_c0_exe661641),
        .out_c0_exe761742(kernel_3mm_B13_merge_out_c0_exe761742),
        .out_c0_exe861843(kernel_3mm_B13_merge_out_c0_exe861843),
        .out_stall_out_0(kernel_3mm_B13_merge_out_stall_out_0),
        .out_valid_out(kernel_3mm_B13_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B13_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B13_stall_region thebb_kernel_3mm_B13_stall_region (
        .in_c0_exe261238(kernel_3mm_B13_merge_out_c0_exe261238),
        .in_c0_exe461439(kernel_3mm_B13_merge_out_c0_exe461439),
        .in_c0_exe661641(kernel_3mm_B13_merge_out_c0_exe661641),
        .in_c0_exe761742(kernel_3mm_B13_merge_out_c0_exe761742),
        .in_c0_exe861843(kernel_3mm_B13_merge_out_c0_exe861843),
        .in_flush(in_flush),
        .in_memdep_6_kernel_3mm_avm_readdata(in_memdep_6_kernel_3mm_avm_readdata),
        .in_memdep_6_kernel_3mm_avm_readdatavalid(in_memdep_6_kernel_3mm_avm_readdatavalid),
        .in_memdep_6_kernel_3mm_avm_waitrequest(in_memdep_6_kernel_3mm_avm_waitrequest),
        .in_memdep_6_kernel_3mm_avm_writeack(in_memdep_6_kernel_3mm_avm_writeack),
        .in_stall_in(kernel_3mm_B13_branch_out_stall_out),
        .in_valid_in(kernel_3mm_B13_merge_out_valid_out),
        .out_c0_exe261238(bb_kernel_3mm_B13_stall_region_out_c0_exe261238),
        .out_c0_exe661641(bb_kernel_3mm_B13_stall_region_out_c0_exe661641),
        .out_c0_exe861843(bb_kernel_3mm_B13_stall_region_out_c0_exe861843),
        .out_memdep_6(bb_kernel_3mm_B13_stall_region_out_memdep_6),
        .out_memdep_6_kernel_3mm_avm_address(bb_kernel_3mm_B13_stall_region_out_memdep_6_kernel_3mm_avm_address),
        .out_memdep_6_kernel_3mm_avm_burstcount(bb_kernel_3mm_B13_stall_region_out_memdep_6_kernel_3mm_avm_burstcount),
        .out_memdep_6_kernel_3mm_avm_byteenable(bb_kernel_3mm_B13_stall_region_out_memdep_6_kernel_3mm_avm_byteenable),
        .out_memdep_6_kernel_3mm_avm_enable(bb_kernel_3mm_B13_stall_region_out_memdep_6_kernel_3mm_avm_enable),
        .out_memdep_6_kernel_3mm_avm_read(bb_kernel_3mm_B13_stall_region_out_memdep_6_kernel_3mm_avm_read),
        .out_memdep_6_kernel_3mm_avm_write(bb_kernel_3mm_B13_stall_region_out_memdep_6_kernel_3mm_avm_write),
        .out_memdep_6_kernel_3mm_avm_writedata(bb_kernel_3mm_B13_stall_region_out_memdep_6_kernel_3mm_avm_writedata),
        .out_stall_out(bb_kernel_3mm_B13_stall_region_out_stall_out),
        .out_valid_out(bb_kernel_3mm_B13_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B13_branch(BLACKBOX,16)
    kernel_3mm_B13_branch thekernel_3mm_B13_branch (
        .in_c0_exe261238(bb_kernel_3mm_B13_stall_region_out_c0_exe261238),
        .in_c0_exe661641(bb_kernel_3mm_B13_stall_region_out_c0_exe661641),
        .in_c0_exe861843(bb_kernel_3mm_B13_stall_region_out_c0_exe861843),
        .in_memdep_6(bb_kernel_3mm_B13_stall_region_out_memdep_6),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_3mm_B13_stall_region_out_valid_out),
        .out_c0_exe261238(kernel_3mm_B13_branch_out_c0_exe261238),
        .out_c0_exe661641(kernel_3mm_B13_branch_out_c0_exe661641),
        .out_memdep_6(kernel_3mm_B13_branch_out_memdep_6),
        .out_stall_out(kernel_3mm_B13_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B13_branch_out_valid_out_0),
        .out_valid_out_1(kernel_3mm_B13_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe261238(GPOUT,18)
    assign out_c0_exe261238 = kernel_3mm_B13_branch_out_c0_exe261238;

    // out_c0_exe661641(GPOUT,19)
    assign out_c0_exe661641 = kernel_3mm_B13_branch_out_c0_exe661641;

    // out_memdep_6(GPOUT,20)
    assign out_memdep_6 = kernel_3mm_B13_branch_out_memdep_6;

    // out_memdep_6_kernel_3mm_avm_address(GPOUT,21)
    assign out_memdep_6_kernel_3mm_avm_address = bb_kernel_3mm_B13_stall_region_out_memdep_6_kernel_3mm_avm_address;

    // out_memdep_6_kernel_3mm_avm_burstcount(GPOUT,22)
    assign out_memdep_6_kernel_3mm_avm_burstcount = bb_kernel_3mm_B13_stall_region_out_memdep_6_kernel_3mm_avm_burstcount;

    // out_memdep_6_kernel_3mm_avm_byteenable(GPOUT,23)
    assign out_memdep_6_kernel_3mm_avm_byteenable = bb_kernel_3mm_B13_stall_region_out_memdep_6_kernel_3mm_avm_byteenable;

    // out_memdep_6_kernel_3mm_avm_enable(GPOUT,24)
    assign out_memdep_6_kernel_3mm_avm_enable = bb_kernel_3mm_B13_stall_region_out_memdep_6_kernel_3mm_avm_enable;

    // out_memdep_6_kernel_3mm_avm_read(GPOUT,25)
    assign out_memdep_6_kernel_3mm_avm_read = bb_kernel_3mm_B13_stall_region_out_memdep_6_kernel_3mm_avm_read;

    // out_memdep_6_kernel_3mm_avm_write(GPOUT,26)
    assign out_memdep_6_kernel_3mm_avm_write = bb_kernel_3mm_B13_stall_region_out_memdep_6_kernel_3mm_avm_write;

    // out_memdep_6_kernel_3mm_avm_writedata(GPOUT,27)
    assign out_memdep_6_kernel_3mm_avm_writedata = bb_kernel_3mm_B13_stall_region_out_memdep_6_kernel_3mm_avm_writedata;

    // out_stall_in_0(GPOUT,28)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,29)
    assign out_stall_out_0 = kernel_3mm_B13_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,30)
    assign out_valid_out_0 = kernel_3mm_B13_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,31)
    assign out_valid_out_1 = kernel_3mm_B13_branch_out_valid_out_1;

endmodule
