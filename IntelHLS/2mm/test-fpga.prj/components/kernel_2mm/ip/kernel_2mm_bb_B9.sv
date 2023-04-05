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

// SystemVerilog created from bb_kernel_2mm_B9
// Created for function/kernel kernel_2mm
// SystemVerilog created on Wed Apr  5 01:12:29 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B9 (
    input wire [63:0] in_c0_exe22523_0,
    input wire [31:0] in_c0_exe32534_0,
    input wire [0:0] in_c0_exe52556_0,
    input wire [63:0] in_c0_exe62567_0,
    input wire [0:0] in_c0_exe72578_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_5_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_5_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_memdep_5_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_5_kernel_2mm_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_c0_exe22523,
    output wire [0:0] out_c0_exe52556,
    output wire [31:0] out_memdep_5_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_5_kernel_2mm_avm_burstcount,
    output wire [3:0] out_memdep_5_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_5_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_5_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_5_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_5_kernel_2mm_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_kernel_2mm_B9_stall_region_out_c0_exe22523;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_c0_exe52556;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_c0_exe72578;
    wire [31:0] bb_kernel_2mm_B9_stall_region_out_memdep_5_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_memdep_5_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B9_stall_region_out_memdep_5_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_memdep_5_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_memdep_5_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_memdep_5_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B9_stall_region_out_memdep_5_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_stall_out;
    wire [0:0] bb_kernel_2mm_B9_stall_region_out_valid_out;
    wire [63:0] kernel_2mm_B9_branch_out_c0_exe22523;
    wire [0:0] kernel_2mm_B9_branch_out_c0_exe52556;
    wire [0:0] kernel_2mm_B9_branch_out_stall_out;
    wire [0:0] kernel_2mm_B9_branch_out_valid_out_0;
    wire [0:0] kernel_2mm_B9_branch_out_valid_out_1;
    wire [63:0] kernel_2mm_B9_merge_out_c0_exe22523;
    wire [31:0] kernel_2mm_B9_merge_out_c0_exe32534;
    wire [0:0] kernel_2mm_B9_merge_out_c0_exe52556;
    wire [63:0] kernel_2mm_B9_merge_out_c0_exe62567;
    wire [0:0] kernel_2mm_B9_merge_out_c0_exe72578;
    wire [0:0] kernel_2mm_B9_merge_out_stall_out_0;
    wire [0:0] kernel_2mm_B9_merge_out_valid_out;


    // kernel_2mm_B9_merge(BLACKBOX,17)
    kernel_2mm_B9_merge thekernel_2mm_B9_merge (
        .in_c0_exe22523_0(in_c0_exe22523_0),
        .in_c0_exe32534_0(in_c0_exe32534_0),
        .in_c0_exe52556_0(in_c0_exe52556_0),
        .in_c0_exe62567_0(in_c0_exe62567_0),
        .in_c0_exe72578_0(in_c0_exe72578_0),
        .in_stall_in(bb_kernel_2mm_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe22523(kernel_2mm_B9_merge_out_c0_exe22523),
        .out_c0_exe32534(kernel_2mm_B9_merge_out_c0_exe32534),
        .out_c0_exe52556(kernel_2mm_B9_merge_out_c0_exe52556),
        .out_c0_exe62567(kernel_2mm_B9_merge_out_c0_exe62567),
        .out_c0_exe72578(kernel_2mm_B9_merge_out_c0_exe72578),
        .out_stall_out_0(kernel_2mm_B9_merge_out_stall_out_0),
        .out_valid_out(kernel_2mm_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B9_stall_region(BLACKBOX,2)
    kernel_2mm_bb_B9_stall_region thebb_kernel_2mm_B9_stall_region (
        .in_c0_exe22523(kernel_2mm_B9_merge_out_c0_exe22523),
        .in_c0_exe32534(kernel_2mm_B9_merge_out_c0_exe32534),
        .in_c0_exe52556(kernel_2mm_B9_merge_out_c0_exe52556),
        .in_c0_exe62567(kernel_2mm_B9_merge_out_c0_exe62567),
        .in_c0_exe72578(kernel_2mm_B9_merge_out_c0_exe72578),
        .in_flush(in_flush),
        .in_memdep_5_kernel_2mm_avm_readdata(in_memdep_5_kernel_2mm_avm_readdata),
        .in_memdep_5_kernel_2mm_avm_readdatavalid(in_memdep_5_kernel_2mm_avm_readdatavalid),
        .in_memdep_5_kernel_2mm_avm_waitrequest(in_memdep_5_kernel_2mm_avm_waitrequest),
        .in_memdep_5_kernel_2mm_avm_writeack(in_memdep_5_kernel_2mm_avm_writeack),
        .in_stall_in(kernel_2mm_B9_branch_out_stall_out),
        .in_valid_in(kernel_2mm_B9_merge_out_valid_out),
        .out_c0_exe22523(bb_kernel_2mm_B9_stall_region_out_c0_exe22523),
        .out_c0_exe52556(bb_kernel_2mm_B9_stall_region_out_c0_exe52556),
        .out_c0_exe72578(bb_kernel_2mm_B9_stall_region_out_c0_exe72578),
        .out_memdep_5_kernel_2mm_avm_address(bb_kernel_2mm_B9_stall_region_out_memdep_5_kernel_2mm_avm_address),
        .out_memdep_5_kernel_2mm_avm_burstcount(bb_kernel_2mm_B9_stall_region_out_memdep_5_kernel_2mm_avm_burstcount),
        .out_memdep_5_kernel_2mm_avm_byteenable(bb_kernel_2mm_B9_stall_region_out_memdep_5_kernel_2mm_avm_byteenable),
        .out_memdep_5_kernel_2mm_avm_enable(bb_kernel_2mm_B9_stall_region_out_memdep_5_kernel_2mm_avm_enable),
        .out_memdep_5_kernel_2mm_avm_read(bb_kernel_2mm_B9_stall_region_out_memdep_5_kernel_2mm_avm_read),
        .out_memdep_5_kernel_2mm_avm_write(bb_kernel_2mm_B9_stall_region_out_memdep_5_kernel_2mm_avm_write),
        .out_memdep_5_kernel_2mm_avm_writedata(bb_kernel_2mm_B9_stall_region_out_memdep_5_kernel_2mm_avm_writedata),
        .out_stall_out(bb_kernel_2mm_B9_stall_region_out_stall_out),
        .out_valid_out(bb_kernel_2mm_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B9_branch(BLACKBOX,16)
    kernel_2mm_B9_branch thekernel_2mm_B9_branch (
        .in_c0_exe22523(bb_kernel_2mm_B9_stall_region_out_c0_exe22523),
        .in_c0_exe52556(bb_kernel_2mm_B9_stall_region_out_c0_exe52556),
        .in_c0_exe72578(bb_kernel_2mm_B9_stall_region_out_c0_exe72578),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kernel_2mm_B9_stall_region_out_valid_out),
        .out_c0_exe22523(kernel_2mm_B9_branch_out_c0_exe22523),
        .out_c0_exe52556(kernel_2mm_B9_branch_out_c0_exe52556),
        .out_stall_out(kernel_2mm_B9_branch_out_stall_out),
        .out_valid_out_0(kernel_2mm_B9_branch_out_valid_out_0),
        .out_valid_out_1(kernel_2mm_B9_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe22523(GPOUT,18)
    assign out_c0_exe22523 = kernel_2mm_B9_branch_out_c0_exe22523;

    // out_c0_exe52556(GPOUT,19)
    assign out_c0_exe52556 = kernel_2mm_B9_branch_out_c0_exe52556;

    // out_memdep_5_kernel_2mm_avm_address(GPOUT,20)
    assign out_memdep_5_kernel_2mm_avm_address = bb_kernel_2mm_B9_stall_region_out_memdep_5_kernel_2mm_avm_address;

    // out_memdep_5_kernel_2mm_avm_burstcount(GPOUT,21)
    assign out_memdep_5_kernel_2mm_avm_burstcount = bb_kernel_2mm_B9_stall_region_out_memdep_5_kernel_2mm_avm_burstcount;

    // out_memdep_5_kernel_2mm_avm_byteenable(GPOUT,22)
    assign out_memdep_5_kernel_2mm_avm_byteenable = bb_kernel_2mm_B9_stall_region_out_memdep_5_kernel_2mm_avm_byteenable;

    // out_memdep_5_kernel_2mm_avm_enable(GPOUT,23)
    assign out_memdep_5_kernel_2mm_avm_enable = bb_kernel_2mm_B9_stall_region_out_memdep_5_kernel_2mm_avm_enable;

    // out_memdep_5_kernel_2mm_avm_read(GPOUT,24)
    assign out_memdep_5_kernel_2mm_avm_read = bb_kernel_2mm_B9_stall_region_out_memdep_5_kernel_2mm_avm_read;

    // out_memdep_5_kernel_2mm_avm_write(GPOUT,25)
    assign out_memdep_5_kernel_2mm_avm_write = bb_kernel_2mm_B9_stall_region_out_memdep_5_kernel_2mm_avm_write;

    // out_memdep_5_kernel_2mm_avm_writedata(GPOUT,26)
    assign out_memdep_5_kernel_2mm_avm_writedata = bb_kernel_2mm_B9_stall_region_out_memdep_5_kernel_2mm_avm_writedata;

    // out_stall_in_0(GPOUT,27)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,28)
    assign out_stall_out_0 = kernel_2mm_B9_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,29)
    assign out_valid_out_0 = kernel_2mm_B9_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,30)
    assign out_valid_out_1 = kernel_2mm_B9_branch_out_valid_out_1;

endmodule
