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

// SystemVerilog created from bb_atax_B5
// Created for function/kernel atax
// SystemVerilog created on Fri Apr  7 18:08:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B5 (
    input wire [63:0] in_arrayidx165_0,
    input wire [63:0] in_arrayidx165_1,
    input wire [0:0] in_exitcond967_0,
    input wire [0:0] in_exitcond967_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked11_0,
    input wire [0:0] in_forked11_1,
    input wire [0:0] in_forked3563_0,
    input wire [0:0] in_forked3563_1,
    input wire [63:0] in_idxprom64_0,
    input wire [63:0] in_idxprom64_1,
    input wire [0:0] in_memdep_phi3_pop1039_pop1569_0,
    input wire [0:0] in_memdep_phi3_pop1039_pop1569_1,
    input wire [0:0] in_memdep_phi3_pop1062_0,
    input wire [0:0] in_memdep_phi3_pop1062_1,
    input wire [0:0] in_memdep_phi_pop936_pop1466_0,
    input wire [0:0] in_memdep_phi_pop936_pop1466_1,
    input wire [0:0] in_memdep_phi_pop957_0,
    input wire [0:0] in_memdep_phi_pop957_1,
    input wire [0:0] in_notcmp2668_0,
    input wire [0:0] in_notcmp2668_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_atax4_0,
    input wire [31:0] in_unnamed_atax4_1,
    input wire [31:0] in_unnamed_atax5_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax5_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax5_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax5_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax6_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax6_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax6_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax6_atax_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10128,
    output wire [0:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [63:0] out_c0_exe2120,
    output wire [31:0] out_c0_exe3121,
    output wire [0:0] out_c0_exe5123,
    output wire [0:0] out_c0_exe6124,
    output wire [0:0] out_c0_exe7125,
    output wire [63:0] out_c0_exe8126,
    output wire [0:0] out_c0_exe9127,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_atax5_atax_avm_address,
    output wire [0:0] out_unnamed_atax5_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax5_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax5_atax_avm_enable,
    output wire [0:0] out_unnamed_atax5_atax_avm_read,
    output wire [0:0] out_unnamed_atax5_atax_avm_write,
    output wire [31:0] out_unnamed_atax5_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax6_atax_avm_address,
    output wire [0:0] out_unnamed_atax6_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax6_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax6_atax_avm_enable,
    output wire [0:0] out_unnamed_atax6_atax_avm_read,
    output wire [0:0] out_unnamed_atax6_atax_avm_write,
    output wire [31:0] out_unnamed_atax6_atax_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] atax_B5_branch_out_c0_exe10128;
    wire [0:0] atax_B5_branch_out_c0_exe11;
    wire [0:0] atax_B5_branch_out_c0_exe12;
    wire [63:0] atax_B5_branch_out_c0_exe2120;
    wire [31:0] atax_B5_branch_out_c0_exe3121;
    wire [0:0] atax_B5_branch_out_c0_exe5123;
    wire [0:0] atax_B5_branch_out_c0_exe6124;
    wire [0:0] atax_B5_branch_out_c0_exe7125;
    wire [63:0] atax_B5_branch_out_c0_exe8126;
    wire [0:0] atax_B5_branch_out_c0_exe9127;
    wire [0:0] atax_B5_branch_out_stall_out;
    wire [0:0] atax_B5_branch_out_valid_out_0;
    wire [0:0] atax_B5_branch_out_valid_out_1;
    wire [63:0] atax_B5_merge_out_arrayidx165;
    wire [0:0] atax_B5_merge_out_exitcond967;
    wire [0:0] atax_B5_merge_out_forked11;
    wire [0:0] atax_B5_merge_out_forked3563;
    wire [63:0] atax_B5_merge_out_idxprom64;
    wire [0:0] atax_B5_merge_out_memdep_phi3_pop1039_pop1569;
    wire [0:0] atax_B5_merge_out_memdep_phi3_pop1062;
    wire [0:0] atax_B5_merge_out_memdep_phi_pop936_pop1466;
    wire [0:0] atax_B5_merge_out_memdep_phi_pop957;
    wire [0:0] atax_B5_merge_out_notcmp2668;
    wire [0:0] atax_B5_merge_out_stall_out_0;
    wire [0:0] atax_B5_merge_out_stall_out_1;
    wire [31:0] atax_B5_merge_out_unnamed_atax4;
    wire [0:0] atax_B5_merge_out_valid_out;
    wire [0:0] bb_atax_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_stall_out;
    wire [0:0] bb_atax_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_valid_out;
    wire [0:0] bb_atax_B5_stall_region_out_c0_exe10128;
    wire [0:0] bb_atax_B5_stall_region_out_c0_exe11;
    wire [0:0] bb_atax_B5_stall_region_out_c0_exe12;
    wire [63:0] bb_atax_B5_stall_region_out_c0_exe2120;
    wire [31:0] bb_atax_B5_stall_region_out_c0_exe3121;
    wire [0:0] bb_atax_B5_stall_region_out_c0_exe4122;
    wire [0:0] bb_atax_B5_stall_region_out_c0_exe5123;
    wire [0:0] bb_atax_B5_stall_region_out_c0_exe6124;
    wire [0:0] bb_atax_B5_stall_region_out_c0_exe7125;
    wire [63:0] bb_atax_B5_stall_region_out_c0_exe8126;
    wire [0:0] bb_atax_B5_stall_region_out_c0_exe9127;
    wire [0:0] bb_atax_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_atax_B5_stall_region_out_stall_out;
    wire [31:0] bb_atax_B5_stall_region_out_unnamed_atax5_atax_avm_address;
    wire [0:0] bb_atax_B5_stall_region_out_unnamed_atax5_atax_avm_burstcount;
    wire [3:0] bb_atax_B5_stall_region_out_unnamed_atax5_atax_avm_byteenable;
    wire [0:0] bb_atax_B5_stall_region_out_unnamed_atax5_atax_avm_enable;
    wire [0:0] bb_atax_B5_stall_region_out_unnamed_atax5_atax_avm_read;
    wire [0:0] bb_atax_B5_stall_region_out_unnamed_atax5_atax_avm_write;
    wire [31:0] bb_atax_B5_stall_region_out_unnamed_atax5_atax_avm_writedata;
    wire [31:0] bb_atax_B5_stall_region_out_unnamed_atax6_atax_avm_address;
    wire [0:0] bb_atax_B5_stall_region_out_unnamed_atax6_atax_avm_burstcount;
    wire [3:0] bb_atax_B5_stall_region_out_unnamed_atax6_atax_avm_byteenable;
    wire [0:0] bb_atax_B5_stall_region_out_unnamed_atax6_atax_avm_enable;
    wire [0:0] bb_atax_B5_stall_region_out_unnamed_atax6_atax_avm_read;
    wire [0:0] bb_atax_B5_stall_region_out_unnamed_atax6_atax_avm_write;
    wire [31:0] bb_atax_B5_stall_region_out_unnamed_atax6_atax_avm_writedata;
    wire [0:0] bb_atax_B5_stall_region_out_valid_out;


    // atax_B5_merge(BLACKBOX,3)
    atax_B5_merge theatax_B5_merge (
        .in_arrayidx165_0(in_arrayidx165_0),
        .in_arrayidx165_1(in_arrayidx165_1),
        .in_exitcond967_0(in_exitcond967_0),
        .in_exitcond967_1(in_exitcond967_1),
        .in_forked11_0(in_forked11_0),
        .in_forked11_1(in_forked11_1),
        .in_forked3563_0(in_forked3563_0),
        .in_forked3563_1(in_forked3563_1),
        .in_idxprom64_0(in_idxprom64_0),
        .in_idxprom64_1(in_idxprom64_1),
        .in_memdep_phi3_pop1039_pop1569_0(in_memdep_phi3_pop1039_pop1569_0),
        .in_memdep_phi3_pop1039_pop1569_1(in_memdep_phi3_pop1039_pop1569_1),
        .in_memdep_phi3_pop1062_0(in_memdep_phi3_pop1062_0),
        .in_memdep_phi3_pop1062_1(in_memdep_phi3_pop1062_1),
        .in_memdep_phi_pop936_pop1466_0(in_memdep_phi_pop936_pop1466_0),
        .in_memdep_phi_pop936_pop1466_1(in_memdep_phi_pop936_pop1466_1),
        .in_memdep_phi_pop957_0(in_memdep_phi_pop957_0),
        .in_memdep_phi_pop957_1(in_memdep_phi_pop957_1),
        .in_notcmp2668_0(in_notcmp2668_0),
        .in_notcmp2668_1(in_notcmp2668_1),
        .in_stall_in(bb_atax_B5_stall_region_out_stall_out),
        .in_unnamed_atax4_0(in_unnamed_atax4_0),
        .in_unnamed_atax4_1(in_unnamed_atax4_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_arrayidx165(atax_B5_merge_out_arrayidx165),
        .out_exitcond967(atax_B5_merge_out_exitcond967),
        .out_forked11(atax_B5_merge_out_forked11),
        .out_forked3563(atax_B5_merge_out_forked3563),
        .out_idxprom64(atax_B5_merge_out_idxprom64),
        .out_memdep_phi3_pop1039_pop1569(atax_B5_merge_out_memdep_phi3_pop1039_pop1569),
        .out_memdep_phi3_pop1062(atax_B5_merge_out_memdep_phi3_pop1062),
        .out_memdep_phi_pop936_pop1466(atax_B5_merge_out_memdep_phi_pop936_pop1466),
        .out_memdep_phi_pop957(atax_B5_merge_out_memdep_phi_pop957),
        .out_notcmp2668(atax_B5_merge_out_notcmp2668),
        .out_stall_out_0(atax_B5_merge_out_stall_out_0),
        .out_stall_out_1(atax_B5_merge_out_stall_out_1),
        .out_unnamed_atax4(atax_B5_merge_out_unnamed_atax4),
        .out_valid_out(atax_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B5_stall_region(BLACKBOX,4)
    atax_bb_B5_stall_region thebb_atax_B5_stall_region (
        .in_arrayidx165(atax_B5_merge_out_arrayidx165),
        .in_exitcond967(atax_B5_merge_out_exitcond967),
        .in_flush(in_flush),
        .in_forked11(atax_B5_merge_out_forked11),
        .in_forked3563(atax_B5_merge_out_forked3563),
        .in_idxprom64(atax_B5_merge_out_idxprom64),
        .in_memdep_phi3_pop1039_pop1569(atax_B5_merge_out_memdep_phi3_pop1039_pop1569),
        .in_memdep_phi3_pop1062(atax_B5_merge_out_memdep_phi3_pop1062),
        .in_memdep_phi_pop936_pop1466(atax_B5_merge_out_memdep_phi_pop936_pop1466),
        .in_memdep_phi_pop957(atax_B5_merge_out_memdep_phi_pop957),
        .in_notcmp2668(atax_B5_merge_out_notcmp2668),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(atax_B5_branch_out_stall_out),
        .in_unnamed_atax4(atax_B5_merge_out_unnamed_atax4),
        .in_unnamed_atax5_atax_avm_readdata(in_unnamed_atax5_atax_avm_readdata),
        .in_unnamed_atax5_atax_avm_readdatavalid(in_unnamed_atax5_atax_avm_readdatavalid),
        .in_unnamed_atax5_atax_avm_waitrequest(in_unnamed_atax5_atax_avm_waitrequest),
        .in_unnamed_atax5_atax_avm_writeack(in_unnamed_atax5_atax_avm_writeack),
        .in_unnamed_atax6_atax_avm_readdata(in_unnamed_atax6_atax_avm_readdata),
        .in_unnamed_atax6_atax_avm_readdatavalid(in_unnamed_atax6_atax_avm_readdatavalid),
        .in_unnamed_atax6_atax_avm_waitrequest(in_unnamed_atax6_atax_avm_waitrequest),
        .in_unnamed_atax6_atax_avm_writeack(in_unnamed_atax6_atax_avm_writeack),
        .in_valid_in(atax_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_stall_out(bb_atax_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_valid_out(bb_atax_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_valid_out),
        .out_c0_exe10128(bb_atax_B5_stall_region_out_c0_exe10128),
        .out_c0_exe11(bb_atax_B5_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_atax_B5_stall_region_out_c0_exe12),
        .out_c0_exe2120(bb_atax_B5_stall_region_out_c0_exe2120),
        .out_c0_exe3121(bb_atax_B5_stall_region_out_c0_exe3121),
        .out_c0_exe4122(bb_atax_B5_stall_region_out_c0_exe4122),
        .out_c0_exe5123(bb_atax_B5_stall_region_out_c0_exe5123),
        .out_c0_exe6124(bb_atax_B5_stall_region_out_c0_exe6124),
        .out_c0_exe7125(bb_atax_B5_stall_region_out_c0_exe7125),
        .out_c0_exe8126(bb_atax_B5_stall_region_out_c0_exe8126),
        .out_c0_exe9127(bb_atax_B5_stall_region_out_c0_exe9127),
        .out_pipeline_valid_out(bb_atax_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_atax_B5_stall_region_out_stall_out),
        .out_unnamed_atax5_atax_avm_address(bb_atax_B5_stall_region_out_unnamed_atax5_atax_avm_address),
        .out_unnamed_atax5_atax_avm_burstcount(bb_atax_B5_stall_region_out_unnamed_atax5_atax_avm_burstcount),
        .out_unnamed_atax5_atax_avm_byteenable(bb_atax_B5_stall_region_out_unnamed_atax5_atax_avm_byteenable),
        .out_unnamed_atax5_atax_avm_enable(bb_atax_B5_stall_region_out_unnamed_atax5_atax_avm_enable),
        .out_unnamed_atax5_atax_avm_read(bb_atax_B5_stall_region_out_unnamed_atax5_atax_avm_read),
        .out_unnamed_atax5_atax_avm_write(bb_atax_B5_stall_region_out_unnamed_atax5_atax_avm_write),
        .out_unnamed_atax5_atax_avm_writedata(bb_atax_B5_stall_region_out_unnamed_atax5_atax_avm_writedata),
        .out_unnamed_atax6_atax_avm_address(bb_atax_B5_stall_region_out_unnamed_atax6_atax_avm_address),
        .out_unnamed_atax6_atax_avm_burstcount(bb_atax_B5_stall_region_out_unnamed_atax6_atax_avm_burstcount),
        .out_unnamed_atax6_atax_avm_byteenable(bb_atax_B5_stall_region_out_unnamed_atax6_atax_avm_byteenable),
        .out_unnamed_atax6_atax_avm_enable(bb_atax_B5_stall_region_out_unnamed_atax6_atax_avm_enable),
        .out_unnamed_atax6_atax_avm_read(bb_atax_B5_stall_region_out_unnamed_atax6_atax_avm_read),
        .out_unnamed_atax6_atax_avm_write(bb_atax_B5_stall_region_out_unnamed_atax6_atax_avm_write),
        .out_unnamed_atax6_atax_avm_writedata(bb_atax_B5_stall_region_out_unnamed_atax6_atax_avm_writedata),
        .out_valid_out(bb_atax_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B5_branch(BLACKBOX,2)
    atax_B5_branch theatax_B5_branch (
        .in_c0_exe10128(bb_atax_B5_stall_region_out_c0_exe10128),
        .in_c0_exe11(bb_atax_B5_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_atax_B5_stall_region_out_c0_exe12),
        .in_c0_exe2120(bb_atax_B5_stall_region_out_c0_exe2120),
        .in_c0_exe3121(bb_atax_B5_stall_region_out_c0_exe3121),
        .in_c0_exe4122(bb_atax_B5_stall_region_out_c0_exe4122),
        .in_c0_exe5123(bb_atax_B5_stall_region_out_c0_exe5123),
        .in_c0_exe6124(bb_atax_B5_stall_region_out_c0_exe6124),
        .in_c0_exe7125(bb_atax_B5_stall_region_out_c0_exe7125),
        .in_c0_exe8126(bb_atax_B5_stall_region_out_c0_exe8126),
        .in_c0_exe9127(bb_atax_B5_stall_region_out_c0_exe9127),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_atax_B5_stall_region_out_valid_out),
        .out_c0_exe10128(atax_B5_branch_out_c0_exe10128),
        .out_c0_exe11(atax_B5_branch_out_c0_exe11),
        .out_c0_exe12(atax_B5_branch_out_c0_exe12),
        .out_c0_exe2120(atax_B5_branch_out_c0_exe2120),
        .out_c0_exe3121(atax_B5_branch_out_c0_exe3121),
        .out_c0_exe5123(atax_B5_branch_out_c0_exe5123),
        .out_c0_exe6124(atax_B5_branch_out_c0_exe6124),
        .out_c0_exe7125(atax_B5_branch_out_c0_exe7125),
        .out_c0_exe8126(atax_B5_branch_out_c0_exe8126),
        .out_c0_exe9127(atax_B5_branch_out_c0_exe9127),
        .out_stall_out(atax_B5_branch_out_stall_out),
        .out_valid_out_0(atax_B5_branch_out_valid_out_0),
        .out_valid_out_1(atax_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10128(GPOUT,40)
    assign out_c0_exe10128 = atax_B5_branch_out_c0_exe10128;

    // out_c0_exe11(GPOUT,41)
    assign out_c0_exe11 = atax_B5_branch_out_c0_exe11;

    // out_c0_exe12(GPOUT,42)
    assign out_c0_exe12 = atax_B5_branch_out_c0_exe12;

    // out_c0_exe2120(GPOUT,43)
    assign out_c0_exe2120 = atax_B5_branch_out_c0_exe2120;

    // out_c0_exe3121(GPOUT,44)
    assign out_c0_exe3121 = atax_B5_branch_out_c0_exe3121;

    // out_c0_exe5123(GPOUT,45)
    assign out_c0_exe5123 = atax_B5_branch_out_c0_exe5123;

    // out_c0_exe6124(GPOUT,46)
    assign out_c0_exe6124 = atax_B5_branch_out_c0_exe6124;

    // out_c0_exe7125(GPOUT,47)
    assign out_c0_exe7125 = atax_B5_branch_out_c0_exe7125;

    // out_c0_exe8126(GPOUT,48)
    assign out_c0_exe8126 = atax_B5_branch_out_c0_exe8126;

    // out_c0_exe9127(GPOUT,49)
    assign out_c0_exe9127 = atax_B5_branch_out_c0_exe9127;

    // out_exiting_stall_out(GPOUT,50)
    assign out_exiting_stall_out = bb_atax_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,51)
    assign out_exiting_valid_out = bb_atax_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_valid_out;

    // out_stall_in_0(GPOUT,52)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,53)
    assign out_stall_out_0 = atax_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,54)
    assign out_stall_out_1 = atax_B5_merge_out_stall_out_1;

    // out_unnamed_atax5_atax_avm_address(GPOUT,55)
    assign out_unnamed_atax5_atax_avm_address = bb_atax_B5_stall_region_out_unnamed_atax5_atax_avm_address;

    // out_unnamed_atax5_atax_avm_burstcount(GPOUT,56)
    assign out_unnamed_atax5_atax_avm_burstcount = bb_atax_B5_stall_region_out_unnamed_atax5_atax_avm_burstcount;

    // out_unnamed_atax5_atax_avm_byteenable(GPOUT,57)
    assign out_unnamed_atax5_atax_avm_byteenable = bb_atax_B5_stall_region_out_unnamed_atax5_atax_avm_byteenable;

    // out_unnamed_atax5_atax_avm_enable(GPOUT,58)
    assign out_unnamed_atax5_atax_avm_enable = bb_atax_B5_stall_region_out_unnamed_atax5_atax_avm_enable;

    // out_unnamed_atax5_atax_avm_read(GPOUT,59)
    assign out_unnamed_atax5_atax_avm_read = bb_atax_B5_stall_region_out_unnamed_atax5_atax_avm_read;

    // out_unnamed_atax5_atax_avm_write(GPOUT,60)
    assign out_unnamed_atax5_atax_avm_write = bb_atax_B5_stall_region_out_unnamed_atax5_atax_avm_write;

    // out_unnamed_atax5_atax_avm_writedata(GPOUT,61)
    assign out_unnamed_atax5_atax_avm_writedata = bb_atax_B5_stall_region_out_unnamed_atax5_atax_avm_writedata;

    // out_unnamed_atax6_atax_avm_address(GPOUT,62)
    assign out_unnamed_atax6_atax_avm_address = bb_atax_B5_stall_region_out_unnamed_atax6_atax_avm_address;

    // out_unnamed_atax6_atax_avm_burstcount(GPOUT,63)
    assign out_unnamed_atax6_atax_avm_burstcount = bb_atax_B5_stall_region_out_unnamed_atax6_atax_avm_burstcount;

    // out_unnamed_atax6_atax_avm_byteenable(GPOUT,64)
    assign out_unnamed_atax6_atax_avm_byteenable = bb_atax_B5_stall_region_out_unnamed_atax6_atax_avm_byteenable;

    // out_unnamed_atax6_atax_avm_enable(GPOUT,65)
    assign out_unnamed_atax6_atax_avm_enable = bb_atax_B5_stall_region_out_unnamed_atax6_atax_avm_enable;

    // out_unnamed_atax6_atax_avm_read(GPOUT,66)
    assign out_unnamed_atax6_atax_avm_read = bb_atax_B5_stall_region_out_unnamed_atax6_atax_avm_read;

    // out_unnamed_atax6_atax_avm_write(GPOUT,67)
    assign out_unnamed_atax6_atax_avm_write = bb_atax_B5_stall_region_out_unnamed_atax6_atax_avm_write;

    // out_unnamed_atax6_atax_avm_writedata(GPOUT,68)
    assign out_unnamed_atax6_atax_avm_writedata = bb_atax_B5_stall_region_out_unnamed_atax6_atax_avm_writedata;

    // out_valid_in_0(GPOUT,69)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,70)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,71)
    assign out_valid_out_0 = atax_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,72)
    assign out_valid_out_1 = atax_B5_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,74)
    assign out_pipeline_valid_out = bb_atax_B5_stall_region_out_pipeline_valid_out;

endmodule
