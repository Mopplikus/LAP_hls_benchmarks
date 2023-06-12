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

// SystemVerilog created from bb_kernel_3mm_B14
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B14 (
    input wire [0:0] in_c0_exe160137_0,
    input wire [0:0] in_c0_exe162045_0,
    input wire [0:0] in_c0_exe660640_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe160137,
    output wire [0:0] out_c0_exe162045,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B14_stall_region_out_almost_empty_out;
    wire [0:0] bb_kernel_3mm_B14_stall_region_out_c0_exe160137;
    wire [0:0] bb_kernel_3mm_B14_stall_region_out_c0_exe162045;
    wire [0:0] bb_kernel_3mm_B14_stall_region_out_c0_exe660640;
    wire [0:0] bb_kernel_3mm_B14_stall_region_out_empty_out;
    wire [0:0] bb_kernel_3mm_B14_stall_region_out_stall_out;
    wire [0:0] bb_kernel_3mm_B14_stall_region_out_valid_out;
    wire [0:0] kernel_3mm_B14_branch_out_c0_exe160137;
    wire [0:0] kernel_3mm_B14_branch_out_c0_exe162045;
    wire [0:0] kernel_3mm_B14_branch_out_stall_out;
    wire [0:0] kernel_3mm_B14_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B14_merge_out_almost_empty_out;
    wire [0:0] kernel_3mm_B14_merge_out_c0_exe160137;
    wire [0:0] kernel_3mm_B14_merge_out_c0_exe162045;
    wire [0:0] kernel_3mm_B14_merge_out_c0_exe660640;
    wire [0:0] kernel_3mm_B14_merge_out_empty_out;
    wire [0:0] kernel_3mm_B14_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B14_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // kernel_3mm_B14_merge(BLACKBOX,9)
    kernel_3mm_B14_merge thekernel_3mm_B14_merge (
        .in_c0_exe160137_0(in_c0_exe160137_0),
        .in_c0_exe162045_0(in_c0_exe162045_0),
        .in_c0_exe660640_0(in_c0_exe660640_0),
        .in_stall_in(bb_kernel_3mm_B14_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(kernel_3mm_B14_merge_out_almost_empty_out),
        .out_c0_exe160137(kernel_3mm_B14_merge_out_c0_exe160137),
        .out_c0_exe162045(kernel_3mm_B14_merge_out_c0_exe162045),
        .out_c0_exe660640(kernel_3mm_B14_merge_out_c0_exe660640),
        .out_empty_out(kernel_3mm_B14_merge_out_empty_out),
        .out_stall_out_0(kernel_3mm_B14_merge_out_stall_out_0),
        .out_valid_out(kernel_3mm_B14_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B14_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B14_stall_region thebb_kernel_3mm_B14_stall_region (
        .in_almost_empty_in(kernel_3mm_B14_merge_out_almost_empty_out),
        .in_c0_exe160137(kernel_3mm_B14_merge_out_c0_exe160137),
        .in_c0_exe162045(kernel_3mm_B14_merge_out_c0_exe162045),
        .in_c0_exe660640(kernel_3mm_B14_merge_out_c0_exe660640),
        .in_empty_in(kernel_3mm_B14_merge_out_empty_out),
        .in_stall_in(kernel_3mm_B14_branch_out_stall_out),
        .in_valid_in(kernel_3mm_B14_merge_out_valid_out),
        .out_almost_empty_out(bb_kernel_3mm_B14_stall_region_out_almost_empty_out),
        .out_c0_exe160137(bb_kernel_3mm_B14_stall_region_out_c0_exe160137),
        .out_c0_exe162045(bb_kernel_3mm_B14_stall_region_out_c0_exe162045),
        .out_c0_exe660640(bb_kernel_3mm_B14_stall_region_out_c0_exe660640),
        .out_empty_out(bb_kernel_3mm_B14_stall_region_out_empty_out),
        .out_stall_out(bb_kernel_3mm_B14_stall_region_out_stall_out),
        .out_valid_out(bb_kernel_3mm_B14_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B14_branch(BLACKBOX,8)
    kernel_3mm_B14_branch thekernel_3mm_B14_branch (
        .in_almost_empty_in(bb_kernel_3mm_B14_stall_region_out_almost_empty_out),
        .in_c0_exe160137(bb_kernel_3mm_B14_stall_region_out_c0_exe160137),
        .in_c0_exe162045(bb_kernel_3mm_B14_stall_region_out_c0_exe162045),
        .in_c0_exe660640(bb_kernel_3mm_B14_stall_region_out_c0_exe660640),
        .in_empty_in(bb_kernel_3mm_B14_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_3mm_B14_stall_region_out_valid_out),
        .out_c0_exe160137(kernel_3mm_B14_branch_out_c0_exe160137),
        .out_c0_exe162045(kernel_3mm_B14_branch_out_c0_exe162045),
        .out_stall_out(kernel_3mm_B14_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B14_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe160137(GPOUT,10)
    assign out_c0_exe160137 = kernel_3mm_B14_branch_out_c0_exe160137;

    // out_c0_exe162045(GPOUT,11)
    assign out_c0_exe162045 = kernel_3mm_B14_branch_out_c0_exe162045;

    // out_stall_in_0(GPOUT,12)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,13)
    assign out_stall_out_0 = kernel_3mm_B14_merge_out_stall_out_0;

    // out_valid_in_0(GPOUT,14)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,15)
    assign out_valid_out_0 = kernel_3mm_B14_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,16)
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
