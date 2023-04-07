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

// SystemVerilog created from bb_kernel_3mm_B9_stall_region
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:08 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B9_stall_region (
    input wire [0:0] in_feedback_in_21,
    output wire [0:0] out_feedback_out_17,
    input wire [0:0] in_feedback_stall_in_17,
    output wire [0:0] out_feedback_stall_out_21,
    input wire [0:0] in_feedback_valid_in_21,
    output wire [0:0] out_feedback_valid_out_17,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe449926,
    input wire [0:0] in_memdep_134,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_memdep_phi7_pop21,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push18_kernel_3mm0_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push18_kernel_3mm0_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push18_kernel_3mm0_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push18_kernel_3mm0_out_valid_out;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_b;
    wire [1:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_push18_kernel_3mm0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_push18_kernel_3mm0_backStall;
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


    // SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1(STALLENABLE,33)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_wireValid = i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_stall_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    kernel_3mm_i_llvm_fpga_pop_i1_memdep_phi7_pop21_0 thei_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_stall_entry_b),
        .in_feedback_in_21(in_feedback_in_21),
        .in_feedback_valid_in_21(in_feedback_valid_in_21),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_out_feedback_stall_out_21),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,36)
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
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_push_i1_memdep_phi2_push18_kernel_3mm0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
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

    // SE_out_i_llvm_fpga_push_i1_memdep_phi2_push18_kernel_3mm0(STALLENABLE,35)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_push18_kernel_3mm0_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_push18_kernel_3mm0_wireValid = i_llvm_fpga_push_i1_memdep_phi2_push18_kernel_3mm0_out_valid_out;

    // bubble_join_stall_entry(BITJOIN,28)
    assign bubble_join_stall_entry_q = {in_memdep_134, in_c0_exe449926};

    // bubble_select_stall_entry(BITSELECT,29)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);

    // i_llvm_fpga_push_i1_memdep_phi2_push18_kernel_3mm0(BLACKBOX,12)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    kernel_3mm_i_llvm_fpga_push_i1_memdep_phi2_push18_0 thei_llvm_fpga_push_i1_memdep_phi2_push18_kernel_3mm0 (
        .in_data_in(bubble_select_stall_entry_c),
        .in_feedback_stall_in_17(in_feedback_stall_in_17),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi2_push18_kernel_3mm0_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i1_memdep_phi2_push18_kernel_3mm0_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i1_memdep_phi2_push18_kernel_3mm0_out_feedback_valid_out_17),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi2_push18_kernel_3mm0_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi2_push18_kernel_3mm0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_17_sync(GPOUT,6)
    assign out_feedback_out_17 = i_llvm_fpga_push_i1_memdep_phi2_push18_kernel_3mm0_out_feedback_out_17;

    // feedback_stall_out_21_sync(GPOUT,8)
    assign out_feedback_stall_out_21 = i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_out_feedback_stall_out_21;

    // feedback_valid_out_17_sync(GPOUT,10)
    assign out_feedback_valid_out_17 = i_llvm_fpga_push_i1_memdep_phi2_push18_kernel_3mm0_out_feedback_valid_out_17;

    // sync_out(GPOUT,20)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1(BITJOIN,24)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_q = i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1(BITSELECT,25)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,22)@1
    assign out_memdep_phi7_pop21 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_b;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop21_kernel_3mm1_V0;

endmodule
