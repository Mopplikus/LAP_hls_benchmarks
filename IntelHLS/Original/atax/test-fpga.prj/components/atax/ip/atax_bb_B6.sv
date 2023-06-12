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

// SystemVerilog created from bb_atax_B6
// Created for function/kernel atax
// SystemVerilog created on Wed Apr 26 13:39:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B6 (
    output wire [0:0] out_feedback_almost_empty_out_13,
    output wire [0:0] out_feedback_data_out_13,
    output wire [0:0] out_feedback_empty_out_13,
    input wire [0:0] in_feedback_stall_in_13,
    input wire [31:0] in_c0_exe116012_0,
    input wire [0:0] in_c0_exe216113_0,
    input wire [63:0] in_c0_exe516414_0,
    input wire [0:0] in_c0_exe616515_0,
    input wire [0:0] in_c0_exe716616_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_atax_avm_readdata,
    input wire [0:0] in_memdep_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_atax_avm_waitrequest,
    input wire [0:0] in_memdep_atax_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe1126,
    output wire [31:0] out_memdep_atax_avm_address,
    output wire [0:0] out_memdep_atax_avm_burstcount,
    output wire [3:0] out_memdep_atax_avm_byteenable,
    output wire [0:0] out_memdep_atax_avm_enable,
    output wire [0:0] out_memdep_atax_avm_read,
    output wire [0:0] out_memdep_atax_avm_write,
    output wire [31:0] out_memdep_atax_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] atax_B6_branch_out_c0_exe1126;
    wire [0:0] atax_B6_branch_out_stall_out;
    wire [0:0] atax_B6_branch_out_valid_out_0;
    wire [0:0] atax_B6_merge_out_almost_empty_out;
    wire [31:0] atax_B6_merge_out_c0_exe116012;
    wire [0:0] atax_B6_merge_out_c0_exe216113;
    wire [63:0] atax_B6_merge_out_c0_exe516414;
    wire [0:0] atax_B6_merge_out_c0_exe616515;
    wire [0:0] atax_B6_merge_out_c0_exe716616;
    wire [0:0] atax_B6_merge_out_empty_out;
    wire [0:0] atax_B6_merge_out_stall_out_0;
    wire [0:0] atax_B6_merge_out_valid_out;
    wire [0:0] bb_atax_B6_stall_region_out_almost_empty_out;
    wire [0:0] bb_atax_B6_stall_region_out_c0_exe1126;
    wire [0:0] bb_atax_B6_stall_region_out_c0_exe716616;
    wire [0:0] bb_atax_B6_stall_region_out_empty_out;
    wire [0:0] bb_atax_B6_stall_region_out_feedback_almost_empty_out_13;
    wire [0:0] bb_atax_B6_stall_region_out_feedback_data_out_13;
    wire [0:0] bb_atax_B6_stall_region_out_feedback_empty_out_13;
    wire [31:0] bb_atax_B6_stall_region_out_memdep_atax_avm_address;
    wire [0:0] bb_atax_B6_stall_region_out_memdep_atax_avm_burstcount;
    wire [3:0] bb_atax_B6_stall_region_out_memdep_atax_avm_byteenable;
    wire [0:0] bb_atax_B6_stall_region_out_memdep_atax_avm_enable;
    wire [0:0] bb_atax_B6_stall_region_out_memdep_atax_avm_read;
    wire [0:0] bb_atax_B6_stall_region_out_memdep_atax_avm_write;
    wire [31:0] bb_atax_B6_stall_region_out_memdep_atax_avm_writedata;
    wire [0:0] bb_atax_B6_stall_region_out_stall_out;
    wire [0:0] bb_atax_B6_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // atax_B6_branch(BLACKBOX,2)
    atax_B6_branch theatax_B6_branch (
        .in_almost_empty_in(bb_atax_B6_stall_region_out_almost_empty_out),
        .in_c0_exe1126(bb_atax_B6_stall_region_out_c0_exe1126),
        .in_c0_exe716616(bb_atax_B6_stall_region_out_c0_exe716616),
        .in_empty_in(bb_atax_B6_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_atax_B6_stall_region_out_valid_out),
        .out_c0_exe1126(atax_B6_branch_out_c0_exe1126),
        .out_stall_out(atax_B6_branch_out_stall_out),
        .out_valid_out_0(atax_B6_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B6_merge(BLACKBOX,3)
    atax_B6_merge theatax_B6_merge (
        .in_c0_exe116012_0(in_c0_exe116012_0),
        .in_c0_exe216113_0(in_c0_exe216113_0),
        .in_c0_exe516414_0(in_c0_exe516414_0),
        .in_c0_exe616515_0(in_c0_exe616515_0),
        .in_c0_exe716616_0(in_c0_exe716616_0),
        .in_stall_in(bb_atax_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(atax_B6_merge_out_almost_empty_out),
        .out_c0_exe116012(atax_B6_merge_out_c0_exe116012),
        .out_c0_exe216113(atax_B6_merge_out_c0_exe216113),
        .out_c0_exe516414(atax_B6_merge_out_c0_exe516414),
        .out_c0_exe616515(atax_B6_merge_out_c0_exe616515),
        .out_c0_exe716616(atax_B6_merge_out_c0_exe716616),
        .out_empty_out(atax_B6_merge_out_empty_out),
        .out_stall_out_0(atax_B6_merge_out_stall_out_0),
        .out_valid_out(atax_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B6_stall_region(BLACKBOX,4)
    atax_bb_B6_stall_region thebb_atax_B6_stall_region (
        .in_almost_empty_in(atax_B6_merge_out_almost_empty_out),
        .in_c0_exe116012(atax_B6_merge_out_c0_exe116012),
        .in_c0_exe216113(atax_B6_merge_out_c0_exe216113),
        .in_c0_exe516414(atax_B6_merge_out_c0_exe516414),
        .in_c0_exe616515(atax_B6_merge_out_c0_exe616515),
        .in_c0_exe716616(atax_B6_merge_out_c0_exe716616),
        .in_empty_in(atax_B6_merge_out_empty_out),
        .in_feedback_stall_in_13(in_feedback_stall_in_13),
        .in_flush(in_flush),
        .in_memdep_atax_avm_readdata(in_memdep_atax_avm_readdata),
        .in_memdep_atax_avm_readdatavalid(in_memdep_atax_avm_readdatavalid),
        .in_memdep_atax_avm_waitrequest(in_memdep_atax_avm_waitrequest),
        .in_memdep_atax_avm_writeack(in_memdep_atax_avm_writeack),
        .in_stall_in(atax_B6_branch_out_stall_out),
        .in_valid_in(atax_B6_merge_out_valid_out),
        .out_almost_empty_out(bb_atax_B6_stall_region_out_almost_empty_out),
        .out_c0_exe1126(bb_atax_B6_stall_region_out_c0_exe1126),
        .out_c0_exe716616(bb_atax_B6_stall_region_out_c0_exe716616),
        .out_empty_out(bb_atax_B6_stall_region_out_empty_out),
        .out_feedback_almost_empty_out_13(bb_atax_B6_stall_region_out_feedback_almost_empty_out_13),
        .out_feedback_data_out_13(bb_atax_B6_stall_region_out_feedback_data_out_13),
        .out_feedback_empty_out_13(bb_atax_B6_stall_region_out_feedback_empty_out_13),
        .out_memdep_atax_avm_address(bb_atax_B6_stall_region_out_memdep_atax_avm_address),
        .out_memdep_atax_avm_burstcount(bb_atax_B6_stall_region_out_memdep_atax_avm_burstcount),
        .out_memdep_atax_avm_byteenable(bb_atax_B6_stall_region_out_memdep_atax_avm_byteenable),
        .out_memdep_atax_avm_enable(bb_atax_B6_stall_region_out_memdep_atax_avm_enable),
        .out_memdep_atax_avm_read(bb_atax_B6_stall_region_out_memdep_atax_avm_read),
        .out_memdep_atax_avm_write(bb_atax_B6_stall_region_out_memdep_atax_avm_write),
        .out_memdep_atax_avm_writedata(bb_atax_B6_stall_region_out_memdep_atax_avm_writedata),
        .out_stall_out(bb_atax_B6_stall_region_out_stall_out),
        .out_valid_out(bb_atax_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_almost_empty_out_13_sync(GPOUT,5)
    assign out_feedback_almost_empty_out_13 = bb_atax_B6_stall_region_out_feedback_almost_empty_out_13;

    // feedback_data_out_13_sync(GPOUT,6)
    assign out_feedback_data_out_13 = bb_atax_B6_stall_region_out_feedback_data_out_13;

    // feedback_empty_out_13_sync(GPOUT,7)
    assign out_feedback_empty_out_13 = bb_atax_B6_stall_region_out_feedback_empty_out_13;

    // out_c0_exe1126(GPOUT,21)
    assign out_c0_exe1126 = atax_B6_branch_out_c0_exe1126;

    // out_memdep_atax_avm_address(GPOUT,22)
    assign out_memdep_atax_avm_address = bb_atax_B6_stall_region_out_memdep_atax_avm_address;

    // out_memdep_atax_avm_burstcount(GPOUT,23)
    assign out_memdep_atax_avm_burstcount = bb_atax_B6_stall_region_out_memdep_atax_avm_burstcount;

    // out_memdep_atax_avm_byteenable(GPOUT,24)
    assign out_memdep_atax_avm_byteenable = bb_atax_B6_stall_region_out_memdep_atax_avm_byteenable;

    // out_memdep_atax_avm_enable(GPOUT,25)
    assign out_memdep_atax_avm_enable = bb_atax_B6_stall_region_out_memdep_atax_avm_enable;

    // out_memdep_atax_avm_read(GPOUT,26)
    assign out_memdep_atax_avm_read = bb_atax_B6_stall_region_out_memdep_atax_avm_read;

    // out_memdep_atax_avm_write(GPOUT,27)
    assign out_memdep_atax_avm_write = bb_atax_B6_stall_region_out_memdep_atax_avm_write;

    // out_memdep_atax_avm_writedata(GPOUT,28)
    assign out_memdep_atax_avm_writedata = bb_atax_B6_stall_region_out_memdep_atax_avm_writedata;

    // out_stall_in_0(GPOUT,29)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,30)
    assign out_stall_out_0 = atax_B6_merge_out_stall_out_0;

    // out_valid_in_0(GPOUT,31)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,32)
    assign out_valid_out_0 = atax_B6_branch_out_valid_out_0;

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
