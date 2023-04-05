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

// SystemVerilog created from bb_kernel_3mm_B9_stall_region
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B9_stall_region (
    input wire [31:0] in_unnamed_kernel_3mm21_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm21_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm21_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm21_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe103169,
    input wire [0:0] in_c0_exe1131710,
    input wire [63:0] in_c0_exe23082,
    input wire [63:0] in_c0_exe33093,
    input wire [31:0] in_c0_exe43104,
    input wire [31:0] in_c0_exe63125,
    input wire [0:0] in_c0_exe73136,
    input wire [63:0] in_c0_exe83147,
    input wire [0:0] in_c0_exe93158,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_memdep_7_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_7_kernel_3mm_avm_writeack,
    input wire [0:0] in_memdep_7_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_7_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_memdep_7_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_7_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_7_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_7_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_7_kernel_3mm_avm_writedata,
    output wire [3:0] out_memdep_7_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_7_kernel_3mm_avm_burstcount,
    output wire [31:0] out_c0_exe103169,
    output wire [0:0] out_c0_exe1131710,
    output wire [63:0] out_c0_exe1326,
    output wire [63:0] out_c0_exe23082,
    output wire [31:0] out_c0_exe2327,
    output wire [63:0] out_c0_exe33093,
    output wire [31:0] out_c0_exe63125,
    output wire [0:0] out_c0_exe73136,
    output wire [0:0] out_c0_exe93158,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_memdep_7_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_memdep_7_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_memdep_7_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_memdep_7_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_memdep_7_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_memdep_7_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_memdep_7_kernel_3mm_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata;
    wire [63:0] i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_c0_exit325_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_c0_exit325_2_tpl;
    wire [194:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    wire [0:0] sel_for_coalesced_delay_0_g;
    wire [0:0] sel_for_coalesced_delay_0_h;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [194:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [194:0] coalesced_delay_0_fifo_data_out;
    wire [290:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [63:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [95:0] bubble_join_i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_c;
    wire [194:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [194:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_stall_out_bitsignaltemp;


    // bubble_join_stall_entry(BITJOIN,35)
    assign bubble_join_stall_entry_q = {in_c0_exe93158, in_c0_exe83147, in_c0_exe73136, in_c0_exe63125, in_c0_exe43104, in_c0_exe33093, in_c0_exe23082, in_c0_exe1131710, in_c0_exe103169};

    // bubble_select_stall_entry(BITSELECT,36)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[96:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[160:97]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[192:161]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[224:193]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[225:225]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[289:226]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[290:290]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // join_for_coalesced_delay_0(BITJOIN,30)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_j, bubble_select_stall_entry_h, bubble_select_stall_entry_c, bubble_select_stall_entry_g, bubble_select_stall_entry_b, bubble_select_stall_entry_e, bubble_select_stall_entry_d};

    // coalesced_delay_0_fifo(STALLFIFO,32)
    assign coalesced_delay_0_fifo_valid_in = SE_stall_entry_V2;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(195),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg(STALLFIFO,76)
    assign bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_valid_in = SE_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_V0;
    assign bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(8),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4(STALLENABLE,47)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_V0 = SE_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_backStall = bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_wireValid = i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_o_valid;

    // i_llvm_fpga_mem_memdep_7_kernel_3mm4(BLACKBOX,7)@0
    // in in_i_stall@20000000
    // out out_memdep_7_kernel_3mm_avm_address@20000000
    // out out_memdep_7_kernel_3mm_avm_burstcount@20000000
    // out out_memdep_7_kernel_3mm_avm_byteenable@20000000
    // out out_memdep_7_kernel_3mm_avm_enable@20000000
    // out out_memdep_7_kernel_3mm_avm_read@20000000
    // out out_memdep_7_kernel_3mm_avm_write@20000000
    // out out_memdep_7_kernel_3mm_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@1
    // out out_o_writeack@1
    kernel_3mm_i_llvm_fpga_mem_memdep_7_0 thei_llvm_fpga_mem_memdep_7_kernel_3mm4 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_stall_entry_i),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_i_writedata(bubble_select_stall_entry_f),
        .in_memdep_7_kernel_3mm_avm_readdata(in_memdep_7_kernel_3mm_avm_readdata),
        .in_memdep_7_kernel_3mm_avm_readdatavalid(in_memdep_7_kernel_3mm_avm_readdatavalid),
        .in_memdep_7_kernel_3mm_avm_waitrequest(in_memdep_7_kernel_3mm_avm_waitrequest),
        .in_memdep_7_kernel_3mm_avm_writeack(in_memdep_7_kernel_3mm_avm_writeack),
        .out_memdep_7_kernel_3mm_avm_address(i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_memdep_7_kernel_3mm_avm_address),
        .out_memdep_7_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_memdep_7_kernel_3mm_avm_burstcount),
        .out_memdep_7_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_memdep_7_kernel_3mm_avm_byteenable),
        .out_memdep_7_kernel_3mm_avm_enable(i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_memdep_7_kernel_3mm_avm_enable),
        .out_memdep_7_kernel_3mm_avm_read(i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_memdep_7_kernel_3mm_avm_read),
        .out_memdep_7_kernel_3mm_avm_write(i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_memdep_7_kernel_3mm_avm_write),
        .out_memdep_7_kernel_3mm_avm_writedata(i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_memdep_7_kernel_3mm_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,48)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (coalesced_delay_0_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed2 & SE_stall_entry_or1);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,55)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_wireValid = bubble_out_i_llvm_fpga_mem_memdep_7_kernel_3mm4_1_reg_valid_out & SE_out_coalesced_delay_0_fifo_and1;

    // i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x(BLACKBOX,21)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_unnamed_kernel_3mm21_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm21_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm21_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm21_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata@20000000
    // out out_c0_exit325_0_tpl@8
    // out out_c0_exit325_1_tpl@8
    // out out_c0_exit325_2_tpl@8
    kernel_3mm_i_sfc_s_c0_in_for_end91_s_c0_enter320_kernel_3mm2 thei_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm21_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm21_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm21_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm21_kernel_3mm_avm_writeack),
        .in_c0_eni2319_0_tpl(GND_q),
        .in_c0_eni2319_1_tpl(bubble_select_stall_entry_d),
        .in_c0_eni2319_2_tpl(bubble_select_stall_entry_e),
        .out_o_stall(i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_o_valid),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_address(i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount(i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable(i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_enable(i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_read(i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_write(i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata(i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata),
        .out_c0_exit325_0_tpl(),
        .out_c0_exit325_1_tpl(i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_c0_exit325_1_tpl),
        .out_c0_exit325_2_tpl(i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_c0_exit325_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_address = i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_enable = i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_read = i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_write = i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata = i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable = i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount = i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount;

    // sync_out(GPOUT,16)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,19)
    assign out_memdep_7_kernel_3mm_avm_address = i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_memdep_7_kernel_3mm_avm_address;
    assign out_memdep_7_kernel_3mm_avm_enable = i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_memdep_7_kernel_3mm_avm_enable;
    assign out_memdep_7_kernel_3mm_avm_read = i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_memdep_7_kernel_3mm_avm_read;
    assign out_memdep_7_kernel_3mm_avm_write = i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_memdep_7_kernel_3mm_avm_write;
    assign out_memdep_7_kernel_3mm_avm_writedata = i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_memdep_7_kernel_3mm_avm_writedata;
    assign out_memdep_7_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_memdep_7_kernel_3mm_avm_byteenable;
    assign out_memdep_7_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_memdep_7_kernel_3mm4_out_memdep_7_kernel_3mm_avm_burstcount;

    // bubble_join_i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x(BITJOIN,40)
    assign bubble_join_i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_q = {i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_c0_exit325_2_tpl, i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_out_c0_exit325_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x(BITSELECT,41)
    assign bubble_select_i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_q[95:64]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,44)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,45)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[194:0]);

    // sel_for_coalesced_delay_0(BITSELECT,31)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[159:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[191:160]);
    assign sel_for_coalesced_delay_0_f = $unsigned(bubble_select_coalesced_delay_0_fifo_b[192:192]);
    assign sel_for_coalesced_delay_0_g = $unsigned(bubble_select_coalesced_delay_0_fifo_b[193:193]);
    assign sel_for_coalesced_delay_0_h = $unsigned(bubble_select_coalesced_delay_0_fifo_b[194:194]);

    // dupName_0_sync_out_x(GPOUT,20)@8
    assign out_c0_exe103169 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe1131710 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe1326 = bubble_select_i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_b;
    assign out_c0_exe23082 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe2327 = bubble_select_i_sfc_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm2_aunroll_x_c;
    assign out_c0_exe33093 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe63125 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe73136 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe93158 = sel_for_coalesced_delay_0_h;
    assign out_valid_out = SE_out_coalesced_delay_0_fifo_V0;

endmodule
