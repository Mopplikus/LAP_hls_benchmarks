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

// SystemVerilog created from bb_kernel_3mm_B2
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B2 (
    input wire [0:0] in_forked112_0,
    input wire [0:0] in_memdep_phi2_pop18126_0,
    input wire [0:0] in_memdep_phi3_pop19133_0,
    input wire [0:0] in_memdep_phi5_pop20140_0,
    input wire [0:0] in_memdep_phi_pop17119_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe10,
    output wire [0:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [31:0] out_c0_exe1271,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe3,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B2_stall_region_out_almost_empty_out;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe10;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe11;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe12;
    wire [31:0] bb_kernel_3mm_B2_stall_region_out_c0_exe1271;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe13;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe3;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe4;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe5;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe6;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe7;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe8;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_c0_exe9;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_empty_out;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_stall_out;
    wire [0:0] bb_kernel_3mm_B2_stall_region_out_valid_out;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe10;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe11;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe12;
    wire [31:0] kernel_3mm_B2_branch_out_c0_exe1271;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe13;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe3;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe4;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe5;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe6;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe7;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe8;
    wire [0:0] kernel_3mm_B2_branch_out_c0_exe9;
    wire [0:0] kernel_3mm_B2_branch_out_stall_out;
    wire [0:0] kernel_3mm_B2_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B2_merge_out_almost_empty_out;
    wire [0:0] kernel_3mm_B2_merge_out_empty_out;
    wire [0:0] kernel_3mm_B2_merge_out_forked112;
    wire [0:0] kernel_3mm_B2_merge_out_memdep_phi2_pop18126;
    wire [0:0] kernel_3mm_B2_merge_out_memdep_phi3_pop19133;
    wire [0:0] kernel_3mm_B2_merge_out_memdep_phi5_pop20140;
    wire [0:0] kernel_3mm_B2_merge_out_memdep_phi_pop17119;
    wire [0:0] kernel_3mm_B2_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B2_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // kernel_3mm_B2_merge(BLACKBOX,11)
    kernel_3mm_B2_merge thekernel_3mm_B2_merge (
        .in_forked112_0(in_forked112_0),
        .in_memdep_phi2_pop18126_0(in_memdep_phi2_pop18126_0),
        .in_memdep_phi3_pop19133_0(in_memdep_phi3_pop19133_0),
        .in_memdep_phi5_pop20140_0(in_memdep_phi5_pop20140_0),
        .in_memdep_phi_pop17119_0(in_memdep_phi_pop17119_0),
        .in_stall_in(bb_kernel_3mm_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(kernel_3mm_B2_merge_out_almost_empty_out),
        .out_empty_out(kernel_3mm_B2_merge_out_empty_out),
        .out_forked112(kernel_3mm_B2_merge_out_forked112),
        .out_memdep_phi2_pop18126(kernel_3mm_B2_merge_out_memdep_phi2_pop18126),
        .out_memdep_phi3_pop19133(kernel_3mm_B2_merge_out_memdep_phi3_pop19133),
        .out_memdep_phi5_pop20140(kernel_3mm_B2_merge_out_memdep_phi5_pop20140),
        .out_memdep_phi_pop17119(kernel_3mm_B2_merge_out_memdep_phi_pop17119),
        .out_stall_out_0(kernel_3mm_B2_merge_out_stall_out_0),
        .out_valid_out(kernel_3mm_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B2_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B2_stall_region thebb_kernel_3mm_B2_stall_region (
        .in_almost_empty_in(kernel_3mm_B2_merge_out_almost_empty_out),
        .in_empty_in(kernel_3mm_B2_merge_out_empty_out),
        .in_forked112(kernel_3mm_B2_merge_out_forked112),
        .in_memdep_phi2_pop18126(kernel_3mm_B2_merge_out_memdep_phi2_pop18126),
        .in_memdep_phi3_pop19133(kernel_3mm_B2_merge_out_memdep_phi3_pop19133),
        .in_memdep_phi5_pop20140(kernel_3mm_B2_merge_out_memdep_phi5_pop20140),
        .in_memdep_phi_pop17119(kernel_3mm_B2_merge_out_memdep_phi_pop17119),
        .in_stall_in(kernel_3mm_B2_branch_out_stall_out),
        .in_valid_in(kernel_3mm_B2_merge_out_valid_out),
        .out_almost_empty_out(bb_kernel_3mm_B2_stall_region_out_almost_empty_out),
        .out_c0_exe10(bb_kernel_3mm_B2_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_kernel_3mm_B2_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_kernel_3mm_B2_stall_region_out_c0_exe12),
        .out_c0_exe1271(bb_kernel_3mm_B2_stall_region_out_c0_exe1271),
        .out_c0_exe13(bb_kernel_3mm_B2_stall_region_out_c0_exe13),
        .out_c0_exe3(bb_kernel_3mm_B2_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_kernel_3mm_B2_stall_region_out_c0_exe4),
        .out_c0_exe5(bb_kernel_3mm_B2_stall_region_out_c0_exe5),
        .out_c0_exe6(bb_kernel_3mm_B2_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_kernel_3mm_B2_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_kernel_3mm_B2_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_kernel_3mm_B2_stall_region_out_c0_exe9),
        .out_empty_out(bb_kernel_3mm_B2_stall_region_out_empty_out),
        .out_stall_out(bb_kernel_3mm_B2_stall_region_out_stall_out),
        .out_valid_out(bb_kernel_3mm_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B2_branch(BLACKBOX,10)
    kernel_3mm_B2_branch thekernel_3mm_B2_branch (
        .in_almost_empty_in(bb_kernel_3mm_B2_stall_region_out_almost_empty_out),
        .in_c0_exe10(bb_kernel_3mm_B2_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_kernel_3mm_B2_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_kernel_3mm_B2_stall_region_out_c0_exe12),
        .in_c0_exe1271(bb_kernel_3mm_B2_stall_region_out_c0_exe1271),
        .in_c0_exe13(bb_kernel_3mm_B2_stall_region_out_c0_exe13),
        .in_c0_exe3(bb_kernel_3mm_B2_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_kernel_3mm_B2_stall_region_out_c0_exe4),
        .in_c0_exe5(bb_kernel_3mm_B2_stall_region_out_c0_exe5),
        .in_c0_exe6(bb_kernel_3mm_B2_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_kernel_3mm_B2_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_kernel_3mm_B2_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_kernel_3mm_B2_stall_region_out_c0_exe9),
        .in_empty_in(bb_kernel_3mm_B2_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_3mm_B2_stall_region_out_valid_out),
        .out_c0_exe10(kernel_3mm_B2_branch_out_c0_exe10),
        .out_c0_exe11(kernel_3mm_B2_branch_out_c0_exe11),
        .out_c0_exe12(kernel_3mm_B2_branch_out_c0_exe12),
        .out_c0_exe1271(kernel_3mm_B2_branch_out_c0_exe1271),
        .out_c0_exe13(kernel_3mm_B2_branch_out_c0_exe13),
        .out_c0_exe3(kernel_3mm_B2_branch_out_c0_exe3),
        .out_c0_exe4(kernel_3mm_B2_branch_out_c0_exe4),
        .out_c0_exe5(kernel_3mm_B2_branch_out_c0_exe5),
        .out_c0_exe6(kernel_3mm_B2_branch_out_c0_exe6),
        .out_c0_exe7(kernel_3mm_B2_branch_out_c0_exe7),
        .out_c0_exe8(kernel_3mm_B2_branch_out_c0_exe8),
        .out_c0_exe9(kernel_3mm_B2_branch_out_c0_exe9),
        .out_stall_out(kernel_3mm_B2_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B2_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10(GPOUT,12)
    assign out_c0_exe10 = kernel_3mm_B2_branch_out_c0_exe10;

    // out_c0_exe11(GPOUT,13)
    assign out_c0_exe11 = kernel_3mm_B2_branch_out_c0_exe11;

    // out_c0_exe12(GPOUT,14)
    assign out_c0_exe12 = kernel_3mm_B2_branch_out_c0_exe12;

    // out_c0_exe1271(GPOUT,15)
    assign out_c0_exe1271 = kernel_3mm_B2_branch_out_c0_exe1271;

    // out_c0_exe13(GPOUT,16)
    assign out_c0_exe13 = kernel_3mm_B2_branch_out_c0_exe13;

    // out_c0_exe3(GPOUT,17)
    assign out_c0_exe3 = kernel_3mm_B2_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,18)
    assign out_c0_exe4 = kernel_3mm_B2_branch_out_c0_exe4;

    // out_c0_exe5(GPOUT,19)
    assign out_c0_exe5 = kernel_3mm_B2_branch_out_c0_exe5;

    // out_c0_exe6(GPOUT,20)
    assign out_c0_exe6 = kernel_3mm_B2_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,21)
    assign out_c0_exe7 = kernel_3mm_B2_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,22)
    assign out_c0_exe8 = kernel_3mm_B2_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,23)
    assign out_c0_exe9 = kernel_3mm_B2_branch_out_c0_exe9;

    // out_stall_out_0(GPOUT,24)
    assign out_stall_out_0 = kernel_3mm_B2_merge_out_stall_out_0;

    // out_valid_in_0(GPOUT,25)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,26)
    assign out_valid_out_0 = kernel_3mm_B2_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,27)
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
