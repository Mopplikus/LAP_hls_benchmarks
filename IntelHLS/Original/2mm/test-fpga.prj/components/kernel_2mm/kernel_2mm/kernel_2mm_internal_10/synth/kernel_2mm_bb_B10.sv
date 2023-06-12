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

// SystemVerilog created from bb_kernel_2mm_B10
// Created for function/kernel kernel_2mm
// SystemVerilog created on Thu Apr 27 14:25:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B10 (
    input wire [31:0] in_c0_exe12028_0,
    input wire [0:0] in_c0_exe420510_0,
    input wire [63:0] in_c0_exe520611_0,
    input wire [0:0] in_c0_exe620712_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_1_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_1_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_memdep_1_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_1_kernel_2mm_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe420510,
    output wire [31:0] out_memdep_1_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_1_kernel_2mm_avm_burstcount,
    output wire [3:0] out_memdep_1_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_1_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_1_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_1_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_1_kernel_2mm_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_2mm_B10_stall_region_out_almost_empty_out;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_c0_exe420510;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_c0_exe620712;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_empty_out;
    wire [31:0] bb_kernel_2mm_B10_stall_region_out_memdep_1_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_memdep_1_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B10_stall_region_out_memdep_1_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_memdep_1_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_memdep_1_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_memdep_1_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B10_stall_region_out_memdep_1_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_stall_out;
    wire [0:0] bb_kernel_2mm_B10_stall_region_out_valid_out;
    wire [0:0] kernel_2mm_B10_branch_out_c0_exe420510;
    wire [0:0] kernel_2mm_B10_branch_out_stall_out;
    wire [0:0] kernel_2mm_B10_branch_out_valid_out_0;
    wire [0:0] kernel_2mm_B10_merge_out_almost_empty_out;
    wire [31:0] kernel_2mm_B10_merge_out_c0_exe12028;
    wire [0:0] kernel_2mm_B10_merge_out_c0_exe420510;
    wire [63:0] kernel_2mm_B10_merge_out_c0_exe520611;
    wire [0:0] kernel_2mm_B10_merge_out_c0_exe620712;
    wire [0:0] kernel_2mm_B10_merge_out_empty_out;
    wire [0:0] kernel_2mm_B10_merge_out_stall_out_0;
    wire [0:0] kernel_2mm_B10_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // kernel_2mm_B10_merge(BLACKBOX,15)
    kernel_2mm_B10_merge thekernel_2mm_B10_merge (
        .in_c0_exe12028_0(in_c0_exe12028_0),
        .in_c0_exe420510_0(in_c0_exe420510_0),
        .in_c0_exe520611_0(in_c0_exe520611_0),
        .in_c0_exe620712_0(in_c0_exe620712_0),
        .in_stall_in(bb_kernel_2mm_B10_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(kernel_2mm_B10_merge_out_almost_empty_out),
        .out_c0_exe12028(kernel_2mm_B10_merge_out_c0_exe12028),
        .out_c0_exe420510(kernel_2mm_B10_merge_out_c0_exe420510),
        .out_c0_exe520611(kernel_2mm_B10_merge_out_c0_exe520611),
        .out_c0_exe620712(kernel_2mm_B10_merge_out_c0_exe620712),
        .out_empty_out(kernel_2mm_B10_merge_out_empty_out),
        .out_stall_out_0(kernel_2mm_B10_merge_out_stall_out_0),
        .out_valid_out(kernel_2mm_B10_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B10_stall_region(BLACKBOX,2)
    kernel_2mm_bb_B10_stall_region thebb_kernel_2mm_B10_stall_region (
        .in_almost_empty_in(kernel_2mm_B10_merge_out_almost_empty_out),
        .in_c0_exe12028(kernel_2mm_B10_merge_out_c0_exe12028),
        .in_c0_exe420510(kernel_2mm_B10_merge_out_c0_exe420510),
        .in_c0_exe520611(kernel_2mm_B10_merge_out_c0_exe520611),
        .in_c0_exe620712(kernel_2mm_B10_merge_out_c0_exe620712),
        .in_empty_in(kernel_2mm_B10_merge_out_empty_out),
        .in_flush(in_flush),
        .in_memdep_1_kernel_2mm_avm_readdata(in_memdep_1_kernel_2mm_avm_readdata),
        .in_memdep_1_kernel_2mm_avm_readdatavalid(in_memdep_1_kernel_2mm_avm_readdatavalid),
        .in_memdep_1_kernel_2mm_avm_waitrequest(in_memdep_1_kernel_2mm_avm_waitrequest),
        .in_memdep_1_kernel_2mm_avm_writeack(in_memdep_1_kernel_2mm_avm_writeack),
        .in_stall_in(kernel_2mm_B10_branch_out_stall_out),
        .in_valid_in(kernel_2mm_B10_merge_out_valid_out),
        .out_almost_empty_out(bb_kernel_2mm_B10_stall_region_out_almost_empty_out),
        .out_c0_exe420510(bb_kernel_2mm_B10_stall_region_out_c0_exe420510),
        .out_c0_exe620712(bb_kernel_2mm_B10_stall_region_out_c0_exe620712),
        .out_empty_out(bb_kernel_2mm_B10_stall_region_out_empty_out),
        .out_memdep_1_kernel_2mm_avm_address(bb_kernel_2mm_B10_stall_region_out_memdep_1_kernel_2mm_avm_address),
        .out_memdep_1_kernel_2mm_avm_burstcount(bb_kernel_2mm_B10_stall_region_out_memdep_1_kernel_2mm_avm_burstcount),
        .out_memdep_1_kernel_2mm_avm_byteenable(bb_kernel_2mm_B10_stall_region_out_memdep_1_kernel_2mm_avm_byteenable),
        .out_memdep_1_kernel_2mm_avm_enable(bb_kernel_2mm_B10_stall_region_out_memdep_1_kernel_2mm_avm_enable),
        .out_memdep_1_kernel_2mm_avm_read(bb_kernel_2mm_B10_stall_region_out_memdep_1_kernel_2mm_avm_read),
        .out_memdep_1_kernel_2mm_avm_write(bb_kernel_2mm_B10_stall_region_out_memdep_1_kernel_2mm_avm_write),
        .out_memdep_1_kernel_2mm_avm_writedata(bb_kernel_2mm_B10_stall_region_out_memdep_1_kernel_2mm_avm_writedata),
        .out_stall_out(bb_kernel_2mm_B10_stall_region_out_stall_out),
        .out_valid_out(bb_kernel_2mm_B10_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B10_branch(BLACKBOX,14)
    kernel_2mm_B10_branch thekernel_2mm_B10_branch (
        .in_almost_empty_in(bb_kernel_2mm_B10_stall_region_out_almost_empty_out),
        .in_c0_exe420510(bb_kernel_2mm_B10_stall_region_out_c0_exe420510),
        .in_c0_exe620712(bb_kernel_2mm_B10_stall_region_out_c0_exe620712),
        .in_empty_in(bb_kernel_2mm_B10_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_2mm_B10_stall_region_out_valid_out),
        .out_c0_exe420510(kernel_2mm_B10_branch_out_c0_exe420510),
        .out_stall_out(kernel_2mm_B10_branch_out_stall_out),
        .out_valid_out_0(kernel_2mm_B10_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe420510(GPOUT,16)
    assign out_c0_exe420510 = kernel_2mm_B10_branch_out_c0_exe420510;

    // out_memdep_1_kernel_2mm_avm_address(GPOUT,17)
    assign out_memdep_1_kernel_2mm_avm_address = bb_kernel_2mm_B10_stall_region_out_memdep_1_kernel_2mm_avm_address;

    // out_memdep_1_kernel_2mm_avm_burstcount(GPOUT,18)
    assign out_memdep_1_kernel_2mm_avm_burstcount = bb_kernel_2mm_B10_stall_region_out_memdep_1_kernel_2mm_avm_burstcount;

    // out_memdep_1_kernel_2mm_avm_byteenable(GPOUT,19)
    assign out_memdep_1_kernel_2mm_avm_byteenable = bb_kernel_2mm_B10_stall_region_out_memdep_1_kernel_2mm_avm_byteenable;

    // out_memdep_1_kernel_2mm_avm_enable(GPOUT,20)
    assign out_memdep_1_kernel_2mm_avm_enable = bb_kernel_2mm_B10_stall_region_out_memdep_1_kernel_2mm_avm_enable;

    // out_memdep_1_kernel_2mm_avm_read(GPOUT,21)
    assign out_memdep_1_kernel_2mm_avm_read = bb_kernel_2mm_B10_stall_region_out_memdep_1_kernel_2mm_avm_read;

    // out_memdep_1_kernel_2mm_avm_write(GPOUT,22)
    assign out_memdep_1_kernel_2mm_avm_write = bb_kernel_2mm_B10_stall_region_out_memdep_1_kernel_2mm_avm_write;

    // out_memdep_1_kernel_2mm_avm_writedata(GPOUT,23)
    assign out_memdep_1_kernel_2mm_avm_writedata = bb_kernel_2mm_B10_stall_region_out_memdep_1_kernel_2mm_avm_writedata;

    // out_stall_in_0(GPOUT,24)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,25)
    assign out_stall_out_0 = kernel_2mm_B10_merge_out_stall_out_0;

    // out_valid_in_0(GPOUT,26)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,27)
    assign out_valid_out_0 = kernel_2mm_B10_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,28)
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
