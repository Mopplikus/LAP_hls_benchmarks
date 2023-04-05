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

// SystemVerilog created from bb_bicg_B9
// Created for function/kernel bicg
// SystemVerilog created on Wed Apr  5 16:26:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_bb_B9 (
    input wire [63:0] in_arrayidx41686_0,
    input wire [63:0] in_arrayidx41686_1,
    input wire [0:0] in_exitcond1687_0,
    input wire [0:0] in_exitcond1687_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked27_0,
    input wire [0:0] in_forked27_1,
    input wire [63:0] in_idxprom4085_0,
    input wire [63:0] in_idxprom4085_1,
    input wire [31:0] in_memdep_6_bicg_avm_readdata,
    input wire [0:0] in_memdep_6_bicg_avm_readdatavalid,
    input wire [0:0] in_memdep_6_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_6_bicg_avm_writeack,
    input wire [0:0] in_memdep_phi_pop1889_0,
    input wire [0:0] in_memdep_phi_pop1889_1,
    input wire [0:0] in_notcmp4288_0,
    input wire [0:0] in_notcmp4288_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_bicg14_0,
    input wire [31:0] in_unnamed_bicg14_1,
    input wire [31:0] in_unnamed_bicg15_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg15_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg15_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg15_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg16_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg16_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg16_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg16_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg17_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg17_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg17_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg17_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg18_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg18_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg18_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg18_bicg_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe2141,
    output wire [31:0] out_c0_exe3142,
    output wire [63:0] out_c0_exe5144,
    output wire [0:0] out_c0_exe6145,
    output wire [0:0] out_c0_exe7146,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_memdep_6_bicg_avm_address,
    output wire [0:0] out_memdep_6_bicg_avm_burstcount,
    output wire [3:0] out_memdep_6_bicg_avm_byteenable,
    output wire [0:0] out_memdep_6_bicg_avm_enable,
    output wire [0:0] out_memdep_6_bicg_avm_read,
    output wire [0:0] out_memdep_6_bicg_avm_write,
    output wire [31:0] out_memdep_6_bicg_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
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
    output wire [31:0] out_unnamed_bicg17_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg17_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg17_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg17_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg17_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg17_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg17_bicg_avm_writedata,
    output wire [31:0] out_unnamed_bicg18_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg18_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg18_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg18_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg18_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg18_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg18_bicg_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_bicg_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_stall_out;
    wire [0:0] bb_bicg_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_valid_out;
    wire [0:0] bb_bicg_B9_stall_region_out_c0_exe2141;
    wire [31:0] bb_bicg_B9_stall_region_out_c0_exe3142;
    wire [0:0] bb_bicg_B9_stall_region_out_c0_exe4143;
    wire [63:0] bb_bicg_B9_stall_region_out_c0_exe5144;
    wire [0:0] bb_bicg_B9_stall_region_out_c0_exe6145;
    wire [0:0] bb_bicg_B9_stall_region_out_c0_exe7146;
    wire [31:0] bb_bicg_B9_stall_region_out_memdep_6_bicg_avm_address;
    wire [0:0] bb_bicg_B9_stall_region_out_memdep_6_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B9_stall_region_out_memdep_6_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B9_stall_region_out_memdep_6_bicg_avm_enable;
    wire [0:0] bb_bicg_B9_stall_region_out_memdep_6_bicg_avm_read;
    wire [0:0] bb_bicg_B9_stall_region_out_memdep_6_bicg_avm_write;
    wire [31:0] bb_bicg_B9_stall_region_out_memdep_6_bicg_avm_writedata;
    wire [0:0] bb_bicg_B9_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_bicg_B9_stall_region_out_stall_out;
    wire [31:0] bb_bicg_B9_stall_region_out_unnamed_bicg15_bicg_avm_address;
    wire [0:0] bb_bicg_B9_stall_region_out_unnamed_bicg15_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B9_stall_region_out_unnamed_bicg15_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B9_stall_region_out_unnamed_bicg15_bicg_avm_enable;
    wire [0:0] bb_bicg_B9_stall_region_out_unnamed_bicg15_bicg_avm_read;
    wire [0:0] bb_bicg_B9_stall_region_out_unnamed_bicg15_bicg_avm_write;
    wire [31:0] bb_bicg_B9_stall_region_out_unnamed_bicg15_bicg_avm_writedata;
    wire [31:0] bb_bicg_B9_stall_region_out_unnamed_bicg16_bicg_avm_address;
    wire [0:0] bb_bicg_B9_stall_region_out_unnamed_bicg16_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B9_stall_region_out_unnamed_bicg16_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B9_stall_region_out_unnamed_bicg16_bicg_avm_enable;
    wire [0:0] bb_bicg_B9_stall_region_out_unnamed_bicg16_bicg_avm_read;
    wire [0:0] bb_bicg_B9_stall_region_out_unnamed_bicg16_bicg_avm_write;
    wire [31:0] bb_bicg_B9_stall_region_out_unnamed_bicg16_bicg_avm_writedata;
    wire [31:0] bb_bicg_B9_stall_region_out_unnamed_bicg17_bicg_avm_address;
    wire [0:0] bb_bicg_B9_stall_region_out_unnamed_bicg17_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B9_stall_region_out_unnamed_bicg17_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B9_stall_region_out_unnamed_bicg17_bicg_avm_enable;
    wire [0:0] bb_bicg_B9_stall_region_out_unnamed_bicg17_bicg_avm_read;
    wire [0:0] bb_bicg_B9_stall_region_out_unnamed_bicg17_bicg_avm_write;
    wire [31:0] bb_bicg_B9_stall_region_out_unnamed_bicg17_bicg_avm_writedata;
    wire [31:0] bb_bicg_B9_stall_region_out_unnamed_bicg18_bicg_avm_address;
    wire [0:0] bb_bicg_B9_stall_region_out_unnamed_bicg18_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B9_stall_region_out_unnamed_bicg18_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B9_stall_region_out_unnamed_bicg18_bicg_avm_enable;
    wire [0:0] bb_bicg_B9_stall_region_out_unnamed_bicg18_bicg_avm_read;
    wire [0:0] bb_bicg_B9_stall_region_out_unnamed_bicg18_bicg_avm_write;
    wire [31:0] bb_bicg_B9_stall_region_out_unnamed_bicg18_bicg_avm_writedata;
    wire [0:0] bb_bicg_B9_stall_region_out_valid_out;
    wire [0:0] bicg_B9_branch_out_c0_exe2141;
    wire [31:0] bicg_B9_branch_out_c0_exe3142;
    wire [63:0] bicg_B9_branch_out_c0_exe5144;
    wire [0:0] bicg_B9_branch_out_c0_exe6145;
    wire [0:0] bicg_B9_branch_out_c0_exe7146;
    wire [0:0] bicg_B9_branch_out_stall_out;
    wire [0:0] bicg_B9_branch_out_valid_out_0;
    wire [0:0] bicg_B9_branch_out_valid_out_1;
    wire [63:0] bicg_B9_merge_out_arrayidx41686;
    wire [0:0] bicg_B9_merge_out_exitcond1687;
    wire [0:0] bicg_B9_merge_out_forked27;
    wire [63:0] bicg_B9_merge_out_idxprom4085;
    wire [0:0] bicg_B9_merge_out_memdep_phi_pop1889;
    wire [0:0] bicg_B9_merge_out_notcmp4288;
    wire [0:0] bicg_B9_merge_out_stall_out_0;
    wire [0:0] bicg_B9_merge_out_stall_out_1;
    wire [31:0] bicg_B9_merge_out_unnamed_bicg14;
    wire [0:0] bicg_B9_merge_out_valid_out;


    // bicg_B9_merge(BLACKBOX,4)
    bicg_B9_merge thebicg_B9_merge (
        .in_arrayidx41686_0(in_arrayidx41686_0),
        .in_arrayidx41686_1(in_arrayidx41686_1),
        .in_exitcond1687_0(in_exitcond1687_0),
        .in_exitcond1687_1(in_exitcond1687_1),
        .in_forked27_0(in_forked27_0),
        .in_forked27_1(in_forked27_1),
        .in_idxprom4085_0(in_idxprom4085_0),
        .in_idxprom4085_1(in_idxprom4085_1),
        .in_memdep_phi_pop1889_0(in_memdep_phi_pop1889_0),
        .in_memdep_phi_pop1889_1(in_memdep_phi_pop1889_1),
        .in_notcmp4288_0(in_notcmp4288_0),
        .in_notcmp4288_1(in_notcmp4288_1),
        .in_stall_in(bb_bicg_B9_stall_region_out_stall_out),
        .in_unnamed_bicg14_0(in_unnamed_bicg14_0),
        .in_unnamed_bicg14_1(in_unnamed_bicg14_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_arrayidx41686(bicg_B9_merge_out_arrayidx41686),
        .out_exitcond1687(bicg_B9_merge_out_exitcond1687),
        .out_forked27(bicg_B9_merge_out_forked27),
        .out_idxprom4085(bicg_B9_merge_out_idxprom4085),
        .out_memdep_phi_pop1889(bicg_B9_merge_out_memdep_phi_pop1889),
        .out_notcmp4288(bicg_B9_merge_out_notcmp4288),
        .out_stall_out_0(bicg_B9_merge_out_stall_out_0),
        .out_stall_out_1(bicg_B9_merge_out_stall_out_1),
        .out_unnamed_bicg14(bicg_B9_merge_out_unnamed_bicg14),
        .out_valid_out(bicg_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B9_stall_region(BLACKBOX,2)
    bicg_bb_B9_stall_region thebb_bicg_B9_stall_region (
        .in_arrayidx41686(bicg_B9_merge_out_arrayidx41686),
        .in_exitcond1687(bicg_B9_merge_out_exitcond1687),
        .in_flush(in_flush),
        .in_forked27(bicg_B9_merge_out_forked27),
        .in_idxprom4085(bicg_B9_merge_out_idxprom4085),
        .in_memdep_6_bicg_avm_readdata(in_memdep_6_bicg_avm_readdata),
        .in_memdep_6_bicg_avm_readdatavalid(in_memdep_6_bicg_avm_readdatavalid),
        .in_memdep_6_bicg_avm_waitrequest(in_memdep_6_bicg_avm_waitrequest),
        .in_memdep_6_bicg_avm_writeack(in_memdep_6_bicg_avm_writeack),
        .in_memdep_phi_pop1889(bicg_B9_merge_out_memdep_phi_pop1889),
        .in_notcmp4288(bicg_B9_merge_out_notcmp4288),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(bicg_B9_branch_out_stall_out),
        .in_unnamed_bicg14(bicg_B9_merge_out_unnamed_bicg14),
        .in_unnamed_bicg15_bicg_avm_readdata(in_unnamed_bicg15_bicg_avm_readdata),
        .in_unnamed_bicg15_bicg_avm_readdatavalid(in_unnamed_bicg15_bicg_avm_readdatavalid),
        .in_unnamed_bicg15_bicg_avm_waitrequest(in_unnamed_bicg15_bicg_avm_waitrequest),
        .in_unnamed_bicg15_bicg_avm_writeack(in_unnamed_bicg15_bicg_avm_writeack),
        .in_unnamed_bicg16_bicg_avm_readdata(in_unnamed_bicg16_bicg_avm_readdata),
        .in_unnamed_bicg16_bicg_avm_readdatavalid(in_unnamed_bicg16_bicg_avm_readdatavalid),
        .in_unnamed_bicg16_bicg_avm_waitrequest(in_unnamed_bicg16_bicg_avm_waitrequest),
        .in_unnamed_bicg16_bicg_avm_writeack(in_unnamed_bicg16_bicg_avm_writeack),
        .in_unnamed_bicg17_bicg_avm_readdata(in_unnamed_bicg17_bicg_avm_readdata),
        .in_unnamed_bicg17_bicg_avm_readdatavalid(in_unnamed_bicg17_bicg_avm_readdatavalid),
        .in_unnamed_bicg17_bicg_avm_waitrequest(in_unnamed_bicg17_bicg_avm_waitrequest),
        .in_unnamed_bicg17_bicg_avm_writeack(in_unnamed_bicg17_bicg_avm_writeack),
        .in_unnamed_bicg18_bicg_avm_readdata(in_unnamed_bicg18_bicg_avm_readdata),
        .in_unnamed_bicg18_bicg_avm_readdatavalid(in_unnamed_bicg18_bicg_avm_readdatavalid),
        .in_unnamed_bicg18_bicg_avm_waitrequest(in_unnamed_bicg18_bicg_avm_waitrequest),
        .in_unnamed_bicg18_bicg_avm_writeack(in_unnamed_bicg18_bicg_avm_writeack),
        .in_valid_in(bicg_B9_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_stall_out(bb_bicg_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_valid_out(bb_bicg_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_valid_out),
        .out_c0_exe2141(bb_bicg_B9_stall_region_out_c0_exe2141),
        .out_c0_exe3142(bb_bicg_B9_stall_region_out_c0_exe3142),
        .out_c0_exe4143(bb_bicg_B9_stall_region_out_c0_exe4143),
        .out_c0_exe5144(bb_bicg_B9_stall_region_out_c0_exe5144),
        .out_c0_exe6145(bb_bicg_B9_stall_region_out_c0_exe6145),
        .out_c0_exe7146(bb_bicg_B9_stall_region_out_c0_exe7146),
        .out_memdep_6_bicg_avm_address(bb_bicg_B9_stall_region_out_memdep_6_bicg_avm_address),
        .out_memdep_6_bicg_avm_burstcount(bb_bicg_B9_stall_region_out_memdep_6_bicg_avm_burstcount),
        .out_memdep_6_bicg_avm_byteenable(bb_bicg_B9_stall_region_out_memdep_6_bicg_avm_byteenable),
        .out_memdep_6_bicg_avm_enable(bb_bicg_B9_stall_region_out_memdep_6_bicg_avm_enable),
        .out_memdep_6_bicg_avm_read(bb_bicg_B9_stall_region_out_memdep_6_bicg_avm_read),
        .out_memdep_6_bicg_avm_write(bb_bicg_B9_stall_region_out_memdep_6_bicg_avm_write),
        .out_memdep_6_bicg_avm_writedata(bb_bicg_B9_stall_region_out_memdep_6_bicg_avm_writedata),
        .out_pipeline_valid_out(bb_bicg_B9_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_bicg_B9_stall_region_out_stall_out),
        .out_unnamed_bicg15_bicg_avm_address(bb_bicg_B9_stall_region_out_unnamed_bicg15_bicg_avm_address),
        .out_unnamed_bicg15_bicg_avm_burstcount(bb_bicg_B9_stall_region_out_unnamed_bicg15_bicg_avm_burstcount),
        .out_unnamed_bicg15_bicg_avm_byteenable(bb_bicg_B9_stall_region_out_unnamed_bicg15_bicg_avm_byteenable),
        .out_unnamed_bicg15_bicg_avm_enable(bb_bicg_B9_stall_region_out_unnamed_bicg15_bicg_avm_enable),
        .out_unnamed_bicg15_bicg_avm_read(bb_bicg_B9_stall_region_out_unnamed_bicg15_bicg_avm_read),
        .out_unnamed_bicg15_bicg_avm_write(bb_bicg_B9_stall_region_out_unnamed_bicg15_bicg_avm_write),
        .out_unnamed_bicg15_bicg_avm_writedata(bb_bicg_B9_stall_region_out_unnamed_bicg15_bicg_avm_writedata),
        .out_unnamed_bicg16_bicg_avm_address(bb_bicg_B9_stall_region_out_unnamed_bicg16_bicg_avm_address),
        .out_unnamed_bicg16_bicg_avm_burstcount(bb_bicg_B9_stall_region_out_unnamed_bicg16_bicg_avm_burstcount),
        .out_unnamed_bicg16_bicg_avm_byteenable(bb_bicg_B9_stall_region_out_unnamed_bicg16_bicg_avm_byteenable),
        .out_unnamed_bicg16_bicg_avm_enable(bb_bicg_B9_stall_region_out_unnamed_bicg16_bicg_avm_enable),
        .out_unnamed_bicg16_bicg_avm_read(bb_bicg_B9_stall_region_out_unnamed_bicg16_bicg_avm_read),
        .out_unnamed_bicg16_bicg_avm_write(bb_bicg_B9_stall_region_out_unnamed_bicg16_bicg_avm_write),
        .out_unnamed_bicg16_bicg_avm_writedata(bb_bicg_B9_stall_region_out_unnamed_bicg16_bicg_avm_writedata),
        .out_unnamed_bicg17_bicg_avm_address(bb_bicg_B9_stall_region_out_unnamed_bicg17_bicg_avm_address),
        .out_unnamed_bicg17_bicg_avm_burstcount(bb_bicg_B9_stall_region_out_unnamed_bicg17_bicg_avm_burstcount),
        .out_unnamed_bicg17_bicg_avm_byteenable(bb_bicg_B9_stall_region_out_unnamed_bicg17_bicg_avm_byteenable),
        .out_unnamed_bicg17_bicg_avm_enable(bb_bicg_B9_stall_region_out_unnamed_bicg17_bicg_avm_enable),
        .out_unnamed_bicg17_bicg_avm_read(bb_bicg_B9_stall_region_out_unnamed_bicg17_bicg_avm_read),
        .out_unnamed_bicg17_bicg_avm_write(bb_bicg_B9_stall_region_out_unnamed_bicg17_bicg_avm_write),
        .out_unnamed_bicg17_bicg_avm_writedata(bb_bicg_B9_stall_region_out_unnamed_bicg17_bicg_avm_writedata),
        .out_unnamed_bicg18_bicg_avm_address(bb_bicg_B9_stall_region_out_unnamed_bicg18_bicg_avm_address),
        .out_unnamed_bicg18_bicg_avm_burstcount(bb_bicg_B9_stall_region_out_unnamed_bicg18_bicg_avm_burstcount),
        .out_unnamed_bicg18_bicg_avm_byteenable(bb_bicg_B9_stall_region_out_unnamed_bicg18_bicg_avm_byteenable),
        .out_unnamed_bicg18_bicg_avm_enable(bb_bicg_B9_stall_region_out_unnamed_bicg18_bicg_avm_enable),
        .out_unnamed_bicg18_bicg_avm_read(bb_bicg_B9_stall_region_out_unnamed_bicg18_bicg_avm_read),
        .out_unnamed_bicg18_bicg_avm_write(bb_bicg_B9_stall_region_out_unnamed_bicg18_bicg_avm_write),
        .out_unnamed_bicg18_bicg_avm_writedata(bb_bicg_B9_stall_region_out_unnamed_bicg18_bicg_avm_writedata),
        .out_valid_out(bb_bicg_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bicg_B9_branch(BLACKBOX,3)
    bicg_B9_branch thebicg_B9_branch (
        .in_c0_exe2141(bb_bicg_B9_stall_region_out_c0_exe2141),
        .in_c0_exe3142(bb_bicg_B9_stall_region_out_c0_exe3142),
        .in_c0_exe4143(bb_bicg_B9_stall_region_out_c0_exe4143),
        .in_c0_exe5144(bb_bicg_B9_stall_region_out_c0_exe5144),
        .in_c0_exe6145(bb_bicg_B9_stall_region_out_c0_exe6145),
        .in_c0_exe7146(bb_bicg_B9_stall_region_out_c0_exe7146),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_bicg_B9_stall_region_out_valid_out),
        .out_c0_exe2141(bicg_B9_branch_out_c0_exe2141),
        .out_c0_exe3142(bicg_B9_branch_out_c0_exe3142),
        .out_c0_exe5144(bicg_B9_branch_out_c0_exe5144),
        .out_c0_exe6145(bicg_B9_branch_out_c0_exe6145),
        .out_c0_exe7146(bicg_B9_branch_out_c0_exe7146),
        .out_stall_out(bicg_B9_branch_out_stall_out),
        .out_valid_out_0(bicg_B9_branch_out_valid_out_0),
        .out_valid_out_1(bicg_B9_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2141(GPOUT,44)
    assign out_c0_exe2141 = bicg_B9_branch_out_c0_exe2141;

    // out_c0_exe3142(GPOUT,45)
    assign out_c0_exe3142 = bicg_B9_branch_out_c0_exe3142;

    // out_c0_exe5144(GPOUT,46)
    assign out_c0_exe5144 = bicg_B9_branch_out_c0_exe5144;

    // out_c0_exe6145(GPOUT,47)
    assign out_c0_exe6145 = bicg_B9_branch_out_c0_exe6145;

    // out_c0_exe7146(GPOUT,48)
    assign out_c0_exe7146 = bicg_B9_branch_out_c0_exe7146;

    // out_exiting_stall_out(GPOUT,49)
    assign out_exiting_stall_out = bb_bicg_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,50)
    assign out_exiting_valid_out = bb_bicg_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_valid_out;

    // out_memdep_6_bicg_avm_address(GPOUT,51)
    assign out_memdep_6_bicg_avm_address = bb_bicg_B9_stall_region_out_memdep_6_bicg_avm_address;

    // out_memdep_6_bicg_avm_burstcount(GPOUT,52)
    assign out_memdep_6_bicg_avm_burstcount = bb_bicg_B9_stall_region_out_memdep_6_bicg_avm_burstcount;

    // out_memdep_6_bicg_avm_byteenable(GPOUT,53)
    assign out_memdep_6_bicg_avm_byteenable = bb_bicg_B9_stall_region_out_memdep_6_bicg_avm_byteenable;

    // out_memdep_6_bicg_avm_enable(GPOUT,54)
    assign out_memdep_6_bicg_avm_enable = bb_bicg_B9_stall_region_out_memdep_6_bicg_avm_enable;

    // out_memdep_6_bicg_avm_read(GPOUT,55)
    assign out_memdep_6_bicg_avm_read = bb_bicg_B9_stall_region_out_memdep_6_bicg_avm_read;

    // out_memdep_6_bicg_avm_write(GPOUT,56)
    assign out_memdep_6_bicg_avm_write = bb_bicg_B9_stall_region_out_memdep_6_bicg_avm_write;

    // out_memdep_6_bicg_avm_writedata(GPOUT,57)
    assign out_memdep_6_bicg_avm_writedata = bb_bicg_B9_stall_region_out_memdep_6_bicg_avm_writedata;

    // out_stall_in_0(GPOUT,58)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,59)
    assign out_stall_out_0 = bicg_B9_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,60)
    assign out_stall_out_1 = bicg_B9_merge_out_stall_out_1;

    // out_unnamed_bicg15_bicg_avm_address(GPOUT,61)
    assign out_unnamed_bicg15_bicg_avm_address = bb_bicg_B9_stall_region_out_unnamed_bicg15_bicg_avm_address;

    // out_unnamed_bicg15_bicg_avm_burstcount(GPOUT,62)
    assign out_unnamed_bicg15_bicg_avm_burstcount = bb_bicg_B9_stall_region_out_unnamed_bicg15_bicg_avm_burstcount;

    // out_unnamed_bicg15_bicg_avm_byteenable(GPOUT,63)
    assign out_unnamed_bicg15_bicg_avm_byteenable = bb_bicg_B9_stall_region_out_unnamed_bicg15_bicg_avm_byteenable;

    // out_unnamed_bicg15_bicg_avm_enable(GPOUT,64)
    assign out_unnamed_bicg15_bicg_avm_enable = bb_bicg_B9_stall_region_out_unnamed_bicg15_bicg_avm_enable;

    // out_unnamed_bicg15_bicg_avm_read(GPOUT,65)
    assign out_unnamed_bicg15_bicg_avm_read = bb_bicg_B9_stall_region_out_unnamed_bicg15_bicg_avm_read;

    // out_unnamed_bicg15_bicg_avm_write(GPOUT,66)
    assign out_unnamed_bicg15_bicg_avm_write = bb_bicg_B9_stall_region_out_unnamed_bicg15_bicg_avm_write;

    // out_unnamed_bicg15_bicg_avm_writedata(GPOUT,67)
    assign out_unnamed_bicg15_bicg_avm_writedata = bb_bicg_B9_stall_region_out_unnamed_bicg15_bicg_avm_writedata;

    // out_unnamed_bicg16_bicg_avm_address(GPOUT,68)
    assign out_unnamed_bicg16_bicg_avm_address = bb_bicg_B9_stall_region_out_unnamed_bicg16_bicg_avm_address;

    // out_unnamed_bicg16_bicg_avm_burstcount(GPOUT,69)
    assign out_unnamed_bicg16_bicg_avm_burstcount = bb_bicg_B9_stall_region_out_unnamed_bicg16_bicg_avm_burstcount;

    // out_unnamed_bicg16_bicg_avm_byteenable(GPOUT,70)
    assign out_unnamed_bicg16_bicg_avm_byteenable = bb_bicg_B9_stall_region_out_unnamed_bicg16_bicg_avm_byteenable;

    // out_unnamed_bicg16_bicg_avm_enable(GPOUT,71)
    assign out_unnamed_bicg16_bicg_avm_enable = bb_bicg_B9_stall_region_out_unnamed_bicg16_bicg_avm_enable;

    // out_unnamed_bicg16_bicg_avm_read(GPOUT,72)
    assign out_unnamed_bicg16_bicg_avm_read = bb_bicg_B9_stall_region_out_unnamed_bicg16_bicg_avm_read;

    // out_unnamed_bicg16_bicg_avm_write(GPOUT,73)
    assign out_unnamed_bicg16_bicg_avm_write = bb_bicg_B9_stall_region_out_unnamed_bicg16_bicg_avm_write;

    // out_unnamed_bicg16_bicg_avm_writedata(GPOUT,74)
    assign out_unnamed_bicg16_bicg_avm_writedata = bb_bicg_B9_stall_region_out_unnamed_bicg16_bicg_avm_writedata;

    // out_unnamed_bicg17_bicg_avm_address(GPOUT,75)
    assign out_unnamed_bicg17_bicg_avm_address = bb_bicg_B9_stall_region_out_unnamed_bicg17_bicg_avm_address;

    // out_unnamed_bicg17_bicg_avm_burstcount(GPOUT,76)
    assign out_unnamed_bicg17_bicg_avm_burstcount = bb_bicg_B9_stall_region_out_unnamed_bicg17_bicg_avm_burstcount;

    // out_unnamed_bicg17_bicg_avm_byteenable(GPOUT,77)
    assign out_unnamed_bicg17_bicg_avm_byteenable = bb_bicg_B9_stall_region_out_unnamed_bicg17_bicg_avm_byteenable;

    // out_unnamed_bicg17_bicg_avm_enable(GPOUT,78)
    assign out_unnamed_bicg17_bicg_avm_enable = bb_bicg_B9_stall_region_out_unnamed_bicg17_bicg_avm_enable;

    // out_unnamed_bicg17_bicg_avm_read(GPOUT,79)
    assign out_unnamed_bicg17_bicg_avm_read = bb_bicg_B9_stall_region_out_unnamed_bicg17_bicg_avm_read;

    // out_unnamed_bicg17_bicg_avm_write(GPOUT,80)
    assign out_unnamed_bicg17_bicg_avm_write = bb_bicg_B9_stall_region_out_unnamed_bicg17_bicg_avm_write;

    // out_unnamed_bicg17_bicg_avm_writedata(GPOUT,81)
    assign out_unnamed_bicg17_bicg_avm_writedata = bb_bicg_B9_stall_region_out_unnamed_bicg17_bicg_avm_writedata;

    // out_unnamed_bicg18_bicg_avm_address(GPOUT,82)
    assign out_unnamed_bicg18_bicg_avm_address = bb_bicg_B9_stall_region_out_unnamed_bicg18_bicg_avm_address;

    // out_unnamed_bicg18_bicg_avm_burstcount(GPOUT,83)
    assign out_unnamed_bicg18_bicg_avm_burstcount = bb_bicg_B9_stall_region_out_unnamed_bicg18_bicg_avm_burstcount;

    // out_unnamed_bicg18_bicg_avm_byteenable(GPOUT,84)
    assign out_unnamed_bicg18_bicg_avm_byteenable = bb_bicg_B9_stall_region_out_unnamed_bicg18_bicg_avm_byteenable;

    // out_unnamed_bicg18_bicg_avm_enable(GPOUT,85)
    assign out_unnamed_bicg18_bicg_avm_enable = bb_bicg_B9_stall_region_out_unnamed_bicg18_bicg_avm_enable;

    // out_unnamed_bicg18_bicg_avm_read(GPOUT,86)
    assign out_unnamed_bicg18_bicg_avm_read = bb_bicg_B9_stall_region_out_unnamed_bicg18_bicg_avm_read;

    // out_unnamed_bicg18_bicg_avm_write(GPOUT,87)
    assign out_unnamed_bicg18_bicg_avm_write = bb_bicg_B9_stall_region_out_unnamed_bicg18_bicg_avm_write;

    // out_unnamed_bicg18_bicg_avm_writedata(GPOUT,88)
    assign out_unnamed_bicg18_bicg_avm_writedata = bb_bicg_B9_stall_region_out_unnamed_bicg18_bicg_avm_writedata;

    // out_valid_in_0(GPOUT,89)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,90)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,91)
    assign out_valid_out_0 = bicg_B9_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,92)
    assign out_valid_out_1 = bicg_B9_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,94)
    assign out_pipeline_valid_out = bb_bicg_B9_stall_region_out_pipeline_valid_out;

endmodule
