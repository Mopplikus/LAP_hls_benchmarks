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

// SystemVerilog created from bb_gaussian_B7
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B7 (
    input wire [31:0] in_add32_pop1566_0,
    input wire [31:0] in_add32_pop1566_1,
    input wire [31:0] in_add54_0,
    input wire [31:0] in_add54_1,
    input wire [0:0] in_cmp41634_pop1658_0,
    input wire [0:0] in_cmp41634_pop1658_1,
    input wire [0:0] in_cmp41657_0,
    input wire [0:0] in_cmp41657_1,
    input wire [0:0] in_flush,
    input wire [31:0] in_fpga_indvars_iv728_pop1364_0,
    input wire [31:0] in_fpga_indvars_iv728_pop1364_1,
    input wire [31:0] in_fpga_indvars_iv745_0,
    input wire [31:0] in_fpga_indvars_iv745_1,
    input wire [31:0] in_fpga_indvars_iv926_pop1263_0,
    input wire [31:0] in_fpga_indvars_iv926_pop1263_1,
    input wire [31:0] in_fpga_indvars_iv942_0,
    input wire [31:0] in_fpga_indvars_iv942_1,
    input wire [31:0] in_i_017_pop960_0,
    input wire [31:0] in_i_017_pop960_1,
    input wire [31:0] in_j_01830_pop1465_0,
    input wire [31:0] in_j_01830_pop1465_1,
    input wire [31:0] in_j_01848_0,
    input wire [31:0] in_j_01848_1,
    input wire [31:0] in_lm1_gaussian_avm_readdata,
    input wire [0:0] in_lm1_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm1_gaussian_avm_waitrequest,
    input wire [0:0] in_lm1_gaussian_avm_writeack,
    input wire [31:0] in_lm62_gaussian_avm_readdata,
    input wire [0:0] in_lm62_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm62_gaussian_avm_waitrequest,
    input wire [0:0] in_lm62_gaussian_avm_writeack,
    input wire [31:0] in_lm83_gaussian_avm_readdata,
    input wire [0:0] in_lm83_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm83_gaussian_avm_waitrequest,
    input wire [0:0] in_lm83_gaussian_avm_writeack,
    input wire [31:0] in_memdep_gaussian_avm_readdata,
    input wire [0:0] in_memdep_gaussian_avm_readdatavalid,
    input wire [0:0] in_memdep_gaussian_avm_waitrequest,
    input wire [0:0] in_memdep_gaussian_avm_writeack,
    input wire [0:0] in_memdep_phi4_pop723_pop1162_0,
    input wire [0:0] in_memdep_phi4_pop723_pop1162_1,
    input wire [0:0] in_memdep_phi4_pop72551_0,
    input wire [0:0] in_memdep_phi4_pop72551_1,
    input wire [0:0] in_memdep_phi_pop1061_0,
    input wire [0:0] in_memdep_phi_pop1061_1,
    input wire [0:0] in_notcmp1459_0,
    input wire [0:0] in_notcmp1459_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [32:0] in_unnamed_gaussian4_0,
    input wire [32:0] in_unnamed_gaussian4_1,
    input wire [0:0] in_unnamed_gaussian5_0,
    input wire [0:0] in_unnamed_gaussian5_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10154,
    output wire [0:0] out_c0_exe1145,
    output wire [0:0] out_c0_exe2146,
    output wire [0:0] out_c0_exe4148,
    output wire [31:0] out_c0_exe6150,
    output wire [31:0] out_c0_exe7151,
    output wire [31:0] out_c0_exe8152,
    output wire [0:0] out_c0_exe9153,
    output wire [31:0] out_lm1_gaussian_avm_address,
    output wire [0:0] out_lm1_gaussian_avm_burstcount,
    output wire [3:0] out_lm1_gaussian_avm_byteenable,
    output wire [0:0] out_lm1_gaussian_avm_enable,
    output wire [0:0] out_lm1_gaussian_avm_read,
    output wire [0:0] out_lm1_gaussian_avm_write,
    output wire [31:0] out_lm1_gaussian_avm_writedata,
    output wire [31:0] out_lm62_gaussian_avm_address,
    output wire [0:0] out_lm62_gaussian_avm_burstcount,
    output wire [3:0] out_lm62_gaussian_avm_byteenable,
    output wire [0:0] out_lm62_gaussian_avm_enable,
    output wire [0:0] out_lm62_gaussian_avm_read,
    output wire [0:0] out_lm62_gaussian_avm_write,
    output wire [31:0] out_lm62_gaussian_avm_writedata,
    output wire [31:0] out_lm83_gaussian_avm_address,
    output wire [0:0] out_lm83_gaussian_avm_burstcount,
    output wire [3:0] out_lm83_gaussian_avm_byteenable,
    output wire [0:0] out_lm83_gaussian_avm_enable,
    output wire [0:0] out_lm83_gaussian_avm_read,
    output wire [0:0] out_lm83_gaussian_avm_write,
    output wire [31:0] out_lm83_gaussian_avm_writedata,
    output wire [31:0] out_memdep_gaussian_avm_address,
    output wire [0:0] out_memdep_gaussian_avm_burstcount,
    output wire [3:0] out_memdep_gaussian_avm_byteenable,
    output wire [0:0] out_memdep_gaussian_avm_enable,
    output wire [0:0] out_memdep_gaussian_avm_read,
    output wire [0:0] out_memdep_gaussian_avm_write,
    output wire [31:0] out_memdep_gaussian_avm_writedata,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_gaussian_B7_stall_region_out_c0_exe10154;
    wire [0:0] bb_gaussian_B7_stall_region_out_c0_exe1145;
    wire [0:0] bb_gaussian_B7_stall_region_out_c0_exe2146;
    wire [0:0] bb_gaussian_B7_stall_region_out_c0_exe4148;
    wire [0:0] bb_gaussian_B7_stall_region_out_c0_exe5149;
    wire [31:0] bb_gaussian_B7_stall_region_out_c0_exe6150;
    wire [31:0] bb_gaussian_B7_stall_region_out_c0_exe7151;
    wire [31:0] bb_gaussian_B7_stall_region_out_c0_exe8152;
    wire [0:0] bb_gaussian_B7_stall_region_out_c0_exe9153;
    wire [31:0] bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_write;
    wire [31:0] bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_writedata;
    wire [31:0] bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_write;
    wire [31:0] bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_writedata;
    wire [31:0] bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_write;
    wire [31:0] bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_writedata;
    wire [31:0] bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_write;
    wire [31:0] bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_writedata;
    wire [0:0] bb_gaussian_B7_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_gaussian_B7_stall_region_out_stall_out;
    wire [0:0] bb_gaussian_B7_stall_region_out_valid_out;
    wire [0:0] gaussian_B7_branch_out_c0_exe10154;
    wire [0:0] gaussian_B7_branch_out_c0_exe1145;
    wire [0:0] gaussian_B7_branch_out_c0_exe2146;
    wire [0:0] gaussian_B7_branch_out_c0_exe4148;
    wire [31:0] gaussian_B7_branch_out_c0_exe6150;
    wire [31:0] gaussian_B7_branch_out_c0_exe7151;
    wire [31:0] gaussian_B7_branch_out_c0_exe8152;
    wire [0:0] gaussian_B7_branch_out_c0_exe9153;
    wire [0:0] gaussian_B7_branch_out_stall_out;
    wire [0:0] gaussian_B7_branch_out_valid_out_0;
    wire [0:0] gaussian_B7_branch_out_valid_out_1;
    wire [31:0] gaussian_B7_merge_out_add32_pop1566;
    wire [31:0] gaussian_B7_merge_out_add54;
    wire [0:0] gaussian_B7_merge_out_cmp41634_pop1658;
    wire [0:0] gaussian_B7_merge_out_cmp41657;
    wire [31:0] gaussian_B7_merge_out_fpga_indvars_iv728_pop1364;
    wire [31:0] gaussian_B7_merge_out_fpga_indvars_iv745;
    wire [31:0] gaussian_B7_merge_out_fpga_indvars_iv926_pop1263;
    wire [31:0] gaussian_B7_merge_out_fpga_indvars_iv942;
    wire [31:0] gaussian_B7_merge_out_i_017_pop960;
    wire [31:0] gaussian_B7_merge_out_j_01830_pop1465;
    wire [31:0] gaussian_B7_merge_out_j_01848;
    wire [0:0] gaussian_B7_merge_out_memdep_phi4_pop723_pop1162;
    wire [0:0] gaussian_B7_merge_out_memdep_phi4_pop72551;
    wire [0:0] gaussian_B7_merge_out_memdep_phi_pop1061;
    wire [0:0] gaussian_B7_merge_out_notcmp1459;
    wire [0:0] gaussian_B7_merge_out_stall_out_0;
    wire [0:0] gaussian_B7_merge_out_stall_out_1;
    wire [32:0] gaussian_B7_merge_out_unnamed_gaussian4;
    wire [0:0] gaussian_B7_merge_out_unnamed_gaussian5;
    wire [0:0] gaussian_B7_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // gaussian_B7_merge(BLACKBOX,4)
    gaussian_B7_merge thegaussian_B7_merge (
        .in_add32_pop1566_0(in_add32_pop1566_0),
        .in_add32_pop1566_1(in_add32_pop1566_1),
        .in_add54_0(in_add54_0),
        .in_add54_1(in_add54_1),
        .in_cmp41634_pop1658_0(in_cmp41634_pop1658_0),
        .in_cmp41634_pop1658_1(in_cmp41634_pop1658_1),
        .in_cmp41657_0(in_cmp41657_0),
        .in_cmp41657_1(in_cmp41657_1),
        .in_fpga_indvars_iv728_pop1364_0(in_fpga_indvars_iv728_pop1364_0),
        .in_fpga_indvars_iv728_pop1364_1(in_fpga_indvars_iv728_pop1364_1),
        .in_fpga_indvars_iv745_0(in_fpga_indvars_iv745_0),
        .in_fpga_indvars_iv745_1(in_fpga_indvars_iv745_1),
        .in_fpga_indvars_iv926_pop1263_0(in_fpga_indvars_iv926_pop1263_0),
        .in_fpga_indvars_iv926_pop1263_1(in_fpga_indvars_iv926_pop1263_1),
        .in_fpga_indvars_iv942_0(in_fpga_indvars_iv942_0),
        .in_fpga_indvars_iv942_1(in_fpga_indvars_iv942_1),
        .in_i_017_pop960_0(in_i_017_pop960_0),
        .in_i_017_pop960_1(in_i_017_pop960_1),
        .in_j_01830_pop1465_0(in_j_01830_pop1465_0),
        .in_j_01830_pop1465_1(in_j_01830_pop1465_1),
        .in_j_01848_0(in_j_01848_0),
        .in_j_01848_1(in_j_01848_1),
        .in_memdep_phi4_pop723_pop1162_0(in_memdep_phi4_pop723_pop1162_0),
        .in_memdep_phi4_pop723_pop1162_1(in_memdep_phi4_pop723_pop1162_1),
        .in_memdep_phi4_pop72551_0(in_memdep_phi4_pop72551_0),
        .in_memdep_phi4_pop72551_1(in_memdep_phi4_pop72551_1),
        .in_memdep_phi_pop1061_0(in_memdep_phi_pop1061_0),
        .in_memdep_phi_pop1061_1(in_memdep_phi_pop1061_1),
        .in_notcmp1459_0(in_notcmp1459_0),
        .in_notcmp1459_1(in_notcmp1459_1),
        .in_stall_in(bb_gaussian_B7_stall_region_out_stall_out),
        .in_unnamed_gaussian4_0(in_unnamed_gaussian4_0),
        .in_unnamed_gaussian4_1(in_unnamed_gaussian4_1),
        .in_unnamed_gaussian5_0(in_unnamed_gaussian5_0),
        .in_unnamed_gaussian5_1(in_unnamed_gaussian5_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add32_pop1566(gaussian_B7_merge_out_add32_pop1566),
        .out_add54(gaussian_B7_merge_out_add54),
        .out_cmp41634_pop1658(gaussian_B7_merge_out_cmp41634_pop1658),
        .out_cmp41657(gaussian_B7_merge_out_cmp41657),
        .out_fpga_indvars_iv728_pop1364(gaussian_B7_merge_out_fpga_indvars_iv728_pop1364),
        .out_fpga_indvars_iv745(gaussian_B7_merge_out_fpga_indvars_iv745),
        .out_fpga_indvars_iv926_pop1263(gaussian_B7_merge_out_fpga_indvars_iv926_pop1263),
        .out_fpga_indvars_iv942(gaussian_B7_merge_out_fpga_indvars_iv942),
        .out_i_017_pop960(gaussian_B7_merge_out_i_017_pop960),
        .out_j_01830_pop1465(gaussian_B7_merge_out_j_01830_pop1465),
        .out_j_01848(gaussian_B7_merge_out_j_01848),
        .out_memdep_phi4_pop723_pop1162(gaussian_B7_merge_out_memdep_phi4_pop723_pop1162),
        .out_memdep_phi4_pop72551(gaussian_B7_merge_out_memdep_phi4_pop72551),
        .out_memdep_phi_pop1061(gaussian_B7_merge_out_memdep_phi_pop1061),
        .out_notcmp1459(gaussian_B7_merge_out_notcmp1459),
        .out_stall_out_0(gaussian_B7_merge_out_stall_out_0),
        .out_stall_out_1(gaussian_B7_merge_out_stall_out_1),
        .out_unnamed_gaussian4(gaussian_B7_merge_out_unnamed_gaussian4),
        .out_unnamed_gaussian5(gaussian_B7_merge_out_unnamed_gaussian5),
        .out_valid_out(gaussian_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B7_stall_region(BLACKBOX,2)
    gaussian_bb_B7_stall_region thebb_gaussian_B7_stall_region (
        .in_add32_pop1566(gaussian_B7_merge_out_add32_pop1566),
        .in_add54(gaussian_B7_merge_out_add54),
        .in_cmp41634_pop1658(gaussian_B7_merge_out_cmp41634_pop1658),
        .in_cmp41657(gaussian_B7_merge_out_cmp41657),
        .in_flush(in_flush),
        .in_fpga_indvars_iv728_pop1364(gaussian_B7_merge_out_fpga_indvars_iv728_pop1364),
        .in_fpga_indvars_iv745(gaussian_B7_merge_out_fpga_indvars_iv745),
        .in_fpga_indvars_iv926_pop1263(gaussian_B7_merge_out_fpga_indvars_iv926_pop1263),
        .in_fpga_indvars_iv942(gaussian_B7_merge_out_fpga_indvars_iv942),
        .in_i_017_pop960(gaussian_B7_merge_out_i_017_pop960),
        .in_j_01830_pop1465(gaussian_B7_merge_out_j_01830_pop1465),
        .in_j_01848(gaussian_B7_merge_out_j_01848),
        .in_lm1_gaussian_avm_readdata(in_lm1_gaussian_avm_readdata),
        .in_lm1_gaussian_avm_readdatavalid(in_lm1_gaussian_avm_readdatavalid),
        .in_lm1_gaussian_avm_waitrequest(in_lm1_gaussian_avm_waitrequest),
        .in_lm1_gaussian_avm_writeack(in_lm1_gaussian_avm_writeack),
        .in_lm62_gaussian_avm_readdata(in_lm62_gaussian_avm_readdata),
        .in_lm62_gaussian_avm_readdatavalid(in_lm62_gaussian_avm_readdatavalid),
        .in_lm62_gaussian_avm_waitrequest(in_lm62_gaussian_avm_waitrequest),
        .in_lm62_gaussian_avm_writeack(in_lm62_gaussian_avm_writeack),
        .in_lm83_gaussian_avm_readdata(in_lm83_gaussian_avm_readdata),
        .in_lm83_gaussian_avm_readdatavalid(in_lm83_gaussian_avm_readdatavalid),
        .in_lm83_gaussian_avm_waitrequest(in_lm83_gaussian_avm_waitrequest),
        .in_lm83_gaussian_avm_writeack(in_lm83_gaussian_avm_writeack),
        .in_memdep_gaussian_avm_readdata(in_memdep_gaussian_avm_readdata),
        .in_memdep_gaussian_avm_readdatavalid(in_memdep_gaussian_avm_readdatavalid),
        .in_memdep_gaussian_avm_waitrequest(in_memdep_gaussian_avm_waitrequest),
        .in_memdep_gaussian_avm_writeack(in_memdep_gaussian_avm_writeack),
        .in_memdep_phi4_pop723_pop1162(gaussian_B7_merge_out_memdep_phi4_pop723_pop1162),
        .in_memdep_phi4_pop72551(gaussian_B7_merge_out_memdep_phi4_pop72551),
        .in_memdep_phi_pop1061(gaussian_B7_merge_out_memdep_phi_pop1061),
        .in_notcmp1459(gaussian_B7_merge_out_notcmp1459),
        .in_stall_in(gaussian_B7_branch_out_stall_out),
        .in_unnamed_gaussian4(gaussian_B7_merge_out_unnamed_gaussian4),
        .in_unnamed_gaussian5(gaussian_B7_merge_out_unnamed_gaussian5),
        .in_valid_in(gaussian_B7_merge_out_valid_out),
        .out_c0_exe10154(bb_gaussian_B7_stall_region_out_c0_exe10154),
        .out_c0_exe1145(bb_gaussian_B7_stall_region_out_c0_exe1145),
        .out_c0_exe2146(bb_gaussian_B7_stall_region_out_c0_exe2146),
        .out_c0_exe4148(bb_gaussian_B7_stall_region_out_c0_exe4148),
        .out_c0_exe5149(bb_gaussian_B7_stall_region_out_c0_exe5149),
        .out_c0_exe6150(bb_gaussian_B7_stall_region_out_c0_exe6150),
        .out_c0_exe7151(bb_gaussian_B7_stall_region_out_c0_exe7151),
        .out_c0_exe8152(bb_gaussian_B7_stall_region_out_c0_exe8152),
        .out_c0_exe9153(bb_gaussian_B7_stall_region_out_c0_exe9153),
        .out_lm1_gaussian_avm_address(bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_address),
        .out_lm1_gaussian_avm_burstcount(bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_burstcount),
        .out_lm1_gaussian_avm_byteenable(bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_byteenable),
        .out_lm1_gaussian_avm_enable(bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_enable),
        .out_lm1_gaussian_avm_read(bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_read),
        .out_lm1_gaussian_avm_write(bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_write),
        .out_lm1_gaussian_avm_writedata(bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_writedata),
        .out_lm62_gaussian_avm_address(bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_address),
        .out_lm62_gaussian_avm_burstcount(bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_burstcount),
        .out_lm62_gaussian_avm_byteenable(bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_byteenable),
        .out_lm62_gaussian_avm_enable(bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_enable),
        .out_lm62_gaussian_avm_read(bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_read),
        .out_lm62_gaussian_avm_write(bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_write),
        .out_lm62_gaussian_avm_writedata(bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_writedata),
        .out_lm83_gaussian_avm_address(bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_address),
        .out_lm83_gaussian_avm_burstcount(bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_burstcount),
        .out_lm83_gaussian_avm_byteenable(bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_byteenable),
        .out_lm83_gaussian_avm_enable(bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_enable),
        .out_lm83_gaussian_avm_read(bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_read),
        .out_lm83_gaussian_avm_write(bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_write),
        .out_lm83_gaussian_avm_writedata(bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_writedata),
        .out_memdep_gaussian_avm_address(bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_address),
        .out_memdep_gaussian_avm_burstcount(bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_burstcount),
        .out_memdep_gaussian_avm_byteenable(bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_byteenable),
        .out_memdep_gaussian_avm_enable(bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_enable),
        .out_memdep_gaussian_avm_read(bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_read),
        .out_memdep_gaussian_avm_write(bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_write),
        .out_memdep_gaussian_avm_writedata(bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_writedata),
        .out_profile_loop_o_valid(bb_gaussian_B7_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_gaussian_B7_stall_region_out_stall_out),
        .out_valid_out(bb_gaussian_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B7_branch(BLACKBOX,3)
    gaussian_B7_branch thegaussian_B7_branch (
        .in_c0_exe10154(bb_gaussian_B7_stall_region_out_c0_exe10154),
        .in_c0_exe1145(bb_gaussian_B7_stall_region_out_c0_exe1145),
        .in_c0_exe2146(bb_gaussian_B7_stall_region_out_c0_exe2146),
        .in_c0_exe4148(bb_gaussian_B7_stall_region_out_c0_exe4148),
        .in_c0_exe5149(bb_gaussian_B7_stall_region_out_c0_exe5149),
        .in_c0_exe6150(bb_gaussian_B7_stall_region_out_c0_exe6150),
        .in_c0_exe7151(bb_gaussian_B7_stall_region_out_c0_exe7151),
        .in_c0_exe8152(bb_gaussian_B7_stall_region_out_c0_exe8152),
        .in_c0_exe9153(bb_gaussian_B7_stall_region_out_c0_exe9153),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_gaussian_B7_stall_region_out_valid_out),
        .out_c0_exe10154(gaussian_B7_branch_out_c0_exe10154),
        .out_c0_exe1145(gaussian_B7_branch_out_c0_exe1145),
        .out_c0_exe2146(gaussian_B7_branch_out_c0_exe2146),
        .out_c0_exe4148(gaussian_B7_branch_out_c0_exe4148),
        .out_c0_exe6150(gaussian_B7_branch_out_c0_exe6150),
        .out_c0_exe7151(gaussian_B7_branch_out_c0_exe7151),
        .out_c0_exe8152(gaussian_B7_branch_out_c0_exe8152),
        .out_c0_exe9153(gaussian_B7_branch_out_c0_exe9153),
        .out_stall_out(gaussian_B7_branch_out_stall_out),
        .out_valid_out_0(gaussian_B7_branch_out_valid_out_0),
        .out_valid_out_1(gaussian_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10154(GPOUT,60)
    assign out_c0_exe10154 = gaussian_B7_branch_out_c0_exe10154;

    // out_c0_exe1145(GPOUT,61)
    assign out_c0_exe1145 = gaussian_B7_branch_out_c0_exe1145;

    // out_c0_exe2146(GPOUT,62)
    assign out_c0_exe2146 = gaussian_B7_branch_out_c0_exe2146;

    // out_c0_exe4148(GPOUT,63)
    assign out_c0_exe4148 = gaussian_B7_branch_out_c0_exe4148;

    // out_c0_exe6150(GPOUT,64)
    assign out_c0_exe6150 = gaussian_B7_branch_out_c0_exe6150;

    // out_c0_exe7151(GPOUT,65)
    assign out_c0_exe7151 = gaussian_B7_branch_out_c0_exe7151;

    // out_c0_exe8152(GPOUT,66)
    assign out_c0_exe8152 = gaussian_B7_branch_out_c0_exe8152;

    // out_c0_exe9153(GPOUT,67)
    assign out_c0_exe9153 = gaussian_B7_branch_out_c0_exe9153;

    // out_lm1_gaussian_avm_address(GPOUT,68)
    assign out_lm1_gaussian_avm_address = bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_address;

    // out_lm1_gaussian_avm_burstcount(GPOUT,69)
    assign out_lm1_gaussian_avm_burstcount = bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_burstcount;

    // out_lm1_gaussian_avm_byteenable(GPOUT,70)
    assign out_lm1_gaussian_avm_byteenable = bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_byteenable;

    // out_lm1_gaussian_avm_enable(GPOUT,71)
    assign out_lm1_gaussian_avm_enable = bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_enable;

    // out_lm1_gaussian_avm_read(GPOUT,72)
    assign out_lm1_gaussian_avm_read = bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_read;

    // out_lm1_gaussian_avm_write(GPOUT,73)
    assign out_lm1_gaussian_avm_write = bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_write;

    // out_lm1_gaussian_avm_writedata(GPOUT,74)
    assign out_lm1_gaussian_avm_writedata = bb_gaussian_B7_stall_region_out_lm1_gaussian_avm_writedata;

    // out_lm62_gaussian_avm_address(GPOUT,75)
    assign out_lm62_gaussian_avm_address = bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_address;

    // out_lm62_gaussian_avm_burstcount(GPOUT,76)
    assign out_lm62_gaussian_avm_burstcount = bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_burstcount;

    // out_lm62_gaussian_avm_byteenable(GPOUT,77)
    assign out_lm62_gaussian_avm_byteenable = bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_byteenable;

    // out_lm62_gaussian_avm_enable(GPOUT,78)
    assign out_lm62_gaussian_avm_enable = bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_enable;

    // out_lm62_gaussian_avm_read(GPOUT,79)
    assign out_lm62_gaussian_avm_read = bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_read;

    // out_lm62_gaussian_avm_write(GPOUT,80)
    assign out_lm62_gaussian_avm_write = bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_write;

    // out_lm62_gaussian_avm_writedata(GPOUT,81)
    assign out_lm62_gaussian_avm_writedata = bb_gaussian_B7_stall_region_out_lm62_gaussian_avm_writedata;

    // out_lm83_gaussian_avm_address(GPOUT,82)
    assign out_lm83_gaussian_avm_address = bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_address;

    // out_lm83_gaussian_avm_burstcount(GPOUT,83)
    assign out_lm83_gaussian_avm_burstcount = bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_burstcount;

    // out_lm83_gaussian_avm_byteenable(GPOUT,84)
    assign out_lm83_gaussian_avm_byteenable = bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_byteenable;

    // out_lm83_gaussian_avm_enable(GPOUT,85)
    assign out_lm83_gaussian_avm_enable = bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_enable;

    // out_lm83_gaussian_avm_read(GPOUT,86)
    assign out_lm83_gaussian_avm_read = bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_read;

    // out_lm83_gaussian_avm_write(GPOUT,87)
    assign out_lm83_gaussian_avm_write = bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_write;

    // out_lm83_gaussian_avm_writedata(GPOUT,88)
    assign out_lm83_gaussian_avm_writedata = bb_gaussian_B7_stall_region_out_lm83_gaussian_avm_writedata;

    // out_memdep_gaussian_avm_address(GPOUT,89)
    assign out_memdep_gaussian_avm_address = bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_address;

    // out_memdep_gaussian_avm_burstcount(GPOUT,90)
    assign out_memdep_gaussian_avm_burstcount = bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_burstcount;

    // out_memdep_gaussian_avm_byteenable(GPOUT,91)
    assign out_memdep_gaussian_avm_byteenable = bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_byteenable;

    // out_memdep_gaussian_avm_enable(GPOUT,92)
    assign out_memdep_gaussian_avm_enable = bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_enable;

    // out_memdep_gaussian_avm_read(GPOUT,93)
    assign out_memdep_gaussian_avm_read = bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_read;

    // out_memdep_gaussian_avm_write(GPOUT,94)
    assign out_memdep_gaussian_avm_write = bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_write;

    // out_memdep_gaussian_avm_writedata(GPOUT,95)
    assign out_memdep_gaussian_avm_writedata = bb_gaussian_B7_stall_region_out_memdep_gaussian_avm_writedata;

    // out_profile_loop_o_valid(GPOUT,96)
    assign out_profile_loop_o_valid = bb_gaussian_B7_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,97)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,98)
    assign out_stall_out_0 = gaussian_B7_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,99)
    assign out_stall_out_1 = gaussian_B7_merge_out_stall_out_1;

    // out_valid_in_1(GPOUT,100)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,101)
    assign out_valid_out_0 = gaussian_B7_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,102)
    assign out_valid_out_1 = gaussian_B7_branch_out_valid_out_1;

    // rst_sync(RESETSYNC,103)
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
