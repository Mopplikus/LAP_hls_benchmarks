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

// SystemVerilog created from bb_kernel_2mm_B6_stall_region
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 01:31:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B6_stall_region (
    output wire [63:0] out_intel_reserved_ffwd_7_0,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_6_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm10_kernel_2mm5_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm10_kernel_2mm5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm10_kernel_2mm5_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_out_intel_reserved_ffwd_6_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_out_valid_out;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;


    // bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0(BITJOIN,31)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_q = i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0(BITSELECT,32)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_q[63:0]);

    // i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4(BLACKBOX,10)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_stall_out@20000000
    kernel_2mm_i_llvm_fpga_ffwd_source_p10250000nnamed_9_kernel_2mm0 thei_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_V0),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_out_intel_reserved_ffwd_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0(STALLENABLE,40)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_backStall = i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_wireValid = i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_out_valid_out;

    // i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_3_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    kernel_2mm_i_llvm_fpga_ffwd_dest_p1025s_0000hc_mm_hosts_d10336_0 thei_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_d10336_kernel_2mm0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2(BLACKBOX,7)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_2_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    kernel_2mm_i_llvm_fpga_ffwd_dest_p1025s_0000hc_mm_hosts_c10235_0 thei_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2(STALLENABLE,38)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_backStall = i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm10_kernel_2mm5_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_wireValid = i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4(STALLENABLE,44)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_V0 = SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_and0 = i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_wireValid = i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm10_kernel_2mm5_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2(BITJOIN,28)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_q = i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2(BITSELECT,29)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_q[63:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm10_kernel_2mm5(BLACKBOX,9)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_stall_out@20000000
    kernel_2mm_i_llvm_fpga_ffwd_source_p10250000named_10_kernel_2mm0 thei_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm10_kernel_2mm5 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_c10235_kernel_2mm2_V0),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm10_kernel_2mm5_out_intel_reserved_ffwd_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm10_kernel_2mm5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm10_kernel_2mm5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,2)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm10_kernel_2mm5_out_intel_reserved_ffwd_7_0;

    // dupName_0_sync_out_x(GPOUT,3)@1
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_V0;

    // regfree_osync(GPOUT,21)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_p1025i32_unnamed_kernel_2mm9_kernel_2mm4_out_intel_reserved_ffwd_6_0;

    // sync_out(GPOUT,25)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
