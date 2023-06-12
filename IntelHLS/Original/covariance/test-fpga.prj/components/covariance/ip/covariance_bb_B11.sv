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

// SystemVerilog created from bb_covariance_B11
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B11 (
    input wire [0:0] in_c0_exe1042230_0,
    input wire [0:0] in_c0_exe1142331_0,
    input wire [0:0] in_c0_exe1242432_0,
    input wire [63:0] in_c0_exe141320_0,
    input wire [63:0] in_c0_exe241421_0,
    input wire [0:0] in_c0_exe441624_0,
    input wire [31:0] in_c0_exe541725_0,
    input wire [31:0] in_c0_exe842028_0,
    input wire [31:0] in_c0_exe942129_0,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_covariance4_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe441624,
    output wire [31:0] out_c0_exe842028,
    output wire [0:0] out_c1_exe1369,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_covariance4_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance4_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance4_covariance_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_covariance_B11_stall_region_out_c0_exe1242432;
    wire [0:0] bb_covariance_B11_stall_region_out_c0_exe441624;
    wire [31:0] bb_covariance_B11_stall_region_out_c0_exe842028;
    wire [0:0] bb_covariance_B11_stall_region_out_c1_exe1369;
    wire [0:0] bb_covariance_B11_stall_region_out_stall_out;
    wire [31:0] bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_address;
    wire [0:0] bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_enable;
    wire [0:0] bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_read;
    wire [0:0] bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_write;
    wire [31:0] bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_writedata;
    wire [0:0] bb_covariance_B11_stall_region_out_valid_out;
    wire [0:0] covariance_B11_branch_out_c0_exe441624;
    wire [31:0] covariance_B11_branch_out_c0_exe842028;
    wire [0:0] covariance_B11_branch_out_c1_exe1369;
    wire [0:0] covariance_B11_branch_out_stall_out;
    wire [0:0] covariance_B11_branch_out_valid_out_0;
    wire [0:0] covariance_B11_branch_out_valid_out_1;
    wire [0:0] covariance_B11_merge_out_c0_exe1042230;
    wire [0:0] covariance_B11_merge_out_c0_exe1142331;
    wire [0:0] covariance_B11_merge_out_c0_exe1242432;
    wire [63:0] covariance_B11_merge_out_c0_exe141320;
    wire [63:0] covariance_B11_merge_out_c0_exe241421;
    wire [0:0] covariance_B11_merge_out_c0_exe441624;
    wire [31:0] covariance_B11_merge_out_c0_exe541725;
    wire [31:0] covariance_B11_merge_out_c0_exe842028;
    wire [31:0] covariance_B11_merge_out_c0_exe942129;
    wire [0:0] covariance_B11_merge_out_stall_out_0;
    wire [0:0] covariance_B11_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // covariance_B11_merge(BLACKBOX,4)
    covariance_B11_merge thecovariance_B11_merge (
        .in_c0_exe1042230_0(in_c0_exe1042230_0),
        .in_c0_exe1142331_0(in_c0_exe1142331_0),
        .in_c0_exe1242432_0(in_c0_exe1242432_0),
        .in_c0_exe141320_0(in_c0_exe141320_0),
        .in_c0_exe241421_0(in_c0_exe241421_0),
        .in_c0_exe441624_0(in_c0_exe441624_0),
        .in_c0_exe541725_0(in_c0_exe541725_0),
        .in_c0_exe842028_0(in_c0_exe842028_0),
        .in_c0_exe942129_0(in_c0_exe942129_0),
        .in_stall_in(bb_covariance_B11_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe1042230(covariance_B11_merge_out_c0_exe1042230),
        .out_c0_exe1142331(covariance_B11_merge_out_c0_exe1142331),
        .out_c0_exe1242432(covariance_B11_merge_out_c0_exe1242432),
        .out_c0_exe141320(covariance_B11_merge_out_c0_exe141320),
        .out_c0_exe241421(covariance_B11_merge_out_c0_exe241421),
        .out_c0_exe441624(covariance_B11_merge_out_c0_exe441624),
        .out_c0_exe541725(covariance_B11_merge_out_c0_exe541725),
        .out_c0_exe842028(covariance_B11_merge_out_c0_exe842028),
        .out_c0_exe942129(covariance_B11_merge_out_c0_exe942129),
        .out_stall_out_0(covariance_B11_merge_out_stall_out_0),
        .out_valid_out(covariance_B11_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B11_stall_region(BLACKBOX,2)
    covariance_bb_B11_stall_region thebb_covariance_B11_stall_region (
        .in_c0_exe1042230(covariance_B11_merge_out_c0_exe1042230),
        .in_c0_exe1142331(covariance_B11_merge_out_c0_exe1142331),
        .in_c0_exe1242432(covariance_B11_merge_out_c0_exe1242432),
        .in_c0_exe141320(covariance_B11_merge_out_c0_exe141320),
        .in_c0_exe241421(covariance_B11_merge_out_c0_exe241421),
        .in_c0_exe441624(covariance_B11_merge_out_c0_exe441624),
        .in_c0_exe541725(covariance_B11_merge_out_c0_exe541725),
        .in_c0_exe842028(covariance_B11_merge_out_c0_exe842028),
        .in_c0_exe942129(covariance_B11_merge_out_c0_exe942129),
        .in_flush(in_flush),
        .in_stall_in(covariance_B11_branch_out_stall_out),
        .in_unnamed_covariance4_covariance_avm_readdata(in_unnamed_covariance4_covariance_avm_readdata),
        .in_unnamed_covariance4_covariance_avm_readdatavalid(in_unnamed_covariance4_covariance_avm_readdatavalid),
        .in_unnamed_covariance4_covariance_avm_waitrequest(in_unnamed_covariance4_covariance_avm_waitrequest),
        .in_unnamed_covariance4_covariance_avm_writeack(in_unnamed_covariance4_covariance_avm_writeack),
        .in_valid_in(covariance_B11_merge_out_valid_out),
        .out_c0_exe1242432(bb_covariance_B11_stall_region_out_c0_exe1242432),
        .out_c0_exe441624(bb_covariance_B11_stall_region_out_c0_exe441624),
        .out_c0_exe842028(bb_covariance_B11_stall_region_out_c0_exe842028),
        .out_c1_exe1369(bb_covariance_B11_stall_region_out_c1_exe1369),
        .out_stall_out(bb_covariance_B11_stall_region_out_stall_out),
        .out_unnamed_covariance4_covariance_avm_address(bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_address),
        .out_unnamed_covariance4_covariance_avm_burstcount(bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_burstcount),
        .out_unnamed_covariance4_covariance_avm_byteenable(bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_byteenable),
        .out_unnamed_covariance4_covariance_avm_enable(bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_enable),
        .out_unnamed_covariance4_covariance_avm_read(bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_read),
        .out_unnamed_covariance4_covariance_avm_write(bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_write),
        .out_unnamed_covariance4_covariance_avm_writedata(bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_writedata),
        .out_valid_out(bb_covariance_B11_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B11_branch(BLACKBOX,3)
    covariance_B11_branch thecovariance_B11_branch (
        .in_c0_exe1242432(bb_covariance_B11_stall_region_out_c0_exe1242432),
        .in_c0_exe441624(bb_covariance_B11_stall_region_out_c0_exe441624),
        .in_c0_exe842028(bb_covariance_B11_stall_region_out_c0_exe842028),
        .in_c1_exe1369(bb_covariance_B11_stall_region_out_c1_exe1369),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_covariance_B11_stall_region_out_valid_out),
        .out_c0_exe441624(covariance_B11_branch_out_c0_exe441624),
        .out_c0_exe842028(covariance_B11_branch_out_c0_exe842028),
        .out_c1_exe1369(covariance_B11_branch_out_c1_exe1369),
        .out_stall_out(covariance_B11_branch_out_stall_out),
        .out_valid_out_0(covariance_B11_branch_out_valid_out_0),
        .out_valid_out_1(covariance_B11_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe441624(GPOUT,22)
    assign out_c0_exe441624 = covariance_B11_branch_out_c0_exe441624;

    // out_c0_exe842028(GPOUT,23)
    assign out_c0_exe842028 = covariance_B11_branch_out_c0_exe842028;

    // out_c1_exe1369(GPOUT,24)
    assign out_c1_exe1369 = covariance_B11_branch_out_c1_exe1369;

    // out_stall_in_0(GPOUT,25)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,26)
    assign out_stall_out_0 = covariance_B11_merge_out_stall_out_0;

    // out_unnamed_covariance4_covariance_avm_address(GPOUT,27)
    assign out_unnamed_covariance4_covariance_avm_address = bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_address;

    // out_unnamed_covariance4_covariance_avm_burstcount(GPOUT,28)
    assign out_unnamed_covariance4_covariance_avm_burstcount = bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_burstcount;

    // out_unnamed_covariance4_covariance_avm_byteenable(GPOUT,29)
    assign out_unnamed_covariance4_covariance_avm_byteenable = bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_byteenable;

    // out_unnamed_covariance4_covariance_avm_enable(GPOUT,30)
    assign out_unnamed_covariance4_covariance_avm_enable = bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_enable;

    // out_unnamed_covariance4_covariance_avm_read(GPOUT,31)
    assign out_unnamed_covariance4_covariance_avm_read = bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_read;

    // out_unnamed_covariance4_covariance_avm_write(GPOUT,32)
    assign out_unnamed_covariance4_covariance_avm_write = bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_write;

    // out_unnamed_covariance4_covariance_avm_writedata(GPOUT,33)
    assign out_unnamed_covariance4_covariance_avm_writedata = bb_covariance_B11_stall_region_out_unnamed_covariance4_covariance_avm_writedata;

    // out_valid_out_0(GPOUT,34)
    assign out_valid_out_0 = covariance_B11_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,35)
    assign out_valid_out_1 = covariance_B11_branch_out_valid_out_1;

    // rst_sync(RESETSYNC,36)
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
