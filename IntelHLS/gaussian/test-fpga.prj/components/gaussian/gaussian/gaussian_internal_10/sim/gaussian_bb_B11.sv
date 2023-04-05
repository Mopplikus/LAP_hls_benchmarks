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

// SystemVerilog created from bb_gaussian_B11
// Created for function/kernel gaussian
// SystemVerilog created on Tue Apr  4 21:38:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B11 (
    input wire [31:0] in_add108_0,
    input wire [31:0] in_add108_1,
    input wire [31:0] in_add96_pop29112_0,
    input wire [31:0] in_add96_pop29112_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked45_0,
    input wire [0:0] in_forked45_1,
    input wire [31:0] in_i_034_replace_phi109_0,
    input wire [31:0] in_i_034_replace_phi109_1,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_intel_reserved_ffwd_8_0,
    input wire [31:0] in_lm113_gaussian_avm_readdata,
    input wire [0:0] in_lm113_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm113_gaussian_avm_waitrequest,
    input wire [0:0] in_lm113_gaussian_avm_writeack,
    input wire [31:0] in_lm1_gaussian_avm_readdata,
    input wire [0:0] in_lm1_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm1_gaussian_avm_waitrequest,
    input wire [0:0] in_lm1_gaussian_avm_writeack,
    input wire [31:0] in_lm92_gaussian_avm_readdata,
    input wire [0:0] in_lm92_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm92_gaussian_avm_waitrequest,
    input wire [0:0] in_lm92_gaussian_avm_writeack,
    input wire [31:0] in_memdep_5_gaussian_avm_readdata,
    input wire [0:0] in_memdep_5_gaussian_avm_readdatavalid,
    input wire [0:0] in_memdep_5_gaussian_avm_waitrequest,
    input wire [0:0] in_memdep_5_gaussian_avm_writeack,
    input wire [0:0] in_memdep_phi_pop28111_0,
    input wire [0:0] in_memdep_phi_pop28111_1,
    input wire [0:0] in_notcmp63110_0,
    input wire [0:0] in_notcmp63110_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_unnamed_gaussian13_0,
    input wire [0:0] in_unnamed_gaussian13_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe2162,
    output wire [31:0] out_c0_exe4164,
    output wire [0:0] out_c0_exe5165,
    output wire [0:0] out_c0_exe6166,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_lm113_gaussian_avm_address,
    output wire [0:0] out_lm113_gaussian_avm_burstcount,
    output wire [3:0] out_lm113_gaussian_avm_byteenable,
    output wire [0:0] out_lm113_gaussian_avm_enable,
    output wire [0:0] out_lm113_gaussian_avm_read,
    output wire [0:0] out_lm113_gaussian_avm_write,
    output wire [31:0] out_lm113_gaussian_avm_writedata,
    output wire [31:0] out_lm1_gaussian_avm_address,
    output wire [0:0] out_lm1_gaussian_avm_burstcount,
    output wire [3:0] out_lm1_gaussian_avm_byteenable,
    output wire [0:0] out_lm1_gaussian_avm_enable,
    output wire [0:0] out_lm1_gaussian_avm_read,
    output wire [0:0] out_lm1_gaussian_avm_write,
    output wire [31:0] out_lm1_gaussian_avm_writedata,
    output wire [31:0] out_lm92_gaussian_avm_address,
    output wire [0:0] out_lm92_gaussian_avm_burstcount,
    output wire [3:0] out_lm92_gaussian_avm_byteenable,
    output wire [0:0] out_lm92_gaussian_avm_enable,
    output wire [0:0] out_lm92_gaussian_avm_read,
    output wire [0:0] out_lm92_gaussian_avm_write,
    output wire [31:0] out_lm92_gaussian_avm_writedata,
    output wire [31:0] out_memdep_5_gaussian_avm_address,
    output wire [0:0] out_memdep_5_gaussian_avm_burstcount,
    output wire [3:0] out_memdep_5_gaussian_avm_byteenable,
    output wire [0:0] out_memdep_5_gaussian_avm_enable,
    output wire [0:0] out_memdep_5_gaussian_avm_read,
    output wire [0:0] out_memdep_5_gaussian_avm_write,
    output wire [31:0] out_memdep_5_gaussian_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_gaussian_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_gaussian6_exiting_stall_out;
    wire [0:0] bb_gaussian_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_gaussian6_exiting_valid_out;
    wire [0:0] bb_gaussian_B11_stall_region_out_c0_exe2162;
    wire [0:0] bb_gaussian_B11_stall_region_out_c0_exe3163;
    wire [31:0] bb_gaussian_B11_stall_region_out_c0_exe4164;
    wire [0:0] bb_gaussian_B11_stall_region_out_c0_exe5165;
    wire [0:0] bb_gaussian_B11_stall_region_out_c0_exe6166;
    wire [31:0] bb_gaussian_B11_stall_region_out_lm113_gaussian_avm_address;
    wire [0:0] bb_gaussian_B11_stall_region_out_lm113_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B11_stall_region_out_lm113_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B11_stall_region_out_lm113_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B11_stall_region_out_lm113_gaussian_avm_read;
    wire [0:0] bb_gaussian_B11_stall_region_out_lm113_gaussian_avm_write;
    wire [31:0] bb_gaussian_B11_stall_region_out_lm113_gaussian_avm_writedata;
    wire [31:0] bb_gaussian_B11_stall_region_out_lm1_gaussian_avm_address;
    wire [0:0] bb_gaussian_B11_stall_region_out_lm1_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B11_stall_region_out_lm1_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B11_stall_region_out_lm1_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B11_stall_region_out_lm1_gaussian_avm_read;
    wire [0:0] bb_gaussian_B11_stall_region_out_lm1_gaussian_avm_write;
    wire [31:0] bb_gaussian_B11_stall_region_out_lm1_gaussian_avm_writedata;
    wire [31:0] bb_gaussian_B11_stall_region_out_lm92_gaussian_avm_address;
    wire [0:0] bb_gaussian_B11_stall_region_out_lm92_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B11_stall_region_out_lm92_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B11_stall_region_out_lm92_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B11_stall_region_out_lm92_gaussian_avm_read;
    wire [0:0] bb_gaussian_B11_stall_region_out_lm92_gaussian_avm_write;
    wire [31:0] bb_gaussian_B11_stall_region_out_lm92_gaussian_avm_writedata;
    wire [31:0] bb_gaussian_B11_stall_region_out_memdep_5_gaussian_avm_address;
    wire [0:0] bb_gaussian_B11_stall_region_out_memdep_5_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B11_stall_region_out_memdep_5_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B11_stall_region_out_memdep_5_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B11_stall_region_out_memdep_5_gaussian_avm_read;
    wire [0:0] bb_gaussian_B11_stall_region_out_memdep_5_gaussian_avm_write;
    wire [31:0] bb_gaussian_B11_stall_region_out_memdep_5_gaussian_avm_writedata;
    wire [0:0] bb_gaussian_B11_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_gaussian_B11_stall_region_out_stall_out;
    wire [0:0] bb_gaussian_B11_stall_region_out_valid_out;
    wire [0:0] gaussian_B11_branch_out_c0_exe2162;
    wire [31:0] gaussian_B11_branch_out_c0_exe4164;
    wire [0:0] gaussian_B11_branch_out_c0_exe5165;
    wire [0:0] gaussian_B11_branch_out_c0_exe6166;
    wire [0:0] gaussian_B11_branch_out_stall_out;
    wire [0:0] gaussian_B11_branch_out_valid_out_0;
    wire [0:0] gaussian_B11_branch_out_valid_out_1;
    wire [31:0] gaussian_B11_merge_out_add108;
    wire [31:0] gaussian_B11_merge_out_add96_pop29112;
    wire [0:0] gaussian_B11_merge_out_forked45;
    wire [31:0] gaussian_B11_merge_out_i_034_replace_phi109;
    wire [0:0] gaussian_B11_merge_out_memdep_phi_pop28111;
    wire [0:0] gaussian_B11_merge_out_notcmp63110;
    wire [0:0] gaussian_B11_merge_out_stall_out_0;
    wire [0:0] gaussian_B11_merge_out_stall_out_1;
    wire [0:0] gaussian_B11_merge_out_unnamed_gaussian13;
    wire [0:0] gaussian_B11_merge_out_valid_out;


    // gaussian_B11_merge(BLACKBOX,4)
    gaussian_B11_merge thegaussian_B11_merge (
        .in_add108_0(in_add108_0),
        .in_add108_1(in_add108_1),
        .in_add96_pop29112_0(in_add96_pop29112_0),
        .in_add96_pop29112_1(in_add96_pop29112_1),
        .in_forked45_0(in_forked45_0),
        .in_forked45_1(in_forked45_1),
        .in_i_034_replace_phi109_0(in_i_034_replace_phi109_0),
        .in_i_034_replace_phi109_1(in_i_034_replace_phi109_1),
        .in_memdep_phi_pop28111_0(in_memdep_phi_pop28111_0),
        .in_memdep_phi_pop28111_1(in_memdep_phi_pop28111_1),
        .in_notcmp63110_0(in_notcmp63110_0),
        .in_notcmp63110_1(in_notcmp63110_1),
        .in_stall_in(bb_gaussian_B11_stall_region_out_stall_out),
        .in_unnamed_gaussian13_0(in_unnamed_gaussian13_0),
        .in_unnamed_gaussian13_1(in_unnamed_gaussian13_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add108(gaussian_B11_merge_out_add108),
        .out_add96_pop29112(gaussian_B11_merge_out_add96_pop29112),
        .out_forked45(gaussian_B11_merge_out_forked45),
        .out_i_034_replace_phi109(gaussian_B11_merge_out_i_034_replace_phi109),
        .out_memdep_phi_pop28111(gaussian_B11_merge_out_memdep_phi_pop28111),
        .out_notcmp63110(gaussian_B11_merge_out_notcmp63110),
        .out_stall_out_0(gaussian_B11_merge_out_stall_out_0),
        .out_stall_out_1(gaussian_B11_merge_out_stall_out_1),
        .out_unnamed_gaussian13(gaussian_B11_merge_out_unnamed_gaussian13),
        .out_valid_out(gaussian_B11_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B11_stall_region(BLACKBOX,2)
    gaussian_bb_B11_stall_region thebb_gaussian_B11_stall_region (
        .in_add108(gaussian_B11_merge_out_add108),
        .in_add96_pop29112(gaussian_B11_merge_out_add96_pop29112),
        .in_flush(in_flush),
        .in_forked45(gaussian_B11_merge_out_forked45),
        .in_i_034_replace_phi109(gaussian_B11_merge_out_i_034_replace_phi109),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_lm113_gaussian_avm_readdata(in_lm113_gaussian_avm_readdata),
        .in_lm113_gaussian_avm_readdatavalid(in_lm113_gaussian_avm_readdatavalid),
        .in_lm113_gaussian_avm_waitrequest(in_lm113_gaussian_avm_waitrequest),
        .in_lm113_gaussian_avm_writeack(in_lm113_gaussian_avm_writeack),
        .in_lm1_gaussian_avm_readdata(in_lm1_gaussian_avm_readdata),
        .in_lm1_gaussian_avm_readdatavalid(in_lm1_gaussian_avm_readdatavalid),
        .in_lm1_gaussian_avm_waitrequest(in_lm1_gaussian_avm_waitrequest),
        .in_lm1_gaussian_avm_writeack(in_lm1_gaussian_avm_writeack),
        .in_lm92_gaussian_avm_readdata(in_lm92_gaussian_avm_readdata),
        .in_lm92_gaussian_avm_readdatavalid(in_lm92_gaussian_avm_readdatavalid),
        .in_lm92_gaussian_avm_waitrequest(in_lm92_gaussian_avm_waitrequest),
        .in_lm92_gaussian_avm_writeack(in_lm92_gaussian_avm_writeack),
        .in_memdep_5_gaussian_avm_readdata(in_memdep_5_gaussian_avm_readdata),
        .in_memdep_5_gaussian_avm_readdatavalid(in_memdep_5_gaussian_avm_readdatavalid),
        .in_memdep_5_gaussian_avm_waitrequest(in_memdep_5_gaussian_avm_waitrequest),
        .in_memdep_5_gaussian_avm_writeack(in_memdep_5_gaussian_avm_writeack),
        .in_memdep_phi_pop28111(gaussian_B11_merge_out_memdep_phi_pop28111),
        .in_notcmp63110(gaussian_B11_merge_out_notcmp63110),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(gaussian_B11_branch_out_stall_out),
        .in_unnamed_gaussian13(gaussian_B11_merge_out_unnamed_gaussian13),
        .in_valid_in(gaussian_B11_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_gaussian6_exiting_stall_out(bb_gaussian_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_gaussian6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_gaussian6_exiting_valid_out(bb_gaussian_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_gaussian6_exiting_valid_out),
        .out_c0_exe2162(bb_gaussian_B11_stall_region_out_c0_exe2162),
        .out_c0_exe3163(bb_gaussian_B11_stall_region_out_c0_exe3163),
        .out_c0_exe4164(bb_gaussian_B11_stall_region_out_c0_exe4164),
        .out_c0_exe5165(bb_gaussian_B11_stall_region_out_c0_exe5165),
        .out_c0_exe6166(bb_gaussian_B11_stall_region_out_c0_exe6166),
        .out_lm113_gaussian_avm_address(bb_gaussian_B11_stall_region_out_lm113_gaussian_avm_address),
        .out_lm113_gaussian_avm_burstcount(bb_gaussian_B11_stall_region_out_lm113_gaussian_avm_burstcount),
        .out_lm113_gaussian_avm_byteenable(bb_gaussian_B11_stall_region_out_lm113_gaussian_avm_byteenable),
        .out_lm113_gaussian_avm_enable(bb_gaussian_B11_stall_region_out_lm113_gaussian_avm_enable),
        .out_lm113_gaussian_avm_read(bb_gaussian_B11_stall_region_out_lm113_gaussian_avm_read),
        .out_lm113_gaussian_avm_write(bb_gaussian_B11_stall_region_out_lm113_gaussian_avm_write),
        .out_lm113_gaussian_avm_writedata(bb_gaussian_B11_stall_region_out_lm113_gaussian_avm_writedata),
        .out_lm1_gaussian_avm_address(bb_gaussian_B11_stall_region_out_lm1_gaussian_avm_address),
        .out_lm1_gaussian_avm_burstcount(bb_gaussian_B11_stall_region_out_lm1_gaussian_avm_burstcount),
        .out_lm1_gaussian_avm_byteenable(bb_gaussian_B11_stall_region_out_lm1_gaussian_avm_byteenable),
        .out_lm1_gaussian_avm_enable(bb_gaussian_B11_stall_region_out_lm1_gaussian_avm_enable),
        .out_lm1_gaussian_avm_read(bb_gaussian_B11_stall_region_out_lm1_gaussian_avm_read),
        .out_lm1_gaussian_avm_write(bb_gaussian_B11_stall_region_out_lm1_gaussian_avm_write),
        .out_lm1_gaussian_avm_writedata(bb_gaussian_B11_stall_region_out_lm1_gaussian_avm_writedata),
        .out_lm92_gaussian_avm_address(bb_gaussian_B11_stall_region_out_lm92_gaussian_avm_address),
        .out_lm92_gaussian_avm_burstcount(bb_gaussian_B11_stall_region_out_lm92_gaussian_avm_burstcount),
        .out_lm92_gaussian_avm_byteenable(bb_gaussian_B11_stall_region_out_lm92_gaussian_avm_byteenable),
        .out_lm92_gaussian_avm_enable(bb_gaussian_B11_stall_region_out_lm92_gaussian_avm_enable),
        .out_lm92_gaussian_avm_read(bb_gaussian_B11_stall_region_out_lm92_gaussian_avm_read),
        .out_lm92_gaussian_avm_write(bb_gaussian_B11_stall_region_out_lm92_gaussian_avm_write),
        .out_lm92_gaussian_avm_writedata(bb_gaussian_B11_stall_region_out_lm92_gaussian_avm_writedata),
        .out_memdep_5_gaussian_avm_address(bb_gaussian_B11_stall_region_out_memdep_5_gaussian_avm_address),
        .out_memdep_5_gaussian_avm_burstcount(bb_gaussian_B11_stall_region_out_memdep_5_gaussian_avm_burstcount),
        .out_memdep_5_gaussian_avm_byteenable(bb_gaussian_B11_stall_region_out_memdep_5_gaussian_avm_byteenable),
        .out_memdep_5_gaussian_avm_enable(bb_gaussian_B11_stall_region_out_memdep_5_gaussian_avm_enable),
        .out_memdep_5_gaussian_avm_read(bb_gaussian_B11_stall_region_out_memdep_5_gaussian_avm_read),
        .out_memdep_5_gaussian_avm_write(bb_gaussian_B11_stall_region_out_memdep_5_gaussian_avm_write),
        .out_memdep_5_gaussian_avm_writedata(bb_gaussian_B11_stall_region_out_memdep_5_gaussian_avm_writedata),
        .out_pipeline_valid_out(bb_gaussian_B11_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_gaussian_B11_stall_region_out_stall_out),
        .out_valid_out(bb_gaussian_B11_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B11_branch(BLACKBOX,3)
    gaussian_B11_branch thegaussian_B11_branch (
        .in_c0_exe2162(bb_gaussian_B11_stall_region_out_c0_exe2162),
        .in_c0_exe3163(bb_gaussian_B11_stall_region_out_c0_exe3163),
        .in_c0_exe4164(bb_gaussian_B11_stall_region_out_c0_exe4164),
        .in_c0_exe5165(bb_gaussian_B11_stall_region_out_c0_exe5165),
        .in_c0_exe6166(bb_gaussian_B11_stall_region_out_c0_exe6166),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_gaussian_B11_stall_region_out_valid_out),
        .out_c0_exe2162(gaussian_B11_branch_out_c0_exe2162),
        .out_c0_exe4164(gaussian_B11_branch_out_c0_exe4164),
        .out_c0_exe5165(gaussian_B11_branch_out_c0_exe5165),
        .out_c0_exe6166(gaussian_B11_branch_out_c0_exe6166),
        .out_stall_out(gaussian_B11_branch_out_stall_out),
        .out_valid_out_0(gaussian_B11_branch_out_valid_out_0),
        .out_valid_out_1(gaussian_B11_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2162(GPOUT,42)
    assign out_c0_exe2162 = gaussian_B11_branch_out_c0_exe2162;

    // out_c0_exe4164(GPOUT,43)
    assign out_c0_exe4164 = gaussian_B11_branch_out_c0_exe4164;

    // out_c0_exe5165(GPOUT,44)
    assign out_c0_exe5165 = gaussian_B11_branch_out_c0_exe5165;

    // out_c0_exe6166(GPOUT,45)
    assign out_c0_exe6166 = gaussian_B11_branch_out_c0_exe6166;

    // out_exiting_stall_out(GPOUT,46)
    assign out_exiting_stall_out = bb_gaussian_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_gaussian6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,47)
    assign out_exiting_valid_out = bb_gaussian_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_gaussian6_exiting_valid_out;

    // out_lm113_gaussian_avm_address(GPOUT,48)
    assign out_lm113_gaussian_avm_address = bb_gaussian_B11_stall_region_out_lm113_gaussian_avm_address;

    // out_lm113_gaussian_avm_burstcount(GPOUT,49)
    assign out_lm113_gaussian_avm_burstcount = bb_gaussian_B11_stall_region_out_lm113_gaussian_avm_burstcount;

    // out_lm113_gaussian_avm_byteenable(GPOUT,50)
    assign out_lm113_gaussian_avm_byteenable = bb_gaussian_B11_stall_region_out_lm113_gaussian_avm_byteenable;

    // out_lm113_gaussian_avm_enable(GPOUT,51)
    assign out_lm113_gaussian_avm_enable = bb_gaussian_B11_stall_region_out_lm113_gaussian_avm_enable;

    // out_lm113_gaussian_avm_read(GPOUT,52)
    assign out_lm113_gaussian_avm_read = bb_gaussian_B11_stall_region_out_lm113_gaussian_avm_read;

    // out_lm113_gaussian_avm_write(GPOUT,53)
    assign out_lm113_gaussian_avm_write = bb_gaussian_B11_stall_region_out_lm113_gaussian_avm_write;

    // out_lm113_gaussian_avm_writedata(GPOUT,54)
    assign out_lm113_gaussian_avm_writedata = bb_gaussian_B11_stall_region_out_lm113_gaussian_avm_writedata;

    // out_lm1_gaussian_avm_address(GPOUT,55)
    assign out_lm1_gaussian_avm_address = bb_gaussian_B11_stall_region_out_lm1_gaussian_avm_address;

    // out_lm1_gaussian_avm_burstcount(GPOUT,56)
    assign out_lm1_gaussian_avm_burstcount = bb_gaussian_B11_stall_region_out_lm1_gaussian_avm_burstcount;

    // out_lm1_gaussian_avm_byteenable(GPOUT,57)
    assign out_lm1_gaussian_avm_byteenable = bb_gaussian_B11_stall_region_out_lm1_gaussian_avm_byteenable;

    // out_lm1_gaussian_avm_enable(GPOUT,58)
    assign out_lm1_gaussian_avm_enable = bb_gaussian_B11_stall_region_out_lm1_gaussian_avm_enable;

    // out_lm1_gaussian_avm_read(GPOUT,59)
    assign out_lm1_gaussian_avm_read = bb_gaussian_B11_stall_region_out_lm1_gaussian_avm_read;

    // out_lm1_gaussian_avm_write(GPOUT,60)
    assign out_lm1_gaussian_avm_write = bb_gaussian_B11_stall_region_out_lm1_gaussian_avm_write;

    // out_lm1_gaussian_avm_writedata(GPOUT,61)
    assign out_lm1_gaussian_avm_writedata = bb_gaussian_B11_stall_region_out_lm1_gaussian_avm_writedata;

    // out_lm92_gaussian_avm_address(GPOUT,62)
    assign out_lm92_gaussian_avm_address = bb_gaussian_B11_stall_region_out_lm92_gaussian_avm_address;

    // out_lm92_gaussian_avm_burstcount(GPOUT,63)
    assign out_lm92_gaussian_avm_burstcount = bb_gaussian_B11_stall_region_out_lm92_gaussian_avm_burstcount;

    // out_lm92_gaussian_avm_byteenable(GPOUT,64)
    assign out_lm92_gaussian_avm_byteenable = bb_gaussian_B11_stall_region_out_lm92_gaussian_avm_byteenable;

    // out_lm92_gaussian_avm_enable(GPOUT,65)
    assign out_lm92_gaussian_avm_enable = bb_gaussian_B11_stall_region_out_lm92_gaussian_avm_enable;

    // out_lm92_gaussian_avm_read(GPOUT,66)
    assign out_lm92_gaussian_avm_read = bb_gaussian_B11_stall_region_out_lm92_gaussian_avm_read;

    // out_lm92_gaussian_avm_write(GPOUT,67)
    assign out_lm92_gaussian_avm_write = bb_gaussian_B11_stall_region_out_lm92_gaussian_avm_write;

    // out_lm92_gaussian_avm_writedata(GPOUT,68)
    assign out_lm92_gaussian_avm_writedata = bb_gaussian_B11_stall_region_out_lm92_gaussian_avm_writedata;

    // out_memdep_5_gaussian_avm_address(GPOUT,69)
    assign out_memdep_5_gaussian_avm_address = bb_gaussian_B11_stall_region_out_memdep_5_gaussian_avm_address;

    // out_memdep_5_gaussian_avm_burstcount(GPOUT,70)
    assign out_memdep_5_gaussian_avm_burstcount = bb_gaussian_B11_stall_region_out_memdep_5_gaussian_avm_burstcount;

    // out_memdep_5_gaussian_avm_byteenable(GPOUT,71)
    assign out_memdep_5_gaussian_avm_byteenable = bb_gaussian_B11_stall_region_out_memdep_5_gaussian_avm_byteenable;

    // out_memdep_5_gaussian_avm_enable(GPOUT,72)
    assign out_memdep_5_gaussian_avm_enable = bb_gaussian_B11_stall_region_out_memdep_5_gaussian_avm_enable;

    // out_memdep_5_gaussian_avm_read(GPOUT,73)
    assign out_memdep_5_gaussian_avm_read = bb_gaussian_B11_stall_region_out_memdep_5_gaussian_avm_read;

    // out_memdep_5_gaussian_avm_write(GPOUT,74)
    assign out_memdep_5_gaussian_avm_write = bb_gaussian_B11_stall_region_out_memdep_5_gaussian_avm_write;

    // out_memdep_5_gaussian_avm_writedata(GPOUT,75)
    assign out_memdep_5_gaussian_avm_writedata = bb_gaussian_B11_stall_region_out_memdep_5_gaussian_avm_writedata;

    // out_stall_in_0(GPOUT,76)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,77)
    assign out_stall_out_0 = gaussian_B11_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,78)
    assign out_stall_out_1 = gaussian_B11_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,79)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,80)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,81)
    assign out_valid_out_0 = gaussian_B11_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,82)
    assign out_valid_out_1 = gaussian_B11_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,84)
    assign out_pipeline_valid_out = bb_gaussian_B11_stall_region_out_pipeline_valid_out;

endmodule
