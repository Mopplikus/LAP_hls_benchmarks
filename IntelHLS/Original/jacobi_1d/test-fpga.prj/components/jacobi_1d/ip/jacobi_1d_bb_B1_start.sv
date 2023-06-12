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

// SystemVerilog created from bb_jacobi_1d_B1_start
// Created for function/kernel jacobi_1d
// SystemVerilog created on Wed Apr 26 12:46:08 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_bb_B1_start (
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_flush,
    input wire [191:0] in_iord_bl_call_jacobi_1d_i_fifodata,
    input wire [0:0] in_iord_bl_call_jacobi_1d_i_fifovalid,
    input wire [31:0] in_pre_pre1_jacobi_1d_avm_readdata,
    input wire [0:0] in_pre_pre1_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_pre_pre1_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_pre_pre1_jacobi_1d_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    output wire [0:0] out_iord_bl_call_jacobi_1d_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_jacobi_1d_o_fifoready,
    output wire [31:0] out_pre_pre1_jacobi_1d_avm_address,
    output wire [0:0] out_pre_pre1_jacobi_1d_avm_burstcount,
    output wire [3:0] out_pre_pre1_jacobi_1d_avm_byteenable,
    output wire [0:0] out_pre_pre1_jacobi_1d_avm_enable,
    output wire [0:0] out_pre_pre1_jacobi_1d_avm_read,
    output wire [0:0] out_pre_pre1_jacobi_1d_avm_write,
    output wire [31:0] out_pre_pre1_jacobi_1d_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_jacobi_1d_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_exiting_stall_out;
    wire [0:0] bb_jacobi_1d_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_exiting_valid_out;
    wire [0:0] bb_jacobi_1d_B1_start_stall_region_out_feedback_stall_out_1;
    wire [31:0] bb_jacobi_1d_B1_start_stall_region_out_intel_reserved_ffwd_0_0;
    wire [0:0] bb_jacobi_1d_B1_start_stall_region_out_iord_bl_call_jacobi_1d_o_fifoalmost_full;
    wire [0:0] bb_jacobi_1d_B1_start_stall_region_out_iord_bl_call_jacobi_1d_o_fifoready;
    wire [0:0] bb_jacobi_1d_B1_start_stall_region_out_pipeline_valid_out;
    wire [31:0] bb_jacobi_1d_B1_start_stall_region_out_pre_pre1_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B1_start_stall_region_out_pre_pre1_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B1_start_stall_region_out_pre_pre1_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B1_start_stall_region_out_pre_pre1_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B1_start_stall_region_out_pre_pre1_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B1_start_stall_region_out_pre_pre1_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B1_start_stall_region_out_pre_pre1_jacobi_1d_avm_writedata;
    wire [0:0] bb_jacobi_1d_B1_start_stall_region_out_stall_out;
    wire [0:0] bb_jacobi_1d_B1_start_stall_region_out_valid_out;
    wire [0:0] jacobi_1d_B1_start_branch_out_stall_out;
    wire [0:0] jacobi_1d_B1_start_branch_out_valid_out_0;
    wire [0:0] jacobi_1d_B1_start_merge_out_stall_out_0;
    wire [0:0] jacobi_1d_B1_start_merge_out_stall_out_1;
    wire [0:0] jacobi_1d_B1_start_merge_out_valid_out;


    // jacobi_1d_B1_start_merge(BLACKBOX,17)
    jacobi_1d_B1_start_merge thejacobi_1d_B1_start_merge (
        .in_stall_in(bb_jacobi_1d_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(jacobi_1d_B1_start_merge_out_stall_out_0),
        .out_stall_out_1(jacobi_1d_B1_start_merge_out_stall_out_1),
        .out_valid_out(jacobi_1d_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // jacobi_1d_B1_start_branch(BLACKBOX,16)
    jacobi_1d_B1_start_branch thejacobi_1d_B1_start_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_jacobi_1d_B1_start_stall_region_out_valid_out),
        .out_stall_out(jacobi_1d_B1_start_branch_out_stall_out),
        .out_valid_out_0(jacobi_1d_B1_start_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B1_start_stall_region(BLACKBOX,2)
    jacobi_1d_bb_B1_start_stall_region thebb_jacobi_1d_B1_start_stall_region (
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_flush(in_flush),
        .in_iord_bl_call_jacobi_1d_i_fifodata(in_iord_bl_call_jacobi_1d_i_fifodata),
        .in_iord_bl_call_jacobi_1d_i_fifovalid(in_iord_bl_call_jacobi_1d_i_fifovalid),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pre_pre1_jacobi_1d_avm_readdata(in_pre_pre1_jacobi_1d_avm_readdata),
        .in_pre_pre1_jacobi_1d_avm_readdatavalid(in_pre_pre1_jacobi_1d_avm_readdatavalid),
        .in_pre_pre1_jacobi_1d_avm_waitrequest(in_pre_pre1_jacobi_1d_avm_waitrequest),
        .in_pre_pre1_jacobi_1d_avm_writeack(in_pre_pre1_jacobi_1d_avm_writeack),
        .in_stall_in(jacobi_1d_B1_start_branch_out_stall_out),
        .in_valid_in(jacobi_1d_B1_start_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_exiting_stall_out(bb_jacobi_1d_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_exiting_valid_out(bb_jacobi_1d_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_exiting_valid_out),
        .out_feedback_stall_out_1(bb_jacobi_1d_B1_start_stall_region_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_jacobi_1d_B1_start_stall_region_out_intel_reserved_ffwd_0_0),
        .out_iord_bl_call_jacobi_1d_o_fifoalmost_full(bb_jacobi_1d_B1_start_stall_region_out_iord_bl_call_jacobi_1d_o_fifoalmost_full),
        .out_iord_bl_call_jacobi_1d_o_fifoready(bb_jacobi_1d_B1_start_stall_region_out_iord_bl_call_jacobi_1d_o_fifoready),
        .out_pipeline_valid_out(bb_jacobi_1d_B1_start_stall_region_out_pipeline_valid_out),
        .out_pre_pre1_jacobi_1d_avm_address(bb_jacobi_1d_B1_start_stall_region_out_pre_pre1_jacobi_1d_avm_address),
        .out_pre_pre1_jacobi_1d_avm_burstcount(bb_jacobi_1d_B1_start_stall_region_out_pre_pre1_jacobi_1d_avm_burstcount),
        .out_pre_pre1_jacobi_1d_avm_byteenable(bb_jacobi_1d_B1_start_stall_region_out_pre_pre1_jacobi_1d_avm_byteenable),
        .out_pre_pre1_jacobi_1d_avm_enable(bb_jacobi_1d_B1_start_stall_region_out_pre_pre1_jacobi_1d_avm_enable),
        .out_pre_pre1_jacobi_1d_avm_read(bb_jacobi_1d_B1_start_stall_region_out_pre_pre1_jacobi_1d_avm_read),
        .out_pre_pre1_jacobi_1d_avm_write(bb_jacobi_1d_B1_start_stall_region_out_pre_pre1_jacobi_1d_avm_write),
        .out_pre_pre1_jacobi_1d_avm_writedata(bb_jacobi_1d_B1_start_stall_region_out_pre_pre1_jacobi_1d_avm_writedata),
        .out_stall_out(bb_jacobi_1d_B1_start_stall_region_out_stall_out),
        .out_valid_out(bb_jacobi_1d_B1_start_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_1_sync(GPOUT,4)
    assign out_feedback_stall_out_1 = bb_jacobi_1d_B1_start_stall_region_out_feedback_stall_out_1;

    // out_exiting_stall_out(GPOUT,18)
    assign out_exiting_stall_out = bb_jacobi_1d_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,19)
    assign out_exiting_valid_out = bb_jacobi_1d_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_jacobi_1d1_exiting_valid_out;

    // out_intel_reserved_ffwd_0_0(GPOUT,20)
    assign out_intel_reserved_ffwd_0_0 = bb_jacobi_1d_B1_start_stall_region_out_intel_reserved_ffwd_0_0;

    // out_iord_bl_call_jacobi_1d_o_fifoalmost_full(GPOUT,21)
    assign out_iord_bl_call_jacobi_1d_o_fifoalmost_full = bb_jacobi_1d_B1_start_stall_region_out_iord_bl_call_jacobi_1d_o_fifoalmost_full;

    // out_iord_bl_call_jacobi_1d_o_fifoready(GPOUT,22)
    assign out_iord_bl_call_jacobi_1d_o_fifoready = bb_jacobi_1d_B1_start_stall_region_out_iord_bl_call_jacobi_1d_o_fifoready;

    // out_pre_pre1_jacobi_1d_avm_address(GPOUT,23)
    assign out_pre_pre1_jacobi_1d_avm_address = bb_jacobi_1d_B1_start_stall_region_out_pre_pre1_jacobi_1d_avm_address;

    // out_pre_pre1_jacobi_1d_avm_burstcount(GPOUT,24)
    assign out_pre_pre1_jacobi_1d_avm_burstcount = bb_jacobi_1d_B1_start_stall_region_out_pre_pre1_jacobi_1d_avm_burstcount;

    // out_pre_pre1_jacobi_1d_avm_byteenable(GPOUT,25)
    assign out_pre_pre1_jacobi_1d_avm_byteenable = bb_jacobi_1d_B1_start_stall_region_out_pre_pre1_jacobi_1d_avm_byteenable;

    // out_pre_pre1_jacobi_1d_avm_enable(GPOUT,26)
    assign out_pre_pre1_jacobi_1d_avm_enable = bb_jacobi_1d_B1_start_stall_region_out_pre_pre1_jacobi_1d_avm_enable;

    // out_pre_pre1_jacobi_1d_avm_read(GPOUT,27)
    assign out_pre_pre1_jacobi_1d_avm_read = bb_jacobi_1d_B1_start_stall_region_out_pre_pre1_jacobi_1d_avm_read;

    // out_pre_pre1_jacobi_1d_avm_write(GPOUT,28)
    assign out_pre_pre1_jacobi_1d_avm_write = bb_jacobi_1d_B1_start_stall_region_out_pre_pre1_jacobi_1d_avm_write;

    // out_pre_pre1_jacobi_1d_avm_writedata(GPOUT,29)
    assign out_pre_pre1_jacobi_1d_avm_writedata = bb_jacobi_1d_B1_start_stall_region_out_pre_pre1_jacobi_1d_avm_writedata;

    // out_stall_out_0(GPOUT,30)
    assign out_stall_out_0 = jacobi_1d_B1_start_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,31)
    assign out_stall_out_1 = jacobi_1d_B1_start_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,32)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,33)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,34)
    assign out_valid_out_0 = jacobi_1d_B1_start_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,36)
    assign out_pipeline_valid_out = bb_jacobi_1d_B1_start_stall_region_out_pipeline_valid_out;

endmodule
