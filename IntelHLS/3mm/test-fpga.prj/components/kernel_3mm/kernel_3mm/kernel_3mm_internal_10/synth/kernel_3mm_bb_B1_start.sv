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

// SystemVerilog created from bb_kernel_3mm_B1_start
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B1_start (
    input wire [0:0] in_feedback_almost_empty_in_17,
    input wire [0:0] in_feedback_almost_empty_in_20,
    input wire [0:0] in_feedback_data_in_17,
    input wire [0:0] in_feedback_data_in_20,
    input wire [0:0] in_feedback_empty_in_17,
    input wire [0:0] in_feedback_empty_in_20,
    output wire [0:0] out_feedback_stall_out_17,
    output wire [0:0] out_feedback_stall_out_20,
    input wire [447:0] in_iord_bl_call_kernel_3mm_i_fifodata,
    input wire [0:0] in_iord_bl_call_kernel_3mm_i_fifovalid,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe2,
    output wire [0:0] out_iord_bl_call_kernel_3mm_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_kernel_3mm_o_fifoready,
    output wire [0:0] out_memdep_phi3_pop19,
    output wire [0:0] out_memdep_phi_pop17,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B1_start_stall_region_out_almost_empty_out;
    wire [0:0] bb_kernel_3mm_B1_start_stall_region_out_c0_exe2;
    wire [0:0] bb_kernel_3mm_B1_start_stall_region_out_empty_out;
    wire [0:0] bb_kernel_3mm_B1_start_stall_region_out_feedback_stall_out_17;
    wire [0:0] bb_kernel_3mm_B1_start_stall_region_out_feedback_stall_out_20;
    wire [0:0] bb_kernel_3mm_B1_start_stall_region_out_iord_bl_call_kernel_3mm_o_fifoalmost_full;
    wire [0:0] bb_kernel_3mm_B1_start_stall_region_out_iord_bl_call_kernel_3mm_o_fifoready;
    wire [0:0] bb_kernel_3mm_B1_start_stall_region_out_memdep_phi3_pop19;
    wire [0:0] bb_kernel_3mm_B1_start_stall_region_out_memdep_phi_pop17;
    wire [0:0] bb_kernel_3mm_B1_start_stall_region_out_stall_out;
    wire [0:0] bb_kernel_3mm_B1_start_stall_region_out_valid_out;
    wire [0:0] kernel_3mm_B1_start_branch_out_c0_exe2;
    wire [0:0] kernel_3mm_B1_start_branch_out_memdep_phi3_pop19;
    wire [0:0] kernel_3mm_B1_start_branch_out_memdep_phi_pop17;
    wire [0:0] kernel_3mm_B1_start_branch_out_stall_out;
    wire [0:0] kernel_3mm_B1_start_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B1_start_merge_out_almost_empty_out;
    wire [0:0] kernel_3mm_B1_start_merge_out_empty_out;
    wire [0:0] kernel_3mm_B1_start_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B1_start_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // kernel_3mm_B1_start_branch(BLACKBOX,15)
    kernel_3mm_B1_start_branch thekernel_3mm_B1_start_branch (
        .in_almost_empty_in(bb_kernel_3mm_B1_start_stall_region_out_almost_empty_out),
        .in_c0_exe2(bb_kernel_3mm_B1_start_stall_region_out_c0_exe2),
        .in_empty_in(bb_kernel_3mm_B1_start_stall_region_out_empty_out),
        .in_memdep_phi3_pop19(bb_kernel_3mm_B1_start_stall_region_out_memdep_phi3_pop19),
        .in_memdep_phi_pop17(bb_kernel_3mm_B1_start_stall_region_out_memdep_phi_pop17),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_3mm_B1_start_stall_region_out_valid_out),
        .out_c0_exe2(kernel_3mm_B1_start_branch_out_c0_exe2),
        .out_memdep_phi3_pop19(kernel_3mm_B1_start_branch_out_memdep_phi3_pop19),
        .out_memdep_phi_pop17(kernel_3mm_B1_start_branch_out_memdep_phi_pop17),
        .out_stall_out(kernel_3mm_B1_start_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B1_start_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B1_start_merge(BLACKBOX,16)
    kernel_3mm_B1_start_merge thekernel_3mm_B1_start_merge (
        .in_stall_in(bb_kernel_3mm_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(kernel_3mm_B1_start_merge_out_almost_empty_out),
        .out_empty_out(kernel_3mm_B1_start_merge_out_empty_out),
        .out_stall_out_0(kernel_3mm_B1_start_merge_out_stall_out_0),
        .out_valid_out(kernel_3mm_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B1_start_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B1_start_stall_region thebb_kernel_3mm_B1_start_stall_region (
        .in_almost_empty_in(kernel_3mm_B1_start_merge_out_almost_empty_out),
        .in_empty_in(kernel_3mm_B1_start_merge_out_empty_out),
        .in_feedback_almost_empty_in_17(in_feedback_almost_empty_in_17),
        .in_feedback_almost_empty_in_20(in_feedback_almost_empty_in_20),
        .in_feedback_data_in_17(in_feedback_data_in_17),
        .in_feedback_data_in_20(in_feedback_data_in_20),
        .in_feedback_empty_in_17(in_feedback_empty_in_17),
        .in_feedback_empty_in_20(in_feedback_empty_in_20),
        .in_iord_bl_call_kernel_3mm_i_fifodata(in_iord_bl_call_kernel_3mm_i_fifodata),
        .in_iord_bl_call_kernel_3mm_i_fifovalid(in_iord_bl_call_kernel_3mm_i_fifovalid),
        .in_stall_in(kernel_3mm_B1_start_branch_out_stall_out),
        .in_valid_in(kernel_3mm_B1_start_merge_out_valid_out),
        .out_almost_empty_out(bb_kernel_3mm_B1_start_stall_region_out_almost_empty_out),
        .out_c0_exe2(bb_kernel_3mm_B1_start_stall_region_out_c0_exe2),
        .out_empty_out(bb_kernel_3mm_B1_start_stall_region_out_empty_out),
        .out_feedback_stall_out_17(bb_kernel_3mm_B1_start_stall_region_out_feedback_stall_out_17),
        .out_feedback_stall_out_20(bb_kernel_3mm_B1_start_stall_region_out_feedback_stall_out_20),
        .out_iord_bl_call_kernel_3mm_o_fifoalmost_full(bb_kernel_3mm_B1_start_stall_region_out_iord_bl_call_kernel_3mm_o_fifoalmost_full),
        .out_iord_bl_call_kernel_3mm_o_fifoready(bb_kernel_3mm_B1_start_stall_region_out_iord_bl_call_kernel_3mm_o_fifoready),
        .out_memdep_phi3_pop19(bb_kernel_3mm_B1_start_stall_region_out_memdep_phi3_pop19),
        .out_memdep_phi_pop17(bb_kernel_3mm_B1_start_stall_region_out_memdep_phi_pop17),
        .out_stall_out(bb_kernel_3mm_B1_start_stall_region_out_stall_out),
        .out_valid_out(bb_kernel_3mm_B1_start_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_17_sync(GPOUT,9)
    assign out_feedback_stall_out_17 = bb_kernel_3mm_B1_start_stall_region_out_feedback_stall_out_17;

    // feedback_stall_out_20_sync(GPOUT,10)
    assign out_feedback_stall_out_20 = bb_kernel_3mm_B1_start_stall_region_out_feedback_stall_out_20;

    // out_c0_exe2(GPOUT,17)
    assign out_c0_exe2 = kernel_3mm_B1_start_branch_out_c0_exe2;

    // out_iord_bl_call_kernel_3mm_o_fifoalmost_full(GPOUT,18)
    assign out_iord_bl_call_kernel_3mm_o_fifoalmost_full = bb_kernel_3mm_B1_start_stall_region_out_iord_bl_call_kernel_3mm_o_fifoalmost_full;

    // out_iord_bl_call_kernel_3mm_o_fifoready(GPOUT,19)
    assign out_iord_bl_call_kernel_3mm_o_fifoready = bb_kernel_3mm_B1_start_stall_region_out_iord_bl_call_kernel_3mm_o_fifoready;

    // out_memdep_phi3_pop19(GPOUT,20)
    assign out_memdep_phi3_pop19 = kernel_3mm_B1_start_branch_out_memdep_phi3_pop19;

    // out_memdep_phi_pop17(GPOUT,21)
    assign out_memdep_phi_pop17 = kernel_3mm_B1_start_branch_out_memdep_phi_pop17;

    // out_stall_out_0(GPOUT,22)
    assign out_stall_out_0 = kernel_3mm_B1_start_merge_out_stall_out_0;

    // out_valid_in_0(GPOUT,23)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,24)
    assign out_valid_out_0 = kernel_3mm_B1_start_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,25)
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
