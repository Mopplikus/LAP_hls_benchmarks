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

// SystemVerilog created from i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_s_c0_in_for_end91_s_c0_enter320_kernel_3mm2 (
    input wire [0:0] in_flush,
    input wire [31:0] in_unnamed_kernel_3mm21_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm21_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm21_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm21_kernel_3mm_avm_writeack,
    output wire [31:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_address,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata,
    input wire [0:0] in_c0_eni2319_0_tpl,
    input wire [63:0] in_c0_eni2319_1_tpl,
    input wire [63:0] in_c0_eni2319_2_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit325_0_tpl,
    output wire [63:0] out_c0_exit325_1_tpl,
    output wire [31:0] out_c0_exit325_2_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_end91_kernel_3mms_c0_exit325_kernel_3mm1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_end91_kernel_3mms_c0_exit325_kernel_3mm1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_end91_kernel_3mms_c0_exit325_kernel_3mm1_aunroll_x_out_data_out_0_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_end91_kernel_3mms_c0_exit325_kernel_3mm1_aunroll_x_out_data_out_1_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_end91_kernel_3mms_c0_exit325_kernel_3mm1_aunroll_x_out_data_out_2_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount;
    wire [3:0] i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_write;
    wire [31:0] i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata;
    wire [0:0] i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_c0_exi2324_0_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_c0_exi2324_1_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_c0_exi2324_2_tpl;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_end91_kernel_3mms_c0_exit325_kernel_3mm1_aunroll_x(BLACKBOX,19)@5
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@8
    // out out_data_out_0_tpl@8
    // out out_data_out_1_tpl@8
    // out out_data_out_2_tpl@8
    kernel_3mm_i_llvm_fpga_sfc_exit_s_c0_out0000_exit325_kernel_3mm0 thei_llvm_fpga_sfc_exit_s_c0_out_for_end91_kernel_3mms_c0_exit325_kernel_3mm1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_c0_exi2324_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_c0_exi2324_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_c0_exi2324_2_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_end91_kernel_3mms_c0_exit325_kernel_3mm1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_end91_kernel_3mms_c0_exit325_kernel_3mm1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_end91_kernel_3mms_c0_exit325_kernel_3mm1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_end91_kernel_3mms_c0_exit325_kernel_3mm1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_end91_kernel_3mms_c0_exit325_kernel_3mm1_aunroll_x_out_data_out_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_end91_kernel_3mms_c0_exit325_kernel_3mm1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x(BLACKBOX,20)@0
    // out out_o_valid@5
    // out out_unnamed_kernel_3mm1@5
    // out out_unnamed_kernel_3mm21_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm21_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm21_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm21_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata@20000000
    // out out_c0_exi2324_0_tpl@5
    // out out_c0_exi2324_1_tpl@5
    // out out_c0_exi2324_2_tpl@5
    kernel_3mm_i_sfc_logic_s_c0_in_for_end910000enter320_kernel_3mm0 thei_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x (
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm21_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm21_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm21_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm21_kernel_3mm_avm_writeack),
        .in_c0_eni2319_0_tpl(in_c0_eni2319_0_tpl),
        .in_c0_eni2319_1_tpl(in_c0_eni2319_1_tpl),
        .in_c0_eni2319_2_tpl(in_c0_eni2319_2_tpl),
        .out_o_valid(i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_o_valid),
        .out_unnamed_kernel_3mm1(),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_address(i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount(i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable(i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_enable(i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_read(i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_write(i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata(i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata),
        .out_c0_exi2324_0_tpl(i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_c0_exi2324_0_tpl),
        .out_c0_exi2324_1_tpl(i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_c0_exi2324_1_tpl),
        .out_c0_exi2324_2_tpl(i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_c0_exi2324_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,10)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_address = i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_address;

    // sync_out(GPOUT,12)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_end91_kernel_3mms_c0_exit325_kernel_3mm1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,13)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount = i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,14)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable = i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable;

    // dupName_2_regfree_osync_x(GPOUT,15)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_enable = i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_enable;

    // dupName_3_regfree_osync_x(GPOUT,16)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_read = i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_read;

    // dupName_4_regfree_osync_x(GPOUT,17)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_write = i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_write;

    // dupName_5_regfree_osync_x(GPOUT,18)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata = i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata;

    // dupName_0_sync_out_aunroll_x(GPOUT,22)@8
    assign out_c0_exit325_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_end91_kernel_3mms_c0_exit325_kernel_3mm1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit325_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_end91_kernel_3mms_c0_exit325_kernel_3mm1_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit325_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_end91_kernel_3mms_c0_exit325_kernel_3mm1_aunroll_x_out_data_out_2_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_end91_kernel_3mms_c0_exit325_kernel_3mm1_aunroll_x_out_valid_out;

endmodule
