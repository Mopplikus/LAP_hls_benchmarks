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

// SystemVerilog created from bb_getTanh_B3
// Created for function/kernel getTanh
// SystemVerilog created on Tue Apr 25 16:39:38 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module getTanh_bb_B3 (
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_getTanh_avm_readdata,
    input wire [0:0] in_memdep_getTanh_avm_readdatavalid,
    input wire [0:0] in_memdep_getTanh_avm_waitrequest,
    input wire [0:0] in_memdep_getTanh_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_getTanh5_getTanh_avm_readdata,
    input wire [0:0] in_unnamed_getTanh5_getTanh_avm_readdatavalid,
    input wire [0:0] in_unnamed_getTanh5_getTanh_avm_waitrequest,
    input wire [0:0] in_unnamed_getTanh5_getTanh_avm_writeack,
    input wire [31:0] in_unnamed_getTanh6_getTanh_avm_readdata,
    input wire [0:0] in_unnamed_getTanh6_getTanh_avm_readdatavalid,
    input wire [0:0] in_unnamed_getTanh6_getTanh_avm_waitrequest,
    input wire [0:0] in_unnamed_getTanh6_getTanh_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    output wire [31:0] out_memdep_getTanh_avm_address,
    output wire [0:0] out_memdep_getTanh_avm_burstcount,
    output wire [3:0] out_memdep_getTanh_avm_byteenable,
    output wire [0:0] out_memdep_getTanh_avm_enable,
    output wire [0:0] out_memdep_getTanh_avm_read,
    output wire [0:0] out_memdep_getTanh_avm_write,
    output wire [31:0] out_memdep_getTanh_avm_writedata,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_getTanh5_getTanh_avm_address,
    output wire [0:0] out_unnamed_getTanh5_getTanh_avm_burstcount,
    output wire [3:0] out_unnamed_getTanh5_getTanh_avm_byteenable,
    output wire [0:0] out_unnamed_getTanh5_getTanh_avm_enable,
    output wire [0:0] out_unnamed_getTanh5_getTanh_avm_read,
    output wire [0:0] out_unnamed_getTanh5_getTanh_avm_write,
    output wire [31:0] out_unnamed_getTanh5_getTanh_avm_writedata,
    output wire [31:0] out_unnamed_getTanh6_getTanh_avm_address,
    output wire [0:0] out_unnamed_getTanh6_getTanh_avm_burstcount,
    output wire [3:0] out_unnamed_getTanh6_getTanh_avm_byteenable,
    output wire [0:0] out_unnamed_getTanh6_getTanh_avm_enable,
    output wire [0:0] out_unnamed_getTanh6_getTanh_avm_read,
    output wire [0:0] out_unnamed_getTanh6_getTanh_avm_write,
    output wire [31:0] out_unnamed_getTanh6_getTanh_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_getTanh_B3_stall_region_out_almost_empty_out;
    wire [0:0] bb_getTanh_B3_stall_region_out_c0_exe2;
    wire [0:0] bb_getTanh_B3_stall_region_out_empty_out;
    wire [31:0] bb_getTanh_B3_stall_region_out_intel_reserved_ffwd_0_0;
    wire [31:0] bb_getTanh_B3_stall_region_out_memdep_getTanh_avm_address;
    wire [0:0] bb_getTanh_B3_stall_region_out_memdep_getTanh_avm_burstcount;
    wire [3:0] bb_getTanh_B3_stall_region_out_memdep_getTanh_avm_byteenable;
    wire [0:0] bb_getTanh_B3_stall_region_out_memdep_getTanh_avm_enable;
    wire [0:0] bb_getTanh_B3_stall_region_out_memdep_getTanh_avm_read;
    wire [0:0] bb_getTanh_B3_stall_region_out_memdep_getTanh_avm_write;
    wire [31:0] bb_getTanh_B3_stall_region_out_memdep_getTanh_avm_writedata;
    wire [0:0] bb_getTanh_B3_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_getTanh_B3_stall_region_out_stall_out;
    wire [31:0] bb_getTanh_B3_stall_region_out_unnamed_getTanh5_getTanh_avm_address;
    wire [0:0] bb_getTanh_B3_stall_region_out_unnamed_getTanh5_getTanh_avm_burstcount;
    wire [3:0] bb_getTanh_B3_stall_region_out_unnamed_getTanh5_getTanh_avm_byteenable;
    wire [0:0] bb_getTanh_B3_stall_region_out_unnamed_getTanh5_getTanh_avm_enable;
    wire [0:0] bb_getTanh_B3_stall_region_out_unnamed_getTanh5_getTanh_avm_read;
    wire [0:0] bb_getTanh_B3_stall_region_out_unnamed_getTanh5_getTanh_avm_write;
    wire [31:0] bb_getTanh_B3_stall_region_out_unnamed_getTanh5_getTanh_avm_writedata;
    wire [31:0] bb_getTanh_B3_stall_region_out_unnamed_getTanh6_getTanh_avm_address;
    wire [0:0] bb_getTanh_B3_stall_region_out_unnamed_getTanh6_getTanh_avm_burstcount;
    wire [3:0] bb_getTanh_B3_stall_region_out_unnamed_getTanh6_getTanh_avm_byteenable;
    wire [0:0] bb_getTanh_B3_stall_region_out_unnamed_getTanh6_getTanh_avm_enable;
    wire [0:0] bb_getTanh_B3_stall_region_out_unnamed_getTanh6_getTanh_avm_read;
    wire [0:0] bb_getTanh_B3_stall_region_out_unnamed_getTanh6_getTanh_avm_write;
    wire [31:0] bb_getTanh_B3_stall_region_out_unnamed_getTanh6_getTanh_avm_writedata;
    wire [0:0] bb_getTanh_B3_stall_region_out_valid_out;
    wire [0:0] getTanh_B3_branch_out_stall_out;
    wire [0:0] getTanh_B3_branch_out_valid_out_0;
    wire [0:0] getTanh_B3_merge_out_almost_empty_out;
    wire [0:0] getTanh_B3_merge_out_empty_out;
    wire [0:0] getTanh_B3_merge_out_stall_out_0;
    wire [0:0] getTanh_B3_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // getTanh_B3_branch(BLACKBOX,3)
    getTanh_B3_branch thegetTanh_B3_branch (
        .in_almost_empty_in(bb_getTanh_B3_stall_region_out_almost_empty_out),
        .in_c0_exe2(bb_getTanh_B3_stall_region_out_c0_exe2),
        .in_empty_in(bb_getTanh_B3_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_getTanh_B3_stall_region_out_valid_out),
        .out_stall_out(getTanh_B3_branch_out_stall_out),
        .out_valid_out_0(getTanh_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // getTanh_B3_merge(BLACKBOX,4)
    getTanh_B3_merge thegetTanh_B3_merge (
        .in_stall_in(bb_getTanh_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(getTanh_B3_merge_out_almost_empty_out),
        .out_empty_out(getTanh_B3_merge_out_empty_out),
        .out_stall_out_0(getTanh_B3_merge_out_stall_out_0),
        .out_valid_out(getTanh_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_getTanh_B3_stall_region(BLACKBOX,2)
    getTanh_bb_B3_stall_region thebb_getTanh_B3_stall_region (
        .in_almost_empty_in(getTanh_B3_merge_out_almost_empty_out),
        .in_empty_in(getTanh_B3_merge_out_empty_out),
        .in_flush(in_flush),
        .in_memdep_getTanh_avm_readdata(in_memdep_getTanh_avm_readdata),
        .in_memdep_getTanh_avm_readdatavalid(in_memdep_getTanh_avm_readdatavalid),
        .in_memdep_getTanh_avm_waitrequest(in_memdep_getTanh_avm_waitrequest),
        .in_memdep_getTanh_avm_writeack(in_memdep_getTanh_avm_writeack),
        .in_stall_in(getTanh_B3_branch_out_stall_out),
        .in_unnamed_getTanh5_getTanh_avm_readdata(in_unnamed_getTanh5_getTanh_avm_readdata),
        .in_unnamed_getTanh5_getTanh_avm_readdatavalid(in_unnamed_getTanh5_getTanh_avm_readdatavalid),
        .in_unnamed_getTanh5_getTanh_avm_waitrequest(in_unnamed_getTanh5_getTanh_avm_waitrequest),
        .in_unnamed_getTanh5_getTanh_avm_writeack(in_unnamed_getTanh5_getTanh_avm_writeack),
        .in_unnamed_getTanh6_getTanh_avm_readdata(in_unnamed_getTanh6_getTanh_avm_readdata),
        .in_unnamed_getTanh6_getTanh_avm_readdatavalid(in_unnamed_getTanh6_getTanh_avm_readdatavalid),
        .in_unnamed_getTanh6_getTanh_avm_waitrequest(in_unnamed_getTanh6_getTanh_avm_waitrequest),
        .in_unnamed_getTanh6_getTanh_avm_writeack(in_unnamed_getTanh6_getTanh_avm_writeack),
        .in_valid_in(getTanh_B3_merge_out_valid_out),
        .out_almost_empty_out(bb_getTanh_B3_stall_region_out_almost_empty_out),
        .out_c0_exe2(bb_getTanh_B3_stall_region_out_c0_exe2),
        .out_empty_out(bb_getTanh_B3_stall_region_out_empty_out),
        .out_intel_reserved_ffwd_0_0(bb_getTanh_B3_stall_region_out_intel_reserved_ffwd_0_0),
        .out_memdep_getTanh_avm_address(bb_getTanh_B3_stall_region_out_memdep_getTanh_avm_address),
        .out_memdep_getTanh_avm_burstcount(bb_getTanh_B3_stall_region_out_memdep_getTanh_avm_burstcount),
        .out_memdep_getTanh_avm_byteenable(bb_getTanh_B3_stall_region_out_memdep_getTanh_avm_byteenable),
        .out_memdep_getTanh_avm_enable(bb_getTanh_B3_stall_region_out_memdep_getTanh_avm_enable),
        .out_memdep_getTanh_avm_read(bb_getTanh_B3_stall_region_out_memdep_getTanh_avm_read),
        .out_memdep_getTanh_avm_write(bb_getTanh_B3_stall_region_out_memdep_getTanh_avm_write),
        .out_memdep_getTanh_avm_writedata(bb_getTanh_B3_stall_region_out_memdep_getTanh_avm_writedata),
        .out_profile_loop_o_valid(bb_getTanh_B3_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_getTanh_B3_stall_region_out_stall_out),
        .out_unnamed_getTanh5_getTanh_avm_address(bb_getTanh_B3_stall_region_out_unnamed_getTanh5_getTanh_avm_address),
        .out_unnamed_getTanh5_getTanh_avm_burstcount(bb_getTanh_B3_stall_region_out_unnamed_getTanh5_getTanh_avm_burstcount),
        .out_unnamed_getTanh5_getTanh_avm_byteenable(bb_getTanh_B3_stall_region_out_unnamed_getTanh5_getTanh_avm_byteenable),
        .out_unnamed_getTanh5_getTanh_avm_enable(bb_getTanh_B3_stall_region_out_unnamed_getTanh5_getTanh_avm_enable),
        .out_unnamed_getTanh5_getTanh_avm_read(bb_getTanh_B3_stall_region_out_unnamed_getTanh5_getTanh_avm_read),
        .out_unnamed_getTanh5_getTanh_avm_write(bb_getTanh_B3_stall_region_out_unnamed_getTanh5_getTanh_avm_write),
        .out_unnamed_getTanh5_getTanh_avm_writedata(bb_getTanh_B3_stall_region_out_unnamed_getTanh5_getTanh_avm_writedata),
        .out_unnamed_getTanh6_getTanh_avm_address(bb_getTanh_B3_stall_region_out_unnamed_getTanh6_getTanh_avm_address),
        .out_unnamed_getTanh6_getTanh_avm_burstcount(bb_getTanh_B3_stall_region_out_unnamed_getTanh6_getTanh_avm_burstcount),
        .out_unnamed_getTanh6_getTanh_avm_byteenable(bb_getTanh_B3_stall_region_out_unnamed_getTanh6_getTanh_avm_byteenable),
        .out_unnamed_getTanh6_getTanh_avm_enable(bb_getTanh_B3_stall_region_out_unnamed_getTanh6_getTanh_avm_enable),
        .out_unnamed_getTanh6_getTanh_avm_read(bb_getTanh_B3_stall_region_out_unnamed_getTanh6_getTanh_avm_read),
        .out_unnamed_getTanh6_getTanh_avm_write(bb_getTanh_B3_stall_region_out_unnamed_getTanh6_getTanh_avm_write),
        .out_unnamed_getTanh6_getTanh_avm_writedata(bb_getTanh_B3_stall_region_out_unnamed_getTanh6_getTanh_avm_writedata),
        .out_valid_out(bb_getTanh_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_intel_reserved_ffwd_0_0(GPOUT,20)
    assign out_intel_reserved_ffwd_0_0 = bb_getTanh_B3_stall_region_out_intel_reserved_ffwd_0_0;

    // out_memdep_getTanh_avm_address(GPOUT,21)
    assign out_memdep_getTanh_avm_address = bb_getTanh_B3_stall_region_out_memdep_getTanh_avm_address;

    // out_memdep_getTanh_avm_burstcount(GPOUT,22)
    assign out_memdep_getTanh_avm_burstcount = bb_getTanh_B3_stall_region_out_memdep_getTanh_avm_burstcount;

    // out_memdep_getTanh_avm_byteenable(GPOUT,23)
    assign out_memdep_getTanh_avm_byteenable = bb_getTanh_B3_stall_region_out_memdep_getTanh_avm_byteenable;

    // out_memdep_getTanh_avm_enable(GPOUT,24)
    assign out_memdep_getTanh_avm_enable = bb_getTanh_B3_stall_region_out_memdep_getTanh_avm_enable;

    // out_memdep_getTanh_avm_read(GPOUT,25)
    assign out_memdep_getTanh_avm_read = bb_getTanh_B3_stall_region_out_memdep_getTanh_avm_read;

    // out_memdep_getTanh_avm_write(GPOUT,26)
    assign out_memdep_getTanh_avm_write = bb_getTanh_B3_stall_region_out_memdep_getTanh_avm_write;

    // out_memdep_getTanh_avm_writedata(GPOUT,27)
    assign out_memdep_getTanh_avm_writedata = bb_getTanh_B3_stall_region_out_memdep_getTanh_avm_writedata;

    // out_profile_loop_o_valid(GPOUT,28)
    assign out_profile_loop_o_valid = bb_getTanh_B3_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,29)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,30)
    assign out_stall_out_0 = getTanh_B3_merge_out_stall_out_0;

    // out_unnamed_getTanh5_getTanh_avm_address(GPOUT,31)
    assign out_unnamed_getTanh5_getTanh_avm_address = bb_getTanh_B3_stall_region_out_unnamed_getTanh5_getTanh_avm_address;

    // out_unnamed_getTanh5_getTanh_avm_burstcount(GPOUT,32)
    assign out_unnamed_getTanh5_getTanh_avm_burstcount = bb_getTanh_B3_stall_region_out_unnamed_getTanh5_getTanh_avm_burstcount;

    // out_unnamed_getTanh5_getTanh_avm_byteenable(GPOUT,33)
    assign out_unnamed_getTanh5_getTanh_avm_byteenable = bb_getTanh_B3_stall_region_out_unnamed_getTanh5_getTanh_avm_byteenable;

    // out_unnamed_getTanh5_getTanh_avm_enable(GPOUT,34)
    assign out_unnamed_getTanh5_getTanh_avm_enable = bb_getTanh_B3_stall_region_out_unnamed_getTanh5_getTanh_avm_enable;

    // out_unnamed_getTanh5_getTanh_avm_read(GPOUT,35)
    assign out_unnamed_getTanh5_getTanh_avm_read = bb_getTanh_B3_stall_region_out_unnamed_getTanh5_getTanh_avm_read;

    // out_unnamed_getTanh5_getTanh_avm_write(GPOUT,36)
    assign out_unnamed_getTanh5_getTanh_avm_write = bb_getTanh_B3_stall_region_out_unnamed_getTanh5_getTanh_avm_write;

    // out_unnamed_getTanh5_getTanh_avm_writedata(GPOUT,37)
    assign out_unnamed_getTanh5_getTanh_avm_writedata = bb_getTanh_B3_stall_region_out_unnamed_getTanh5_getTanh_avm_writedata;

    // out_unnamed_getTanh6_getTanh_avm_address(GPOUT,38)
    assign out_unnamed_getTanh6_getTanh_avm_address = bb_getTanh_B3_stall_region_out_unnamed_getTanh6_getTanh_avm_address;

    // out_unnamed_getTanh6_getTanh_avm_burstcount(GPOUT,39)
    assign out_unnamed_getTanh6_getTanh_avm_burstcount = bb_getTanh_B3_stall_region_out_unnamed_getTanh6_getTanh_avm_burstcount;

    // out_unnamed_getTanh6_getTanh_avm_byteenable(GPOUT,40)
    assign out_unnamed_getTanh6_getTanh_avm_byteenable = bb_getTanh_B3_stall_region_out_unnamed_getTanh6_getTanh_avm_byteenable;

    // out_unnamed_getTanh6_getTanh_avm_enable(GPOUT,41)
    assign out_unnamed_getTanh6_getTanh_avm_enable = bb_getTanh_B3_stall_region_out_unnamed_getTanh6_getTanh_avm_enable;

    // out_unnamed_getTanh6_getTanh_avm_read(GPOUT,42)
    assign out_unnamed_getTanh6_getTanh_avm_read = bb_getTanh_B3_stall_region_out_unnamed_getTanh6_getTanh_avm_read;

    // out_unnamed_getTanh6_getTanh_avm_write(GPOUT,43)
    assign out_unnamed_getTanh6_getTanh_avm_write = bb_getTanh_B3_stall_region_out_unnamed_getTanh6_getTanh_avm_write;

    // out_unnamed_getTanh6_getTanh_avm_writedata(GPOUT,44)
    assign out_unnamed_getTanh6_getTanh_avm_writedata = bb_getTanh_B3_stall_region_out_unnamed_getTanh6_getTanh_avm_writedata;

    // out_valid_in_0(GPOUT,45)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,46)
    assign out_valid_out_0 = getTanh_B3_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,47)
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
