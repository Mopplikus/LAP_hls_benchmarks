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

// SystemVerilog created from bb_bicg_B3
// Created for function/kernel bicg
// SystemVerilog created on Tue Jun 13 02:00:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_bb_B3 (
    input wire [0:0] in_exitcond1442_0,
    input wire [0:0] in_exitcond1442_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_mPtr_bitcast_index8038_0,
    input wire [63:0] in_mPtr_bitcast_index8038_1,
    input wire [63:0] in_mPtr_bitcast_index8441_0,
    input wire [63:0] in_mPtr_bitcast_index8441_1,
    input wire [31:0] in_memdep_bicg_avm_readdata,
    input wire [0:0] in_memdep_bicg_avm_readdatavalid,
    input wire [0:0] in_memdep_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_bicg_avm_writeack,
    input wire [0:0] in_memdep_phi5_pop1144_0,
    input wire [0:0] in_memdep_phi5_pop1144_1,
    input wire [0:0] in_memdep_phi7_pop1245_0,
    input wire [0:0] in_memdep_phi7_pop1245_1,
    input wire [0:0] in_memdep_phi_pop1039_0,
    input wire [0:0] in_memdep_phi_pop1039_1,
    input wire [31:0] in_mul40_0,
    input wire [31:0] in_mul40_1,
    input wire [0:0] in_notcmp2043_0,
    input wire [0:0] in_notcmp2043_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_bicg10_0,
    input wire [31:0] in_unnamed_bicg10_1,
    input wire [31:0] in_unnamed_bicg12_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg12_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg12_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg12_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg14_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg14_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg14_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg14_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg15_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg15_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg15_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg15_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg16_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg16_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg16_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg16_bicg_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add12,
    output wire [0:0] out_exitcond1434_pop24,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [63:0] out_mPtr_bitcast_index8030_pop20,
    output wire [0:0] out_memdep,
    output wire [31:0] out_memdep_bicg_avm_address,
    output wire [0:0] out_memdep_bicg_avm_burstcount,
    output wire [3:0] out_memdep_bicg_avm_byteenable,
    output wire [0:0] out_memdep_bicg_avm_enable,
    output wire [0:0] out_memdep_bicg_avm_read,
    output wire [0:0] out_memdep_bicg_avm_write,
    output wire [31:0] out_memdep_bicg_avm_writedata,
    output wire [0:0] out_notcmp2035_pop25,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_toi1_intcast4,
    output wire [31:0] out_unnamed_bicg12_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg12_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg12_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg12_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg12_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg12_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg12_bicg_avm_writedata,
    output wire [31:0] out_unnamed_bicg14_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg14_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg14_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg14_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg14_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg14_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg14_bicg_avm_writedata,
    output wire [31:0] out_unnamed_bicg15_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg15_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg15_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg15_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg15_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg15_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg15_bicg_avm_writedata,
    output wire [31:0] out_unnamed_bicg16_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg16_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg16_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg16_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg16_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg16_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg16_bicg_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_bicg_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bicg4_exiting_stall_out;
    wire [0:0] bb_bicg_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bicg4_exiting_valid_out;
    wire [31:0] bb_bicg_B3_stall_region_out_add12;
    wire [0:0] bb_bicg_B3_stall_region_out_exitcond1434_pop24;
    wire [0:0] bb_bicg_B3_stall_region_out_lsu_memdep_o_active;
    wire [63:0] bb_bicg_B3_stall_region_out_mPtr_bitcast_index8030_pop20;
    wire [0:0] bb_bicg_B3_stall_region_out_masked;
    wire [0:0] bb_bicg_B3_stall_region_out_memdep;
    wire [31:0] bb_bicg_B3_stall_region_out_memdep_bicg_avm_address;
    wire [0:0] bb_bicg_B3_stall_region_out_memdep_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B3_stall_region_out_memdep_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B3_stall_region_out_memdep_bicg_avm_enable;
    wire [0:0] bb_bicg_B3_stall_region_out_memdep_bicg_avm_read;
    wire [0:0] bb_bicg_B3_stall_region_out_memdep_bicg_avm_write;
    wire [31:0] bb_bicg_B3_stall_region_out_memdep_bicg_avm_writedata;
    wire [0:0] bb_bicg_B3_stall_region_out_notcmp2035_pop25;
    wire [0:0] bb_bicg_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_bicg_B3_stall_region_out_stall_out;
    wire [0:0] bb_bicg_B3_stall_region_out_toi1_intcast4;
    wire [31:0] bb_bicg_B3_stall_region_out_unnamed_bicg12_bicg_avm_address;
    wire [0:0] bb_bicg_B3_stall_region_out_unnamed_bicg12_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B3_stall_region_out_unnamed_bicg12_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B3_stall_region_out_unnamed_bicg12_bicg_avm_enable;
    wire [0:0] bb_bicg_B3_stall_region_out_unnamed_bicg12_bicg_avm_read;
    wire [0:0] bb_bicg_B3_stall_region_out_unnamed_bicg12_bicg_avm_write;
    wire [31:0] bb_bicg_B3_stall_region_out_unnamed_bicg12_bicg_avm_writedata;
    wire [31:0] bb_bicg_B3_stall_region_out_unnamed_bicg14_bicg_avm_address;
    wire [0:0] bb_bicg_B3_stall_region_out_unnamed_bicg14_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B3_stall_region_out_unnamed_bicg14_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B3_stall_region_out_unnamed_bicg14_bicg_avm_enable;
    wire [0:0] bb_bicg_B3_stall_region_out_unnamed_bicg14_bicg_avm_read;
    wire [0:0] bb_bicg_B3_stall_region_out_unnamed_bicg14_bicg_avm_write;
    wire [31:0] bb_bicg_B3_stall_region_out_unnamed_bicg14_bicg_avm_writedata;
    wire [31:0] bb_bicg_B3_stall_region_out_unnamed_bicg15_bicg_avm_address;
    wire [0:0] bb_bicg_B3_stall_region_out_unnamed_bicg15_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B3_stall_region_out_unnamed_bicg15_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B3_stall_region_out_unnamed_bicg15_bicg_avm_enable;
    wire [0:0] bb_bicg_B3_stall_region_out_unnamed_bicg15_bicg_avm_read;
    wire [0:0] bb_bicg_B3_stall_region_out_unnamed_bicg15_bicg_avm_write;
    wire [31:0] bb_bicg_B3_stall_region_out_unnamed_bicg15_bicg_avm_writedata;
    wire [31:0] bb_bicg_B3_stall_region_out_unnamed_bicg16_bicg_avm_address;
    wire [0:0] bb_bicg_B3_stall_region_out_unnamed_bicg16_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B3_stall_region_out_unnamed_bicg16_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B3_stall_region_out_unnamed_bicg16_bicg_avm_enable;
    wire [0:0] bb_bicg_B3_stall_region_out_unnamed_bicg16_bicg_avm_read;
    wire [0:0] bb_bicg_B3_stall_region_out_unnamed_bicg16_bicg_avm_write;
    wire [31:0] bb_bicg_B3_stall_region_out_unnamed_bicg16_bicg_avm_writedata;
    wire [0:0] bb_bicg_B3_stall_region_out_valid_out;
    wire [31:0] bicg_B3_branch_out_add12;
    wire [0:0] bicg_B3_branch_out_exitcond1434_pop24;
    wire [63:0] bicg_B3_branch_out_mPtr_bitcast_index8030_pop20;
    wire [0:0] bicg_B3_branch_out_memdep;
    wire [0:0] bicg_B3_branch_out_notcmp2035_pop25;
    wire [0:0] bicg_B3_branch_out_stall_out;
    wire [0:0] bicg_B3_branch_out_toi1_intcast4;
    wire [0:0] bicg_B3_branch_out_valid_out_0;
    wire [0:0] bicg_B3_branch_out_valid_out_1;
    wire [0:0] bicg_B3_merge_out_exitcond1442;
    wire [0:0] bicg_B3_merge_out_forked;
    wire [63:0] bicg_B3_merge_out_mPtr_bitcast_index8038;
    wire [63:0] bicg_B3_merge_out_mPtr_bitcast_index8441;
    wire [0:0] bicg_B3_merge_out_memdep_phi5_pop1144;
    wire [0:0] bicg_B3_merge_out_memdep_phi7_pop1245;
    wire [0:0] bicg_B3_merge_out_memdep_phi_pop1039;
    wire [31:0] bicg_B3_merge_out_mul40;
    wire [0:0] bicg_B3_merge_out_notcmp2043;
    wire [0:0] bicg_B3_merge_out_stall_out_0;
    wire [0:0] bicg_B3_merge_out_stall_out_1;
    wire [31:0] bicg_B3_merge_out_unnamed_bicg10;
    wire [0:0] bicg_B3_merge_out_valid_out;


    // bicg_B3_merge(BLACKBOX,4)
    bicg_B3_merge thebicg_B3_merge (
        .in_exitcond1442_0(in_exitcond1442_0),
        .in_exitcond1442_1(in_exitcond1442_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_mPtr_bitcast_index8038_0(in_mPtr_bitcast_index8038_0),
        .in_mPtr_bitcast_index8038_1(in_mPtr_bitcast_index8038_1),
        .in_mPtr_bitcast_index8441_0(in_mPtr_bitcast_index8441_0),
        .in_mPtr_bitcast_index8441_1(in_mPtr_bitcast_index8441_1),
        .in_memdep_phi5_pop1144_0(in_memdep_phi5_pop1144_0),
        .in_memdep_phi5_pop1144_1(in_memdep_phi5_pop1144_1),
        .in_memdep_phi7_pop1245_0(in_memdep_phi7_pop1245_0),
        .in_memdep_phi7_pop1245_1(in_memdep_phi7_pop1245_1),
        .in_memdep_phi_pop1039_0(in_memdep_phi_pop1039_0),
        .in_memdep_phi_pop1039_1(in_memdep_phi_pop1039_1),
        .in_mul40_0(in_mul40_0),
        .in_mul40_1(in_mul40_1),
        .in_notcmp2043_0(in_notcmp2043_0),
        .in_notcmp2043_1(in_notcmp2043_1),
        .in_stall_in(bb_bicg_B3_stall_region_out_stall_out),
        .in_unnamed_bicg10_0(in_unnamed_bicg10_0),
        .in_unnamed_bicg10_1(in_unnamed_bicg10_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond1442(bicg_B3_merge_out_exitcond1442),
        .out_forked(bicg_B3_merge_out_forked),
        .out_mPtr_bitcast_index8038(bicg_B3_merge_out_mPtr_bitcast_index8038),
        .out_mPtr_bitcast_index8441(bicg_B3_merge_out_mPtr_bitcast_index8441),
        .out_memdep_phi5_pop1144(bicg_B3_merge_out_memdep_phi5_pop1144),
        .out_memdep_phi7_pop1245(bicg_B3_merge_out_memdep_phi7_pop1245),
        .out_memdep_phi_pop1039(bicg_B3_merge_out_memdep_phi_pop1039),
        .out_mul40(bicg_B3_merge_out_mul40),
        .out_notcmp2043(bicg_B3_merge_out_notcmp2043),
        .out_stall_out_0(bicg_B3_merge_out_stall_out_0),
        .out_stall_out_1(bicg_B3_merge_out_stall_out_1),
        .out_unnamed_bicg10(bicg_B3_merge_out_unnamed_bicg10),
        .out_valid_out(bicg_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B3_stall_region(BLACKBOX,2)
    bicg_bb_B3_stall_region thebb_bicg_B3_stall_region (
        .in_exitcond1442(bicg_B3_merge_out_exitcond1442),
        .in_flush(in_flush),
        .in_forked(bicg_B3_merge_out_forked),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_mPtr_bitcast_index8038(bicg_B3_merge_out_mPtr_bitcast_index8038),
        .in_mPtr_bitcast_index8441(bicg_B3_merge_out_mPtr_bitcast_index8441),
        .in_memdep_bicg_avm_readdata(in_memdep_bicg_avm_readdata),
        .in_memdep_bicg_avm_readdatavalid(in_memdep_bicg_avm_readdatavalid),
        .in_memdep_bicg_avm_waitrequest(in_memdep_bicg_avm_waitrequest),
        .in_memdep_bicg_avm_writeack(in_memdep_bicg_avm_writeack),
        .in_memdep_phi5_pop1144(bicg_B3_merge_out_memdep_phi5_pop1144),
        .in_memdep_phi7_pop1245(bicg_B3_merge_out_memdep_phi7_pop1245),
        .in_memdep_phi_pop1039(bicg_B3_merge_out_memdep_phi_pop1039),
        .in_mul40(bicg_B3_merge_out_mul40),
        .in_notcmp2043(bicg_B3_merge_out_notcmp2043),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(bicg_B3_branch_out_stall_out),
        .in_unnamed_bicg10(bicg_B3_merge_out_unnamed_bicg10),
        .in_unnamed_bicg12_bicg_avm_readdata(in_unnamed_bicg12_bicg_avm_readdata),
        .in_unnamed_bicg12_bicg_avm_readdatavalid(in_unnamed_bicg12_bicg_avm_readdatavalid),
        .in_unnamed_bicg12_bicg_avm_waitrequest(in_unnamed_bicg12_bicg_avm_waitrequest),
        .in_unnamed_bicg12_bicg_avm_writeack(in_unnamed_bicg12_bicg_avm_writeack),
        .in_unnamed_bicg14_bicg_avm_readdata(in_unnamed_bicg14_bicg_avm_readdata),
        .in_unnamed_bicg14_bicg_avm_readdatavalid(in_unnamed_bicg14_bicg_avm_readdatavalid),
        .in_unnamed_bicg14_bicg_avm_waitrequest(in_unnamed_bicg14_bicg_avm_waitrequest),
        .in_unnamed_bicg14_bicg_avm_writeack(in_unnamed_bicg14_bicg_avm_writeack),
        .in_unnamed_bicg15_bicg_avm_readdata(in_unnamed_bicg15_bicg_avm_readdata),
        .in_unnamed_bicg15_bicg_avm_readdatavalid(in_unnamed_bicg15_bicg_avm_readdatavalid),
        .in_unnamed_bicg15_bicg_avm_waitrequest(in_unnamed_bicg15_bicg_avm_waitrequest),
        .in_unnamed_bicg15_bicg_avm_writeack(in_unnamed_bicg15_bicg_avm_writeack),
        .in_unnamed_bicg16_bicg_avm_readdata(in_unnamed_bicg16_bicg_avm_readdata),
        .in_unnamed_bicg16_bicg_avm_readdatavalid(in_unnamed_bicg16_bicg_avm_readdatavalid),
        .in_unnamed_bicg16_bicg_avm_waitrequest(in_unnamed_bicg16_bicg_avm_waitrequest),
        .in_unnamed_bicg16_bicg_avm_writeack(in_unnamed_bicg16_bicg_avm_writeack),
        .in_valid_in(bicg_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bicg4_exiting_stall_out(bb_bicg_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bicg4_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bicg4_exiting_valid_out(bb_bicg_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bicg4_exiting_valid_out),
        .out_add12(bb_bicg_B3_stall_region_out_add12),
        .out_exitcond1434_pop24(bb_bicg_B3_stall_region_out_exitcond1434_pop24),
        .out_lsu_memdep_o_active(bb_bicg_B3_stall_region_out_lsu_memdep_o_active),
        .out_mPtr_bitcast_index8030_pop20(bb_bicg_B3_stall_region_out_mPtr_bitcast_index8030_pop20),
        .out_masked(bb_bicg_B3_stall_region_out_masked),
        .out_memdep(bb_bicg_B3_stall_region_out_memdep),
        .out_memdep_bicg_avm_address(bb_bicg_B3_stall_region_out_memdep_bicg_avm_address),
        .out_memdep_bicg_avm_burstcount(bb_bicg_B3_stall_region_out_memdep_bicg_avm_burstcount),
        .out_memdep_bicg_avm_byteenable(bb_bicg_B3_stall_region_out_memdep_bicg_avm_byteenable),
        .out_memdep_bicg_avm_enable(bb_bicg_B3_stall_region_out_memdep_bicg_avm_enable),
        .out_memdep_bicg_avm_read(bb_bicg_B3_stall_region_out_memdep_bicg_avm_read),
        .out_memdep_bicg_avm_write(bb_bicg_B3_stall_region_out_memdep_bicg_avm_write),
        .out_memdep_bicg_avm_writedata(bb_bicg_B3_stall_region_out_memdep_bicg_avm_writedata),
        .out_notcmp2035_pop25(bb_bicg_B3_stall_region_out_notcmp2035_pop25),
        .out_pipeline_valid_out(bb_bicg_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_bicg_B3_stall_region_out_stall_out),
        .out_toi1_intcast4(bb_bicg_B3_stall_region_out_toi1_intcast4),
        .out_unnamed_bicg12_bicg_avm_address(bb_bicg_B3_stall_region_out_unnamed_bicg12_bicg_avm_address),
        .out_unnamed_bicg12_bicg_avm_burstcount(bb_bicg_B3_stall_region_out_unnamed_bicg12_bicg_avm_burstcount),
        .out_unnamed_bicg12_bicg_avm_byteenable(bb_bicg_B3_stall_region_out_unnamed_bicg12_bicg_avm_byteenable),
        .out_unnamed_bicg12_bicg_avm_enable(bb_bicg_B3_stall_region_out_unnamed_bicg12_bicg_avm_enable),
        .out_unnamed_bicg12_bicg_avm_read(bb_bicg_B3_stall_region_out_unnamed_bicg12_bicg_avm_read),
        .out_unnamed_bicg12_bicg_avm_write(bb_bicg_B3_stall_region_out_unnamed_bicg12_bicg_avm_write),
        .out_unnamed_bicg12_bicg_avm_writedata(bb_bicg_B3_stall_region_out_unnamed_bicg12_bicg_avm_writedata),
        .out_unnamed_bicg14_bicg_avm_address(bb_bicg_B3_stall_region_out_unnamed_bicg14_bicg_avm_address),
        .out_unnamed_bicg14_bicg_avm_burstcount(bb_bicg_B3_stall_region_out_unnamed_bicg14_bicg_avm_burstcount),
        .out_unnamed_bicg14_bicg_avm_byteenable(bb_bicg_B3_stall_region_out_unnamed_bicg14_bicg_avm_byteenable),
        .out_unnamed_bicg14_bicg_avm_enable(bb_bicg_B3_stall_region_out_unnamed_bicg14_bicg_avm_enable),
        .out_unnamed_bicg14_bicg_avm_read(bb_bicg_B3_stall_region_out_unnamed_bicg14_bicg_avm_read),
        .out_unnamed_bicg14_bicg_avm_write(bb_bicg_B3_stall_region_out_unnamed_bicg14_bicg_avm_write),
        .out_unnamed_bicg14_bicg_avm_writedata(bb_bicg_B3_stall_region_out_unnamed_bicg14_bicg_avm_writedata),
        .out_unnamed_bicg15_bicg_avm_address(bb_bicg_B3_stall_region_out_unnamed_bicg15_bicg_avm_address),
        .out_unnamed_bicg15_bicg_avm_burstcount(bb_bicg_B3_stall_region_out_unnamed_bicg15_bicg_avm_burstcount),
        .out_unnamed_bicg15_bicg_avm_byteenable(bb_bicg_B3_stall_region_out_unnamed_bicg15_bicg_avm_byteenable),
        .out_unnamed_bicg15_bicg_avm_enable(bb_bicg_B3_stall_region_out_unnamed_bicg15_bicg_avm_enable),
        .out_unnamed_bicg15_bicg_avm_read(bb_bicg_B3_stall_region_out_unnamed_bicg15_bicg_avm_read),
        .out_unnamed_bicg15_bicg_avm_write(bb_bicg_B3_stall_region_out_unnamed_bicg15_bicg_avm_write),
        .out_unnamed_bicg15_bicg_avm_writedata(bb_bicg_B3_stall_region_out_unnamed_bicg15_bicg_avm_writedata),
        .out_unnamed_bicg16_bicg_avm_address(bb_bicg_B3_stall_region_out_unnamed_bicg16_bicg_avm_address),
        .out_unnamed_bicg16_bicg_avm_burstcount(bb_bicg_B3_stall_region_out_unnamed_bicg16_bicg_avm_burstcount),
        .out_unnamed_bicg16_bicg_avm_byteenable(bb_bicg_B3_stall_region_out_unnamed_bicg16_bicg_avm_byteenable),
        .out_unnamed_bicg16_bicg_avm_enable(bb_bicg_B3_stall_region_out_unnamed_bicg16_bicg_avm_enable),
        .out_unnamed_bicg16_bicg_avm_read(bb_bicg_B3_stall_region_out_unnamed_bicg16_bicg_avm_read),
        .out_unnamed_bicg16_bicg_avm_write(bb_bicg_B3_stall_region_out_unnamed_bicg16_bicg_avm_write),
        .out_unnamed_bicg16_bicg_avm_writedata(bb_bicg_B3_stall_region_out_unnamed_bicg16_bicg_avm_writedata),
        .out_valid_out(bb_bicg_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bicg_B3_branch(BLACKBOX,3)
    bicg_B3_branch thebicg_B3_branch (
        .in_add12(bb_bicg_B3_stall_region_out_add12),
        .in_exitcond1434_pop24(bb_bicg_B3_stall_region_out_exitcond1434_pop24),
        .in_mPtr_bitcast_index8030_pop20(bb_bicg_B3_stall_region_out_mPtr_bitcast_index8030_pop20),
        .in_masked(bb_bicg_B3_stall_region_out_masked),
        .in_memdep(bb_bicg_B3_stall_region_out_memdep),
        .in_notcmp2035_pop25(bb_bicg_B3_stall_region_out_notcmp2035_pop25),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_toi1_intcast4(bb_bicg_B3_stall_region_out_toi1_intcast4),
        .in_valid_in(bb_bicg_B3_stall_region_out_valid_out),
        .out_add12(bicg_B3_branch_out_add12),
        .out_exitcond1434_pop24(bicg_B3_branch_out_exitcond1434_pop24),
        .out_mPtr_bitcast_index8030_pop20(bicg_B3_branch_out_mPtr_bitcast_index8030_pop20),
        .out_memdep(bicg_B3_branch_out_memdep),
        .out_notcmp2035_pop25(bicg_B3_branch_out_notcmp2035_pop25),
        .out_stall_out(bicg_B3_branch_out_stall_out),
        .out_toi1_intcast4(bicg_B3_branch_out_toi1_intcast4),
        .out_valid_out_0(bicg_B3_branch_out_valid_out_0),
        .out_valid_out_1(bicg_B3_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_add12(GPOUT,53)
    assign out_add12 = bicg_B3_branch_out_add12;

    // out_exitcond1434_pop24(GPOUT,54)
    assign out_exitcond1434_pop24 = bicg_B3_branch_out_exitcond1434_pop24;

    // out_exiting_stall_out(GPOUT,55)
    assign out_exiting_stall_out = bb_bicg_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bicg4_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,56)
    assign out_exiting_valid_out = bb_bicg_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bicg4_exiting_valid_out;

    // out_lsu_memdep_o_active(GPOUT,57)
    assign out_lsu_memdep_o_active = bb_bicg_B3_stall_region_out_lsu_memdep_o_active;

    // out_mPtr_bitcast_index8030_pop20(GPOUT,58)
    assign out_mPtr_bitcast_index8030_pop20 = bicg_B3_branch_out_mPtr_bitcast_index8030_pop20;

    // out_memdep(GPOUT,59)
    assign out_memdep = bicg_B3_branch_out_memdep;

    // out_memdep_bicg_avm_address(GPOUT,60)
    assign out_memdep_bicg_avm_address = bb_bicg_B3_stall_region_out_memdep_bicg_avm_address;

    // out_memdep_bicg_avm_burstcount(GPOUT,61)
    assign out_memdep_bicg_avm_burstcount = bb_bicg_B3_stall_region_out_memdep_bicg_avm_burstcount;

    // out_memdep_bicg_avm_byteenable(GPOUT,62)
    assign out_memdep_bicg_avm_byteenable = bb_bicg_B3_stall_region_out_memdep_bicg_avm_byteenable;

    // out_memdep_bicg_avm_enable(GPOUT,63)
    assign out_memdep_bicg_avm_enable = bb_bicg_B3_stall_region_out_memdep_bicg_avm_enable;

    // out_memdep_bicg_avm_read(GPOUT,64)
    assign out_memdep_bicg_avm_read = bb_bicg_B3_stall_region_out_memdep_bicg_avm_read;

    // out_memdep_bicg_avm_write(GPOUT,65)
    assign out_memdep_bicg_avm_write = bb_bicg_B3_stall_region_out_memdep_bicg_avm_write;

    // out_memdep_bicg_avm_writedata(GPOUT,66)
    assign out_memdep_bicg_avm_writedata = bb_bicg_B3_stall_region_out_memdep_bicg_avm_writedata;

    // out_notcmp2035_pop25(GPOUT,67)
    assign out_notcmp2035_pop25 = bicg_B3_branch_out_notcmp2035_pop25;

    // out_stall_in_0(GPOUT,68)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,69)
    assign out_stall_out_0 = bicg_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,70)
    assign out_stall_out_1 = bicg_B3_merge_out_stall_out_1;

    // out_toi1_intcast4(GPOUT,71)
    assign out_toi1_intcast4 = bicg_B3_branch_out_toi1_intcast4;

    // out_unnamed_bicg12_bicg_avm_address(GPOUT,72)
    assign out_unnamed_bicg12_bicg_avm_address = bb_bicg_B3_stall_region_out_unnamed_bicg12_bicg_avm_address;

    // out_unnamed_bicg12_bicg_avm_burstcount(GPOUT,73)
    assign out_unnamed_bicg12_bicg_avm_burstcount = bb_bicg_B3_stall_region_out_unnamed_bicg12_bicg_avm_burstcount;

    // out_unnamed_bicg12_bicg_avm_byteenable(GPOUT,74)
    assign out_unnamed_bicg12_bicg_avm_byteenable = bb_bicg_B3_stall_region_out_unnamed_bicg12_bicg_avm_byteenable;

    // out_unnamed_bicg12_bicg_avm_enable(GPOUT,75)
    assign out_unnamed_bicg12_bicg_avm_enable = bb_bicg_B3_stall_region_out_unnamed_bicg12_bicg_avm_enable;

    // out_unnamed_bicg12_bicg_avm_read(GPOUT,76)
    assign out_unnamed_bicg12_bicg_avm_read = bb_bicg_B3_stall_region_out_unnamed_bicg12_bicg_avm_read;

    // out_unnamed_bicg12_bicg_avm_write(GPOUT,77)
    assign out_unnamed_bicg12_bicg_avm_write = bb_bicg_B3_stall_region_out_unnamed_bicg12_bicg_avm_write;

    // out_unnamed_bicg12_bicg_avm_writedata(GPOUT,78)
    assign out_unnamed_bicg12_bicg_avm_writedata = bb_bicg_B3_stall_region_out_unnamed_bicg12_bicg_avm_writedata;

    // out_unnamed_bicg14_bicg_avm_address(GPOUT,79)
    assign out_unnamed_bicg14_bicg_avm_address = bb_bicg_B3_stall_region_out_unnamed_bicg14_bicg_avm_address;

    // out_unnamed_bicg14_bicg_avm_burstcount(GPOUT,80)
    assign out_unnamed_bicg14_bicg_avm_burstcount = bb_bicg_B3_stall_region_out_unnamed_bicg14_bicg_avm_burstcount;

    // out_unnamed_bicg14_bicg_avm_byteenable(GPOUT,81)
    assign out_unnamed_bicg14_bicg_avm_byteenable = bb_bicg_B3_stall_region_out_unnamed_bicg14_bicg_avm_byteenable;

    // out_unnamed_bicg14_bicg_avm_enable(GPOUT,82)
    assign out_unnamed_bicg14_bicg_avm_enable = bb_bicg_B3_stall_region_out_unnamed_bicg14_bicg_avm_enable;

    // out_unnamed_bicg14_bicg_avm_read(GPOUT,83)
    assign out_unnamed_bicg14_bicg_avm_read = bb_bicg_B3_stall_region_out_unnamed_bicg14_bicg_avm_read;

    // out_unnamed_bicg14_bicg_avm_write(GPOUT,84)
    assign out_unnamed_bicg14_bicg_avm_write = bb_bicg_B3_stall_region_out_unnamed_bicg14_bicg_avm_write;

    // out_unnamed_bicg14_bicg_avm_writedata(GPOUT,85)
    assign out_unnamed_bicg14_bicg_avm_writedata = bb_bicg_B3_stall_region_out_unnamed_bicg14_bicg_avm_writedata;

    // out_unnamed_bicg15_bicg_avm_address(GPOUT,86)
    assign out_unnamed_bicg15_bicg_avm_address = bb_bicg_B3_stall_region_out_unnamed_bicg15_bicg_avm_address;

    // out_unnamed_bicg15_bicg_avm_burstcount(GPOUT,87)
    assign out_unnamed_bicg15_bicg_avm_burstcount = bb_bicg_B3_stall_region_out_unnamed_bicg15_bicg_avm_burstcount;

    // out_unnamed_bicg15_bicg_avm_byteenable(GPOUT,88)
    assign out_unnamed_bicg15_bicg_avm_byteenable = bb_bicg_B3_stall_region_out_unnamed_bicg15_bicg_avm_byteenable;

    // out_unnamed_bicg15_bicg_avm_enable(GPOUT,89)
    assign out_unnamed_bicg15_bicg_avm_enable = bb_bicg_B3_stall_region_out_unnamed_bicg15_bicg_avm_enable;

    // out_unnamed_bicg15_bicg_avm_read(GPOUT,90)
    assign out_unnamed_bicg15_bicg_avm_read = bb_bicg_B3_stall_region_out_unnamed_bicg15_bicg_avm_read;

    // out_unnamed_bicg15_bicg_avm_write(GPOUT,91)
    assign out_unnamed_bicg15_bicg_avm_write = bb_bicg_B3_stall_region_out_unnamed_bicg15_bicg_avm_write;

    // out_unnamed_bicg15_bicg_avm_writedata(GPOUT,92)
    assign out_unnamed_bicg15_bicg_avm_writedata = bb_bicg_B3_stall_region_out_unnamed_bicg15_bicg_avm_writedata;

    // out_unnamed_bicg16_bicg_avm_address(GPOUT,93)
    assign out_unnamed_bicg16_bicg_avm_address = bb_bicg_B3_stall_region_out_unnamed_bicg16_bicg_avm_address;

    // out_unnamed_bicg16_bicg_avm_burstcount(GPOUT,94)
    assign out_unnamed_bicg16_bicg_avm_burstcount = bb_bicg_B3_stall_region_out_unnamed_bicg16_bicg_avm_burstcount;

    // out_unnamed_bicg16_bicg_avm_byteenable(GPOUT,95)
    assign out_unnamed_bicg16_bicg_avm_byteenable = bb_bicg_B3_stall_region_out_unnamed_bicg16_bicg_avm_byteenable;

    // out_unnamed_bicg16_bicg_avm_enable(GPOUT,96)
    assign out_unnamed_bicg16_bicg_avm_enable = bb_bicg_B3_stall_region_out_unnamed_bicg16_bicg_avm_enable;

    // out_unnamed_bicg16_bicg_avm_read(GPOUT,97)
    assign out_unnamed_bicg16_bicg_avm_read = bb_bicg_B3_stall_region_out_unnamed_bicg16_bicg_avm_read;

    // out_unnamed_bicg16_bicg_avm_write(GPOUT,98)
    assign out_unnamed_bicg16_bicg_avm_write = bb_bicg_B3_stall_region_out_unnamed_bicg16_bicg_avm_write;

    // out_unnamed_bicg16_bicg_avm_writedata(GPOUT,99)
    assign out_unnamed_bicg16_bicg_avm_writedata = bb_bicg_B3_stall_region_out_unnamed_bicg16_bicg_avm_writedata;

    // out_valid_in_0(GPOUT,100)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,101)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,102)
    assign out_valid_out_0 = bicg_B3_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,103)
    assign out_valid_out_1 = bicg_B3_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,105)
    assign out_pipeline_valid_out = bb_bicg_B3_stall_region_out_pipeline_valid_out;

endmodule
