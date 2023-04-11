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

// SystemVerilog created from bb_kernel_3mm_B5
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:08 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B5 (
    input wire [0:0] in_c0_exe103958_0,
    input wire [31:0] in_c0_exe113969_0,
    input wire [0:0] in_c0_exe1239710_0,
    input wire [63:0] in_c0_exe1339811_0,
    input wire [0:0] in_c0_exe1439912_0,
    input wire [0:0] in_c0_exe1540013_0,
    input wire [0:0] in_c0_exe1640114_0,
    input wire [0:0] in_c0_exe1740215_0,
    input wire [0:0] in_c0_exe1840316_0,
    input wire [0:0] in_c0_exe1940417_0,
    input wire [31:0] in_c0_exe2040518_0,
    input wire [0:0] in_c0_exe2140619_0,
    input wire [0:0] in_c0_exe2240720_0,
    input wire [0:0] in_c0_exe2340821_0,
    input wire [63:0] in_c0_exe23871_0,
    input wire [0:0] in_c0_exe2440922_0,
    input wire [0:0] in_c0_exe2541023_0,
    input wire [0:0] in_c0_exe2624_0,
    input wire [63:0] in_c0_exe33882_0,
    input wire [31:0] in_c0_exe43893_0,
    input wire [0:0] in_c0_exe63914_0,
    input wire [0:0] in_c0_exe73925_0,
    input wire [0:0] in_c0_exe83936_0,
    input wire [0:0] in_c0_exe93947_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_kernel_3mm_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_kernel_3mm6_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm6_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm6_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm6_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe103958,
    output wire [31:0] out_c0_exe113969,
    output wire [0:0] out_c0_exe1239710,
    output wire [63:0] out_c0_exe1421,
    output wire [0:0] out_c0_exe1439912,
    output wire [0:0] out_c0_exe1540013,
    output wire [0:0] out_c0_exe1640114,
    output wire [0:0] out_c0_exe1740215,
    output wire [0:0] out_c0_exe1840316,
    output wire [0:0] out_c0_exe1940417,
    output wire [31:0] out_c0_exe2040518,
    output wire [0:0] out_c0_exe2140619,
    output wire [0:0] out_c0_exe2240720,
    output wire [0:0] out_c0_exe2340821,
    output wire [63:0] out_c0_exe23871,
    output wire [31:0] out_c0_exe2422,
    output wire [0:0] out_c0_exe2440922,
    output wire [0:0] out_c0_exe2541023,
    output wire [0:0] out_c0_exe2624,
    output wire [63:0] out_c0_exe33882,
    output wire [0:0] out_c0_exe63914,
    output wire [0:0] out_c0_exe73925,
    output wire [0:0] out_c0_exe83936,
    output wire [0:0] out_c0_exe93947,
    output wire [0:0] out_memdep,
    output wire [31:0] out_memdep_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_kernel_3mm_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_kernel_3mm6_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm6_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm6_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm6_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe103958;
    wire [31:0] bb_kernel_3mm_B5_stall_region_out_c0_exe113969;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe1239710;
    wire [63:0] bb_kernel_3mm_B5_stall_region_out_c0_exe1421;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe1439912;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe1540013;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe1640114;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe1740215;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe1840316;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe1940417;
    wire [31:0] bb_kernel_3mm_B5_stall_region_out_c0_exe2040518;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe2140619;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe2240720;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe2340821;
    wire [63:0] bb_kernel_3mm_B5_stall_region_out_c0_exe23871;
    wire [31:0] bb_kernel_3mm_B5_stall_region_out_c0_exe2422;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe2440922;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe2541023;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe2624;
    wire [63:0] bb_kernel_3mm_B5_stall_region_out_c0_exe33882;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe63914;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe73925;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe83936;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe93947;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_memdep;
    wire [31:0] bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_stall_out;
    wire [31:0] bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm6_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm6_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm6_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm6_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_valid_out;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe103958;
    wire [31:0] kernel_3mm_B5_branch_out_c0_exe113969;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe1239710;
    wire [63:0] kernel_3mm_B5_branch_out_c0_exe1421;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe1439912;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe1540013;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe1640114;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe1740215;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe1840316;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe1940417;
    wire [31:0] kernel_3mm_B5_branch_out_c0_exe2040518;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe2140619;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe2240720;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe2340821;
    wire [63:0] kernel_3mm_B5_branch_out_c0_exe23871;
    wire [31:0] kernel_3mm_B5_branch_out_c0_exe2422;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe2440922;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe2541023;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe2624;
    wire [63:0] kernel_3mm_B5_branch_out_c0_exe33882;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe63914;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe73925;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe83936;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe93947;
    wire [0:0] kernel_3mm_B5_branch_out_memdep;
    wire [0:0] kernel_3mm_B5_branch_out_stall_out;
    wire [0:0] kernel_3mm_B5_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe103958;
    wire [31:0] kernel_3mm_B5_merge_out_c0_exe113969;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe1239710;
    wire [63:0] kernel_3mm_B5_merge_out_c0_exe1339811;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe1439912;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe1540013;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe1640114;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe1740215;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe1840316;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe1940417;
    wire [31:0] kernel_3mm_B5_merge_out_c0_exe2040518;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe2140619;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe2240720;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe2340821;
    wire [63:0] kernel_3mm_B5_merge_out_c0_exe23871;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe2440922;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe2541023;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe2624;
    wire [63:0] kernel_3mm_B5_merge_out_c0_exe33882;
    wire [31:0] kernel_3mm_B5_merge_out_c0_exe43893;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe63914;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe73925;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe83936;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe93947;
    wire [0:0] kernel_3mm_B5_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B5_merge_out_valid_out;


    // kernel_3mm_B5_merge(BLACKBOX,39)
    kernel_3mm_B5_merge thekernel_3mm_B5_merge (
        .in_c0_exe103958_0(in_c0_exe103958_0),
        .in_c0_exe113969_0(in_c0_exe113969_0),
        .in_c0_exe1239710_0(in_c0_exe1239710_0),
        .in_c0_exe1339811_0(in_c0_exe1339811_0),
        .in_c0_exe1439912_0(in_c0_exe1439912_0),
        .in_c0_exe1540013_0(in_c0_exe1540013_0),
        .in_c0_exe1640114_0(in_c0_exe1640114_0),
        .in_c0_exe1740215_0(in_c0_exe1740215_0),
        .in_c0_exe1840316_0(in_c0_exe1840316_0),
        .in_c0_exe1940417_0(in_c0_exe1940417_0),
        .in_c0_exe2040518_0(in_c0_exe2040518_0),
        .in_c0_exe2140619_0(in_c0_exe2140619_0),
        .in_c0_exe2240720_0(in_c0_exe2240720_0),
        .in_c0_exe2340821_0(in_c0_exe2340821_0),
        .in_c0_exe23871_0(in_c0_exe23871_0),
        .in_c0_exe2440922_0(in_c0_exe2440922_0),
        .in_c0_exe2541023_0(in_c0_exe2541023_0),
        .in_c0_exe2624_0(in_c0_exe2624_0),
        .in_c0_exe33882_0(in_c0_exe33882_0),
        .in_c0_exe43893_0(in_c0_exe43893_0),
        .in_c0_exe63914_0(in_c0_exe63914_0),
        .in_c0_exe73925_0(in_c0_exe73925_0),
        .in_c0_exe83936_0(in_c0_exe83936_0),
        .in_c0_exe93947_0(in_c0_exe93947_0),
        .in_stall_in(bb_kernel_3mm_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe103958(kernel_3mm_B5_merge_out_c0_exe103958),
        .out_c0_exe113969(kernel_3mm_B5_merge_out_c0_exe113969),
        .out_c0_exe1239710(kernel_3mm_B5_merge_out_c0_exe1239710),
        .out_c0_exe1339811(kernel_3mm_B5_merge_out_c0_exe1339811),
        .out_c0_exe1439912(kernel_3mm_B5_merge_out_c0_exe1439912),
        .out_c0_exe1540013(kernel_3mm_B5_merge_out_c0_exe1540013),
        .out_c0_exe1640114(kernel_3mm_B5_merge_out_c0_exe1640114),
        .out_c0_exe1740215(kernel_3mm_B5_merge_out_c0_exe1740215),
        .out_c0_exe1840316(kernel_3mm_B5_merge_out_c0_exe1840316),
        .out_c0_exe1940417(kernel_3mm_B5_merge_out_c0_exe1940417),
        .out_c0_exe2040518(kernel_3mm_B5_merge_out_c0_exe2040518),
        .out_c0_exe2140619(kernel_3mm_B5_merge_out_c0_exe2140619),
        .out_c0_exe2240720(kernel_3mm_B5_merge_out_c0_exe2240720),
        .out_c0_exe2340821(kernel_3mm_B5_merge_out_c0_exe2340821),
        .out_c0_exe23871(kernel_3mm_B5_merge_out_c0_exe23871),
        .out_c0_exe2440922(kernel_3mm_B5_merge_out_c0_exe2440922),
        .out_c0_exe2541023(kernel_3mm_B5_merge_out_c0_exe2541023),
        .out_c0_exe2624(kernel_3mm_B5_merge_out_c0_exe2624),
        .out_c0_exe33882(kernel_3mm_B5_merge_out_c0_exe33882),
        .out_c0_exe43893(kernel_3mm_B5_merge_out_c0_exe43893),
        .out_c0_exe63914(kernel_3mm_B5_merge_out_c0_exe63914),
        .out_c0_exe73925(kernel_3mm_B5_merge_out_c0_exe73925),
        .out_c0_exe83936(kernel_3mm_B5_merge_out_c0_exe83936),
        .out_c0_exe93947(kernel_3mm_B5_merge_out_c0_exe93947),
        .out_stall_out_0(kernel_3mm_B5_merge_out_stall_out_0),
        .out_valid_out(kernel_3mm_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B5_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B5_stall_region thebb_kernel_3mm_B5_stall_region (
        .in_c0_exe103958(kernel_3mm_B5_merge_out_c0_exe103958),
        .in_c0_exe113969(kernel_3mm_B5_merge_out_c0_exe113969),
        .in_c0_exe1239710(kernel_3mm_B5_merge_out_c0_exe1239710),
        .in_c0_exe1339811(kernel_3mm_B5_merge_out_c0_exe1339811),
        .in_c0_exe1439912(kernel_3mm_B5_merge_out_c0_exe1439912),
        .in_c0_exe1540013(kernel_3mm_B5_merge_out_c0_exe1540013),
        .in_c0_exe1640114(kernel_3mm_B5_merge_out_c0_exe1640114),
        .in_c0_exe1740215(kernel_3mm_B5_merge_out_c0_exe1740215),
        .in_c0_exe1840316(kernel_3mm_B5_merge_out_c0_exe1840316),
        .in_c0_exe1940417(kernel_3mm_B5_merge_out_c0_exe1940417),
        .in_c0_exe2040518(kernel_3mm_B5_merge_out_c0_exe2040518),
        .in_c0_exe2140619(kernel_3mm_B5_merge_out_c0_exe2140619),
        .in_c0_exe2240720(kernel_3mm_B5_merge_out_c0_exe2240720),
        .in_c0_exe2340821(kernel_3mm_B5_merge_out_c0_exe2340821),
        .in_c0_exe23871(kernel_3mm_B5_merge_out_c0_exe23871),
        .in_c0_exe2440922(kernel_3mm_B5_merge_out_c0_exe2440922),
        .in_c0_exe2541023(kernel_3mm_B5_merge_out_c0_exe2541023),
        .in_c0_exe2624(kernel_3mm_B5_merge_out_c0_exe2624),
        .in_c0_exe33882(kernel_3mm_B5_merge_out_c0_exe33882),
        .in_c0_exe43893(kernel_3mm_B5_merge_out_c0_exe43893),
        .in_c0_exe63914(kernel_3mm_B5_merge_out_c0_exe63914),
        .in_c0_exe73925(kernel_3mm_B5_merge_out_c0_exe73925),
        .in_c0_exe83936(kernel_3mm_B5_merge_out_c0_exe83936),
        .in_c0_exe93947(kernel_3mm_B5_merge_out_c0_exe93947),
        .in_flush(in_flush),
        .in_memdep_kernel_3mm_avm_readdata(in_memdep_kernel_3mm_avm_readdata),
        .in_memdep_kernel_3mm_avm_readdatavalid(in_memdep_kernel_3mm_avm_readdatavalid),
        .in_memdep_kernel_3mm_avm_waitrequest(in_memdep_kernel_3mm_avm_waitrequest),
        .in_memdep_kernel_3mm_avm_writeack(in_memdep_kernel_3mm_avm_writeack),
        .in_stall_in(kernel_3mm_B5_branch_out_stall_out),
        .in_unnamed_kernel_3mm6_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm6_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm6_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm6_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm6_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm6_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm6_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm6_kernel_3mm_avm_writeack),
        .in_valid_in(kernel_3mm_B5_merge_out_valid_out),
        .out_c0_exe103958(bb_kernel_3mm_B5_stall_region_out_c0_exe103958),
        .out_c0_exe113969(bb_kernel_3mm_B5_stall_region_out_c0_exe113969),
        .out_c0_exe1239710(bb_kernel_3mm_B5_stall_region_out_c0_exe1239710),
        .out_c0_exe1421(bb_kernel_3mm_B5_stall_region_out_c0_exe1421),
        .out_c0_exe1439912(bb_kernel_3mm_B5_stall_region_out_c0_exe1439912),
        .out_c0_exe1540013(bb_kernel_3mm_B5_stall_region_out_c0_exe1540013),
        .out_c0_exe1640114(bb_kernel_3mm_B5_stall_region_out_c0_exe1640114),
        .out_c0_exe1740215(bb_kernel_3mm_B5_stall_region_out_c0_exe1740215),
        .out_c0_exe1840316(bb_kernel_3mm_B5_stall_region_out_c0_exe1840316),
        .out_c0_exe1940417(bb_kernel_3mm_B5_stall_region_out_c0_exe1940417),
        .out_c0_exe2040518(bb_kernel_3mm_B5_stall_region_out_c0_exe2040518),
        .out_c0_exe2140619(bb_kernel_3mm_B5_stall_region_out_c0_exe2140619),
        .out_c0_exe2240720(bb_kernel_3mm_B5_stall_region_out_c0_exe2240720),
        .out_c0_exe2340821(bb_kernel_3mm_B5_stall_region_out_c0_exe2340821),
        .out_c0_exe23871(bb_kernel_3mm_B5_stall_region_out_c0_exe23871),
        .out_c0_exe2422(bb_kernel_3mm_B5_stall_region_out_c0_exe2422),
        .out_c0_exe2440922(bb_kernel_3mm_B5_stall_region_out_c0_exe2440922),
        .out_c0_exe2541023(bb_kernel_3mm_B5_stall_region_out_c0_exe2541023),
        .out_c0_exe2624(bb_kernel_3mm_B5_stall_region_out_c0_exe2624),
        .out_c0_exe33882(bb_kernel_3mm_B5_stall_region_out_c0_exe33882),
        .out_c0_exe63914(bb_kernel_3mm_B5_stall_region_out_c0_exe63914),
        .out_c0_exe73925(bb_kernel_3mm_B5_stall_region_out_c0_exe73925),
        .out_c0_exe83936(bb_kernel_3mm_B5_stall_region_out_c0_exe83936),
        .out_c0_exe93947(bb_kernel_3mm_B5_stall_region_out_c0_exe93947),
        .out_memdep(bb_kernel_3mm_B5_stall_region_out_memdep),
        .out_memdep_kernel_3mm_avm_address(bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_address),
        .out_memdep_kernel_3mm_avm_burstcount(bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_burstcount),
        .out_memdep_kernel_3mm_avm_byteenable(bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_byteenable),
        .out_memdep_kernel_3mm_avm_enable(bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_enable),
        .out_memdep_kernel_3mm_avm_read(bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_read),
        .out_memdep_kernel_3mm_avm_write(bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_write),
        .out_memdep_kernel_3mm_avm_writedata(bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_writedata),
        .out_stall_out(bb_kernel_3mm_B5_stall_region_out_stall_out),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_address(bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm6_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount(bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable(bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_enable(bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm6_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_read(bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm6_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_write(bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm6_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata(bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata),
        .out_valid_out(bb_kernel_3mm_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B5_branch(BLACKBOX,38)
    kernel_3mm_B5_branch thekernel_3mm_B5_branch (
        .in_c0_exe103958(bb_kernel_3mm_B5_stall_region_out_c0_exe103958),
        .in_c0_exe113969(bb_kernel_3mm_B5_stall_region_out_c0_exe113969),
        .in_c0_exe1239710(bb_kernel_3mm_B5_stall_region_out_c0_exe1239710),
        .in_c0_exe1421(bb_kernel_3mm_B5_stall_region_out_c0_exe1421),
        .in_c0_exe1439912(bb_kernel_3mm_B5_stall_region_out_c0_exe1439912),
        .in_c0_exe1540013(bb_kernel_3mm_B5_stall_region_out_c0_exe1540013),
        .in_c0_exe1640114(bb_kernel_3mm_B5_stall_region_out_c0_exe1640114),
        .in_c0_exe1740215(bb_kernel_3mm_B5_stall_region_out_c0_exe1740215),
        .in_c0_exe1840316(bb_kernel_3mm_B5_stall_region_out_c0_exe1840316),
        .in_c0_exe1940417(bb_kernel_3mm_B5_stall_region_out_c0_exe1940417),
        .in_c0_exe2040518(bb_kernel_3mm_B5_stall_region_out_c0_exe2040518),
        .in_c0_exe2140619(bb_kernel_3mm_B5_stall_region_out_c0_exe2140619),
        .in_c0_exe2240720(bb_kernel_3mm_B5_stall_region_out_c0_exe2240720),
        .in_c0_exe2340821(bb_kernel_3mm_B5_stall_region_out_c0_exe2340821),
        .in_c0_exe23871(bb_kernel_3mm_B5_stall_region_out_c0_exe23871),
        .in_c0_exe2422(bb_kernel_3mm_B5_stall_region_out_c0_exe2422),
        .in_c0_exe2440922(bb_kernel_3mm_B5_stall_region_out_c0_exe2440922),
        .in_c0_exe2541023(bb_kernel_3mm_B5_stall_region_out_c0_exe2541023),
        .in_c0_exe2624(bb_kernel_3mm_B5_stall_region_out_c0_exe2624),
        .in_c0_exe33882(bb_kernel_3mm_B5_stall_region_out_c0_exe33882),
        .in_c0_exe63914(bb_kernel_3mm_B5_stall_region_out_c0_exe63914),
        .in_c0_exe73925(bb_kernel_3mm_B5_stall_region_out_c0_exe73925),
        .in_c0_exe83936(bb_kernel_3mm_B5_stall_region_out_c0_exe83936),
        .in_c0_exe93947(bb_kernel_3mm_B5_stall_region_out_c0_exe93947),
        .in_memdep(bb_kernel_3mm_B5_stall_region_out_memdep),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_3mm_B5_stall_region_out_valid_out),
        .out_c0_exe103958(kernel_3mm_B5_branch_out_c0_exe103958),
        .out_c0_exe113969(kernel_3mm_B5_branch_out_c0_exe113969),
        .out_c0_exe1239710(kernel_3mm_B5_branch_out_c0_exe1239710),
        .out_c0_exe1421(kernel_3mm_B5_branch_out_c0_exe1421),
        .out_c0_exe1439912(kernel_3mm_B5_branch_out_c0_exe1439912),
        .out_c0_exe1540013(kernel_3mm_B5_branch_out_c0_exe1540013),
        .out_c0_exe1640114(kernel_3mm_B5_branch_out_c0_exe1640114),
        .out_c0_exe1740215(kernel_3mm_B5_branch_out_c0_exe1740215),
        .out_c0_exe1840316(kernel_3mm_B5_branch_out_c0_exe1840316),
        .out_c0_exe1940417(kernel_3mm_B5_branch_out_c0_exe1940417),
        .out_c0_exe2040518(kernel_3mm_B5_branch_out_c0_exe2040518),
        .out_c0_exe2140619(kernel_3mm_B5_branch_out_c0_exe2140619),
        .out_c0_exe2240720(kernel_3mm_B5_branch_out_c0_exe2240720),
        .out_c0_exe2340821(kernel_3mm_B5_branch_out_c0_exe2340821),
        .out_c0_exe23871(kernel_3mm_B5_branch_out_c0_exe23871),
        .out_c0_exe2422(kernel_3mm_B5_branch_out_c0_exe2422),
        .out_c0_exe2440922(kernel_3mm_B5_branch_out_c0_exe2440922),
        .out_c0_exe2541023(kernel_3mm_B5_branch_out_c0_exe2541023),
        .out_c0_exe2624(kernel_3mm_B5_branch_out_c0_exe2624),
        .out_c0_exe33882(kernel_3mm_B5_branch_out_c0_exe33882),
        .out_c0_exe63914(kernel_3mm_B5_branch_out_c0_exe63914),
        .out_c0_exe73925(kernel_3mm_B5_branch_out_c0_exe73925),
        .out_c0_exe83936(kernel_3mm_B5_branch_out_c0_exe83936),
        .out_c0_exe93947(kernel_3mm_B5_branch_out_c0_exe93947),
        .out_memdep(kernel_3mm_B5_branch_out_memdep),
        .out_stall_out(kernel_3mm_B5_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B5_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe103958(GPOUT,40)
    assign out_c0_exe103958 = kernel_3mm_B5_branch_out_c0_exe103958;

    // out_c0_exe113969(GPOUT,41)
    assign out_c0_exe113969 = kernel_3mm_B5_branch_out_c0_exe113969;

    // out_c0_exe1239710(GPOUT,42)
    assign out_c0_exe1239710 = kernel_3mm_B5_branch_out_c0_exe1239710;

    // out_c0_exe1421(GPOUT,43)
    assign out_c0_exe1421 = kernel_3mm_B5_branch_out_c0_exe1421;

    // out_c0_exe1439912(GPOUT,44)
    assign out_c0_exe1439912 = kernel_3mm_B5_branch_out_c0_exe1439912;

    // out_c0_exe1540013(GPOUT,45)
    assign out_c0_exe1540013 = kernel_3mm_B5_branch_out_c0_exe1540013;

    // out_c0_exe1640114(GPOUT,46)
    assign out_c0_exe1640114 = kernel_3mm_B5_branch_out_c0_exe1640114;

    // out_c0_exe1740215(GPOUT,47)
    assign out_c0_exe1740215 = kernel_3mm_B5_branch_out_c0_exe1740215;

    // out_c0_exe1840316(GPOUT,48)
    assign out_c0_exe1840316 = kernel_3mm_B5_branch_out_c0_exe1840316;

    // out_c0_exe1940417(GPOUT,49)
    assign out_c0_exe1940417 = kernel_3mm_B5_branch_out_c0_exe1940417;

    // out_c0_exe2040518(GPOUT,50)
    assign out_c0_exe2040518 = kernel_3mm_B5_branch_out_c0_exe2040518;

    // out_c0_exe2140619(GPOUT,51)
    assign out_c0_exe2140619 = kernel_3mm_B5_branch_out_c0_exe2140619;

    // out_c0_exe2240720(GPOUT,52)
    assign out_c0_exe2240720 = kernel_3mm_B5_branch_out_c0_exe2240720;

    // out_c0_exe2340821(GPOUT,53)
    assign out_c0_exe2340821 = kernel_3mm_B5_branch_out_c0_exe2340821;

    // out_c0_exe23871(GPOUT,54)
    assign out_c0_exe23871 = kernel_3mm_B5_branch_out_c0_exe23871;

    // out_c0_exe2422(GPOUT,55)
    assign out_c0_exe2422 = kernel_3mm_B5_branch_out_c0_exe2422;

    // out_c0_exe2440922(GPOUT,56)
    assign out_c0_exe2440922 = kernel_3mm_B5_branch_out_c0_exe2440922;

    // out_c0_exe2541023(GPOUT,57)
    assign out_c0_exe2541023 = kernel_3mm_B5_branch_out_c0_exe2541023;

    // out_c0_exe2624(GPOUT,58)
    assign out_c0_exe2624 = kernel_3mm_B5_branch_out_c0_exe2624;

    // out_c0_exe33882(GPOUT,59)
    assign out_c0_exe33882 = kernel_3mm_B5_branch_out_c0_exe33882;

    // out_c0_exe63914(GPOUT,60)
    assign out_c0_exe63914 = kernel_3mm_B5_branch_out_c0_exe63914;

    // out_c0_exe73925(GPOUT,61)
    assign out_c0_exe73925 = kernel_3mm_B5_branch_out_c0_exe73925;

    // out_c0_exe83936(GPOUT,62)
    assign out_c0_exe83936 = kernel_3mm_B5_branch_out_c0_exe83936;

    // out_c0_exe93947(GPOUT,63)
    assign out_c0_exe93947 = kernel_3mm_B5_branch_out_c0_exe93947;

    // out_memdep(GPOUT,64)
    assign out_memdep = kernel_3mm_B5_branch_out_memdep;

    // out_memdep_kernel_3mm_avm_address(GPOUT,65)
    assign out_memdep_kernel_3mm_avm_address = bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_address;

    // out_memdep_kernel_3mm_avm_burstcount(GPOUT,66)
    assign out_memdep_kernel_3mm_avm_burstcount = bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_burstcount;

    // out_memdep_kernel_3mm_avm_byteenable(GPOUT,67)
    assign out_memdep_kernel_3mm_avm_byteenable = bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_byteenable;

    // out_memdep_kernel_3mm_avm_enable(GPOUT,68)
    assign out_memdep_kernel_3mm_avm_enable = bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_enable;

    // out_memdep_kernel_3mm_avm_read(GPOUT,69)
    assign out_memdep_kernel_3mm_avm_read = bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_read;

    // out_memdep_kernel_3mm_avm_write(GPOUT,70)
    assign out_memdep_kernel_3mm_avm_write = bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_write;

    // out_memdep_kernel_3mm_avm_writedata(GPOUT,71)
    assign out_memdep_kernel_3mm_avm_writedata = bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_writedata;

    // out_stall_out_0(GPOUT,72)
    assign out_stall_out_0 = kernel_3mm_B5_merge_out_stall_out_0;

    // out_unnamed_kernel_3mm6_kernel_3mm_avm_address(GPOUT,73)
    assign out_unnamed_kernel_3mm6_kernel_3mm_avm_address = bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm6_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount(GPOUT,74)
    assign out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount = bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable(GPOUT,75)
    assign out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable = bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm6_kernel_3mm_avm_enable(GPOUT,76)
    assign out_unnamed_kernel_3mm6_kernel_3mm_avm_enable = bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm6_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm6_kernel_3mm_avm_read(GPOUT,77)
    assign out_unnamed_kernel_3mm6_kernel_3mm_avm_read = bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm6_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm6_kernel_3mm_avm_write(GPOUT,78)
    assign out_unnamed_kernel_3mm6_kernel_3mm_avm_write = bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm6_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata(GPOUT,79)
    assign out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata = bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata;

    // out_valid_out_0(GPOUT,80)
    assign out_valid_out_0 = kernel_3mm_B5_branch_out_valid_out_0;

endmodule
