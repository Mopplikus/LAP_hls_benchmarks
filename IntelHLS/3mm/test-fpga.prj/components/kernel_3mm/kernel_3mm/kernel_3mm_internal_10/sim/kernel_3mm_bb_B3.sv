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

// SystemVerilog created from bb_kernel_3mm_B3
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B3 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked118_0,
    input wire [0:0] in_forked60_pop24157_0,
    input wire [31:0] in_i_060_pop23147_0,
    input wire [0:0] in_memdep_phi2_pop18132_0,
    input wire [0:0] in_memdep_phi2_pop1868_pop26167_0,
    input wire [0:0] in_memdep_phi3_pop19139_0,
    input wire [0:0] in_memdep_phi3_pop1972_pop27172_0,
    input wire [0:0] in_memdep_phi5_pop20146_0,
    input wire [0:0] in_memdep_phi5_pop2076_pop28177_0,
    input wire [0:0] in_memdep_phi_pop17125_0,
    input wire [0:0] in_memdep_phi_pop1764_pop25162_0,
    input wire [0:0] in_notcmp51152_0,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_kernel_3mm1_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm1_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm1_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm1_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe10309,
    output wire [0:0] out_c0_exe11310,
    output wire [0:0] out_c0_exe12311,
    output wire [31:0] out_c0_exe1300,
    output wire [0:0] out_c0_exe13312,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_c0_exe15,
    output wire [0:0] out_c0_exe16,
    output wire [0:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [31:0] out_c0_exe19,
    output wire [0:0] out_c0_exe20,
    output wire [0:0] out_c0_exe21,
    output wire [0:0] out_c0_exe22,
    output wire [0:0] out_c0_exe23,
    output wire [63:0] out_c0_exe2301,
    output wire [0:0] out_c0_exe24,
    output wire [0:0] out_c0_exe25,
    output wire [63:0] out_c0_exe3302,
    output wire [63:0] out_c0_exe4303,
    output wire [0:0] out_c0_exe5304,
    output wire [31:0] out_c0_exe6305,
    output wire [0:0] out_c0_exe8307,
    output wire [0:0] out_c0_exe9308,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B3_stall_region_out_almost_empty_out;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe10309;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe11310;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe12311;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_c0_exe1300;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe13312;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe14;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe15;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe16;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe17;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe18;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_c0_exe19;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe20;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe21;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe22;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe23;
    wire [63:0] bb_kernel_3mm_B3_stall_region_out_c0_exe2301;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe24;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe25;
    wire [63:0] bb_kernel_3mm_B3_stall_region_out_c0_exe3302;
    wire [63:0] bb_kernel_3mm_B3_stall_region_out_c0_exe4303;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe5304;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_c0_exe6305;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe8307;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_c0_exe9308;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_empty_out;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_stall_out;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm1_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm1_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm1_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm1_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B3_stall_region_out_valid_out;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe10309;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe11310;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe12311;
    wire [31:0] kernel_3mm_B3_branch_out_c0_exe1300;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe13312;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe14;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe15;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe16;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe17;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe18;
    wire [31:0] kernel_3mm_B3_branch_out_c0_exe19;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe20;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe21;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe22;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe23;
    wire [63:0] kernel_3mm_B3_branch_out_c0_exe2301;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe24;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe25;
    wire [63:0] kernel_3mm_B3_branch_out_c0_exe3302;
    wire [63:0] kernel_3mm_B3_branch_out_c0_exe4303;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe5304;
    wire [31:0] kernel_3mm_B3_branch_out_c0_exe6305;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe8307;
    wire [0:0] kernel_3mm_B3_branch_out_c0_exe9308;
    wire [0:0] kernel_3mm_B3_branch_out_stall_out;
    wire [0:0] kernel_3mm_B3_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B3_merge_out_almost_empty_out;
    wire [0:0] kernel_3mm_B3_merge_out_empty_out;
    wire [0:0] kernel_3mm_B3_merge_out_forked118;
    wire [0:0] kernel_3mm_B3_merge_out_forked60_pop24157;
    wire [31:0] kernel_3mm_B3_merge_out_i_060_pop23147;
    wire [0:0] kernel_3mm_B3_merge_out_memdep_phi2_pop18132;
    wire [0:0] kernel_3mm_B3_merge_out_memdep_phi2_pop1868_pop26167;
    wire [0:0] kernel_3mm_B3_merge_out_memdep_phi3_pop19139;
    wire [0:0] kernel_3mm_B3_merge_out_memdep_phi3_pop1972_pop27172;
    wire [0:0] kernel_3mm_B3_merge_out_memdep_phi5_pop20146;
    wire [0:0] kernel_3mm_B3_merge_out_memdep_phi5_pop2076_pop28177;
    wire [0:0] kernel_3mm_B3_merge_out_memdep_phi_pop17125;
    wire [0:0] kernel_3mm_B3_merge_out_memdep_phi_pop1764_pop25162;
    wire [0:0] kernel_3mm_B3_merge_out_notcmp51152;
    wire [0:0] kernel_3mm_B3_merge_out_stall_out_0;
    wire [0:0] kernel_3mm_B3_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // kernel_3mm_B3_merge(BLACKBOX,23)
    kernel_3mm_B3_merge thekernel_3mm_B3_merge (
        .in_forked118_0(in_forked118_0),
        .in_forked60_pop24157_0(in_forked60_pop24157_0),
        .in_i_060_pop23147_0(in_i_060_pop23147_0),
        .in_memdep_phi2_pop18132_0(in_memdep_phi2_pop18132_0),
        .in_memdep_phi2_pop1868_pop26167_0(in_memdep_phi2_pop1868_pop26167_0),
        .in_memdep_phi3_pop19139_0(in_memdep_phi3_pop19139_0),
        .in_memdep_phi3_pop1972_pop27172_0(in_memdep_phi3_pop1972_pop27172_0),
        .in_memdep_phi5_pop20146_0(in_memdep_phi5_pop20146_0),
        .in_memdep_phi5_pop2076_pop28177_0(in_memdep_phi5_pop2076_pop28177_0),
        .in_memdep_phi_pop17125_0(in_memdep_phi_pop17125_0),
        .in_memdep_phi_pop1764_pop25162_0(in_memdep_phi_pop1764_pop25162_0),
        .in_notcmp51152_0(in_notcmp51152_0),
        .in_stall_in(bb_kernel_3mm_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(kernel_3mm_B3_merge_out_almost_empty_out),
        .out_empty_out(kernel_3mm_B3_merge_out_empty_out),
        .out_forked118(kernel_3mm_B3_merge_out_forked118),
        .out_forked60_pop24157(kernel_3mm_B3_merge_out_forked60_pop24157),
        .out_i_060_pop23147(kernel_3mm_B3_merge_out_i_060_pop23147),
        .out_memdep_phi2_pop18132(kernel_3mm_B3_merge_out_memdep_phi2_pop18132),
        .out_memdep_phi2_pop1868_pop26167(kernel_3mm_B3_merge_out_memdep_phi2_pop1868_pop26167),
        .out_memdep_phi3_pop19139(kernel_3mm_B3_merge_out_memdep_phi3_pop19139),
        .out_memdep_phi3_pop1972_pop27172(kernel_3mm_B3_merge_out_memdep_phi3_pop1972_pop27172),
        .out_memdep_phi5_pop20146(kernel_3mm_B3_merge_out_memdep_phi5_pop20146),
        .out_memdep_phi5_pop2076_pop28177(kernel_3mm_B3_merge_out_memdep_phi5_pop2076_pop28177),
        .out_memdep_phi_pop17125(kernel_3mm_B3_merge_out_memdep_phi_pop17125),
        .out_memdep_phi_pop1764_pop25162(kernel_3mm_B3_merge_out_memdep_phi_pop1764_pop25162),
        .out_notcmp51152(kernel_3mm_B3_merge_out_notcmp51152),
        .out_stall_out_0(kernel_3mm_B3_merge_out_stall_out_0),
        .out_valid_out(kernel_3mm_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B3_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B3_stall_region thebb_kernel_3mm_B3_stall_region (
        .in_almost_empty_in(kernel_3mm_B3_merge_out_almost_empty_out),
        .in_empty_in(kernel_3mm_B3_merge_out_empty_out),
        .in_flush(in_flush),
        .in_forked118(kernel_3mm_B3_merge_out_forked118),
        .in_forked60_pop24157(kernel_3mm_B3_merge_out_forked60_pop24157),
        .in_i_060_pop23147(kernel_3mm_B3_merge_out_i_060_pop23147),
        .in_memdep_phi2_pop18132(kernel_3mm_B3_merge_out_memdep_phi2_pop18132),
        .in_memdep_phi2_pop1868_pop26167(kernel_3mm_B3_merge_out_memdep_phi2_pop1868_pop26167),
        .in_memdep_phi3_pop19139(kernel_3mm_B3_merge_out_memdep_phi3_pop19139),
        .in_memdep_phi3_pop1972_pop27172(kernel_3mm_B3_merge_out_memdep_phi3_pop1972_pop27172),
        .in_memdep_phi5_pop20146(kernel_3mm_B3_merge_out_memdep_phi5_pop20146),
        .in_memdep_phi5_pop2076_pop28177(kernel_3mm_B3_merge_out_memdep_phi5_pop2076_pop28177),
        .in_memdep_phi_pop17125(kernel_3mm_B3_merge_out_memdep_phi_pop17125),
        .in_memdep_phi_pop1764_pop25162(kernel_3mm_B3_merge_out_memdep_phi_pop1764_pop25162),
        .in_notcmp51152(kernel_3mm_B3_merge_out_notcmp51152),
        .in_stall_in(kernel_3mm_B3_branch_out_stall_out),
        .in_unnamed_kernel_3mm1_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm1_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm1_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm1_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm1_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm1_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm1_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm1_kernel_3mm_avm_writeack),
        .in_valid_in(kernel_3mm_B3_merge_out_valid_out),
        .out_almost_empty_out(bb_kernel_3mm_B3_stall_region_out_almost_empty_out),
        .out_c0_exe10309(bb_kernel_3mm_B3_stall_region_out_c0_exe10309),
        .out_c0_exe11310(bb_kernel_3mm_B3_stall_region_out_c0_exe11310),
        .out_c0_exe12311(bb_kernel_3mm_B3_stall_region_out_c0_exe12311),
        .out_c0_exe1300(bb_kernel_3mm_B3_stall_region_out_c0_exe1300),
        .out_c0_exe13312(bb_kernel_3mm_B3_stall_region_out_c0_exe13312),
        .out_c0_exe14(bb_kernel_3mm_B3_stall_region_out_c0_exe14),
        .out_c0_exe15(bb_kernel_3mm_B3_stall_region_out_c0_exe15),
        .out_c0_exe16(bb_kernel_3mm_B3_stall_region_out_c0_exe16),
        .out_c0_exe17(bb_kernel_3mm_B3_stall_region_out_c0_exe17),
        .out_c0_exe18(bb_kernel_3mm_B3_stall_region_out_c0_exe18),
        .out_c0_exe19(bb_kernel_3mm_B3_stall_region_out_c0_exe19),
        .out_c0_exe20(bb_kernel_3mm_B3_stall_region_out_c0_exe20),
        .out_c0_exe21(bb_kernel_3mm_B3_stall_region_out_c0_exe21),
        .out_c0_exe22(bb_kernel_3mm_B3_stall_region_out_c0_exe22),
        .out_c0_exe23(bb_kernel_3mm_B3_stall_region_out_c0_exe23),
        .out_c0_exe2301(bb_kernel_3mm_B3_stall_region_out_c0_exe2301),
        .out_c0_exe24(bb_kernel_3mm_B3_stall_region_out_c0_exe24),
        .out_c0_exe25(bb_kernel_3mm_B3_stall_region_out_c0_exe25),
        .out_c0_exe3302(bb_kernel_3mm_B3_stall_region_out_c0_exe3302),
        .out_c0_exe4303(bb_kernel_3mm_B3_stall_region_out_c0_exe4303),
        .out_c0_exe5304(bb_kernel_3mm_B3_stall_region_out_c0_exe5304),
        .out_c0_exe6305(bb_kernel_3mm_B3_stall_region_out_c0_exe6305),
        .out_c0_exe8307(bb_kernel_3mm_B3_stall_region_out_c0_exe8307),
        .out_c0_exe9308(bb_kernel_3mm_B3_stall_region_out_c0_exe9308),
        .out_empty_out(bb_kernel_3mm_B3_stall_region_out_empty_out),
        .out_stall_out(bb_kernel_3mm_B3_stall_region_out_stall_out),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_address(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm1_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_enable(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm1_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_read(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm1_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_write(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm1_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata),
        .out_valid_out(bb_kernel_3mm_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B3_branch(BLACKBOX,22)
    kernel_3mm_B3_branch thekernel_3mm_B3_branch (
        .in_almost_empty_in(bb_kernel_3mm_B3_stall_region_out_almost_empty_out),
        .in_c0_exe10309(bb_kernel_3mm_B3_stall_region_out_c0_exe10309),
        .in_c0_exe11310(bb_kernel_3mm_B3_stall_region_out_c0_exe11310),
        .in_c0_exe12311(bb_kernel_3mm_B3_stall_region_out_c0_exe12311),
        .in_c0_exe1300(bb_kernel_3mm_B3_stall_region_out_c0_exe1300),
        .in_c0_exe13312(bb_kernel_3mm_B3_stall_region_out_c0_exe13312),
        .in_c0_exe14(bb_kernel_3mm_B3_stall_region_out_c0_exe14),
        .in_c0_exe15(bb_kernel_3mm_B3_stall_region_out_c0_exe15),
        .in_c0_exe16(bb_kernel_3mm_B3_stall_region_out_c0_exe16),
        .in_c0_exe17(bb_kernel_3mm_B3_stall_region_out_c0_exe17),
        .in_c0_exe18(bb_kernel_3mm_B3_stall_region_out_c0_exe18),
        .in_c0_exe19(bb_kernel_3mm_B3_stall_region_out_c0_exe19),
        .in_c0_exe20(bb_kernel_3mm_B3_stall_region_out_c0_exe20),
        .in_c0_exe21(bb_kernel_3mm_B3_stall_region_out_c0_exe21),
        .in_c0_exe22(bb_kernel_3mm_B3_stall_region_out_c0_exe22),
        .in_c0_exe23(bb_kernel_3mm_B3_stall_region_out_c0_exe23),
        .in_c0_exe2301(bb_kernel_3mm_B3_stall_region_out_c0_exe2301),
        .in_c0_exe24(bb_kernel_3mm_B3_stall_region_out_c0_exe24),
        .in_c0_exe25(bb_kernel_3mm_B3_stall_region_out_c0_exe25),
        .in_c0_exe3302(bb_kernel_3mm_B3_stall_region_out_c0_exe3302),
        .in_c0_exe4303(bb_kernel_3mm_B3_stall_region_out_c0_exe4303),
        .in_c0_exe5304(bb_kernel_3mm_B3_stall_region_out_c0_exe5304),
        .in_c0_exe6305(bb_kernel_3mm_B3_stall_region_out_c0_exe6305),
        .in_c0_exe8307(bb_kernel_3mm_B3_stall_region_out_c0_exe8307),
        .in_c0_exe9308(bb_kernel_3mm_B3_stall_region_out_c0_exe9308),
        .in_empty_in(bb_kernel_3mm_B3_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_3mm_B3_stall_region_out_valid_out),
        .out_c0_exe10309(kernel_3mm_B3_branch_out_c0_exe10309),
        .out_c0_exe11310(kernel_3mm_B3_branch_out_c0_exe11310),
        .out_c0_exe12311(kernel_3mm_B3_branch_out_c0_exe12311),
        .out_c0_exe1300(kernel_3mm_B3_branch_out_c0_exe1300),
        .out_c0_exe13312(kernel_3mm_B3_branch_out_c0_exe13312),
        .out_c0_exe14(kernel_3mm_B3_branch_out_c0_exe14),
        .out_c0_exe15(kernel_3mm_B3_branch_out_c0_exe15),
        .out_c0_exe16(kernel_3mm_B3_branch_out_c0_exe16),
        .out_c0_exe17(kernel_3mm_B3_branch_out_c0_exe17),
        .out_c0_exe18(kernel_3mm_B3_branch_out_c0_exe18),
        .out_c0_exe19(kernel_3mm_B3_branch_out_c0_exe19),
        .out_c0_exe20(kernel_3mm_B3_branch_out_c0_exe20),
        .out_c0_exe21(kernel_3mm_B3_branch_out_c0_exe21),
        .out_c0_exe22(kernel_3mm_B3_branch_out_c0_exe22),
        .out_c0_exe23(kernel_3mm_B3_branch_out_c0_exe23),
        .out_c0_exe2301(kernel_3mm_B3_branch_out_c0_exe2301),
        .out_c0_exe24(kernel_3mm_B3_branch_out_c0_exe24),
        .out_c0_exe25(kernel_3mm_B3_branch_out_c0_exe25),
        .out_c0_exe3302(kernel_3mm_B3_branch_out_c0_exe3302),
        .out_c0_exe4303(kernel_3mm_B3_branch_out_c0_exe4303),
        .out_c0_exe5304(kernel_3mm_B3_branch_out_c0_exe5304),
        .out_c0_exe6305(kernel_3mm_B3_branch_out_c0_exe6305),
        .out_c0_exe8307(kernel_3mm_B3_branch_out_c0_exe8307),
        .out_c0_exe9308(kernel_3mm_B3_branch_out_c0_exe9308),
        .out_stall_out(kernel_3mm_B3_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10309(GPOUT,24)
    assign out_c0_exe10309 = kernel_3mm_B3_branch_out_c0_exe10309;

    // out_c0_exe11310(GPOUT,25)
    assign out_c0_exe11310 = kernel_3mm_B3_branch_out_c0_exe11310;

    // out_c0_exe12311(GPOUT,26)
    assign out_c0_exe12311 = kernel_3mm_B3_branch_out_c0_exe12311;

    // out_c0_exe1300(GPOUT,27)
    assign out_c0_exe1300 = kernel_3mm_B3_branch_out_c0_exe1300;

    // out_c0_exe13312(GPOUT,28)
    assign out_c0_exe13312 = kernel_3mm_B3_branch_out_c0_exe13312;

    // out_c0_exe14(GPOUT,29)
    assign out_c0_exe14 = kernel_3mm_B3_branch_out_c0_exe14;

    // out_c0_exe15(GPOUT,30)
    assign out_c0_exe15 = kernel_3mm_B3_branch_out_c0_exe15;

    // out_c0_exe16(GPOUT,31)
    assign out_c0_exe16 = kernel_3mm_B3_branch_out_c0_exe16;

    // out_c0_exe17(GPOUT,32)
    assign out_c0_exe17 = kernel_3mm_B3_branch_out_c0_exe17;

    // out_c0_exe18(GPOUT,33)
    assign out_c0_exe18 = kernel_3mm_B3_branch_out_c0_exe18;

    // out_c0_exe19(GPOUT,34)
    assign out_c0_exe19 = kernel_3mm_B3_branch_out_c0_exe19;

    // out_c0_exe20(GPOUT,35)
    assign out_c0_exe20 = kernel_3mm_B3_branch_out_c0_exe20;

    // out_c0_exe21(GPOUT,36)
    assign out_c0_exe21 = kernel_3mm_B3_branch_out_c0_exe21;

    // out_c0_exe22(GPOUT,37)
    assign out_c0_exe22 = kernel_3mm_B3_branch_out_c0_exe22;

    // out_c0_exe23(GPOUT,38)
    assign out_c0_exe23 = kernel_3mm_B3_branch_out_c0_exe23;

    // out_c0_exe2301(GPOUT,39)
    assign out_c0_exe2301 = kernel_3mm_B3_branch_out_c0_exe2301;

    // out_c0_exe24(GPOUT,40)
    assign out_c0_exe24 = kernel_3mm_B3_branch_out_c0_exe24;

    // out_c0_exe25(GPOUT,41)
    assign out_c0_exe25 = kernel_3mm_B3_branch_out_c0_exe25;

    // out_c0_exe3302(GPOUT,42)
    assign out_c0_exe3302 = kernel_3mm_B3_branch_out_c0_exe3302;

    // out_c0_exe4303(GPOUT,43)
    assign out_c0_exe4303 = kernel_3mm_B3_branch_out_c0_exe4303;

    // out_c0_exe5304(GPOUT,44)
    assign out_c0_exe5304 = kernel_3mm_B3_branch_out_c0_exe5304;

    // out_c0_exe6305(GPOUT,45)
    assign out_c0_exe6305 = kernel_3mm_B3_branch_out_c0_exe6305;

    // out_c0_exe8307(GPOUT,46)
    assign out_c0_exe8307 = kernel_3mm_B3_branch_out_c0_exe8307;

    // out_c0_exe9308(GPOUT,47)
    assign out_c0_exe9308 = kernel_3mm_B3_branch_out_c0_exe9308;

    // out_stall_out_0(GPOUT,48)
    assign out_stall_out_0 = kernel_3mm_B3_merge_out_stall_out_0;

    // out_unnamed_kernel_3mm1_kernel_3mm_avm_address(GPOUT,49)
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_address = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm1_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount(GPOUT,50)
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable(GPOUT,51)
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm1_kernel_3mm_avm_enable(GPOUT,52)
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_enable = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm1_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm1_kernel_3mm_avm_read(GPOUT,53)
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_read = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm1_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm1_kernel_3mm_avm_write(GPOUT,54)
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_write = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm1_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata(GPOUT,55)
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_stall_region_out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata;

    // out_valid_in_0(GPOUT,56)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,57)
    assign out_valid_out_0 = kernel_3mm_B3_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,58)
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
