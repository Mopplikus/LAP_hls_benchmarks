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

// SystemVerilog created from bb_kernel_3mm_B12
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B12 (
    input wire [63:0] in_arrayidx817248_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_i_252_pop30241_0,
    input wire [31:0] in_i_252_pop3094_pop45245_0,
    input wire [63:0] in_idxprom78246_0,
    input wire [63:0] in_idxprom80247_0,
    input wire [0:0] in_memdep_phi7_pop21234_0,
    input wire [0:0] in_memdep_phi7_pop2181_pop31244_0,
    input wire [0:0] in_memdep_phi7_pop2182_pop43249_0,
    input wire [0:0] in_notcmp26250_0,
    input wire [0:0] in_notcmp31238_0,
    input wire [0:0] in_notcmp3192_pop44251_0,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_kernel_3mm11_0,
    input wire [31:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe1601,
    output wire [31:0] out_c0_exe3603,
    output wire [0:0] out_c0_exe6606,
    output wire [63:0] out_c0_exe7607,
    output wire [0:0] out_c0_exe8608,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B12_stall_region_out_almost_empty_out;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_c0_exe1601;
    wire [31:0] bb_kernel_3mm_B12_stall_region_out_c0_exe3603;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_c0_exe5605;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_c0_exe6606;
    wire [63:0] bb_kernel_3mm_B12_stall_region_out_c0_exe7607;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_c0_exe8608;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_empty_out;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_stall_out;
    wire [31:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B12_stall_region_out_valid_out;
    wire [0:0] kernel_3mm_B12_branch_out_c0_exe1601;
    wire [31:0] kernel_3mm_B12_branch_out_c0_exe3603;
    wire [0:0] kernel_3mm_B12_branch_out_c0_exe6606;
    wire [63:0] kernel_3mm_B12_branch_out_c0_exe7607;
    wire [0:0] kernel_3mm_B12_branch_out_c0_exe8608;
    wire [0:0] kernel_3mm_B12_branch_out_stall_out;
    wire [0:0] kernel_3mm_B12_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B12_merge_out_almost_empty_out;
    wire [63:0] kernel_3mm_B12_merge_out_arrayidx817248;
    wire [0:0] kernel_3mm_B12_merge_out_empty_out;
    wire [31:0] kernel_3mm_B12_merge_out_i_252_pop30241;
    wire [31:0] kernel_3mm_B12_merge_out_i_252_pop3094_pop45245;
    wire [63:0] kernel_3mm_B12_merge_out_idxprom78246;
    wire [63:0] kernel_3mm_B12_merge_out_idxprom80247;
    wire [0:0] kernel_3mm_B12_merge_out_memdep_phi7_pop21234;
    wire [0:0] kernel_3mm_B12_merge_out_memdep_phi7_pop2181_pop31244;
    wire [0:0] kernel_3mm_B12_merge_out_memdep_phi7_pop2182_pop43249;
    wire [0:0] kernel_3mm_B12_merge_out_notcmp26250;
    wire [0:0] kernel_3mm_B12_merge_out_notcmp31238;
    wire [0:0] kernel_3mm_B12_merge_out_notcmp3192_pop44251;
    wire [0:0] kernel_3mm_B12_merge_out_stall_out_0;
    wire [31:0] kernel_3mm_B12_merge_out_unnamed_kernel_3mm11;
    wire [0:0] kernel_3mm_B12_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // kernel_3mm_B12_merge(BLACKBOX,27)
    kernel_3mm_B12_merge thekernel_3mm_B12_merge (
        .in_arrayidx817248_0(in_arrayidx817248_0),
        .in_i_252_pop30241_0(in_i_252_pop30241_0),
        .in_i_252_pop3094_pop45245_0(in_i_252_pop3094_pop45245_0),
        .in_idxprom78246_0(in_idxprom78246_0),
        .in_idxprom80247_0(in_idxprom80247_0),
        .in_memdep_phi7_pop21234_0(in_memdep_phi7_pop21234_0),
        .in_memdep_phi7_pop2181_pop31244_0(in_memdep_phi7_pop2181_pop31244_0),
        .in_memdep_phi7_pop2182_pop43249_0(in_memdep_phi7_pop2182_pop43249_0),
        .in_notcmp26250_0(in_notcmp26250_0),
        .in_notcmp31238_0(in_notcmp31238_0),
        .in_notcmp3192_pop44251_0(in_notcmp3192_pop44251_0),
        .in_stall_in(bb_kernel_3mm_B12_stall_region_out_stall_out),
        .in_unnamed_kernel_3mm11_0(in_unnamed_kernel_3mm11_0),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(kernel_3mm_B12_merge_out_almost_empty_out),
        .out_arrayidx817248(kernel_3mm_B12_merge_out_arrayidx817248),
        .out_empty_out(kernel_3mm_B12_merge_out_empty_out),
        .out_i_252_pop30241(kernel_3mm_B12_merge_out_i_252_pop30241),
        .out_i_252_pop3094_pop45245(kernel_3mm_B12_merge_out_i_252_pop3094_pop45245),
        .out_idxprom78246(kernel_3mm_B12_merge_out_idxprom78246),
        .out_idxprom80247(kernel_3mm_B12_merge_out_idxprom80247),
        .out_memdep_phi7_pop21234(kernel_3mm_B12_merge_out_memdep_phi7_pop21234),
        .out_memdep_phi7_pop2181_pop31244(kernel_3mm_B12_merge_out_memdep_phi7_pop2181_pop31244),
        .out_memdep_phi7_pop2182_pop43249(kernel_3mm_B12_merge_out_memdep_phi7_pop2182_pop43249),
        .out_notcmp26250(kernel_3mm_B12_merge_out_notcmp26250),
        .out_notcmp31238(kernel_3mm_B12_merge_out_notcmp31238),
        .out_notcmp3192_pop44251(kernel_3mm_B12_merge_out_notcmp3192_pop44251),
        .out_stall_out_0(kernel_3mm_B12_merge_out_stall_out_0),
        .out_unnamed_kernel_3mm11(kernel_3mm_B12_merge_out_unnamed_kernel_3mm11),
        .out_valid_out(kernel_3mm_B12_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B12_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B12_stall_region thebb_kernel_3mm_B12_stall_region (
        .in_almost_empty_in(kernel_3mm_B12_merge_out_almost_empty_out),
        .in_arrayidx817248(kernel_3mm_B12_merge_out_arrayidx817248),
        .in_empty_in(kernel_3mm_B12_merge_out_empty_out),
        .in_flush(in_flush),
        .in_i_252_pop30241(kernel_3mm_B12_merge_out_i_252_pop30241),
        .in_i_252_pop3094_pop45245(kernel_3mm_B12_merge_out_i_252_pop3094_pop45245),
        .in_idxprom78246(kernel_3mm_B12_merge_out_idxprom78246),
        .in_idxprom80247(kernel_3mm_B12_merge_out_idxprom80247),
        .in_memdep_phi7_pop21234(kernel_3mm_B12_merge_out_memdep_phi7_pop21234),
        .in_memdep_phi7_pop2181_pop31244(kernel_3mm_B12_merge_out_memdep_phi7_pop2181_pop31244),
        .in_memdep_phi7_pop2182_pop43249(kernel_3mm_B12_merge_out_memdep_phi7_pop2182_pop43249),
        .in_notcmp26250(kernel_3mm_B12_merge_out_notcmp26250),
        .in_notcmp31238(kernel_3mm_B12_merge_out_notcmp31238),
        .in_notcmp3192_pop44251(kernel_3mm_B12_merge_out_notcmp3192_pop44251),
        .in_stall_in(kernel_3mm_B12_branch_out_stall_out),
        .in_unnamed_kernel_3mm11(kernel_3mm_B12_merge_out_unnamed_kernel_3mm11),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack),
        .in_valid_in(kernel_3mm_B12_merge_out_valid_out),
        .out_almost_empty_out(bb_kernel_3mm_B12_stall_region_out_almost_empty_out),
        .out_c0_exe1601(bb_kernel_3mm_B12_stall_region_out_c0_exe1601),
        .out_c0_exe3603(bb_kernel_3mm_B12_stall_region_out_c0_exe3603),
        .out_c0_exe5605(bb_kernel_3mm_B12_stall_region_out_c0_exe5605),
        .out_c0_exe6606(bb_kernel_3mm_B12_stall_region_out_c0_exe6606),
        .out_c0_exe7607(bb_kernel_3mm_B12_stall_region_out_c0_exe7607),
        .out_c0_exe8608(bb_kernel_3mm_B12_stall_region_out_c0_exe8608),
        .out_empty_out(bb_kernel_3mm_B12_stall_region_out_empty_out),
        .out_profile_loop_o_valid(bb_kernel_3mm_B12_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_kernel_3mm_B12_stall_region_out_stall_out),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_address(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_enable(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_read(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_write(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_address(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_enable(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_read(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_write(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata(bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata),
        .out_valid_out(bb_kernel_3mm_B12_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B12_branch(BLACKBOX,26)
    kernel_3mm_B12_branch thekernel_3mm_B12_branch (
        .in_almost_empty_in(bb_kernel_3mm_B12_stall_region_out_almost_empty_out),
        .in_c0_exe1601(bb_kernel_3mm_B12_stall_region_out_c0_exe1601),
        .in_c0_exe3603(bb_kernel_3mm_B12_stall_region_out_c0_exe3603),
        .in_c0_exe5605(bb_kernel_3mm_B12_stall_region_out_c0_exe5605),
        .in_c0_exe6606(bb_kernel_3mm_B12_stall_region_out_c0_exe6606),
        .in_c0_exe7607(bb_kernel_3mm_B12_stall_region_out_c0_exe7607),
        .in_c0_exe8608(bb_kernel_3mm_B12_stall_region_out_c0_exe8608),
        .in_empty_in(bb_kernel_3mm_B12_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_3mm_B12_stall_region_out_valid_out),
        .out_c0_exe1601(kernel_3mm_B12_branch_out_c0_exe1601),
        .out_c0_exe3603(kernel_3mm_B12_branch_out_c0_exe3603),
        .out_c0_exe6606(kernel_3mm_B12_branch_out_c0_exe6606),
        .out_c0_exe7607(kernel_3mm_B12_branch_out_c0_exe7607),
        .out_c0_exe8608(kernel_3mm_B12_branch_out_c0_exe8608),
        .out_stall_out(kernel_3mm_B12_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B12_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1601(GPOUT,28)
    assign out_c0_exe1601 = kernel_3mm_B12_branch_out_c0_exe1601;

    // out_c0_exe3603(GPOUT,29)
    assign out_c0_exe3603 = kernel_3mm_B12_branch_out_c0_exe3603;

    // out_c0_exe6606(GPOUT,30)
    assign out_c0_exe6606 = kernel_3mm_B12_branch_out_c0_exe6606;

    // out_c0_exe7607(GPOUT,31)
    assign out_c0_exe7607 = kernel_3mm_B12_branch_out_c0_exe7607;

    // out_c0_exe8608(GPOUT,32)
    assign out_c0_exe8608 = kernel_3mm_B12_branch_out_c0_exe8608;

    // out_profile_loop_o_valid(GPOUT,33)
    assign out_profile_loop_o_valid = bb_kernel_3mm_B12_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,34)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,35)
    assign out_stall_out_0 = kernel_3mm_B12_merge_out_stall_out_0;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_address(GPOUT,36)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_address = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount(GPOUT,37)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable(GPOUT,38)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_enable(GPOUT,39)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_enable = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_read(GPOUT,40)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_read = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_write(GPOUT,41)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_write = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata(GPOUT,42)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_address(GPOUT,43)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_address = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount(GPOUT,44)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable(GPOUT,45)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_enable(GPOUT,46)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_enable = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_read(GPOUT,47)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_read = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_write(GPOUT,48)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_write = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata(GPOUT,49)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata = bb_kernel_3mm_B12_stall_region_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;

    // out_valid_in_0(GPOUT,50)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,51)
    assign out_valid_out_0 = kernel_3mm_B12_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,52)
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
