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
// SystemVerilog created on Thu Apr 27 14:26:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B5 (
    input wire [0:0] in_c0_exe103758_0,
    input wire [31:0] in_c0_exe113769_0,
    input wire [0:0] in_c0_exe1237710_0,
    input wire [63:0] in_c0_exe1337811_0,
    input wire [63:0] in_c0_exe13661_0,
    input wire [0:0] in_c0_exe1437912_0,
    input wire [0:0] in_c0_exe1538013_0,
    input wire [0:0] in_c0_exe1638114_0,
    input wire [0:0] in_c0_exe1738215_0,
    input wire [0:0] in_c0_exe1838316_0,
    input wire [0:0] in_c0_exe1938417_0,
    input wire [31:0] in_c0_exe2038518_0,
    input wire [0:0] in_c0_exe2138619_0,
    input wire [0:0] in_c0_exe2238720_0,
    input wire [0:0] in_c0_exe2338821_0,
    input wire [63:0] in_c0_exe23672_0,
    input wire [0:0] in_c0_exe2438922_0,
    input wire [0:0] in_c0_exe2539023_0,
    input wire [0:0] in_c0_exe2624_0,
    input wire [31:0] in_c0_exe33683_0,
    input wire [0:0] in_c0_exe63714_0,
    input wire [0:0] in_c0_exe73725_0,
    input wire [0:0] in_c0_exe83736_0,
    input wire [0:0] in_c0_exe93747_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_kernel_3mm_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe103758,
    output wire [31:0] out_c0_exe113769,
    output wire [0:0] out_c0_exe1237710,
    output wire [63:0] out_c0_exe13661,
    output wire [63:0] out_c0_exe1401,
    output wire [0:0] out_c0_exe1437912,
    output wire [0:0] out_c0_exe1538013,
    output wire [0:0] out_c0_exe1638114,
    output wire [0:0] out_c0_exe1738215,
    output wire [0:0] out_c0_exe1838316,
    output wire [0:0] out_c0_exe1938417,
    output wire [31:0] out_c0_exe2038518,
    output wire [0:0] out_c0_exe2138619,
    output wire [0:0] out_c0_exe2238720,
    output wire [0:0] out_c0_exe2338821,
    output wire [63:0] out_c0_exe23672,
    output wire [31:0] out_c0_exe2402,
    output wire [0:0] out_c0_exe2438922,
    output wire [0:0] out_c0_exe2539023,
    output wire [0:0] out_c0_exe2624,
    output wire [0:0] out_c0_exe63714,
    output wire [0:0] out_c0_exe73725,
    output wire [0:0] out_c0_exe83736,
    output wire [0:0] out_c0_exe93747,
    output wire [0:0] out_c1_exe1,
    output wire [31:0] out_memdep_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_kernel_3mm_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B5_stall_region_out_almost_empty_out;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe103758;
    wire [31:0] bb_kernel_3mm_B5_stall_region_out_c0_exe113769;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe1237710;
    wire [63:0] bb_kernel_3mm_B5_stall_region_out_c0_exe13661;
    wire [63:0] bb_kernel_3mm_B5_stall_region_out_c0_exe1401;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe1437912;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe1538013;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe1638114;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe1738215;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe1838316;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe1938417;
    wire [31:0] bb_kernel_3mm_B5_stall_region_out_c0_exe2038518;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe2138619;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe2238720;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe2338821;
    wire [63:0] bb_kernel_3mm_B5_stall_region_out_c0_exe23672;
    wire [31:0] bb_kernel_3mm_B5_stall_region_out_c0_exe2402;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe2438922;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe2539023;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe2624;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe63714;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe73725;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe83736;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c0_exe93747;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_c1_exe1;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_empty_out;
    wire [31:0] bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_stall_out;
    wire [31:0] bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B5_stall_region_out_valid_out;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe103758;
    wire [31:0] kernel_3mm_B5_branch_out_c0_exe113769;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe1237710;
    wire [63:0] kernel_3mm_B5_branch_out_c0_exe13661;
    wire [63:0] kernel_3mm_B5_branch_out_c0_exe1401;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe1437912;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe1538013;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe1638114;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe1738215;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe1838316;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe1938417;
    wire [31:0] kernel_3mm_B5_branch_out_c0_exe2038518;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe2138619;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe2238720;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe2338821;
    wire [63:0] kernel_3mm_B5_branch_out_c0_exe23672;
    wire [31:0] kernel_3mm_B5_branch_out_c0_exe2402;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe2438922;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe2539023;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe2624;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe63714;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe73725;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe83736;
    wire [0:0] kernel_3mm_B5_branch_out_c0_exe93747;
    wire [0:0] kernel_3mm_B5_branch_out_c1_exe1;
    wire [0:0] kernel_3mm_B5_branch_out_stall_out;
    wire [0:0] kernel_3mm_B5_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B5_merge_out_almost_empty_out;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe103758;
    wire [31:0] kernel_3mm_B5_merge_out_c0_exe113769;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe1237710;
    wire [63:0] kernel_3mm_B5_merge_out_c0_exe1337811;
    wire [63:0] kernel_3mm_B5_merge_out_c0_exe13661;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe1437912;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe1538013;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe1638114;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe1738215;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe1838316;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe1938417;
    wire [31:0] kernel_3mm_B5_merge_out_c0_exe2038518;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe2138619;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe2238720;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe2338821;
    wire [63:0] kernel_3mm_B5_merge_out_c0_exe23672;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe2438922;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe2539023;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe2624;
    wire [31:0] kernel_3mm_B5_merge_out_c0_exe33683;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe63714;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe73725;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe83736;
    wire [0:0] kernel_3mm_B5_merge_out_c0_exe93747;
    wire [0:0] kernel_3mm_B5_merge_out_empty_out;
    wire [0:0] kernel_3mm_B5_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B5_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // kernel_3mm_B5_merge(BLACKBOX,39)
    kernel_3mm_B5_merge thekernel_3mm_B5_merge (
        .in_c0_exe103758_0(in_c0_exe103758_0),
        .in_c0_exe113769_0(in_c0_exe113769_0),
        .in_c0_exe1237710_0(in_c0_exe1237710_0),
        .in_c0_exe1337811_0(in_c0_exe1337811_0),
        .in_c0_exe13661_0(in_c0_exe13661_0),
        .in_c0_exe1437912_0(in_c0_exe1437912_0),
        .in_c0_exe1538013_0(in_c0_exe1538013_0),
        .in_c0_exe1638114_0(in_c0_exe1638114_0),
        .in_c0_exe1738215_0(in_c0_exe1738215_0),
        .in_c0_exe1838316_0(in_c0_exe1838316_0),
        .in_c0_exe1938417_0(in_c0_exe1938417_0),
        .in_c0_exe2038518_0(in_c0_exe2038518_0),
        .in_c0_exe2138619_0(in_c0_exe2138619_0),
        .in_c0_exe2238720_0(in_c0_exe2238720_0),
        .in_c0_exe2338821_0(in_c0_exe2338821_0),
        .in_c0_exe23672_0(in_c0_exe23672_0),
        .in_c0_exe2438922_0(in_c0_exe2438922_0),
        .in_c0_exe2539023_0(in_c0_exe2539023_0),
        .in_c0_exe2624_0(in_c0_exe2624_0),
        .in_c0_exe33683_0(in_c0_exe33683_0),
        .in_c0_exe63714_0(in_c0_exe63714_0),
        .in_c0_exe73725_0(in_c0_exe73725_0),
        .in_c0_exe83736_0(in_c0_exe83736_0),
        .in_c0_exe93747_0(in_c0_exe93747_0),
        .in_stall_in(bb_kernel_3mm_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(kernel_3mm_B5_merge_out_almost_empty_out),
        .out_c0_exe103758(kernel_3mm_B5_merge_out_c0_exe103758),
        .out_c0_exe113769(kernel_3mm_B5_merge_out_c0_exe113769),
        .out_c0_exe1237710(kernel_3mm_B5_merge_out_c0_exe1237710),
        .out_c0_exe1337811(kernel_3mm_B5_merge_out_c0_exe1337811),
        .out_c0_exe13661(kernel_3mm_B5_merge_out_c0_exe13661),
        .out_c0_exe1437912(kernel_3mm_B5_merge_out_c0_exe1437912),
        .out_c0_exe1538013(kernel_3mm_B5_merge_out_c0_exe1538013),
        .out_c0_exe1638114(kernel_3mm_B5_merge_out_c0_exe1638114),
        .out_c0_exe1738215(kernel_3mm_B5_merge_out_c0_exe1738215),
        .out_c0_exe1838316(kernel_3mm_B5_merge_out_c0_exe1838316),
        .out_c0_exe1938417(kernel_3mm_B5_merge_out_c0_exe1938417),
        .out_c0_exe2038518(kernel_3mm_B5_merge_out_c0_exe2038518),
        .out_c0_exe2138619(kernel_3mm_B5_merge_out_c0_exe2138619),
        .out_c0_exe2238720(kernel_3mm_B5_merge_out_c0_exe2238720),
        .out_c0_exe2338821(kernel_3mm_B5_merge_out_c0_exe2338821),
        .out_c0_exe23672(kernel_3mm_B5_merge_out_c0_exe23672),
        .out_c0_exe2438922(kernel_3mm_B5_merge_out_c0_exe2438922),
        .out_c0_exe2539023(kernel_3mm_B5_merge_out_c0_exe2539023),
        .out_c0_exe2624(kernel_3mm_B5_merge_out_c0_exe2624),
        .out_c0_exe33683(kernel_3mm_B5_merge_out_c0_exe33683),
        .out_c0_exe63714(kernel_3mm_B5_merge_out_c0_exe63714),
        .out_c0_exe73725(kernel_3mm_B5_merge_out_c0_exe73725),
        .out_c0_exe83736(kernel_3mm_B5_merge_out_c0_exe83736),
        .out_c0_exe93747(kernel_3mm_B5_merge_out_c0_exe93747),
        .out_empty_out(kernel_3mm_B5_merge_out_empty_out),
        .out_stall_out_0(kernel_3mm_B5_merge_out_stall_out_0),
        .out_valid_out(kernel_3mm_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B5_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B5_stall_region thebb_kernel_3mm_B5_stall_region (
        .in_almost_empty_in(kernel_3mm_B5_merge_out_almost_empty_out),
        .in_c0_exe103758(kernel_3mm_B5_merge_out_c0_exe103758),
        .in_c0_exe113769(kernel_3mm_B5_merge_out_c0_exe113769),
        .in_c0_exe1237710(kernel_3mm_B5_merge_out_c0_exe1237710),
        .in_c0_exe1337811(kernel_3mm_B5_merge_out_c0_exe1337811),
        .in_c0_exe13661(kernel_3mm_B5_merge_out_c0_exe13661),
        .in_c0_exe1437912(kernel_3mm_B5_merge_out_c0_exe1437912),
        .in_c0_exe1538013(kernel_3mm_B5_merge_out_c0_exe1538013),
        .in_c0_exe1638114(kernel_3mm_B5_merge_out_c0_exe1638114),
        .in_c0_exe1738215(kernel_3mm_B5_merge_out_c0_exe1738215),
        .in_c0_exe1838316(kernel_3mm_B5_merge_out_c0_exe1838316),
        .in_c0_exe1938417(kernel_3mm_B5_merge_out_c0_exe1938417),
        .in_c0_exe2038518(kernel_3mm_B5_merge_out_c0_exe2038518),
        .in_c0_exe2138619(kernel_3mm_B5_merge_out_c0_exe2138619),
        .in_c0_exe2238720(kernel_3mm_B5_merge_out_c0_exe2238720),
        .in_c0_exe2338821(kernel_3mm_B5_merge_out_c0_exe2338821),
        .in_c0_exe23672(kernel_3mm_B5_merge_out_c0_exe23672),
        .in_c0_exe2438922(kernel_3mm_B5_merge_out_c0_exe2438922),
        .in_c0_exe2539023(kernel_3mm_B5_merge_out_c0_exe2539023),
        .in_c0_exe2624(kernel_3mm_B5_merge_out_c0_exe2624),
        .in_c0_exe33683(kernel_3mm_B5_merge_out_c0_exe33683),
        .in_c0_exe63714(kernel_3mm_B5_merge_out_c0_exe63714),
        .in_c0_exe73725(kernel_3mm_B5_merge_out_c0_exe73725),
        .in_c0_exe83736(kernel_3mm_B5_merge_out_c0_exe83736),
        .in_c0_exe93747(kernel_3mm_B5_merge_out_c0_exe93747),
        .in_empty_in(kernel_3mm_B5_merge_out_empty_out),
        .in_flush(in_flush),
        .in_memdep_kernel_3mm_avm_readdata(in_memdep_kernel_3mm_avm_readdata),
        .in_memdep_kernel_3mm_avm_readdatavalid(in_memdep_kernel_3mm_avm_readdatavalid),
        .in_memdep_kernel_3mm_avm_waitrequest(in_memdep_kernel_3mm_avm_waitrequest),
        .in_memdep_kernel_3mm_avm_writeack(in_memdep_kernel_3mm_avm_writeack),
        .in_stall_in(kernel_3mm_B5_branch_out_stall_out),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack),
        .in_valid_in(kernel_3mm_B5_merge_out_valid_out),
        .out_almost_empty_out(bb_kernel_3mm_B5_stall_region_out_almost_empty_out),
        .out_c0_exe103758(bb_kernel_3mm_B5_stall_region_out_c0_exe103758),
        .out_c0_exe113769(bb_kernel_3mm_B5_stall_region_out_c0_exe113769),
        .out_c0_exe1237710(bb_kernel_3mm_B5_stall_region_out_c0_exe1237710),
        .out_c0_exe13661(bb_kernel_3mm_B5_stall_region_out_c0_exe13661),
        .out_c0_exe1401(bb_kernel_3mm_B5_stall_region_out_c0_exe1401),
        .out_c0_exe1437912(bb_kernel_3mm_B5_stall_region_out_c0_exe1437912),
        .out_c0_exe1538013(bb_kernel_3mm_B5_stall_region_out_c0_exe1538013),
        .out_c0_exe1638114(bb_kernel_3mm_B5_stall_region_out_c0_exe1638114),
        .out_c0_exe1738215(bb_kernel_3mm_B5_stall_region_out_c0_exe1738215),
        .out_c0_exe1838316(bb_kernel_3mm_B5_stall_region_out_c0_exe1838316),
        .out_c0_exe1938417(bb_kernel_3mm_B5_stall_region_out_c0_exe1938417),
        .out_c0_exe2038518(bb_kernel_3mm_B5_stall_region_out_c0_exe2038518),
        .out_c0_exe2138619(bb_kernel_3mm_B5_stall_region_out_c0_exe2138619),
        .out_c0_exe2238720(bb_kernel_3mm_B5_stall_region_out_c0_exe2238720),
        .out_c0_exe2338821(bb_kernel_3mm_B5_stall_region_out_c0_exe2338821),
        .out_c0_exe23672(bb_kernel_3mm_B5_stall_region_out_c0_exe23672),
        .out_c0_exe2402(bb_kernel_3mm_B5_stall_region_out_c0_exe2402),
        .out_c0_exe2438922(bb_kernel_3mm_B5_stall_region_out_c0_exe2438922),
        .out_c0_exe2539023(bb_kernel_3mm_B5_stall_region_out_c0_exe2539023),
        .out_c0_exe2624(bb_kernel_3mm_B5_stall_region_out_c0_exe2624),
        .out_c0_exe63714(bb_kernel_3mm_B5_stall_region_out_c0_exe63714),
        .out_c0_exe73725(bb_kernel_3mm_B5_stall_region_out_c0_exe73725),
        .out_c0_exe83736(bb_kernel_3mm_B5_stall_region_out_c0_exe83736),
        .out_c0_exe93747(bb_kernel_3mm_B5_stall_region_out_c0_exe93747),
        .out_c1_exe1(bb_kernel_3mm_B5_stall_region_out_c1_exe1),
        .out_empty_out(bb_kernel_3mm_B5_stall_region_out_empty_out),
        .out_memdep_kernel_3mm_avm_address(bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_address),
        .out_memdep_kernel_3mm_avm_burstcount(bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_burstcount),
        .out_memdep_kernel_3mm_avm_byteenable(bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_byteenable),
        .out_memdep_kernel_3mm_avm_enable(bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_enable),
        .out_memdep_kernel_3mm_avm_read(bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_read),
        .out_memdep_kernel_3mm_avm_write(bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_write),
        .out_memdep_kernel_3mm_avm_writedata(bb_kernel_3mm_B5_stall_region_out_memdep_kernel_3mm_avm_writedata),
        .out_stall_out(bb_kernel_3mm_B5_stall_region_out_stall_out),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_address(bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount(bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable(bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_enable(bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_read(bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_write(bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata(bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata),
        .out_valid_out(bb_kernel_3mm_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B5_branch(BLACKBOX,38)
    kernel_3mm_B5_branch thekernel_3mm_B5_branch (
        .in_almost_empty_in(bb_kernel_3mm_B5_stall_region_out_almost_empty_out),
        .in_c0_exe103758(bb_kernel_3mm_B5_stall_region_out_c0_exe103758),
        .in_c0_exe113769(bb_kernel_3mm_B5_stall_region_out_c0_exe113769),
        .in_c0_exe1237710(bb_kernel_3mm_B5_stall_region_out_c0_exe1237710),
        .in_c0_exe13661(bb_kernel_3mm_B5_stall_region_out_c0_exe13661),
        .in_c0_exe1401(bb_kernel_3mm_B5_stall_region_out_c0_exe1401),
        .in_c0_exe1437912(bb_kernel_3mm_B5_stall_region_out_c0_exe1437912),
        .in_c0_exe1538013(bb_kernel_3mm_B5_stall_region_out_c0_exe1538013),
        .in_c0_exe1638114(bb_kernel_3mm_B5_stall_region_out_c0_exe1638114),
        .in_c0_exe1738215(bb_kernel_3mm_B5_stall_region_out_c0_exe1738215),
        .in_c0_exe1838316(bb_kernel_3mm_B5_stall_region_out_c0_exe1838316),
        .in_c0_exe1938417(bb_kernel_3mm_B5_stall_region_out_c0_exe1938417),
        .in_c0_exe2038518(bb_kernel_3mm_B5_stall_region_out_c0_exe2038518),
        .in_c0_exe2138619(bb_kernel_3mm_B5_stall_region_out_c0_exe2138619),
        .in_c0_exe2238720(bb_kernel_3mm_B5_stall_region_out_c0_exe2238720),
        .in_c0_exe2338821(bb_kernel_3mm_B5_stall_region_out_c0_exe2338821),
        .in_c0_exe23672(bb_kernel_3mm_B5_stall_region_out_c0_exe23672),
        .in_c0_exe2402(bb_kernel_3mm_B5_stall_region_out_c0_exe2402),
        .in_c0_exe2438922(bb_kernel_3mm_B5_stall_region_out_c0_exe2438922),
        .in_c0_exe2539023(bb_kernel_3mm_B5_stall_region_out_c0_exe2539023),
        .in_c0_exe2624(bb_kernel_3mm_B5_stall_region_out_c0_exe2624),
        .in_c0_exe63714(bb_kernel_3mm_B5_stall_region_out_c0_exe63714),
        .in_c0_exe73725(bb_kernel_3mm_B5_stall_region_out_c0_exe73725),
        .in_c0_exe83736(bb_kernel_3mm_B5_stall_region_out_c0_exe83736),
        .in_c0_exe93747(bb_kernel_3mm_B5_stall_region_out_c0_exe93747),
        .in_c1_exe1(bb_kernel_3mm_B5_stall_region_out_c1_exe1),
        .in_empty_in(bb_kernel_3mm_B5_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_3mm_B5_stall_region_out_valid_out),
        .out_c0_exe103758(kernel_3mm_B5_branch_out_c0_exe103758),
        .out_c0_exe113769(kernel_3mm_B5_branch_out_c0_exe113769),
        .out_c0_exe1237710(kernel_3mm_B5_branch_out_c0_exe1237710),
        .out_c0_exe13661(kernel_3mm_B5_branch_out_c0_exe13661),
        .out_c0_exe1401(kernel_3mm_B5_branch_out_c0_exe1401),
        .out_c0_exe1437912(kernel_3mm_B5_branch_out_c0_exe1437912),
        .out_c0_exe1538013(kernel_3mm_B5_branch_out_c0_exe1538013),
        .out_c0_exe1638114(kernel_3mm_B5_branch_out_c0_exe1638114),
        .out_c0_exe1738215(kernel_3mm_B5_branch_out_c0_exe1738215),
        .out_c0_exe1838316(kernel_3mm_B5_branch_out_c0_exe1838316),
        .out_c0_exe1938417(kernel_3mm_B5_branch_out_c0_exe1938417),
        .out_c0_exe2038518(kernel_3mm_B5_branch_out_c0_exe2038518),
        .out_c0_exe2138619(kernel_3mm_B5_branch_out_c0_exe2138619),
        .out_c0_exe2238720(kernel_3mm_B5_branch_out_c0_exe2238720),
        .out_c0_exe2338821(kernel_3mm_B5_branch_out_c0_exe2338821),
        .out_c0_exe23672(kernel_3mm_B5_branch_out_c0_exe23672),
        .out_c0_exe2402(kernel_3mm_B5_branch_out_c0_exe2402),
        .out_c0_exe2438922(kernel_3mm_B5_branch_out_c0_exe2438922),
        .out_c0_exe2539023(kernel_3mm_B5_branch_out_c0_exe2539023),
        .out_c0_exe2624(kernel_3mm_B5_branch_out_c0_exe2624),
        .out_c0_exe63714(kernel_3mm_B5_branch_out_c0_exe63714),
        .out_c0_exe73725(kernel_3mm_B5_branch_out_c0_exe73725),
        .out_c0_exe83736(kernel_3mm_B5_branch_out_c0_exe83736),
        .out_c0_exe93747(kernel_3mm_B5_branch_out_c0_exe93747),
        .out_c1_exe1(kernel_3mm_B5_branch_out_c1_exe1),
        .out_stall_out(kernel_3mm_B5_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B5_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe103758(GPOUT,40)
    assign out_c0_exe103758 = kernel_3mm_B5_branch_out_c0_exe103758;

    // out_c0_exe113769(GPOUT,41)
    assign out_c0_exe113769 = kernel_3mm_B5_branch_out_c0_exe113769;

    // out_c0_exe1237710(GPOUT,42)
    assign out_c0_exe1237710 = kernel_3mm_B5_branch_out_c0_exe1237710;

    // out_c0_exe13661(GPOUT,43)
    assign out_c0_exe13661 = kernel_3mm_B5_branch_out_c0_exe13661;

    // out_c0_exe1401(GPOUT,44)
    assign out_c0_exe1401 = kernel_3mm_B5_branch_out_c0_exe1401;

    // out_c0_exe1437912(GPOUT,45)
    assign out_c0_exe1437912 = kernel_3mm_B5_branch_out_c0_exe1437912;

    // out_c0_exe1538013(GPOUT,46)
    assign out_c0_exe1538013 = kernel_3mm_B5_branch_out_c0_exe1538013;

    // out_c0_exe1638114(GPOUT,47)
    assign out_c0_exe1638114 = kernel_3mm_B5_branch_out_c0_exe1638114;

    // out_c0_exe1738215(GPOUT,48)
    assign out_c0_exe1738215 = kernel_3mm_B5_branch_out_c0_exe1738215;

    // out_c0_exe1838316(GPOUT,49)
    assign out_c0_exe1838316 = kernel_3mm_B5_branch_out_c0_exe1838316;

    // out_c0_exe1938417(GPOUT,50)
    assign out_c0_exe1938417 = kernel_3mm_B5_branch_out_c0_exe1938417;

    // out_c0_exe2038518(GPOUT,51)
    assign out_c0_exe2038518 = kernel_3mm_B5_branch_out_c0_exe2038518;

    // out_c0_exe2138619(GPOUT,52)
    assign out_c0_exe2138619 = kernel_3mm_B5_branch_out_c0_exe2138619;

    // out_c0_exe2238720(GPOUT,53)
    assign out_c0_exe2238720 = kernel_3mm_B5_branch_out_c0_exe2238720;

    // out_c0_exe2338821(GPOUT,54)
    assign out_c0_exe2338821 = kernel_3mm_B5_branch_out_c0_exe2338821;

    // out_c0_exe23672(GPOUT,55)
    assign out_c0_exe23672 = kernel_3mm_B5_branch_out_c0_exe23672;

    // out_c0_exe2402(GPOUT,56)
    assign out_c0_exe2402 = kernel_3mm_B5_branch_out_c0_exe2402;

    // out_c0_exe2438922(GPOUT,57)
    assign out_c0_exe2438922 = kernel_3mm_B5_branch_out_c0_exe2438922;

    // out_c0_exe2539023(GPOUT,58)
    assign out_c0_exe2539023 = kernel_3mm_B5_branch_out_c0_exe2539023;

    // out_c0_exe2624(GPOUT,59)
    assign out_c0_exe2624 = kernel_3mm_B5_branch_out_c0_exe2624;

    // out_c0_exe63714(GPOUT,60)
    assign out_c0_exe63714 = kernel_3mm_B5_branch_out_c0_exe63714;

    // out_c0_exe73725(GPOUT,61)
    assign out_c0_exe73725 = kernel_3mm_B5_branch_out_c0_exe73725;

    // out_c0_exe83736(GPOUT,62)
    assign out_c0_exe83736 = kernel_3mm_B5_branch_out_c0_exe83736;

    // out_c0_exe93747(GPOUT,63)
    assign out_c0_exe93747 = kernel_3mm_B5_branch_out_c0_exe93747;

    // out_c1_exe1(GPOUT,64)
    assign out_c1_exe1 = kernel_3mm_B5_branch_out_c1_exe1;

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

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_address(GPOUT,73)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_address = bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount(GPOUT,74)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount = bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable(GPOUT,75)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable = bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_enable(GPOUT,76)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_enable = bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_read(GPOUT,77)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_read = bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_write(GPOUT,78)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_write = bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata(GPOUT,79)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata = bb_kernel_3mm_B5_stall_region_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata;

    // out_valid_out_0(GPOUT,80)
    assign out_valid_out_0 = kernel_3mm_B5_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,81)
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
