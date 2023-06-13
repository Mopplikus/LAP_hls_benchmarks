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

// SystemVerilog created from bb_jacobi_1d_B3
// Created for function/kernel jacobi_1d
// SystemVerilog created on Tue Jun 13 02:54:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_bb_B3 (
    output wire [0:0] out_feedback_out_11,
    input wire [0:0] in_feedback_stall_in_11,
    output wire [0:0] out_feedback_valid_out_11,
    input wire [0:0] in_exitcond1749_pop194_0,
    input wire [63:0] in_mPtr_bitcast70761_0,
    input wire [0:0] in_memdep_3_0,
    input wire [0:0] in_memdep_phi6_pop1355_pop232_0,
    input wire [0:0] in_notcmp3951_pop205_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_exitcond1749_pop194,
    output wire [63:0] out_mPtr_bitcast70761,
    output wire [0:0] out_memdep_phi6_pop1355_pop232,
    output wire [0:0] out_notcmp3951_pop205,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_jacobi_1d_B3_stall_region_out_exitcond1749_pop194;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_feedback_out_11;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_feedback_valid_out_11;
    wire [63:0] bb_jacobi_1d_B3_stall_region_out_mPtr_bitcast70761;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_memdep_phi6_pop1355_pop232;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_notcmp3951_pop205;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_stall_out;
    wire [0:0] bb_jacobi_1d_B3_stall_region_out_valid_out;
    wire [0:0] jacobi_1d_B3_branch_out_exitcond1749_pop194;
    wire [63:0] jacobi_1d_B3_branch_out_mPtr_bitcast70761;
    wire [0:0] jacobi_1d_B3_branch_out_memdep_phi6_pop1355_pop232;
    wire [0:0] jacobi_1d_B3_branch_out_notcmp3951_pop205;
    wire [0:0] jacobi_1d_B3_branch_out_stall_out;
    wire [0:0] jacobi_1d_B3_branch_out_valid_out_0;
    wire [0:0] jacobi_1d_B3_merge_out_exitcond1749_pop194;
    wire [63:0] jacobi_1d_B3_merge_out_mPtr_bitcast70761;
    wire [0:0] jacobi_1d_B3_merge_out_memdep_3;
    wire [0:0] jacobi_1d_B3_merge_out_memdep_phi6_pop1355_pop232;
    wire [0:0] jacobi_1d_B3_merge_out_notcmp3951_pop205;
    wire [0:0] jacobi_1d_B3_merge_out_stall_out_0;
    wire [0:0] jacobi_1d_B3_merge_out_valid_out;


    // jacobi_1d_B3_branch(BLACKBOX,13)
    jacobi_1d_B3_branch thejacobi_1d_B3_branch (
        .in_exitcond1749_pop194(bb_jacobi_1d_B3_stall_region_out_exitcond1749_pop194),
        .in_mPtr_bitcast70761(bb_jacobi_1d_B3_stall_region_out_mPtr_bitcast70761),
        .in_memdep_phi6_pop1355_pop232(bb_jacobi_1d_B3_stall_region_out_memdep_phi6_pop1355_pop232),
        .in_notcmp3951_pop205(bb_jacobi_1d_B3_stall_region_out_notcmp3951_pop205),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_jacobi_1d_B3_stall_region_out_valid_out),
        .out_exitcond1749_pop194(jacobi_1d_B3_branch_out_exitcond1749_pop194),
        .out_mPtr_bitcast70761(jacobi_1d_B3_branch_out_mPtr_bitcast70761),
        .out_memdep_phi6_pop1355_pop232(jacobi_1d_B3_branch_out_memdep_phi6_pop1355_pop232),
        .out_notcmp3951_pop205(jacobi_1d_B3_branch_out_notcmp3951_pop205),
        .out_stall_out(jacobi_1d_B3_branch_out_stall_out),
        .out_valid_out_0(jacobi_1d_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // jacobi_1d_B3_merge(BLACKBOX,14)
    jacobi_1d_B3_merge thejacobi_1d_B3_merge (
        .in_exitcond1749_pop194_0(in_exitcond1749_pop194_0),
        .in_mPtr_bitcast70761_0(in_mPtr_bitcast70761_0),
        .in_memdep_3_0(in_memdep_3_0),
        .in_memdep_phi6_pop1355_pop232_0(in_memdep_phi6_pop1355_pop232_0),
        .in_notcmp3951_pop205_0(in_notcmp3951_pop205_0),
        .in_stall_in(bb_jacobi_1d_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_exitcond1749_pop194(jacobi_1d_B3_merge_out_exitcond1749_pop194),
        .out_mPtr_bitcast70761(jacobi_1d_B3_merge_out_mPtr_bitcast70761),
        .out_memdep_3(jacobi_1d_B3_merge_out_memdep_3),
        .out_memdep_phi6_pop1355_pop232(jacobi_1d_B3_merge_out_memdep_phi6_pop1355_pop232),
        .out_notcmp3951_pop205(jacobi_1d_B3_merge_out_notcmp3951_pop205),
        .out_stall_out_0(jacobi_1d_B3_merge_out_stall_out_0),
        .out_valid_out(jacobi_1d_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B3_stall_region(BLACKBOX,2)
    jacobi_1d_bb_B3_stall_region thebb_jacobi_1d_B3_stall_region (
        .in_exitcond1749_pop194(jacobi_1d_B3_merge_out_exitcond1749_pop194),
        .in_feedback_stall_in_11(in_feedback_stall_in_11),
        .in_mPtr_bitcast70761(jacobi_1d_B3_merge_out_mPtr_bitcast70761),
        .in_memdep_3(jacobi_1d_B3_merge_out_memdep_3),
        .in_memdep_phi6_pop1355_pop232(jacobi_1d_B3_merge_out_memdep_phi6_pop1355_pop232),
        .in_notcmp3951_pop205(jacobi_1d_B3_merge_out_notcmp3951_pop205),
        .in_stall_in(jacobi_1d_B3_branch_out_stall_out),
        .in_valid_in(jacobi_1d_B3_merge_out_valid_out),
        .out_exitcond1749_pop194(bb_jacobi_1d_B3_stall_region_out_exitcond1749_pop194),
        .out_feedback_out_11(bb_jacobi_1d_B3_stall_region_out_feedback_out_11),
        .out_feedback_valid_out_11(bb_jacobi_1d_B3_stall_region_out_feedback_valid_out_11),
        .out_mPtr_bitcast70761(bb_jacobi_1d_B3_stall_region_out_mPtr_bitcast70761),
        .out_memdep_phi6_pop1355_pop232(bb_jacobi_1d_B3_stall_region_out_memdep_phi6_pop1355_pop232),
        .out_notcmp3951_pop205(bb_jacobi_1d_B3_stall_region_out_notcmp3951_pop205),
        .out_stall_out(bb_jacobi_1d_B3_stall_region_out_stall_out),
        .out_valid_out(bb_jacobi_1d_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_11_sync(GPOUT,3)
    assign out_feedback_out_11 = bb_jacobi_1d_B3_stall_region_out_feedback_out_11;

    // feedback_valid_out_11_sync(GPOUT,5)
    assign out_feedback_valid_out_11 = bb_jacobi_1d_B3_stall_region_out_feedback_valid_out_11;

    // out_exitcond1749_pop194(GPOUT,15)
    assign out_exitcond1749_pop194 = jacobi_1d_B3_branch_out_exitcond1749_pop194;

    // out_mPtr_bitcast70761(GPOUT,16)
    assign out_mPtr_bitcast70761 = jacobi_1d_B3_branch_out_mPtr_bitcast70761;

    // out_memdep_phi6_pop1355_pop232(GPOUT,17)
    assign out_memdep_phi6_pop1355_pop232 = jacobi_1d_B3_branch_out_memdep_phi6_pop1355_pop232;

    // out_notcmp3951_pop205(GPOUT,18)
    assign out_notcmp3951_pop205 = jacobi_1d_B3_branch_out_notcmp3951_pop205;

    // out_stall_out_0(GPOUT,19)
    assign out_stall_out_0 = jacobi_1d_B3_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,20)
    assign out_valid_out_0 = jacobi_1d_B3_branch_out_valid_out_0;

endmodule
