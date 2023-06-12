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

// SystemVerilog created from bb_kernel_2mm_B4
// Created for function/kernel kernel_2mm
// SystemVerilog created on Thu Apr 27 14:25:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B4 (
    input wire [0:0] in_flush,
    input wire [31:0] in_i_040_pop1563_0,
    input wire [0:0] in_notcmp3160_0,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_kernel_2mm6_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm6_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm6_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm6_kernel_2mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe10,
    output wire [31:0] out_c0_exe1107,
    output wire [63:0] out_c0_exe2108,
    output wire [63:0] out_c0_exe3109,
    output wire [63:0] out_c0_exe4,
    output wire [31:0] out_c0_exe5,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_kernel_2mm6_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm6_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm6_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm6_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm6_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm6_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm6_kernel_2mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_2mm_B4_stall_region_out_almost_empty_out;
    wire [31:0] bb_kernel_2mm_B4_stall_region_out_c0_exe10;
    wire [31:0] bb_kernel_2mm_B4_stall_region_out_c0_exe1107;
    wire [63:0] bb_kernel_2mm_B4_stall_region_out_c0_exe2108;
    wire [63:0] bb_kernel_2mm_B4_stall_region_out_c0_exe3109;
    wire [63:0] bb_kernel_2mm_B4_stall_region_out_c0_exe4;
    wire [31:0] bb_kernel_2mm_B4_stall_region_out_c0_exe5;
    wire [0:0] bb_kernel_2mm_B4_stall_region_out_c0_exe7;
    wire [0:0] bb_kernel_2mm_B4_stall_region_out_c0_exe8;
    wire [0:0] bb_kernel_2mm_B4_stall_region_out_c0_exe9;
    wire [0:0] bb_kernel_2mm_B4_stall_region_out_empty_out;
    wire [0:0] bb_kernel_2mm_B4_stall_region_out_stall_out;
    wire [31:0] bb_kernel_2mm_B4_stall_region_out_unnamed_kernel_2mm6_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B4_stall_region_out_unnamed_kernel_2mm6_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B4_stall_region_out_unnamed_kernel_2mm6_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B4_stall_region_out_unnamed_kernel_2mm6_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B4_stall_region_out_unnamed_kernel_2mm6_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B4_stall_region_out_unnamed_kernel_2mm6_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B4_stall_region_out_unnamed_kernel_2mm6_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B4_stall_region_out_valid_out;
    wire [31:0] kernel_2mm_B4_branch_out_c0_exe10;
    wire [31:0] kernel_2mm_B4_branch_out_c0_exe1107;
    wire [63:0] kernel_2mm_B4_branch_out_c0_exe2108;
    wire [63:0] kernel_2mm_B4_branch_out_c0_exe3109;
    wire [63:0] kernel_2mm_B4_branch_out_c0_exe4;
    wire [31:0] kernel_2mm_B4_branch_out_c0_exe5;
    wire [0:0] kernel_2mm_B4_branch_out_c0_exe7;
    wire [0:0] kernel_2mm_B4_branch_out_c0_exe8;
    wire [0:0] kernel_2mm_B4_branch_out_c0_exe9;
    wire [0:0] kernel_2mm_B4_branch_out_stall_out;
    wire [0:0] kernel_2mm_B4_branch_out_valid_out_0;
    wire [0:0] kernel_2mm_B4_merge_out_almost_empty_out;
    wire [0:0] kernel_2mm_B4_merge_out_empty_out;
    wire [31:0] kernel_2mm_B4_merge_out_i_040_pop1563;
    wire [0:0] kernel_2mm_B4_merge_out_notcmp3160;
    wire [0:0] kernel_2mm_B4_merge_out_stall_out_0;
    wire [0:0] kernel_2mm_B4_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // kernel_2mm_B4_merge(BLACKBOX,13)
    kernel_2mm_B4_merge thekernel_2mm_B4_merge (
        .in_i_040_pop1563_0(in_i_040_pop1563_0),
        .in_notcmp3160_0(in_notcmp3160_0),
        .in_stall_in(bb_kernel_2mm_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(kernel_2mm_B4_merge_out_almost_empty_out),
        .out_empty_out(kernel_2mm_B4_merge_out_empty_out),
        .out_i_040_pop1563(kernel_2mm_B4_merge_out_i_040_pop1563),
        .out_notcmp3160(kernel_2mm_B4_merge_out_notcmp3160),
        .out_stall_out_0(kernel_2mm_B4_merge_out_stall_out_0),
        .out_valid_out(kernel_2mm_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B4_stall_region(BLACKBOX,2)
    kernel_2mm_bb_B4_stall_region thebb_kernel_2mm_B4_stall_region (
        .in_almost_empty_in(kernel_2mm_B4_merge_out_almost_empty_out),
        .in_empty_in(kernel_2mm_B4_merge_out_empty_out),
        .in_flush(in_flush),
        .in_i_040_pop1563(kernel_2mm_B4_merge_out_i_040_pop1563),
        .in_notcmp3160(kernel_2mm_B4_merge_out_notcmp3160),
        .in_stall_in(kernel_2mm_B4_branch_out_stall_out),
        .in_unnamed_kernel_2mm6_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm6_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm6_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm6_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm6_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm6_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm6_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm6_kernel_2mm_avm_writeack),
        .in_valid_in(kernel_2mm_B4_merge_out_valid_out),
        .out_almost_empty_out(bb_kernel_2mm_B4_stall_region_out_almost_empty_out),
        .out_c0_exe10(bb_kernel_2mm_B4_stall_region_out_c0_exe10),
        .out_c0_exe1107(bb_kernel_2mm_B4_stall_region_out_c0_exe1107),
        .out_c0_exe2108(bb_kernel_2mm_B4_stall_region_out_c0_exe2108),
        .out_c0_exe3109(bb_kernel_2mm_B4_stall_region_out_c0_exe3109),
        .out_c0_exe4(bb_kernel_2mm_B4_stall_region_out_c0_exe4),
        .out_c0_exe5(bb_kernel_2mm_B4_stall_region_out_c0_exe5),
        .out_c0_exe7(bb_kernel_2mm_B4_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_kernel_2mm_B4_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_kernel_2mm_B4_stall_region_out_c0_exe9),
        .out_empty_out(bb_kernel_2mm_B4_stall_region_out_empty_out),
        .out_stall_out(bb_kernel_2mm_B4_stall_region_out_stall_out),
        .out_unnamed_kernel_2mm6_kernel_2mm_avm_address(bb_kernel_2mm_B4_stall_region_out_unnamed_kernel_2mm6_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm6_kernel_2mm_avm_burstcount(bb_kernel_2mm_B4_stall_region_out_unnamed_kernel_2mm6_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm6_kernel_2mm_avm_byteenable(bb_kernel_2mm_B4_stall_region_out_unnamed_kernel_2mm6_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm6_kernel_2mm_avm_enable(bb_kernel_2mm_B4_stall_region_out_unnamed_kernel_2mm6_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm6_kernel_2mm_avm_read(bb_kernel_2mm_B4_stall_region_out_unnamed_kernel_2mm6_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm6_kernel_2mm_avm_write(bb_kernel_2mm_B4_stall_region_out_unnamed_kernel_2mm6_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm6_kernel_2mm_avm_writedata(bb_kernel_2mm_B4_stall_region_out_unnamed_kernel_2mm6_kernel_2mm_avm_writedata),
        .out_valid_out(bb_kernel_2mm_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B4_branch(BLACKBOX,12)
    kernel_2mm_B4_branch thekernel_2mm_B4_branch (
        .in_almost_empty_in(bb_kernel_2mm_B4_stall_region_out_almost_empty_out),
        .in_c0_exe10(bb_kernel_2mm_B4_stall_region_out_c0_exe10),
        .in_c0_exe1107(bb_kernel_2mm_B4_stall_region_out_c0_exe1107),
        .in_c0_exe2108(bb_kernel_2mm_B4_stall_region_out_c0_exe2108),
        .in_c0_exe3109(bb_kernel_2mm_B4_stall_region_out_c0_exe3109),
        .in_c0_exe4(bb_kernel_2mm_B4_stall_region_out_c0_exe4),
        .in_c0_exe5(bb_kernel_2mm_B4_stall_region_out_c0_exe5),
        .in_c0_exe7(bb_kernel_2mm_B4_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_kernel_2mm_B4_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_kernel_2mm_B4_stall_region_out_c0_exe9),
        .in_empty_in(bb_kernel_2mm_B4_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_2mm_B4_stall_region_out_valid_out),
        .out_c0_exe10(kernel_2mm_B4_branch_out_c0_exe10),
        .out_c0_exe1107(kernel_2mm_B4_branch_out_c0_exe1107),
        .out_c0_exe2108(kernel_2mm_B4_branch_out_c0_exe2108),
        .out_c0_exe3109(kernel_2mm_B4_branch_out_c0_exe3109),
        .out_c0_exe4(kernel_2mm_B4_branch_out_c0_exe4),
        .out_c0_exe5(kernel_2mm_B4_branch_out_c0_exe5),
        .out_c0_exe7(kernel_2mm_B4_branch_out_c0_exe7),
        .out_c0_exe8(kernel_2mm_B4_branch_out_c0_exe8),
        .out_c0_exe9(kernel_2mm_B4_branch_out_c0_exe9),
        .out_stall_out(kernel_2mm_B4_branch_out_stall_out),
        .out_valid_out_0(kernel_2mm_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10(GPOUT,14)
    assign out_c0_exe10 = kernel_2mm_B4_branch_out_c0_exe10;

    // out_c0_exe1107(GPOUT,15)
    assign out_c0_exe1107 = kernel_2mm_B4_branch_out_c0_exe1107;

    // out_c0_exe2108(GPOUT,16)
    assign out_c0_exe2108 = kernel_2mm_B4_branch_out_c0_exe2108;

    // out_c0_exe3109(GPOUT,17)
    assign out_c0_exe3109 = kernel_2mm_B4_branch_out_c0_exe3109;

    // out_c0_exe4(GPOUT,18)
    assign out_c0_exe4 = kernel_2mm_B4_branch_out_c0_exe4;

    // out_c0_exe5(GPOUT,19)
    assign out_c0_exe5 = kernel_2mm_B4_branch_out_c0_exe5;

    // out_c0_exe7(GPOUT,20)
    assign out_c0_exe7 = kernel_2mm_B4_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,21)
    assign out_c0_exe8 = kernel_2mm_B4_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,22)
    assign out_c0_exe9 = kernel_2mm_B4_branch_out_c0_exe9;

    // out_stall_out_0(GPOUT,23)
    assign out_stall_out_0 = kernel_2mm_B4_merge_out_stall_out_0;

    // out_unnamed_kernel_2mm6_kernel_2mm_avm_address(GPOUT,24)
    assign out_unnamed_kernel_2mm6_kernel_2mm_avm_address = bb_kernel_2mm_B4_stall_region_out_unnamed_kernel_2mm6_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm6_kernel_2mm_avm_burstcount(GPOUT,25)
    assign out_unnamed_kernel_2mm6_kernel_2mm_avm_burstcount = bb_kernel_2mm_B4_stall_region_out_unnamed_kernel_2mm6_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm6_kernel_2mm_avm_byteenable(GPOUT,26)
    assign out_unnamed_kernel_2mm6_kernel_2mm_avm_byteenable = bb_kernel_2mm_B4_stall_region_out_unnamed_kernel_2mm6_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm6_kernel_2mm_avm_enable(GPOUT,27)
    assign out_unnamed_kernel_2mm6_kernel_2mm_avm_enable = bb_kernel_2mm_B4_stall_region_out_unnamed_kernel_2mm6_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm6_kernel_2mm_avm_read(GPOUT,28)
    assign out_unnamed_kernel_2mm6_kernel_2mm_avm_read = bb_kernel_2mm_B4_stall_region_out_unnamed_kernel_2mm6_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm6_kernel_2mm_avm_write(GPOUT,29)
    assign out_unnamed_kernel_2mm6_kernel_2mm_avm_write = bb_kernel_2mm_B4_stall_region_out_unnamed_kernel_2mm6_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm6_kernel_2mm_avm_writedata(GPOUT,30)
    assign out_unnamed_kernel_2mm6_kernel_2mm_avm_writedata = bb_kernel_2mm_B4_stall_region_out_unnamed_kernel_2mm6_kernel_2mm_avm_writedata;

    // out_valid_in_0(GPOUT,31)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,32)
    assign out_valid_out_0 = kernel_2mm_B4_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,33)
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
