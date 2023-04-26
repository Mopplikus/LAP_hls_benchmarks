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

// SystemVerilog created from bb_histogram_B2
// Created for function/kernel histogram
// SystemVerilog created on Wed Apr 26 12:05:11 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module histogram_bb_B2 (
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_lm1_histogram_avm_readdata,
    input wire [0:0] in_lm1_histogram_avm_readdatavalid,
    input wire [0:0] in_lm1_histogram_avm_waitrequest,
    input wire [0:0] in_lm1_histogram_avm_writeack,
    input wire [31:0] in_lm52_histogram_avm_readdata,
    input wire [0:0] in_lm52_histogram_avm_readdatavalid,
    input wire [0:0] in_lm52_histogram_avm_waitrequest,
    input wire [0:0] in_lm52_histogram_avm_writeack,
    input wire [31:0] in_lm73_histogram_avm_readdata,
    input wire [0:0] in_lm73_histogram_avm_readdatavalid,
    input wire [0:0] in_lm73_histogram_avm_waitrequest,
    input wire [0:0] in_lm73_histogram_avm_writeack,
    input wire [31:0] in_memdep_histogram_avm_readdata,
    input wire [0:0] in_memdep_histogram_avm_readdatavalid,
    input wire [0:0] in_memdep_histogram_avm_waitrequest,
    input wire [0:0] in_memdep_histogram_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_lm1_histogram_avm_address,
    output wire [0:0] out_lm1_histogram_avm_burstcount,
    output wire [3:0] out_lm1_histogram_avm_byteenable,
    output wire [0:0] out_lm1_histogram_avm_enable,
    output wire [0:0] out_lm1_histogram_avm_read,
    output wire [0:0] out_lm1_histogram_avm_write,
    output wire [31:0] out_lm1_histogram_avm_writedata,
    output wire [31:0] out_lm52_histogram_avm_address,
    output wire [0:0] out_lm52_histogram_avm_burstcount,
    output wire [3:0] out_lm52_histogram_avm_byteenable,
    output wire [0:0] out_lm52_histogram_avm_enable,
    output wire [0:0] out_lm52_histogram_avm_read,
    output wire [0:0] out_lm52_histogram_avm_write,
    output wire [31:0] out_lm52_histogram_avm_writedata,
    output wire [31:0] out_lm73_histogram_avm_address,
    output wire [0:0] out_lm73_histogram_avm_burstcount,
    output wire [3:0] out_lm73_histogram_avm_byteenable,
    output wire [0:0] out_lm73_histogram_avm_enable,
    output wire [0:0] out_lm73_histogram_avm_read,
    output wire [0:0] out_lm73_histogram_avm_write,
    output wire [31:0] out_lm73_histogram_avm_writedata,
    output wire [31:0] out_memdep_histogram_avm_address,
    output wire [0:0] out_memdep_histogram_avm_burstcount,
    output wire [3:0] out_memdep_histogram_avm_byteenable,
    output wire [0:0] out_memdep_histogram_avm_enable,
    output wire [0:0] out_memdep_histogram_avm_read,
    output wire [0:0] out_memdep_histogram_avm_write,
    output wire [31:0] out_memdep_histogram_avm_writedata,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_histogram_B2_stall_region_out_almost_empty_out;
    wire [0:0] bb_histogram_B2_stall_region_out_c0_exe2;
    wire [0:0] bb_histogram_B2_stall_region_out_empty_out;
    wire [31:0] bb_histogram_B2_stall_region_out_lm1_histogram_avm_address;
    wire [0:0] bb_histogram_B2_stall_region_out_lm1_histogram_avm_burstcount;
    wire [3:0] bb_histogram_B2_stall_region_out_lm1_histogram_avm_byteenable;
    wire [0:0] bb_histogram_B2_stall_region_out_lm1_histogram_avm_enable;
    wire [0:0] bb_histogram_B2_stall_region_out_lm1_histogram_avm_read;
    wire [0:0] bb_histogram_B2_stall_region_out_lm1_histogram_avm_write;
    wire [31:0] bb_histogram_B2_stall_region_out_lm1_histogram_avm_writedata;
    wire [31:0] bb_histogram_B2_stall_region_out_lm52_histogram_avm_address;
    wire [0:0] bb_histogram_B2_stall_region_out_lm52_histogram_avm_burstcount;
    wire [3:0] bb_histogram_B2_stall_region_out_lm52_histogram_avm_byteenable;
    wire [0:0] bb_histogram_B2_stall_region_out_lm52_histogram_avm_enable;
    wire [0:0] bb_histogram_B2_stall_region_out_lm52_histogram_avm_read;
    wire [0:0] bb_histogram_B2_stall_region_out_lm52_histogram_avm_write;
    wire [31:0] bb_histogram_B2_stall_region_out_lm52_histogram_avm_writedata;
    wire [31:0] bb_histogram_B2_stall_region_out_lm73_histogram_avm_address;
    wire [0:0] bb_histogram_B2_stall_region_out_lm73_histogram_avm_burstcount;
    wire [3:0] bb_histogram_B2_stall_region_out_lm73_histogram_avm_byteenable;
    wire [0:0] bb_histogram_B2_stall_region_out_lm73_histogram_avm_enable;
    wire [0:0] bb_histogram_B2_stall_region_out_lm73_histogram_avm_read;
    wire [0:0] bb_histogram_B2_stall_region_out_lm73_histogram_avm_write;
    wire [31:0] bb_histogram_B2_stall_region_out_lm73_histogram_avm_writedata;
    wire [31:0] bb_histogram_B2_stall_region_out_memdep_histogram_avm_address;
    wire [0:0] bb_histogram_B2_stall_region_out_memdep_histogram_avm_burstcount;
    wire [3:0] bb_histogram_B2_stall_region_out_memdep_histogram_avm_byteenable;
    wire [0:0] bb_histogram_B2_stall_region_out_memdep_histogram_avm_enable;
    wire [0:0] bb_histogram_B2_stall_region_out_memdep_histogram_avm_read;
    wire [0:0] bb_histogram_B2_stall_region_out_memdep_histogram_avm_write;
    wire [31:0] bb_histogram_B2_stall_region_out_memdep_histogram_avm_writedata;
    wire [0:0] bb_histogram_B2_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_histogram_B2_stall_region_out_stall_out;
    wire [0:0] bb_histogram_B2_stall_region_out_valid_out;
    wire [0:0] histogram_B2_branch_out_stall_out;
    wire [0:0] histogram_B2_branch_out_valid_out_0;
    wire [0:0] histogram_B2_merge_out_almost_empty_out;
    wire [0:0] histogram_B2_merge_out_empty_out;
    wire [0:0] histogram_B2_merge_out_stall_out_0;
    wire [0:0] histogram_B2_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // histogram_B2_branch(BLACKBOX,3)
    histogram_B2_branch thehistogram_B2_branch (
        .in_almost_empty_in(bb_histogram_B2_stall_region_out_almost_empty_out),
        .in_c0_exe2(bb_histogram_B2_stall_region_out_c0_exe2),
        .in_empty_in(bb_histogram_B2_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_histogram_B2_stall_region_out_valid_out),
        .out_stall_out(histogram_B2_branch_out_stall_out),
        .out_valid_out_0(histogram_B2_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // histogram_B2_merge(BLACKBOX,4)
    histogram_B2_merge thehistogram_B2_merge (
        .in_stall_in(bb_histogram_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(histogram_B2_merge_out_almost_empty_out),
        .out_empty_out(histogram_B2_merge_out_empty_out),
        .out_stall_out_0(histogram_B2_merge_out_stall_out_0),
        .out_valid_out(histogram_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_histogram_B2_stall_region(BLACKBOX,2)
    histogram_bb_B2_stall_region thebb_histogram_B2_stall_region (
        .in_almost_empty_in(histogram_B2_merge_out_almost_empty_out),
        .in_empty_in(histogram_B2_merge_out_empty_out),
        .in_flush(in_flush),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_lm1_histogram_avm_readdata(in_lm1_histogram_avm_readdata),
        .in_lm1_histogram_avm_readdatavalid(in_lm1_histogram_avm_readdatavalid),
        .in_lm1_histogram_avm_waitrequest(in_lm1_histogram_avm_waitrequest),
        .in_lm1_histogram_avm_writeack(in_lm1_histogram_avm_writeack),
        .in_lm52_histogram_avm_readdata(in_lm52_histogram_avm_readdata),
        .in_lm52_histogram_avm_readdatavalid(in_lm52_histogram_avm_readdatavalid),
        .in_lm52_histogram_avm_waitrequest(in_lm52_histogram_avm_waitrequest),
        .in_lm52_histogram_avm_writeack(in_lm52_histogram_avm_writeack),
        .in_lm73_histogram_avm_readdata(in_lm73_histogram_avm_readdata),
        .in_lm73_histogram_avm_readdatavalid(in_lm73_histogram_avm_readdatavalid),
        .in_lm73_histogram_avm_waitrequest(in_lm73_histogram_avm_waitrequest),
        .in_lm73_histogram_avm_writeack(in_lm73_histogram_avm_writeack),
        .in_memdep_histogram_avm_readdata(in_memdep_histogram_avm_readdata),
        .in_memdep_histogram_avm_readdatavalid(in_memdep_histogram_avm_readdatavalid),
        .in_memdep_histogram_avm_waitrequest(in_memdep_histogram_avm_waitrequest),
        .in_memdep_histogram_avm_writeack(in_memdep_histogram_avm_writeack),
        .in_stall_in(histogram_B2_branch_out_stall_out),
        .in_valid_in(histogram_B2_merge_out_valid_out),
        .out_almost_empty_out(bb_histogram_B2_stall_region_out_almost_empty_out),
        .out_c0_exe2(bb_histogram_B2_stall_region_out_c0_exe2),
        .out_empty_out(bb_histogram_B2_stall_region_out_empty_out),
        .out_lm1_histogram_avm_address(bb_histogram_B2_stall_region_out_lm1_histogram_avm_address),
        .out_lm1_histogram_avm_burstcount(bb_histogram_B2_stall_region_out_lm1_histogram_avm_burstcount),
        .out_lm1_histogram_avm_byteenable(bb_histogram_B2_stall_region_out_lm1_histogram_avm_byteenable),
        .out_lm1_histogram_avm_enable(bb_histogram_B2_stall_region_out_lm1_histogram_avm_enable),
        .out_lm1_histogram_avm_read(bb_histogram_B2_stall_region_out_lm1_histogram_avm_read),
        .out_lm1_histogram_avm_write(bb_histogram_B2_stall_region_out_lm1_histogram_avm_write),
        .out_lm1_histogram_avm_writedata(bb_histogram_B2_stall_region_out_lm1_histogram_avm_writedata),
        .out_lm52_histogram_avm_address(bb_histogram_B2_stall_region_out_lm52_histogram_avm_address),
        .out_lm52_histogram_avm_burstcount(bb_histogram_B2_stall_region_out_lm52_histogram_avm_burstcount),
        .out_lm52_histogram_avm_byteenable(bb_histogram_B2_stall_region_out_lm52_histogram_avm_byteenable),
        .out_lm52_histogram_avm_enable(bb_histogram_B2_stall_region_out_lm52_histogram_avm_enable),
        .out_lm52_histogram_avm_read(bb_histogram_B2_stall_region_out_lm52_histogram_avm_read),
        .out_lm52_histogram_avm_write(bb_histogram_B2_stall_region_out_lm52_histogram_avm_write),
        .out_lm52_histogram_avm_writedata(bb_histogram_B2_stall_region_out_lm52_histogram_avm_writedata),
        .out_lm73_histogram_avm_address(bb_histogram_B2_stall_region_out_lm73_histogram_avm_address),
        .out_lm73_histogram_avm_burstcount(bb_histogram_B2_stall_region_out_lm73_histogram_avm_burstcount),
        .out_lm73_histogram_avm_byteenable(bb_histogram_B2_stall_region_out_lm73_histogram_avm_byteenable),
        .out_lm73_histogram_avm_enable(bb_histogram_B2_stall_region_out_lm73_histogram_avm_enable),
        .out_lm73_histogram_avm_read(bb_histogram_B2_stall_region_out_lm73_histogram_avm_read),
        .out_lm73_histogram_avm_write(bb_histogram_B2_stall_region_out_lm73_histogram_avm_write),
        .out_lm73_histogram_avm_writedata(bb_histogram_B2_stall_region_out_lm73_histogram_avm_writedata),
        .out_memdep_histogram_avm_address(bb_histogram_B2_stall_region_out_memdep_histogram_avm_address),
        .out_memdep_histogram_avm_burstcount(bb_histogram_B2_stall_region_out_memdep_histogram_avm_burstcount),
        .out_memdep_histogram_avm_byteenable(bb_histogram_B2_stall_region_out_memdep_histogram_avm_byteenable),
        .out_memdep_histogram_avm_enable(bb_histogram_B2_stall_region_out_memdep_histogram_avm_enable),
        .out_memdep_histogram_avm_read(bb_histogram_B2_stall_region_out_memdep_histogram_avm_read),
        .out_memdep_histogram_avm_write(bb_histogram_B2_stall_region_out_memdep_histogram_avm_write),
        .out_memdep_histogram_avm_writedata(bb_histogram_B2_stall_region_out_memdep_histogram_avm_writedata),
        .out_profile_loop_o_valid(bb_histogram_B2_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_histogram_B2_stall_region_out_stall_out),
        .out_valid_out(bb_histogram_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_lm1_histogram_avm_address(GPOUT,26)
    assign out_lm1_histogram_avm_address = bb_histogram_B2_stall_region_out_lm1_histogram_avm_address;

    // out_lm1_histogram_avm_burstcount(GPOUT,27)
    assign out_lm1_histogram_avm_burstcount = bb_histogram_B2_stall_region_out_lm1_histogram_avm_burstcount;

    // out_lm1_histogram_avm_byteenable(GPOUT,28)
    assign out_lm1_histogram_avm_byteenable = bb_histogram_B2_stall_region_out_lm1_histogram_avm_byteenable;

    // out_lm1_histogram_avm_enable(GPOUT,29)
    assign out_lm1_histogram_avm_enable = bb_histogram_B2_stall_region_out_lm1_histogram_avm_enable;

    // out_lm1_histogram_avm_read(GPOUT,30)
    assign out_lm1_histogram_avm_read = bb_histogram_B2_stall_region_out_lm1_histogram_avm_read;

    // out_lm1_histogram_avm_write(GPOUT,31)
    assign out_lm1_histogram_avm_write = bb_histogram_B2_stall_region_out_lm1_histogram_avm_write;

    // out_lm1_histogram_avm_writedata(GPOUT,32)
    assign out_lm1_histogram_avm_writedata = bb_histogram_B2_stall_region_out_lm1_histogram_avm_writedata;

    // out_lm52_histogram_avm_address(GPOUT,33)
    assign out_lm52_histogram_avm_address = bb_histogram_B2_stall_region_out_lm52_histogram_avm_address;

    // out_lm52_histogram_avm_burstcount(GPOUT,34)
    assign out_lm52_histogram_avm_burstcount = bb_histogram_B2_stall_region_out_lm52_histogram_avm_burstcount;

    // out_lm52_histogram_avm_byteenable(GPOUT,35)
    assign out_lm52_histogram_avm_byteenable = bb_histogram_B2_stall_region_out_lm52_histogram_avm_byteenable;

    // out_lm52_histogram_avm_enable(GPOUT,36)
    assign out_lm52_histogram_avm_enable = bb_histogram_B2_stall_region_out_lm52_histogram_avm_enable;

    // out_lm52_histogram_avm_read(GPOUT,37)
    assign out_lm52_histogram_avm_read = bb_histogram_B2_stall_region_out_lm52_histogram_avm_read;

    // out_lm52_histogram_avm_write(GPOUT,38)
    assign out_lm52_histogram_avm_write = bb_histogram_B2_stall_region_out_lm52_histogram_avm_write;

    // out_lm52_histogram_avm_writedata(GPOUT,39)
    assign out_lm52_histogram_avm_writedata = bb_histogram_B2_stall_region_out_lm52_histogram_avm_writedata;

    // out_lm73_histogram_avm_address(GPOUT,40)
    assign out_lm73_histogram_avm_address = bb_histogram_B2_stall_region_out_lm73_histogram_avm_address;

    // out_lm73_histogram_avm_burstcount(GPOUT,41)
    assign out_lm73_histogram_avm_burstcount = bb_histogram_B2_stall_region_out_lm73_histogram_avm_burstcount;

    // out_lm73_histogram_avm_byteenable(GPOUT,42)
    assign out_lm73_histogram_avm_byteenable = bb_histogram_B2_stall_region_out_lm73_histogram_avm_byteenable;

    // out_lm73_histogram_avm_enable(GPOUT,43)
    assign out_lm73_histogram_avm_enable = bb_histogram_B2_stall_region_out_lm73_histogram_avm_enable;

    // out_lm73_histogram_avm_read(GPOUT,44)
    assign out_lm73_histogram_avm_read = bb_histogram_B2_stall_region_out_lm73_histogram_avm_read;

    // out_lm73_histogram_avm_write(GPOUT,45)
    assign out_lm73_histogram_avm_write = bb_histogram_B2_stall_region_out_lm73_histogram_avm_write;

    // out_lm73_histogram_avm_writedata(GPOUT,46)
    assign out_lm73_histogram_avm_writedata = bb_histogram_B2_stall_region_out_lm73_histogram_avm_writedata;

    // out_memdep_histogram_avm_address(GPOUT,47)
    assign out_memdep_histogram_avm_address = bb_histogram_B2_stall_region_out_memdep_histogram_avm_address;

    // out_memdep_histogram_avm_burstcount(GPOUT,48)
    assign out_memdep_histogram_avm_burstcount = bb_histogram_B2_stall_region_out_memdep_histogram_avm_burstcount;

    // out_memdep_histogram_avm_byteenable(GPOUT,49)
    assign out_memdep_histogram_avm_byteenable = bb_histogram_B2_stall_region_out_memdep_histogram_avm_byteenable;

    // out_memdep_histogram_avm_enable(GPOUT,50)
    assign out_memdep_histogram_avm_enable = bb_histogram_B2_stall_region_out_memdep_histogram_avm_enable;

    // out_memdep_histogram_avm_read(GPOUT,51)
    assign out_memdep_histogram_avm_read = bb_histogram_B2_stall_region_out_memdep_histogram_avm_read;

    // out_memdep_histogram_avm_write(GPOUT,52)
    assign out_memdep_histogram_avm_write = bb_histogram_B2_stall_region_out_memdep_histogram_avm_write;

    // out_memdep_histogram_avm_writedata(GPOUT,53)
    assign out_memdep_histogram_avm_writedata = bb_histogram_B2_stall_region_out_memdep_histogram_avm_writedata;

    // out_profile_loop_o_valid(GPOUT,54)
    assign out_profile_loop_o_valid = bb_histogram_B2_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,55)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,56)
    assign out_stall_out_0 = histogram_B2_merge_out_stall_out_0;

    // out_valid_in_0(GPOUT,57)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,58)
    assign out_valid_out_0 = histogram_B2_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,59)
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
