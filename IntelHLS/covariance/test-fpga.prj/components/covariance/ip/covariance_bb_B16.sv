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

// SystemVerilog created from bb_covariance_B16
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B16 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked43_0,
    input wire [0:0] in_forked43_1,
    input wire [0:0] in_forked59224_0,
    input wire [0:0] in_forked59224_1,
    input wire [32:0] in_fpga_indvars_iv20_pop34211_0,
    input wire [32:0] in_fpga_indvars_iv20_pop34211_1,
    input wire [31:0] in_i56_057_pop35158_pop71230_0,
    input wire [31:0] in_i56_057_pop35158_pop71230_1,
    input wire [31:0] in_i56_057_pop35217_0,
    input wire [31:0] in_i56_057_pop35217_1,
    input wire [31:0] in_j60_056_pop67226_0,
    input wire [31:0] in_j60_056_pop67226_1,
    input wire [31:0] in_lim_ext136_pop61203_0,
    input wire [31:0] in_lim_ext136_pop61203_1,
    input wire [31:0] in_lim_ext137_pop36220_0,
    input wire [31:0] in_lim_ext137_pop36220_1,
    input wire [31:0] in_lim_ext138_pop68227_0,
    input wire [31:0] in_lim_ext138_pop68227_1,
    input wire [0:0] in_notcmp58225_0,
    input wire [0:0] in_notcmp58225_1,
    input wire [0:0] in_notcmp63156_pop70229_0,
    input wire [0:0] in_notcmp63156_pop70229_1,
    input wire [0:0] in_notcmp63214_0,
    input wire [0:0] in_notcmp63214_1,
    input wire [31:0] in_reorder_limiter_enter142_pop37223_0,
    input wire [31:0] in_reorder_limiter_enter142_pop37223_1,
    input wire [31:0] in_reorder_limiter_enter143_pop69228_0,
    input wire [31:0] in_reorder_limiter_enter143_pop69228_1,
    input wire [31:0] in_reorder_limiter_enter182_0,
    input wire [31:0] in_reorder_limiter_enter182_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_covariance8_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance8_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance8_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance8_covariance_avm_writeack,
    input wire [31:0] in_unnamed_covariance9_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance9_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance9_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance9_covariance_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10459,
    output wire [63:0] out_c0_exe2451,
    output wire [63:0] out_c0_exe3452,
    output wire [31:0] out_c0_exe4453,
    output wire [31:0] out_c0_exe6455,
    output wire [31:0] out_c0_exe7456,
    output wire [0:0] out_c0_exe8457,
    output wire [0:0] out_c0_exe9458,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_covariance8_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance8_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance8_covariance_avm_writedata,
    output wire [31:0] out_unnamed_covariance9_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance9_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance9_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance9_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance9_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance9_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance9_covariance_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_covariance_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_covariance6_exiting_stall_out;
    wire [0:0] bb_covariance_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_covariance6_exiting_valid_out;
    wire [0:0] bb_covariance_B16_stall_region_out_c0_exe10459;
    wire [63:0] bb_covariance_B16_stall_region_out_c0_exe2451;
    wire [63:0] bb_covariance_B16_stall_region_out_c0_exe3452;
    wire [31:0] bb_covariance_B16_stall_region_out_c0_exe4453;
    wire [0:0] bb_covariance_B16_stall_region_out_c0_exe5454;
    wire [31:0] bb_covariance_B16_stall_region_out_c0_exe6455;
    wire [31:0] bb_covariance_B16_stall_region_out_c0_exe7456;
    wire [0:0] bb_covariance_B16_stall_region_out_c0_exe8457;
    wire [0:0] bb_covariance_B16_stall_region_out_c0_exe9458;
    wire [0:0] bb_covariance_B16_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B16_stall_region_out_stall_out;
    wire [31:0] bb_covariance_B16_stall_region_out_unnamed_covariance8_covariance_avm_address;
    wire [0:0] bb_covariance_B16_stall_region_out_unnamed_covariance8_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B16_stall_region_out_unnamed_covariance8_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B16_stall_region_out_unnamed_covariance8_covariance_avm_enable;
    wire [0:0] bb_covariance_B16_stall_region_out_unnamed_covariance8_covariance_avm_read;
    wire [0:0] bb_covariance_B16_stall_region_out_unnamed_covariance8_covariance_avm_write;
    wire [31:0] bb_covariance_B16_stall_region_out_unnamed_covariance8_covariance_avm_writedata;
    wire [31:0] bb_covariance_B16_stall_region_out_unnamed_covariance9_covariance_avm_address;
    wire [0:0] bb_covariance_B16_stall_region_out_unnamed_covariance9_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B16_stall_region_out_unnamed_covariance9_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B16_stall_region_out_unnamed_covariance9_covariance_avm_enable;
    wire [0:0] bb_covariance_B16_stall_region_out_unnamed_covariance9_covariance_avm_read;
    wire [0:0] bb_covariance_B16_stall_region_out_unnamed_covariance9_covariance_avm_write;
    wire [31:0] bb_covariance_B16_stall_region_out_unnamed_covariance9_covariance_avm_writedata;
    wire [0:0] bb_covariance_B16_stall_region_out_valid_out;
    wire [0:0] covariance_B16_branch_out_c0_exe10459;
    wire [63:0] covariance_B16_branch_out_c0_exe2451;
    wire [63:0] covariance_B16_branch_out_c0_exe3452;
    wire [31:0] covariance_B16_branch_out_c0_exe4453;
    wire [31:0] covariance_B16_branch_out_c0_exe6455;
    wire [31:0] covariance_B16_branch_out_c0_exe7456;
    wire [0:0] covariance_B16_branch_out_c0_exe8457;
    wire [0:0] covariance_B16_branch_out_c0_exe9458;
    wire [0:0] covariance_B16_branch_out_stall_out;
    wire [0:0] covariance_B16_branch_out_valid_out_0;
    wire [0:0] covariance_B16_branch_out_valid_out_1;
    wire [0:0] covariance_B16_merge_out_forked43;
    wire [0:0] covariance_B16_merge_out_forked59224;
    wire [32:0] covariance_B16_merge_out_fpga_indvars_iv20_pop34211;
    wire [31:0] covariance_B16_merge_out_i56_057_pop35158_pop71230;
    wire [31:0] covariance_B16_merge_out_i56_057_pop35217;
    wire [31:0] covariance_B16_merge_out_j60_056_pop67226;
    wire [31:0] covariance_B16_merge_out_lim_ext136_pop61203;
    wire [31:0] covariance_B16_merge_out_lim_ext137_pop36220;
    wire [31:0] covariance_B16_merge_out_lim_ext138_pop68227;
    wire [0:0] covariance_B16_merge_out_notcmp58225;
    wire [0:0] covariance_B16_merge_out_notcmp63156_pop70229;
    wire [0:0] covariance_B16_merge_out_notcmp63214;
    wire [31:0] covariance_B16_merge_out_reorder_limiter_enter142_pop37223;
    wire [31:0] covariance_B16_merge_out_reorder_limiter_enter143_pop69228;
    wire [31:0] covariance_B16_merge_out_reorder_limiter_enter182;
    wire [0:0] covariance_B16_merge_out_stall_out_0;
    wire [0:0] covariance_B16_merge_out_stall_out_1;
    wire [0:0] covariance_B16_merge_out_valid_out;


    // covariance_B16_merge(BLACKBOX,4)
    covariance_B16_merge thecovariance_B16_merge (
        .in_forked43_0(in_forked43_0),
        .in_forked43_1(in_forked43_1),
        .in_forked59224_0(in_forked59224_0),
        .in_forked59224_1(in_forked59224_1),
        .in_fpga_indvars_iv20_pop34211_0(in_fpga_indvars_iv20_pop34211_0),
        .in_fpga_indvars_iv20_pop34211_1(in_fpga_indvars_iv20_pop34211_1),
        .in_i56_057_pop35158_pop71230_0(in_i56_057_pop35158_pop71230_0),
        .in_i56_057_pop35158_pop71230_1(in_i56_057_pop35158_pop71230_1),
        .in_i56_057_pop35217_0(in_i56_057_pop35217_0),
        .in_i56_057_pop35217_1(in_i56_057_pop35217_1),
        .in_j60_056_pop67226_0(in_j60_056_pop67226_0),
        .in_j60_056_pop67226_1(in_j60_056_pop67226_1),
        .in_lim_ext136_pop61203_0(in_lim_ext136_pop61203_0),
        .in_lim_ext136_pop61203_1(in_lim_ext136_pop61203_1),
        .in_lim_ext137_pop36220_0(in_lim_ext137_pop36220_0),
        .in_lim_ext137_pop36220_1(in_lim_ext137_pop36220_1),
        .in_lim_ext138_pop68227_0(in_lim_ext138_pop68227_0),
        .in_lim_ext138_pop68227_1(in_lim_ext138_pop68227_1),
        .in_notcmp58225_0(in_notcmp58225_0),
        .in_notcmp58225_1(in_notcmp58225_1),
        .in_notcmp63156_pop70229_0(in_notcmp63156_pop70229_0),
        .in_notcmp63156_pop70229_1(in_notcmp63156_pop70229_1),
        .in_notcmp63214_0(in_notcmp63214_0),
        .in_notcmp63214_1(in_notcmp63214_1),
        .in_reorder_limiter_enter142_pop37223_0(in_reorder_limiter_enter142_pop37223_0),
        .in_reorder_limiter_enter142_pop37223_1(in_reorder_limiter_enter142_pop37223_1),
        .in_reorder_limiter_enter143_pop69228_0(in_reorder_limiter_enter143_pop69228_0),
        .in_reorder_limiter_enter143_pop69228_1(in_reorder_limiter_enter143_pop69228_1),
        .in_reorder_limiter_enter182_0(in_reorder_limiter_enter182_0),
        .in_reorder_limiter_enter182_1(in_reorder_limiter_enter182_1),
        .in_stall_in(bb_covariance_B16_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked43(covariance_B16_merge_out_forked43),
        .out_forked59224(covariance_B16_merge_out_forked59224),
        .out_fpga_indvars_iv20_pop34211(covariance_B16_merge_out_fpga_indvars_iv20_pop34211),
        .out_i56_057_pop35158_pop71230(covariance_B16_merge_out_i56_057_pop35158_pop71230),
        .out_i56_057_pop35217(covariance_B16_merge_out_i56_057_pop35217),
        .out_j60_056_pop67226(covariance_B16_merge_out_j60_056_pop67226),
        .out_lim_ext136_pop61203(covariance_B16_merge_out_lim_ext136_pop61203),
        .out_lim_ext137_pop36220(covariance_B16_merge_out_lim_ext137_pop36220),
        .out_lim_ext138_pop68227(covariance_B16_merge_out_lim_ext138_pop68227),
        .out_notcmp58225(covariance_B16_merge_out_notcmp58225),
        .out_notcmp63156_pop70229(covariance_B16_merge_out_notcmp63156_pop70229),
        .out_notcmp63214(covariance_B16_merge_out_notcmp63214),
        .out_reorder_limiter_enter142_pop37223(covariance_B16_merge_out_reorder_limiter_enter142_pop37223),
        .out_reorder_limiter_enter143_pop69228(covariance_B16_merge_out_reorder_limiter_enter143_pop69228),
        .out_reorder_limiter_enter182(covariance_B16_merge_out_reorder_limiter_enter182),
        .out_stall_out_0(covariance_B16_merge_out_stall_out_0),
        .out_stall_out_1(covariance_B16_merge_out_stall_out_1),
        .out_valid_out(covariance_B16_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B16_stall_region(BLACKBOX,2)
    covariance_bb_B16_stall_region thebb_covariance_B16_stall_region (
        .in_flush(in_flush),
        .in_forked43(covariance_B16_merge_out_forked43),
        .in_forked59224(covariance_B16_merge_out_forked59224),
        .in_fpga_indvars_iv20_pop34211(covariance_B16_merge_out_fpga_indvars_iv20_pop34211),
        .in_i56_057_pop35158_pop71230(covariance_B16_merge_out_i56_057_pop35158_pop71230),
        .in_i56_057_pop35217(covariance_B16_merge_out_i56_057_pop35217),
        .in_j60_056_pop67226(covariance_B16_merge_out_j60_056_pop67226),
        .in_lim_ext136_pop61203(covariance_B16_merge_out_lim_ext136_pop61203),
        .in_lim_ext137_pop36220(covariance_B16_merge_out_lim_ext137_pop36220),
        .in_lim_ext138_pop68227(covariance_B16_merge_out_lim_ext138_pop68227),
        .in_notcmp58225(covariance_B16_merge_out_notcmp58225),
        .in_notcmp63156_pop70229(covariance_B16_merge_out_notcmp63156_pop70229),
        .in_notcmp63214(covariance_B16_merge_out_notcmp63214),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_reorder_limiter_enter142_pop37223(covariance_B16_merge_out_reorder_limiter_enter142_pop37223),
        .in_reorder_limiter_enter143_pop69228(covariance_B16_merge_out_reorder_limiter_enter143_pop69228),
        .in_reorder_limiter_enter182(covariance_B16_merge_out_reorder_limiter_enter182),
        .in_stall_in(covariance_B16_branch_out_stall_out),
        .in_unnamed_covariance8_covariance_avm_readdata(in_unnamed_covariance8_covariance_avm_readdata),
        .in_unnamed_covariance8_covariance_avm_readdatavalid(in_unnamed_covariance8_covariance_avm_readdatavalid),
        .in_unnamed_covariance8_covariance_avm_waitrequest(in_unnamed_covariance8_covariance_avm_waitrequest),
        .in_unnamed_covariance8_covariance_avm_writeack(in_unnamed_covariance8_covariance_avm_writeack),
        .in_unnamed_covariance9_covariance_avm_readdata(in_unnamed_covariance9_covariance_avm_readdata),
        .in_unnamed_covariance9_covariance_avm_readdatavalid(in_unnamed_covariance9_covariance_avm_readdatavalid),
        .in_unnamed_covariance9_covariance_avm_waitrequest(in_unnamed_covariance9_covariance_avm_waitrequest),
        .in_unnamed_covariance9_covariance_avm_writeack(in_unnamed_covariance9_covariance_avm_writeack),
        .in_valid_in(covariance_B16_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_covariance6_exiting_stall_out(bb_covariance_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_covariance6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_covariance6_exiting_valid_out(bb_covariance_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_covariance6_exiting_valid_out),
        .out_c0_exe10459(bb_covariance_B16_stall_region_out_c0_exe10459),
        .out_c0_exe2451(bb_covariance_B16_stall_region_out_c0_exe2451),
        .out_c0_exe3452(bb_covariance_B16_stall_region_out_c0_exe3452),
        .out_c0_exe4453(bb_covariance_B16_stall_region_out_c0_exe4453),
        .out_c0_exe5454(bb_covariance_B16_stall_region_out_c0_exe5454),
        .out_c0_exe6455(bb_covariance_B16_stall_region_out_c0_exe6455),
        .out_c0_exe7456(bb_covariance_B16_stall_region_out_c0_exe7456),
        .out_c0_exe8457(bb_covariance_B16_stall_region_out_c0_exe8457),
        .out_c0_exe9458(bb_covariance_B16_stall_region_out_c0_exe9458),
        .out_pipeline_valid_out(bb_covariance_B16_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_covariance_B16_stall_region_out_stall_out),
        .out_unnamed_covariance8_covariance_avm_address(bb_covariance_B16_stall_region_out_unnamed_covariance8_covariance_avm_address),
        .out_unnamed_covariance8_covariance_avm_burstcount(bb_covariance_B16_stall_region_out_unnamed_covariance8_covariance_avm_burstcount),
        .out_unnamed_covariance8_covariance_avm_byteenable(bb_covariance_B16_stall_region_out_unnamed_covariance8_covariance_avm_byteenable),
        .out_unnamed_covariance8_covariance_avm_enable(bb_covariance_B16_stall_region_out_unnamed_covariance8_covariance_avm_enable),
        .out_unnamed_covariance8_covariance_avm_read(bb_covariance_B16_stall_region_out_unnamed_covariance8_covariance_avm_read),
        .out_unnamed_covariance8_covariance_avm_write(bb_covariance_B16_stall_region_out_unnamed_covariance8_covariance_avm_write),
        .out_unnamed_covariance8_covariance_avm_writedata(bb_covariance_B16_stall_region_out_unnamed_covariance8_covariance_avm_writedata),
        .out_unnamed_covariance9_covariance_avm_address(bb_covariance_B16_stall_region_out_unnamed_covariance9_covariance_avm_address),
        .out_unnamed_covariance9_covariance_avm_burstcount(bb_covariance_B16_stall_region_out_unnamed_covariance9_covariance_avm_burstcount),
        .out_unnamed_covariance9_covariance_avm_byteenable(bb_covariance_B16_stall_region_out_unnamed_covariance9_covariance_avm_byteenable),
        .out_unnamed_covariance9_covariance_avm_enable(bb_covariance_B16_stall_region_out_unnamed_covariance9_covariance_avm_enable),
        .out_unnamed_covariance9_covariance_avm_read(bb_covariance_B16_stall_region_out_unnamed_covariance9_covariance_avm_read),
        .out_unnamed_covariance9_covariance_avm_write(bb_covariance_B16_stall_region_out_unnamed_covariance9_covariance_avm_write),
        .out_unnamed_covariance9_covariance_avm_writedata(bb_covariance_B16_stall_region_out_unnamed_covariance9_covariance_avm_writedata),
        .out_valid_out(bb_covariance_B16_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B16_branch(BLACKBOX,3)
    covariance_B16_branch thecovariance_B16_branch (
        .in_c0_exe10459(bb_covariance_B16_stall_region_out_c0_exe10459),
        .in_c0_exe2451(bb_covariance_B16_stall_region_out_c0_exe2451),
        .in_c0_exe3452(bb_covariance_B16_stall_region_out_c0_exe3452),
        .in_c0_exe4453(bb_covariance_B16_stall_region_out_c0_exe4453),
        .in_c0_exe5454(bb_covariance_B16_stall_region_out_c0_exe5454),
        .in_c0_exe6455(bb_covariance_B16_stall_region_out_c0_exe6455),
        .in_c0_exe7456(bb_covariance_B16_stall_region_out_c0_exe7456),
        .in_c0_exe8457(bb_covariance_B16_stall_region_out_c0_exe8457),
        .in_c0_exe9458(bb_covariance_B16_stall_region_out_c0_exe9458),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_covariance_B16_stall_region_out_valid_out),
        .out_c0_exe10459(covariance_B16_branch_out_c0_exe10459),
        .out_c0_exe2451(covariance_B16_branch_out_c0_exe2451),
        .out_c0_exe3452(covariance_B16_branch_out_c0_exe3452),
        .out_c0_exe4453(covariance_B16_branch_out_c0_exe4453),
        .out_c0_exe6455(covariance_B16_branch_out_c0_exe6455),
        .out_c0_exe7456(covariance_B16_branch_out_c0_exe7456),
        .out_c0_exe8457(covariance_B16_branch_out_c0_exe8457),
        .out_c0_exe9458(covariance_B16_branch_out_c0_exe9458),
        .out_stall_out(covariance_B16_branch_out_stall_out),
        .out_valid_out_0(covariance_B16_branch_out_valid_out_0),
        .out_valid_out_1(covariance_B16_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10459(GPOUT,48)
    assign out_c0_exe10459 = covariance_B16_branch_out_c0_exe10459;

    // out_c0_exe2451(GPOUT,49)
    assign out_c0_exe2451 = covariance_B16_branch_out_c0_exe2451;

    // out_c0_exe3452(GPOUT,50)
    assign out_c0_exe3452 = covariance_B16_branch_out_c0_exe3452;

    // out_c0_exe4453(GPOUT,51)
    assign out_c0_exe4453 = covariance_B16_branch_out_c0_exe4453;

    // out_c0_exe6455(GPOUT,52)
    assign out_c0_exe6455 = covariance_B16_branch_out_c0_exe6455;

    // out_c0_exe7456(GPOUT,53)
    assign out_c0_exe7456 = covariance_B16_branch_out_c0_exe7456;

    // out_c0_exe8457(GPOUT,54)
    assign out_c0_exe8457 = covariance_B16_branch_out_c0_exe8457;

    // out_c0_exe9458(GPOUT,55)
    assign out_c0_exe9458 = covariance_B16_branch_out_c0_exe9458;

    // out_exiting_stall_out(GPOUT,56)
    assign out_exiting_stall_out = bb_covariance_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_covariance6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,57)
    assign out_exiting_valid_out = bb_covariance_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_covariance6_exiting_valid_out;

    // out_stall_in_0(GPOUT,58)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,59)
    assign out_stall_out_0 = covariance_B16_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,60)
    assign out_stall_out_1 = covariance_B16_merge_out_stall_out_1;

    // out_unnamed_covariance8_covariance_avm_address(GPOUT,61)
    assign out_unnamed_covariance8_covariance_avm_address = bb_covariance_B16_stall_region_out_unnamed_covariance8_covariance_avm_address;

    // out_unnamed_covariance8_covariance_avm_burstcount(GPOUT,62)
    assign out_unnamed_covariance8_covariance_avm_burstcount = bb_covariance_B16_stall_region_out_unnamed_covariance8_covariance_avm_burstcount;

    // out_unnamed_covariance8_covariance_avm_byteenable(GPOUT,63)
    assign out_unnamed_covariance8_covariance_avm_byteenable = bb_covariance_B16_stall_region_out_unnamed_covariance8_covariance_avm_byteenable;

    // out_unnamed_covariance8_covariance_avm_enable(GPOUT,64)
    assign out_unnamed_covariance8_covariance_avm_enable = bb_covariance_B16_stall_region_out_unnamed_covariance8_covariance_avm_enable;

    // out_unnamed_covariance8_covariance_avm_read(GPOUT,65)
    assign out_unnamed_covariance8_covariance_avm_read = bb_covariance_B16_stall_region_out_unnamed_covariance8_covariance_avm_read;

    // out_unnamed_covariance8_covariance_avm_write(GPOUT,66)
    assign out_unnamed_covariance8_covariance_avm_write = bb_covariance_B16_stall_region_out_unnamed_covariance8_covariance_avm_write;

    // out_unnamed_covariance8_covariance_avm_writedata(GPOUT,67)
    assign out_unnamed_covariance8_covariance_avm_writedata = bb_covariance_B16_stall_region_out_unnamed_covariance8_covariance_avm_writedata;

    // out_unnamed_covariance9_covariance_avm_address(GPOUT,68)
    assign out_unnamed_covariance9_covariance_avm_address = bb_covariance_B16_stall_region_out_unnamed_covariance9_covariance_avm_address;

    // out_unnamed_covariance9_covariance_avm_burstcount(GPOUT,69)
    assign out_unnamed_covariance9_covariance_avm_burstcount = bb_covariance_B16_stall_region_out_unnamed_covariance9_covariance_avm_burstcount;

    // out_unnamed_covariance9_covariance_avm_byteenable(GPOUT,70)
    assign out_unnamed_covariance9_covariance_avm_byteenable = bb_covariance_B16_stall_region_out_unnamed_covariance9_covariance_avm_byteenable;

    // out_unnamed_covariance9_covariance_avm_enable(GPOUT,71)
    assign out_unnamed_covariance9_covariance_avm_enable = bb_covariance_B16_stall_region_out_unnamed_covariance9_covariance_avm_enable;

    // out_unnamed_covariance9_covariance_avm_read(GPOUT,72)
    assign out_unnamed_covariance9_covariance_avm_read = bb_covariance_B16_stall_region_out_unnamed_covariance9_covariance_avm_read;

    // out_unnamed_covariance9_covariance_avm_write(GPOUT,73)
    assign out_unnamed_covariance9_covariance_avm_write = bb_covariance_B16_stall_region_out_unnamed_covariance9_covariance_avm_write;

    // out_unnamed_covariance9_covariance_avm_writedata(GPOUT,74)
    assign out_unnamed_covariance9_covariance_avm_writedata = bb_covariance_B16_stall_region_out_unnamed_covariance9_covariance_avm_writedata;

    // out_valid_in_0(GPOUT,75)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,76)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,77)
    assign out_valid_out_0 = covariance_B16_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,78)
    assign out_valid_out_1 = covariance_B16_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,80)
    assign out_pipeline_valid_out = bb_covariance_B16_stall_region_out_pipeline_valid_out;

endmodule
