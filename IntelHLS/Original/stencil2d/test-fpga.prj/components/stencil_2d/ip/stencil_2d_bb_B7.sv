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

// SystemVerilog created from bb_stencil_2d_B7
// Created for function/kernel stencil_2d
// SystemVerilog created on Thu Apr 27 14:23:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B7 (
    input wire [31:0] in_c0_exe11971_0,
    input wire [31:0] in_c0_exe42003_0,
    input wire [0:0] in_c0_exe52016_0,
    input wire [0:0] in_c0_exe62028_0,
    input wire [31:0] in_c0_exe720310_0,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_stencil_2d5_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe52016,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_stencil_2d5_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_burstcount,
    output wire [3:0] out_unnamed_stencil_2d5_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d5_stencil_2d_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_stencil_2d_B7_stall_region_out_c0_exe52016;
    wire [0:0] bb_stencil_2d_B7_stall_region_out_c0_exe62028;
    wire [0:0] bb_stencil_2d_B7_stall_region_out_stall_out;
    wire [31:0] bb_stencil_2d_B7_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B7_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount;
    wire [3:0] bb_stencil_2d_B7_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B7_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B7_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B7_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_write;
    wire [31:0] bb_stencil_2d_B7_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_writedata;
    wire [0:0] bb_stencil_2d_B7_stall_region_out_valid_out;
    wire [0:0] stencil_2d_B7_branch_out_c0_exe52016;
    wire [0:0] stencil_2d_B7_branch_out_stall_out;
    wire [0:0] stencil_2d_B7_branch_out_valid_out_0;
    wire [0:0] stencil_2d_B7_branch_out_valid_out_1;
    wire [31:0] stencil_2d_B7_merge_out_c0_exe11971;
    wire [31:0] stencil_2d_B7_merge_out_c0_exe42003;
    wire [0:0] stencil_2d_B7_merge_out_c0_exe52016;
    wire [0:0] stencil_2d_B7_merge_out_c0_exe62028;
    wire [31:0] stencil_2d_B7_merge_out_c0_exe720310;
    wire [0:0] stencil_2d_B7_merge_out_stall_out_0;
    wire [0:0] stencil_2d_B7_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // stencil_2d_B7_merge(BLACKBOX,29)
    stencil_2d_B7_merge thestencil_2d_B7_merge (
        .in_c0_exe11971_0(in_c0_exe11971_0),
        .in_c0_exe42003_0(in_c0_exe42003_0),
        .in_c0_exe52016_0(in_c0_exe52016_0),
        .in_c0_exe62028_0(in_c0_exe62028_0),
        .in_c0_exe720310_0(in_c0_exe720310_0),
        .in_stall_in(bb_stencil_2d_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe11971(stencil_2d_B7_merge_out_c0_exe11971),
        .out_c0_exe42003(stencil_2d_B7_merge_out_c0_exe42003),
        .out_c0_exe52016(stencil_2d_B7_merge_out_c0_exe52016),
        .out_c0_exe62028(stencil_2d_B7_merge_out_c0_exe62028),
        .out_c0_exe720310(stencil_2d_B7_merge_out_c0_exe720310),
        .out_stall_out_0(stencil_2d_B7_merge_out_stall_out_0),
        .out_valid_out(stencil_2d_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B7_stall_region(BLACKBOX,2)
    stencil_2d_bb_B7_stall_region thebb_stencil_2d_B7_stall_region (
        .in_c0_exe11971(stencil_2d_B7_merge_out_c0_exe11971),
        .in_c0_exe42003(stencil_2d_B7_merge_out_c0_exe42003),
        .in_c0_exe52016(stencil_2d_B7_merge_out_c0_exe52016),
        .in_c0_exe62028(stencil_2d_B7_merge_out_c0_exe62028),
        .in_c0_exe720310(stencil_2d_B7_merge_out_c0_exe720310),
        .in_flush(in_flush),
        .in_stall_in(stencil_2d_B7_branch_out_stall_out),
        .in_unnamed_stencil_2d5_stencil_2d_avm_readdata(in_unnamed_stencil_2d5_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d5_stencil_2d_avm_writeack(in_unnamed_stencil_2d5_stencil_2d_avm_writeack),
        .in_valid_in(stencil_2d_B7_merge_out_valid_out),
        .out_c0_exe52016(bb_stencil_2d_B7_stall_region_out_c0_exe52016),
        .out_c0_exe62028(bb_stencil_2d_B7_stall_region_out_c0_exe62028),
        .out_stall_out(bb_stencil_2d_B7_stall_region_out_stall_out),
        .out_unnamed_stencil_2d5_stencil_2d_avm_address(bb_stencil_2d_B7_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_address),
        .out_unnamed_stencil_2d5_stencil_2d_avm_burstcount(bb_stencil_2d_B7_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d5_stencil_2d_avm_byteenable(bb_stencil_2d_B7_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d5_stencil_2d_avm_enable(bb_stencil_2d_B7_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d5_stencil_2d_avm_read(bb_stencil_2d_B7_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_read),
        .out_unnamed_stencil_2d5_stencil_2d_avm_write(bb_stencil_2d_B7_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_write),
        .out_unnamed_stencil_2d5_stencil_2d_avm_writedata(bb_stencil_2d_B7_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_writedata),
        .out_valid_out(bb_stencil_2d_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B7_branch(BLACKBOX,28)
    stencil_2d_B7_branch thestencil_2d_B7_branch (
        .in_c0_exe52016(bb_stencil_2d_B7_stall_region_out_c0_exe52016),
        .in_c0_exe62028(bb_stencil_2d_B7_stall_region_out_c0_exe62028),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_stencil_2d_B7_stall_region_out_valid_out),
        .out_c0_exe52016(stencil_2d_B7_branch_out_c0_exe52016),
        .out_stall_out(stencil_2d_B7_branch_out_stall_out),
        .out_valid_out_0(stencil_2d_B7_branch_out_valid_out_0),
        .out_valid_out_1(stencil_2d_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe52016(GPOUT,16)
    assign out_c0_exe52016 = stencil_2d_B7_branch_out_c0_exe52016;

    // out_stall_in_0(GPOUT,17)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,18)
    assign out_stall_out_0 = stencil_2d_B7_merge_out_stall_out_0;

    // out_unnamed_stencil_2d5_stencil_2d_avm_address(GPOUT,19)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_address = bb_stencil_2d_B7_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_address;

    // out_unnamed_stencil_2d5_stencil_2d_avm_burstcount(GPOUT,20)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_burstcount = bb_stencil_2d_B7_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount;

    // out_unnamed_stencil_2d5_stencil_2d_avm_byteenable(GPOUT,21)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_byteenable = bb_stencil_2d_B7_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable;

    // out_unnamed_stencil_2d5_stencil_2d_avm_enable(GPOUT,22)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_enable = bb_stencil_2d_B7_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_enable;

    // out_unnamed_stencil_2d5_stencil_2d_avm_read(GPOUT,23)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_read = bb_stencil_2d_B7_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_read;

    // out_unnamed_stencil_2d5_stencil_2d_avm_write(GPOUT,24)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_write = bb_stencil_2d_B7_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_write;

    // out_unnamed_stencil_2d5_stencil_2d_avm_writedata(GPOUT,25)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_writedata = bb_stencil_2d_B7_stall_region_out_unnamed_stencil_2d5_stencil_2d_avm_writedata;

    // out_valid_out_0(GPOUT,26)
    assign out_valid_out_0 = stencil_2d_B7_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,27)
    assign out_valid_out_1 = stencil_2d_B7_branch_out_valid_out_1;

    // rst_sync(RESETSYNC,30)
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
