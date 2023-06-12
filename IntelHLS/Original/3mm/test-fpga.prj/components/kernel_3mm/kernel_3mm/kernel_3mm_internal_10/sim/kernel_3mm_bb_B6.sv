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

// SystemVerilog created from bb_kernel_3mm_B6
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B6 (
    input wire [63:0] in_arrayidx444216_0,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked115_0,
    input wire [0:0] in_forked60_pop24159_0,
    input wire [0:0] in_forked62_pop49198_0,
    input wire [31:0] in_i_060_pop23149_0,
    input wire [31:0] in_i_060_pop2386_pop54208_0,
    input wire [63:0] in_idxprom1199_pop57195_0,
    input wire [63:0] in_idxprom97_pop56193_0,
    input wire [0:0] in_memdep_215_0,
    input wire [0:0] in_memdep_phi2_pop18129_0,
    input wire [0:0] in_memdep_phi2_pop1868_pop26169_0,
    input wire [0:0] in_memdep_phi2_pop1870_pop51202_0,
    input wire [0:0] in_memdep_phi3_pop19136_0,
    input wire [0:0] in_memdep_phi3_pop1972_pop27174_0,
    input wire [0:0] in_memdep_phi3_pop1974_pop52204_0,
    input wire [0:0] in_memdep_phi5_pop20143_0,
    input wire [0:0] in_memdep_phi5_pop2076_pop28179_0,
    input wire [0:0] in_memdep_phi5_pop2078_pop53206_0,
    input wire [0:0] in_memdep_phi_pop17122_0,
    input wire [0:0] in_memdep_phi_pop1764_pop25164_0,
    input wire [0:0] in_memdep_phi_pop1766_pop50200_0,
    input wire [0:0] in_notcmp46102_pop59213_0,
    input wire [0:0] in_notcmp51154_0,
    input wire [0:0] in_notcmp5189_pop55210_0,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_kernel_3mm7_0,
    input wire [31:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe1476,
    output wire [0:0] out_c0_exe4479,
    output wire [0:0] out_c0_exe5480,
    output wire [0:0] out_c0_exe6481,
    output wire [0:0] out_c0_exe7482,
    output wire [63:0] out_c0_exe9484,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_3mm_B6_stall_region_out_almost_empty_out;
    wire [31:0] bb_kernel_3mm_B6_stall_region_out_c0_exe1476;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_c0_exe3478;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_c0_exe4479;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_c0_exe5480;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_c0_exe6481;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_c0_exe7482;
    wire [63:0] bb_kernel_3mm_B6_stall_region_out_c0_exe9484;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_empty_out;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_stall_out;
    wire [31:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B6_stall_region_out_valid_out;
    wire [31:0] kernel_3mm_B6_branch_out_c0_exe1476;
    wire [0:0] kernel_3mm_B6_branch_out_c0_exe4479;
    wire [0:0] kernel_3mm_B6_branch_out_c0_exe5480;
    wire [0:0] kernel_3mm_B6_branch_out_c0_exe6481;
    wire [0:0] kernel_3mm_B6_branch_out_c0_exe7482;
    wire [63:0] kernel_3mm_B6_branch_out_c0_exe9484;
    wire [0:0] kernel_3mm_B6_branch_out_stall_out;
    wire [0:0] kernel_3mm_B6_branch_out_valid_out_0;
    wire [0:0] kernel_3mm_B6_merge_out_almost_empty_out;
    wire [63:0] kernel_3mm_B6_merge_out_arrayidx444216;
    wire [0:0] kernel_3mm_B6_merge_out_empty_out;
    wire [0:0] kernel_3mm_B6_merge_out_forked115;
    wire [0:0] kernel_3mm_B6_merge_out_forked60_pop24159;
    wire [0:0] kernel_3mm_B6_merge_out_forked62_pop49198;
    wire [31:0] kernel_3mm_B6_merge_out_i_060_pop23149;
    wire [31:0] kernel_3mm_B6_merge_out_i_060_pop2386_pop54208;
    wire [63:0] kernel_3mm_B6_merge_out_idxprom1199_pop57195;
    wire [63:0] kernel_3mm_B6_merge_out_idxprom97_pop56193;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_215;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi2_pop18129;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi2_pop1868_pop26169;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi2_pop1870_pop51202;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi3_pop19136;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi3_pop1972_pop27174;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi3_pop1974_pop52204;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi5_pop20143;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi5_pop2076_pop28179;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi5_pop2078_pop53206;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi_pop17122;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi_pop1764_pop25164;
    wire [0:0] kernel_3mm_B6_merge_out_memdep_phi_pop1766_pop50200;
    wire [0:0] kernel_3mm_B6_merge_out_notcmp46102_pop59213;
    wire [0:0] kernel_3mm_B6_merge_out_notcmp51154;
    wire [0:0] kernel_3mm_B6_merge_out_notcmp5189_pop55210;
    wire [0:0] kernel_3mm_B6_merge_out_stall_out_0;
    wire [31:0] kernel_3mm_B6_merge_out_unnamed_kernel_3mm7;
    wire [0:0] kernel_3mm_B6_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // kernel_3mm_B6_merge(BLACKBOX,40)
    kernel_3mm_B6_merge thekernel_3mm_B6_merge (
        .in_arrayidx444216_0(in_arrayidx444216_0),
        .in_forked115_0(in_forked115_0),
        .in_forked60_pop24159_0(in_forked60_pop24159_0),
        .in_forked62_pop49198_0(in_forked62_pop49198_0),
        .in_i_060_pop23149_0(in_i_060_pop23149_0),
        .in_i_060_pop2386_pop54208_0(in_i_060_pop2386_pop54208_0),
        .in_idxprom1199_pop57195_0(in_idxprom1199_pop57195_0),
        .in_idxprom97_pop56193_0(in_idxprom97_pop56193_0),
        .in_memdep_215_0(in_memdep_215_0),
        .in_memdep_phi2_pop18129_0(in_memdep_phi2_pop18129_0),
        .in_memdep_phi2_pop1868_pop26169_0(in_memdep_phi2_pop1868_pop26169_0),
        .in_memdep_phi2_pop1870_pop51202_0(in_memdep_phi2_pop1870_pop51202_0),
        .in_memdep_phi3_pop19136_0(in_memdep_phi3_pop19136_0),
        .in_memdep_phi3_pop1972_pop27174_0(in_memdep_phi3_pop1972_pop27174_0),
        .in_memdep_phi3_pop1974_pop52204_0(in_memdep_phi3_pop1974_pop52204_0),
        .in_memdep_phi5_pop20143_0(in_memdep_phi5_pop20143_0),
        .in_memdep_phi5_pop2076_pop28179_0(in_memdep_phi5_pop2076_pop28179_0),
        .in_memdep_phi5_pop2078_pop53206_0(in_memdep_phi5_pop2078_pop53206_0),
        .in_memdep_phi_pop17122_0(in_memdep_phi_pop17122_0),
        .in_memdep_phi_pop1764_pop25164_0(in_memdep_phi_pop1764_pop25164_0),
        .in_memdep_phi_pop1766_pop50200_0(in_memdep_phi_pop1766_pop50200_0),
        .in_notcmp46102_pop59213_0(in_notcmp46102_pop59213_0),
        .in_notcmp51154_0(in_notcmp51154_0),
        .in_notcmp5189_pop55210_0(in_notcmp5189_pop55210_0),
        .in_stall_in(bb_kernel_3mm_B6_stall_region_out_stall_out),
        .in_unnamed_kernel_3mm7_0(in_unnamed_kernel_3mm7_0),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(kernel_3mm_B6_merge_out_almost_empty_out),
        .out_arrayidx444216(kernel_3mm_B6_merge_out_arrayidx444216),
        .out_empty_out(kernel_3mm_B6_merge_out_empty_out),
        .out_forked115(kernel_3mm_B6_merge_out_forked115),
        .out_forked60_pop24159(kernel_3mm_B6_merge_out_forked60_pop24159),
        .out_forked62_pop49198(kernel_3mm_B6_merge_out_forked62_pop49198),
        .out_i_060_pop23149(kernel_3mm_B6_merge_out_i_060_pop23149),
        .out_i_060_pop2386_pop54208(kernel_3mm_B6_merge_out_i_060_pop2386_pop54208),
        .out_idxprom1199_pop57195(kernel_3mm_B6_merge_out_idxprom1199_pop57195),
        .out_idxprom97_pop56193(kernel_3mm_B6_merge_out_idxprom97_pop56193),
        .out_memdep_215(kernel_3mm_B6_merge_out_memdep_215),
        .out_memdep_phi2_pop18129(kernel_3mm_B6_merge_out_memdep_phi2_pop18129),
        .out_memdep_phi2_pop1868_pop26169(kernel_3mm_B6_merge_out_memdep_phi2_pop1868_pop26169),
        .out_memdep_phi2_pop1870_pop51202(kernel_3mm_B6_merge_out_memdep_phi2_pop1870_pop51202),
        .out_memdep_phi3_pop19136(kernel_3mm_B6_merge_out_memdep_phi3_pop19136),
        .out_memdep_phi3_pop1972_pop27174(kernel_3mm_B6_merge_out_memdep_phi3_pop1972_pop27174),
        .out_memdep_phi3_pop1974_pop52204(kernel_3mm_B6_merge_out_memdep_phi3_pop1974_pop52204),
        .out_memdep_phi5_pop20143(kernel_3mm_B6_merge_out_memdep_phi5_pop20143),
        .out_memdep_phi5_pop2076_pop28179(kernel_3mm_B6_merge_out_memdep_phi5_pop2076_pop28179),
        .out_memdep_phi5_pop2078_pop53206(kernel_3mm_B6_merge_out_memdep_phi5_pop2078_pop53206),
        .out_memdep_phi_pop17122(kernel_3mm_B6_merge_out_memdep_phi_pop17122),
        .out_memdep_phi_pop1764_pop25164(kernel_3mm_B6_merge_out_memdep_phi_pop1764_pop25164),
        .out_memdep_phi_pop1766_pop50200(kernel_3mm_B6_merge_out_memdep_phi_pop1766_pop50200),
        .out_notcmp46102_pop59213(kernel_3mm_B6_merge_out_notcmp46102_pop59213),
        .out_notcmp51154(kernel_3mm_B6_merge_out_notcmp51154),
        .out_notcmp5189_pop55210(kernel_3mm_B6_merge_out_notcmp5189_pop55210),
        .out_stall_out_0(kernel_3mm_B6_merge_out_stall_out_0),
        .out_unnamed_kernel_3mm7(kernel_3mm_B6_merge_out_unnamed_kernel_3mm7),
        .out_valid_out(kernel_3mm_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B6_stall_region(BLACKBOX,2)
    kernel_3mm_bb_B6_stall_region thebb_kernel_3mm_B6_stall_region (
        .in_almost_empty_in(kernel_3mm_B6_merge_out_almost_empty_out),
        .in_arrayidx444216(kernel_3mm_B6_merge_out_arrayidx444216),
        .in_empty_in(kernel_3mm_B6_merge_out_empty_out),
        .in_flush(in_flush),
        .in_forked115(kernel_3mm_B6_merge_out_forked115),
        .in_forked60_pop24159(kernel_3mm_B6_merge_out_forked60_pop24159),
        .in_forked62_pop49198(kernel_3mm_B6_merge_out_forked62_pop49198),
        .in_i_060_pop23149(kernel_3mm_B6_merge_out_i_060_pop23149),
        .in_i_060_pop2386_pop54208(kernel_3mm_B6_merge_out_i_060_pop2386_pop54208),
        .in_idxprom1199_pop57195(kernel_3mm_B6_merge_out_idxprom1199_pop57195),
        .in_idxprom97_pop56193(kernel_3mm_B6_merge_out_idxprom97_pop56193),
        .in_memdep_215(kernel_3mm_B6_merge_out_memdep_215),
        .in_memdep_phi2_pop18129(kernel_3mm_B6_merge_out_memdep_phi2_pop18129),
        .in_memdep_phi2_pop1868_pop26169(kernel_3mm_B6_merge_out_memdep_phi2_pop1868_pop26169),
        .in_memdep_phi2_pop1870_pop51202(kernel_3mm_B6_merge_out_memdep_phi2_pop1870_pop51202),
        .in_memdep_phi3_pop19136(kernel_3mm_B6_merge_out_memdep_phi3_pop19136),
        .in_memdep_phi3_pop1972_pop27174(kernel_3mm_B6_merge_out_memdep_phi3_pop1972_pop27174),
        .in_memdep_phi3_pop1974_pop52204(kernel_3mm_B6_merge_out_memdep_phi3_pop1974_pop52204),
        .in_memdep_phi5_pop20143(kernel_3mm_B6_merge_out_memdep_phi5_pop20143),
        .in_memdep_phi5_pop2076_pop28179(kernel_3mm_B6_merge_out_memdep_phi5_pop2076_pop28179),
        .in_memdep_phi5_pop2078_pop53206(kernel_3mm_B6_merge_out_memdep_phi5_pop2078_pop53206),
        .in_memdep_phi_pop17122(kernel_3mm_B6_merge_out_memdep_phi_pop17122),
        .in_memdep_phi_pop1764_pop25164(kernel_3mm_B6_merge_out_memdep_phi_pop1764_pop25164),
        .in_memdep_phi_pop1766_pop50200(kernel_3mm_B6_merge_out_memdep_phi_pop1766_pop50200),
        .in_notcmp46102_pop59213(kernel_3mm_B6_merge_out_notcmp46102_pop59213),
        .in_notcmp51154(kernel_3mm_B6_merge_out_notcmp51154),
        .in_notcmp5189_pop55210(kernel_3mm_B6_merge_out_notcmp5189_pop55210),
        .in_stall_in(kernel_3mm_B6_branch_out_stall_out),
        .in_unnamed_kernel_3mm7(kernel_3mm_B6_merge_out_unnamed_kernel_3mm7),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack),
        .in_valid_in(kernel_3mm_B6_merge_out_valid_out),
        .out_almost_empty_out(bb_kernel_3mm_B6_stall_region_out_almost_empty_out),
        .out_c0_exe1476(bb_kernel_3mm_B6_stall_region_out_c0_exe1476),
        .out_c0_exe3478(bb_kernel_3mm_B6_stall_region_out_c0_exe3478),
        .out_c0_exe4479(bb_kernel_3mm_B6_stall_region_out_c0_exe4479),
        .out_c0_exe5480(bb_kernel_3mm_B6_stall_region_out_c0_exe5480),
        .out_c0_exe6481(bb_kernel_3mm_B6_stall_region_out_c0_exe6481),
        .out_c0_exe7482(bb_kernel_3mm_B6_stall_region_out_c0_exe7482),
        .out_c0_exe9484(bb_kernel_3mm_B6_stall_region_out_c0_exe9484),
        .out_empty_out(bb_kernel_3mm_B6_stall_region_out_empty_out),
        .out_profile_loop_o_valid(bb_kernel_3mm_B6_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_kernel_3mm_B6_stall_region_out_stall_out),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_address(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_enable(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_read(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_write(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_address(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_enable(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_read(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_write(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata(bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata),
        .out_valid_out(bb_kernel_3mm_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B6_branch(BLACKBOX,39)
    kernel_3mm_B6_branch thekernel_3mm_B6_branch (
        .in_almost_empty_in(bb_kernel_3mm_B6_stall_region_out_almost_empty_out),
        .in_c0_exe1476(bb_kernel_3mm_B6_stall_region_out_c0_exe1476),
        .in_c0_exe3478(bb_kernel_3mm_B6_stall_region_out_c0_exe3478),
        .in_c0_exe4479(bb_kernel_3mm_B6_stall_region_out_c0_exe4479),
        .in_c0_exe5480(bb_kernel_3mm_B6_stall_region_out_c0_exe5480),
        .in_c0_exe6481(bb_kernel_3mm_B6_stall_region_out_c0_exe6481),
        .in_c0_exe7482(bb_kernel_3mm_B6_stall_region_out_c0_exe7482),
        .in_c0_exe9484(bb_kernel_3mm_B6_stall_region_out_c0_exe9484),
        .in_empty_in(bb_kernel_3mm_B6_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_3mm_B6_stall_region_out_valid_out),
        .out_c0_exe1476(kernel_3mm_B6_branch_out_c0_exe1476),
        .out_c0_exe4479(kernel_3mm_B6_branch_out_c0_exe4479),
        .out_c0_exe5480(kernel_3mm_B6_branch_out_c0_exe5480),
        .out_c0_exe6481(kernel_3mm_B6_branch_out_c0_exe6481),
        .out_c0_exe7482(kernel_3mm_B6_branch_out_c0_exe7482),
        .out_c0_exe9484(kernel_3mm_B6_branch_out_c0_exe9484),
        .out_stall_out(kernel_3mm_B6_branch_out_stall_out),
        .out_valid_out_0(kernel_3mm_B6_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1476(GPOUT,41)
    assign out_c0_exe1476 = kernel_3mm_B6_branch_out_c0_exe1476;

    // out_c0_exe4479(GPOUT,42)
    assign out_c0_exe4479 = kernel_3mm_B6_branch_out_c0_exe4479;

    // out_c0_exe5480(GPOUT,43)
    assign out_c0_exe5480 = kernel_3mm_B6_branch_out_c0_exe5480;

    // out_c0_exe6481(GPOUT,44)
    assign out_c0_exe6481 = kernel_3mm_B6_branch_out_c0_exe6481;

    // out_c0_exe7482(GPOUT,45)
    assign out_c0_exe7482 = kernel_3mm_B6_branch_out_c0_exe7482;

    // out_c0_exe9484(GPOUT,46)
    assign out_c0_exe9484 = kernel_3mm_B6_branch_out_c0_exe9484;

    // out_profile_loop_o_valid(GPOUT,47)
    assign out_profile_loop_o_valid = bb_kernel_3mm_B6_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,48)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,49)
    assign out_stall_out_0 = kernel_3mm_B6_merge_out_stall_out_0;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_address(GPOUT,50)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_address = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount(GPOUT,51)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable(GPOUT,52)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_enable(GPOUT,53)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_enable = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_read(GPOUT,54)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_read = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_write(GPOUT,55)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_write = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata(GPOUT,56)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_address(GPOUT,57)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_address = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount(GPOUT,58)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable(GPOUT,59)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_enable(GPOUT,60)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_enable = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_read(GPOUT,61)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_read = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_write(GPOUT,62)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_write = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata(GPOUT,63)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata = bb_kernel_3mm_B6_stall_region_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata;

    // out_valid_in_0(GPOUT,64)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,65)
    assign out_valid_out_0 = kernel_3mm_B6_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,66)
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
