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

// SystemVerilog created from bb_covariance_B3
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B3 (
    input wire [0:0] in_feedback_in_22,
    output wire [0:0] out_feedback_stall_out_22,
    input wire [0:0] in_feedback_valid_in_22,
    input wire [31:0] in_lim_ext89_0,
    input wire [31:0] in_lim_ext89_1,
    input wire [0:0] in_memdep_phi1_pop1694_0,
    input wire [0:0] in_memdep_phi1_pop1694_1,
    input wire [0:0] in_memdep_phi2_pop1799_0,
    input wire [0:0] in_memdep_phi2_pop1799_1,
    input wire [0:0] in_memdep_phi4_pop18104_0,
    input wire [0:0] in_memdep_phi4_pop18104_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10,
    output wire [0:0] out_c0_exe11,
    output wire [0:0] out_c0_exe1194,
    output wire [0:0] out_c0_exe12,
    output wire [0:0] out_c0_exe2195,
    output wire [31:0] out_c0_exe3,
    output wire [31:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [31:0] out_c0_exe9,
    output wire [0:0] out_memdep_phi_pop22,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_covariance_B3_stall_region_out_c0_exe10;
    wire [0:0] bb_covariance_B3_stall_region_out_c0_exe11;
    wire [0:0] bb_covariance_B3_stall_region_out_c0_exe1194;
    wire [0:0] bb_covariance_B3_stall_region_out_c0_exe12;
    wire [0:0] bb_covariance_B3_stall_region_out_c0_exe2195;
    wire [31:0] bb_covariance_B3_stall_region_out_c0_exe3;
    wire [31:0] bb_covariance_B3_stall_region_out_c0_exe4;
    wire [0:0] bb_covariance_B3_stall_region_out_c0_exe5;
    wire [0:0] bb_covariance_B3_stall_region_out_c0_exe6;
    wire [0:0] bb_covariance_B3_stall_region_out_c0_exe7;
    wire [31:0] bb_covariance_B3_stall_region_out_c0_exe9;
    wire [0:0] bb_covariance_B3_stall_region_out_feedback_stall_out_22;
    wire [0:0] bb_covariance_B3_stall_region_out_memdep_phi_pop22;
    wire [0:0] bb_covariance_B3_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_covariance_B3_stall_region_out_stall_out;
    wire [0:0] bb_covariance_B3_stall_region_out_valid_out;
    wire [0:0] covariance_B3_branch_out_c0_exe10;
    wire [0:0] covariance_B3_branch_out_c0_exe11;
    wire [0:0] covariance_B3_branch_out_c0_exe1194;
    wire [0:0] covariance_B3_branch_out_c0_exe12;
    wire [0:0] covariance_B3_branch_out_c0_exe2195;
    wire [31:0] covariance_B3_branch_out_c0_exe3;
    wire [31:0] covariance_B3_branch_out_c0_exe4;
    wire [0:0] covariance_B3_branch_out_c0_exe5;
    wire [0:0] covariance_B3_branch_out_c0_exe6;
    wire [0:0] covariance_B3_branch_out_c0_exe7;
    wire [31:0] covariance_B3_branch_out_c0_exe9;
    wire [0:0] covariance_B3_branch_out_memdep_phi_pop22;
    wire [0:0] covariance_B3_branch_out_stall_out;
    wire [0:0] covariance_B3_branch_out_valid_out_0;
    wire [31:0] covariance_B3_merge_out_lim_ext89;
    wire [0:0] covariance_B3_merge_out_memdep_phi1_pop1694;
    wire [0:0] covariance_B3_merge_out_memdep_phi2_pop1799;
    wire [0:0] covariance_B3_merge_out_memdep_phi4_pop18104;
    wire [0:0] covariance_B3_merge_out_stall_out_0;
    wire [0:0] covariance_B3_merge_out_stall_out_1;
    wire [0:0] covariance_B3_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // covariance_B3_branch(BLACKBOX,3)
    covariance_B3_branch thecovariance_B3_branch (
        .in_c0_exe10(bb_covariance_B3_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_covariance_B3_stall_region_out_c0_exe11),
        .in_c0_exe1194(bb_covariance_B3_stall_region_out_c0_exe1194),
        .in_c0_exe12(bb_covariance_B3_stall_region_out_c0_exe12),
        .in_c0_exe2195(bb_covariance_B3_stall_region_out_c0_exe2195),
        .in_c0_exe3(bb_covariance_B3_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_covariance_B3_stall_region_out_c0_exe4),
        .in_c0_exe5(bb_covariance_B3_stall_region_out_c0_exe5),
        .in_c0_exe6(bb_covariance_B3_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_covariance_B3_stall_region_out_c0_exe7),
        .in_c0_exe9(bb_covariance_B3_stall_region_out_c0_exe9),
        .in_memdep_phi_pop22(bb_covariance_B3_stall_region_out_memdep_phi_pop22),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_covariance_B3_stall_region_out_valid_out),
        .out_c0_exe10(covariance_B3_branch_out_c0_exe10),
        .out_c0_exe11(covariance_B3_branch_out_c0_exe11),
        .out_c0_exe1194(covariance_B3_branch_out_c0_exe1194),
        .out_c0_exe12(covariance_B3_branch_out_c0_exe12),
        .out_c0_exe2195(covariance_B3_branch_out_c0_exe2195),
        .out_c0_exe3(covariance_B3_branch_out_c0_exe3),
        .out_c0_exe4(covariance_B3_branch_out_c0_exe4),
        .out_c0_exe5(covariance_B3_branch_out_c0_exe5),
        .out_c0_exe6(covariance_B3_branch_out_c0_exe6),
        .out_c0_exe7(covariance_B3_branch_out_c0_exe7),
        .out_c0_exe9(covariance_B3_branch_out_c0_exe9),
        .out_memdep_phi_pop22(covariance_B3_branch_out_memdep_phi_pop22),
        .out_stall_out(covariance_B3_branch_out_stall_out),
        .out_valid_out_0(covariance_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B3_merge(BLACKBOX,4)
    covariance_B3_merge thecovariance_B3_merge (
        .in_lim_ext89_0(in_lim_ext89_0),
        .in_lim_ext89_1(in_lim_ext89_1),
        .in_memdep_phi1_pop1694_0(in_memdep_phi1_pop1694_0),
        .in_memdep_phi1_pop1694_1(in_memdep_phi1_pop1694_1),
        .in_memdep_phi2_pop1799_0(in_memdep_phi2_pop1799_0),
        .in_memdep_phi2_pop1799_1(in_memdep_phi2_pop1799_1),
        .in_memdep_phi4_pop18104_0(in_memdep_phi4_pop18104_0),
        .in_memdep_phi4_pop18104_1(in_memdep_phi4_pop18104_1),
        .in_stall_in(bb_covariance_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_lim_ext89(covariance_B3_merge_out_lim_ext89),
        .out_memdep_phi1_pop1694(covariance_B3_merge_out_memdep_phi1_pop1694),
        .out_memdep_phi2_pop1799(covariance_B3_merge_out_memdep_phi2_pop1799),
        .out_memdep_phi4_pop18104(covariance_B3_merge_out_memdep_phi4_pop18104),
        .out_stall_out_0(covariance_B3_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B3_merge_out_stall_out_1),
        .out_valid_out(covariance_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B3_stall_region(BLACKBOX,2)
    covariance_bb_B3_stall_region thebb_covariance_B3_stall_region (
        .in_feedback_in_22(in_feedback_in_22),
        .in_feedback_valid_in_22(in_feedback_valid_in_22),
        .in_lim_ext89(covariance_B3_merge_out_lim_ext89),
        .in_memdep_phi1_pop1694(covariance_B3_merge_out_memdep_phi1_pop1694),
        .in_memdep_phi2_pop1799(covariance_B3_merge_out_memdep_phi2_pop1799),
        .in_memdep_phi4_pop18104(covariance_B3_merge_out_memdep_phi4_pop18104),
        .in_stall_in(covariance_B3_branch_out_stall_out),
        .in_valid_in(covariance_B3_merge_out_valid_out),
        .out_c0_exe10(bb_covariance_B3_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_covariance_B3_stall_region_out_c0_exe11),
        .out_c0_exe1194(bb_covariance_B3_stall_region_out_c0_exe1194),
        .out_c0_exe12(bb_covariance_B3_stall_region_out_c0_exe12),
        .out_c0_exe2195(bb_covariance_B3_stall_region_out_c0_exe2195),
        .out_c0_exe3(bb_covariance_B3_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_covariance_B3_stall_region_out_c0_exe4),
        .out_c0_exe5(bb_covariance_B3_stall_region_out_c0_exe5),
        .out_c0_exe6(bb_covariance_B3_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_covariance_B3_stall_region_out_c0_exe7),
        .out_c0_exe9(bb_covariance_B3_stall_region_out_c0_exe9),
        .out_feedback_stall_out_22(bb_covariance_B3_stall_region_out_feedback_stall_out_22),
        .out_memdep_phi_pop22(bb_covariance_B3_stall_region_out_memdep_phi_pop22),
        .out_profile_loop_o_valid(bb_covariance_B3_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_covariance_B3_stall_region_out_stall_out),
        .out_valid_out(bb_covariance_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_22_sync(GPOUT,6)
    assign out_feedback_stall_out_22 = bb_covariance_B3_stall_region_out_feedback_stall_out_22;

    // out_c0_exe10(GPOUT,19)
    assign out_c0_exe10 = covariance_B3_branch_out_c0_exe10;

    // out_c0_exe11(GPOUT,20)
    assign out_c0_exe11 = covariance_B3_branch_out_c0_exe11;

    // out_c0_exe1194(GPOUT,21)
    assign out_c0_exe1194 = covariance_B3_branch_out_c0_exe1194;

    // out_c0_exe12(GPOUT,22)
    assign out_c0_exe12 = covariance_B3_branch_out_c0_exe12;

    // out_c0_exe2195(GPOUT,23)
    assign out_c0_exe2195 = covariance_B3_branch_out_c0_exe2195;

    // out_c0_exe3(GPOUT,24)
    assign out_c0_exe3 = covariance_B3_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,25)
    assign out_c0_exe4 = covariance_B3_branch_out_c0_exe4;

    // out_c0_exe5(GPOUT,26)
    assign out_c0_exe5 = covariance_B3_branch_out_c0_exe5;

    // out_c0_exe6(GPOUT,27)
    assign out_c0_exe6 = covariance_B3_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,28)
    assign out_c0_exe7 = covariance_B3_branch_out_c0_exe7;

    // out_c0_exe9(GPOUT,29)
    assign out_c0_exe9 = covariance_B3_branch_out_c0_exe9;

    // out_memdep_phi_pop22(GPOUT,30)
    assign out_memdep_phi_pop22 = covariance_B3_branch_out_memdep_phi_pop22;

    // out_profile_loop_o_valid(GPOUT,31)
    assign out_profile_loop_o_valid = bb_covariance_B3_stall_region_out_profile_loop_o_valid;

    // out_stall_out_0(GPOUT,32)
    assign out_stall_out_0 = covariance_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,33)
    assign out_stall_out_1 = covariance_B3_merge_out_stall_out_1;

    // out_valid_in_1(GPOUT,34)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,35)
    assign out_valid_out_0 = covariance_B3_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,36)
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
