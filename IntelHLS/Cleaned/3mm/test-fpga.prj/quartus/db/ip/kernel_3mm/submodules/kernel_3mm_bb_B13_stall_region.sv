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

// SystemVerilog created from bb_kernel_3mm_B13_stall_region
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B13_stall_region (
    output wire [0:0] out_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    output wire [63:0] out_intel_reserved_ffwd_11_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2_out_intel_reserved_ffwd_11_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2_out_valid_out;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,28)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0(BLACKBOX,6)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_4_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    kernel_3mm_i_llvm_fpga_ffwd_dest_p1025s_0000hc_mm_hosts_g19751_0 thei_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_out_dest_data_out_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0(STALLENABLE,25)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_backStall = i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_wireValid = i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_out_valid_out;

    // bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0(BITJOIN,20)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_q = i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_out_dest_data_out_4_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0(BITSELECT,21)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_q[63:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2(BLACKBOX,7)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_11_0@20000000
    // out out_stall_out@20000000
    kernel_3mm_i_llvm_fpga_ffwd_source_p10250000named_28_kernel_3mm0 thei_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2 (
        .in_predicate_in(GND_q),
        .in_src_data_in_11_0(bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_g19751_kernel_3mm0_V0),
        .out_intel_reserved_ffwd_11_0(i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2_out_intel_reserved_ffwd_11_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2(STALLENABLE,27)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2_V0 = SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2_wireValid = i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2_out_valid_out;

    // dupName_0_sync_out_x(GPOUT,2)@1
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2_V0;

    // regfree_osync(GPOUT,13)
    assign out_intel_reserved_ffwd_11_0 = i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_3mm28_kernel_3mm2_out_intel_reserved_ffwd_11_0;

    // sync_out(GPOUT,17)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
