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

// SystemVerilog created from bb_kernel_2mm_B11
// Created for function/kernel kernel_2mm
// SystemVerilog created on Thu Apr 27 14:25:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B11 (
    input wire [63:0] in_arrayidx49487_0,
    input wire [0:0] in_flush,
    input wire [63:0] in_idxprom4885_0,
    input wire [63:0] in_idxprom49_pop2386_0,
    input wire [63:0] in_idxprom52_pop2974_0,
    input wire [31:0] in_mul5088_0,
    input wire [0:0] in_notcmp1689_0,
    input wire [0:0] in_notcmp3142_pop2780_0,
    input wire [0:0] in_notcmp3143_pop2290_0,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_kernel_2mm14_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm14_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm14_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm14_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe1202,
    output wire [0:0] out_c0_exe4205,
    output wire [63:0] out_c0_exe5206,
    output wire [0:0] out_c0_exe6207,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [31:0] out_unnamed_kernel_2mm14_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm14_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm14_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm14_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm14_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm14_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm14_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kernel_2mm_B11_stall_region_out_almost_empty_out;
    wire [31:0] bb_kernel_2mm_B11_stall_region_out_c0_exe1202;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_c0_exe3204;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_c0_exe4205;
    wire [63:0] bb_kernel_2mm_B11_stall_region_out_c0_exe5206;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_c0_exe6207;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_empty_out;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_stall_out;
    wire [31:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm14_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm14_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm14_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm14_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm14_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm14_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm14_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B11_stall_region_out_valid_out;
    wire [31:0] kernel_2mm_B11_branch_out_c0_exe1202;
    wire [0:0] kernel_2mm_B11_branch_out_c0_exe4205;
    wire [63:0] kernel_2mm_B11_branch_out_c0_exe5206;
    wire [0:0] kernel_2mm_B11_branch_out_c0_exe6207;
    wire [0:0] kernel_2mm_B11_branch_out_stall_out;
    wire [0:0] kernel_2mm_B11_branch_out_valid_out_0;
    wire [0:0] kernel_2mm_B11_merge_out_almost_empty_out;
    wire [63:0] kernel_2mm_B11_merge_out_arrayidx49487;
    wire [0:0] kernel_2mm_B11_merge_out_empty_out;
    wire [63:0] kernel_2mm_B11_merge_out_idxprom4885;
    wire [63:0] kernel_2mm_B11_merge_out_idxprom49_pop2386;
    wire [63:0] kernel_2mm_B11_merge_out_idxprom52_pop2974;
    wire [31:0] kernel_2mm_B11_merge_out_mul5088;
    wire [0:0] kernel_2mm_B11_merge_out_notcmp1689;
    wire [0:0] kernel_2mm_B11_merge_out_notcmp3142_pop2780;
    wire [0:0] kernel_2mm_B11_merge_out_notcmp3143_pop2290;
    wire [0:0] kernel_2mm_B11_merge_out_stall_out_0;
    wire [0:0] kernel_2mm_B11_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // kernel_2mm_B11_merge(BLACKBOX,23)
    kernel_2mm_B11_merge thekernel_2mm_B11_merge (
        .in_arrayidx49487_0(in_arrayidx49487_0),
        .in_idxprom4885_0(in_idxprom4885_0),
        .in_idxprom49_pop2386_0(in_idxprom49_pop2386_0),
        .in_idxprom52_pop2974_0(in_idxprom52_pop2974_0),
        .in_mul5088_0(in_mul5088_0),
        .in_notcmp1689_0(in_notcmp1689_0),
        .in_notcmp3142_pop2780_0(in_notcmp3142_pop2780_0),
        .in_notcmp3143_pop2290_0(in_notcmp3143_pop2290_0),
        .in_stall_in(bb_kernel_2mm_B11_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(kernel_2mm_B11_merge_out_almost_empty_out),
        .out_arrayidx49487(kernel_2mm_B11_merge_out_arrayidx49487),
        .out_empty_out(kernel_2mm_B11_merge_out_empty_out),
        .out_idxprom4885(kernel_2mm_B11_merge_out_idxprom4885),
        .out_idxprom49_pop2386(kernel_2mm_B11_merge_out_idxprom49_pop2386),
        .out_idxprom52_pop2974(kernel_2mm_B11_merge_out_idxprom52_pop2974),
        .out_mul5088(kernel_2mm_B11_merge_out_mul5088),
        .out_notcmp1689(kernel_2mm_B11_merge_out_notcmp1689),
        .out_notcmp3142_pop2780(kernel_2mm_B11_merge_out_notcmp3142_pop2780),
        .out_notcmp3143_pop2290(kernel_2mm_B11_merge_out_notcmp3143_pop2290),
        .out_stall_out_0(kernel_2mm_B11_merge_out_stall_out_0),
        .out_valid_out(kernel_2mm_B11_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B11_stall_region(BLACKBOX,2)
    kernel_2mm_bb_B11_stall_region thebb_kernel_2mm_B11_stall_region (
        .in_almost_empty_in(kernel_2mm_B11_merge_out_almost_empty_out),
        .in_arrayidx49487(kernel_2mm_B11_merge_out_arrayidx49487),
        .in_empty_in(kernel_2mm_B11_merge_out_empty_out),
        .in_flush(in_flush),
        .in_idxprom4885(kernel_2mm_B11_merge_out_idxprom4885),
        .in_idxprom49_pop2386(kernel_2mm_B11_merge_out_idxprom49_pop2386),
        .in_idxprom52_pop2974(kernel_2mm_B11_merge_out_idxprom52_pop2974),
        .in_mul5088(kernel_2mm_B11_merge_out_mul5088),
        .in_notcmp1689(kernel_2mm_B11_merge_out_notcmp1689),
        .in_notcmp3142_pop2780(kernel_2mm_B11_merge_out_notcmp3142_pop2780),
        .in_notcmp3143_pop2290(kernel_2mm_B11_merge_out_notcmp3143_pop2290),
        .in_stall_in(kernel_2mm_B11_branch_out_stall_out),
        .in_unnamed_kernel_2mm14_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm14_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm14_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm14_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm14_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm14_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm14_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm14_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack),
        .in_valid_in(kernel_2mm_B11_merge_out_valid_out),
        .out_almost_empty_out(bb_kernel_2mm_B11_stall_region_out_almost_empty_out),
        .out_c0_exe1202(bb_kernel_2mm_B11_stall_region_out_c0_exe1202),
        .out_c0_exe3204(bb_kernel_2mm_B11_stall_region_out_c0_exe3204),
        .out_c0_exe4205(bb_kernel_2mm_B11_stall_region_out_c0_exe4205),
        .out_c0_exe5206(bb_kernel_2mm_B11_stall_region_out_c0_exe5206),
        .out_c0_exe6207(bb_kernel_2mm_B11_stall_region_out_c0_exe6207),
        .out_empty_out(bb_kernel_2mm_B11_stall_region_out_empty_out),
        .out_profile_loop_o_valid(bb_kernel_2mm_B11_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_kernel_2mm_B11_stall_region_out_stall_out),
        .out_unnamed_kernel_2mm14_kernel_2mm_avm_address(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm14_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm14_kernel_2mm_avm_burstcount(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm14_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm14_kernel_2mm_avm_byteenable(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm14_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm14_kernel_2mm_avm_enable(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm14_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm14_kernel_2mm_avm_read(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm14_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm14_kernel_2mm_avm_write(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm14_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm14_kernel_2mm_avm_writedata(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm14_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_address(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_enable(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_read(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_write(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata(bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata),
        .out_valid_out(bb_kernel_2mm_B11_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B11_branch(BLACKBOX,22)
    kernel_2mm_B11_branch thekernel_2mm_B11_branch (
        .in_almost_empty_in(bb_kernel_2mm_B11_stall_region_out_almost_empty_out),
        .in_c0_exe1202(bb_kernel_2mm_B11_stall_region_out_c0_exe1202),
        .in_c0_exe3204(bb_kernel_2mm_B11_stall_region_out_c0_exe3204),
        .in_c0_exe4205(bb_kernel_2mm_B11_stall_region_out_c0_exe4205),
        .in_c0_exe5206(bb_kernel_2mm_B11_stall_region_out_c0_exe5206),
        .in_c0_exe6207(bb_kernel_2mm_B11_stall_region_out_c0_exe6207),
        .in_empty_in(bb_kernel_2mm_B11_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kernel_2mm_B11_stall_region_out_valid_out),
        .out_c0_exe1202(kernel_2mm_B11_branch_out_c0_exe1202),
        .out_c0_exe4205(kernel_2mm_B11_branch_out_c0_exe4205),
        .out_c0_exe5206(kernel_2mm_B11_branch_out_c0_exe5206),
        .out_c0_exe6207(kernel_2mm_B11_branch_out_c0_exe6207),
        .out_stall_out(kernel_2mm_B11_branch_out_stall_out),
        .out_valid_out_0(kernel_2mm_B11_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1202(GPOUT,24)
    assign out_c0_exe1202 = kernel_2mm_B11_branch_out_c0_exe1202;

    // out_c0_exe4205(GPOUT,25)
    assign out_c0_exe4205 = kernel_2mm_B11_branch_out_c0_exe4205;

    // out_c0_exe5206(GPOUT,26)
    assign out_c0_exe5206 = kernel_2mm_B11_branch_out_c0_exe5206;

    // out_c0_exe6207(GPOUT,27)
    assign out_c0_exe6207 = kernel_2mm_B11_branch_out_c0_exe6207;

    // out_profile_loop_o_valid(GPOUT,28)
    assign out_profile_loop_o_valid = bb_kernel_2mm_B11_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,29)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,30)
    assign out_stall_out_0 = kernel_2mm_B11_merge_out_stall_out_0;

    // out_unnamed_kernel_2mm14_kernel_2mm_avm_address(GPOUT,31)
    assign out_unnamed_kernel_2mm14_kernel_2mm_avm_address = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm14_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm14_kernel_2mm_avm_burstcount(GPOUT,32)
    assign out_unnamed_kernel_2mm14_kernel_2mm_avm_burstcount = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm14_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm14_kernel_2mm_avm_byteenable(GPOUT,33)
    assign out_unnamed_kernel_2mm14_kernel_2mm_avm_byteenable = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm14_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm14_kernel_2mm_avm_enable(GPOUT,34)
    assign out_unnamed_kernel_2mm14_kernel_2mm_avm_enable = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm14_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm14_kernel_2mm_avm_read(GPOUT,35)
    assign out_unnamed_kernel_2mm14_kernel_2mm_avm_read = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm14_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm14_kernel_2mm_avm_write(GPOUT,36)
    assign out_unnamed_kernel_2mm14_kernel_2mm_avm_write = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm14_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm14_kernel_2mm_avm_writedata(GPOUT,37)
    assign out_unnamed_kernel_2mm14_kernel_2mm_avm_writedata = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm14_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_address(GPOUT,38)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_address = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount(GPOUT,39)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable(GPOUT,40)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_enable(GPOUT,41)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_enable = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_read(GPOUT,42)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_read = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_write(GPOUT,43)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_write = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata(GPOUT,44)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata = bb_kernel_2mm_B11_stall_region_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata;

    // out_valid_in_0(GPOUT,45)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,46)
    assign out_valid_out_0 = kernel_2mm_B11_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,47)
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
