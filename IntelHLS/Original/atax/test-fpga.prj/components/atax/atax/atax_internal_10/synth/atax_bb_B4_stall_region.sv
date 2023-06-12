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

// SystemVerilog created from bb_atax_B4_stall_region
// Created for function/kernel atax
// SystemVerilog created on Wed Apr 26 13:39:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B4_stall_region (
    input wire [0:0] in_feedback_almost_empty_in_13,
    input wire [0:0] in_feedback_data_in_13,
    input wire [0:0] in_feedback_empty_in_13,
    output wire [0:0] out_feedback_stall_out_13,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_c0_exe101188,
    input wire [63:0] in_c0_exe11091,
    input wire [0:0] in_c0_exe119,
    input wire [0:0] in_c0_exe1210,
    input wire [31:0] in_c0_exe21102,
    input wire [0:0] in_c0_exe51133,
    input wire [0:0] in_c0_exe61144,
    input wire [0:0] in_c0_exe71155,
    input wire [63:0] in_c0_exe81166,
    input wire [0:0] in_c0_exe91177,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_empty_out,
    output wire [0:0] out_c0_exe101188,
    output wire [63:0] out_c0_exe11091,
    output wire [0:0] out_c0_exe119,
    output wire [0:0] out_c0_exe1210,
    output wire [31:0] out_c0_exe21102,
    output wire [0:0] out_c0_exe51133,
    output wire [0:0] out_c0_exe61144,
    output wire [63:0] out_c0_exe81166,
    output wire [0:0] out_c0_exe91177,
    output wire [0:0] out_empty_out,
    output wire [0:0] out_memdep_phi2_pop13,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_almost_empty_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_empty_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_feedback_stall_out_13;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_valid_out;
    wire [165:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    wire [0:0] sel_for_coalesced_delay_0_g;
    wire [0:0] sel_for_coalesced_delay_0_h;
    wire [0:0] sel_for_coalesced_delay_0_i;
    wire [0:0] sel_for_coalesced_delay_0_j;
    wire [0:0] coalesced_delay_0_fifo_i_valid;
    wire coalesced_delay_0_fifo_i_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_stall;
    wire coalesced_delay_0_fifo_i_stall_bitsignaltemp;
    wire [165:0] coalesced_delay_0_fifo_i_data;
    wire [0:0] coalesced_delay_0_fifo_i_empty;
    wire coalesced_delay_0_fifo_i_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_i_almost_empty;
    wire coalesced_delay_0_fifo_i_almost_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_valid;
    wire coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_stall;
    wire coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    wire [165:0] coalesced_delay_0_fifo_o_data;
    wire [0:0] coalesced_delay_0_fifo_o_empty;
    wire coalesced_delay_0_fifo_o_empty_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_o_almost_empty;
    wire coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_b;
    wire [166:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [63:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [165:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [165:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_backStall;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V0;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V2;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V4;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V1;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V3;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_V5;
    wire [0:0] merged_in_SE_bubble_join_stall_entry_temp_back_stall;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_backStall;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_V1;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_V2;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_can_fast_read;
    wire can_fast_read_bitsignaltemp;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_can_slow_read;
    wire can_slow_read_bitsignaltemp;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_no_space_for_result;
    wire no_space_for_result_bitsignaltemp;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_forced_read;
    wire forced_read_bitsignaltemp;
    wire [0:0] merged_in_SE_sel_for_coalesced_delay_0_temp_back_stall;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_in_stall_in_sync_balance_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_in_stall_in_sync_balance_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_in_stall_in_sync_balance_reg2_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1_q;
    reg [0:0] merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_in_stall_in_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_in_stall_in_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_almost_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_almost_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_data_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_data_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_empty_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_empty_out_reg0_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_valid_out_reg1_q;
    reg [0:0] i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_valid_out_reg0_q;
    reg [0:0] stall_entry_frontStall_reg0_q;
    reg [0:0] stall_entry_frontStall_reg1_q;
    reg [0:0] stall_entry_frontValid_reg1_q;
    reg [0:0] stall_entry_frontValid_reg0_q;
    reg [0:0] stall_entry_frontEmpty_reg1_q;
    reg [0:0] stall_entry_frontEmpty_reg0_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg1_q;
    reg [0:0] stall_entry_frontAlmostEmpty_reg0_q;
    reg [0:0] stall_entry_o4_reg1_q;
    reg [0:0] stall_entry_o4_reg0_q;
    reg [63:0] stall_entry_o5_reg1_q;
    reg [63:0] stall_entry_o5_reg0_q;
    reg [0:0] stall_entry_o6_reg1_q;
    reg [0:0] stall_entry_o6_reg0_q;
    reg [0:0] stall_entry_o7_reg1_q;
    reg [0:0] stall_entry_o7_reg0_q;
    reg [31:0] stall_entry_o8_reg1_q;
    reg [31:0] stall_entry_o8_reg0_q;
    reg [0:0] stall_entry_o9_reg1_q;
    reg [0:0] stall_entry_o9_reg0_q;
    reg [0:0] stall_entry_o10_reg1_q;
    reg [0:0] stall_entry_o10_reg0_q;
    reg [0:0] stall_entry_o11_reg1_q;
    reg [0:0] stall_entry_o11_reg0_q;
    reg [63:0] stall_entry_o12_reg1_q;
    reg [63:0] stall_entry_o12_reg0_q;
    reg [0:0] stall_entry_o13_reg1_q;
    reg [0:0] stall_entry_o13_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_i_stall_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_i_stall_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_valid_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_valid_reg0_q;
    reg [165:0] coalesced_delay_0_fifo_o_data_reg1_q;
    reg [165:0] coalesced_delay_0_fifo_o_data_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_o_empty_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_empty_reg0_q;
    reg [0:0] coalesced_delay_0_fifo_o_almost_empty_reg1_q;
    reg [0:0] coalesced_delay_0_fifo_o_almost_empty_reg0_q;
    reg [0:0] rst_sync_rst_sclrn;


    // i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_almost_empty_out_reg0(REG,81)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_almost_empty_out_reg0_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_almost_empty_out);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_almost_empty_out_reg1(REG,80)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_almost_empty_out_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_almost_empty_out_reg0_q);
        end
    end

    // join_for_coalesced_delay_0(BITJOIN,28)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_k, bubble_select_stall_entry_h, bubble_select_stall_entry_g, bubble_select_stall_entry_e, bubble_select_stall_entry_d, bubble_select_stall_entry_b, bubble_select_stall_entry_f, bubble_select_stall_entry_j, bubble_select_stall_entry_c};

    // coalesced_delay_0_fifo_i_stall_reg0(REG,116)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_i_stall_reg0_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_backStall);
        end
    end

    // coalesced_delay_0_fifo_i_stall_reg1(REG,117)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_i_stall_reg1_q <= $unsigned(coalesced_delay_0_fifo_i_stall_reg0_q);
        end
    end

    // coalesced_delay_0_fifo(STALLFIFO,30)
    assign coalesced_delay_0_fifo_i_valid = merged_in_SE_bubble_join_stall_entry_V1;
    assign coalesced_delay_0_fifo_i_stall = coalesced_delay_0_fifo_i_stall_reg1_q;
    assign coalesced_delay_0_fifo_i_data = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_i_empty = merged_in_SE_bubble_join_stall_entry_V3;
    assign coalesced_delay_0_fifo_i_almost_empty = merged_in_SE_bubble_join_stall_entry_V5;
    assign coalesced_delay_0_fifo_i_valid_bitsignaltemp = coalesced_delay_0_fifo_i_valid[0];
    assign coalesced_delay_0_fifo_i_stall_bitsignaltemp = coalesced_delay_0_fifo_i_stall[0];
    assign coalesced_delay_0_fifo_o_valid[0] = coalesced_delay_0_fifo_o_valid_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_stall[0] = coalesced_delay_0_fifo_o_stall_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_empty[0] = coalesced_delay_0_fifo_o_empty_bitsignaltemp;
    assign coalesced_delay_0_fifo_o_almost_empty[0] = coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp;
    hld_fifo #(
        .DEPTH(35),
        .WIDTH(166),
        .STYLE("ms"),
        .ALMOST_FULL_CUTOFF(4),
        .ALMOST_EMPTY_CUTOFF(7),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(0),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1)
    ) thecoalesced_delay_0_fifo (
        .i_valid(coalesced_delay_0_fifo_i_valid_bitsignaltemp),
        .i_stall(coalesced_delay_0_fifo_i_stall_bitsignaltemp),
        .i_data(join_for_coalesced_delay_0_q),
        .o_valid(coalesced_delay_0_fifo_o_valid_bitsignaltemp),
        .o_stall(coalesced_delay_0_fifo_o_stall_bitsignaltemp),
        .o_data(coalesced_delay_0_fifo_o_data),
        .o_empty(coalesced_delay_0_fifo_o_empty_bitsignaltemp),
        .o_almost_empty(coalesced_delay_0_fifo_o_almost_empty_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // coalesced_delay_0_fifo_o_almost_empty_reg0(REG,125)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_almost_empty_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_almost_empty);
        end
    end

    // coalesced_delay_0_fifo_o_almost_empty_reg1(REG,124)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_almost_empty_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_almost_empty_reg0_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_empty_out_reg0(REG,85)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_empty_out_reg0_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_empty_out);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_empty_out_reg1(REG,84)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_empty_out_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_empty_out_reg0_q);
        end
    end

    // coalesced_delay_0_fifo_o_empty_reg0(REG,123)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_empty_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_empty);
        end
    end

    // coalesced_delay_0_fifo_o_empty_reg1(REG,122)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_empty_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_empty_reg0_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_valid_out_reg0(REG,87)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_valid_out_reg0_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_valid_out);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_valid_out_reg1(REG,86)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_valid_out_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_valid_out_reg0_q);
        end
    end

    // coalesced_delay_0_fifo_o_valid_reg0(REG,119)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_valid_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_valid);
        end
    end

    // coalesced_delay_0_fifo_o_valid_reg1(REG,118)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_valid_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_valid_reg0_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0(STALLENABLE,67)
    // Sync
    assign merged_in_SE_sel_for_coalesced_delay_0_temp_back_stall = in_stall_in;
    assign merged_in_SE_sel_for_coalesced_delay_0_can_fast_read = ~ ((coalesced_delay_0_fifo_o_almost_empty_reg1_q | i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_almost_empty_out_reg1_q));
    assign merged_in_SE_sel_for_coalesced_delay_0_can_slow_read = ~ ((coalesced_delay_0_fifo_o_empty_reg1_q | i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_empty_out_reg1_q));
    assign merged_in_SE_sel_for_coalesced_delay_0_backStall = ~ (merged_in_SE_sel_for_coalesced_delay_0_forced_read);
    assign merged_in_SE_sel_for_coalesced_delay_0_no_space_for_result = merged_in_SE_sel_for_coalesced_delay_0_temp_back_stall;
    assign merged_in_SE_sel_for_coalesced_delay_0_V0 = merged_in_SE_sel_for_coalesced_delay_0_forced_read;
    assign merged_in_SE_sel_for_coalesced_delay_0_V1 = $unsigned(1'b0);
    assign merged_in_SE_sel_for_coalesced_delay_0_V2 = $unsigned(1'b0);
    assign can_fast_read_bitsignaltemp = merged_in_SE_sel_for_coalesced_delay_0_can_fast_read[0];
    assign can_slow_read_bitsignaltemp = merged_in_SE_sel_for_coalesced_delay_0_can_slow_read[0];
    assign no_space_for_result_bitsignaltemp = merged_in_SE_sel_for_coalesced_delay_0_no_space_for_result[0];
    assign merged_in_SE_sel_for_coalesced_delay_0_forced_read[0] = forced_read_bitsignaltemp;
    acl_sync_stall_latency #(
        .EMPTY_PLUS_STALL_LATENCY(7),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(1),
        .RESET_EVERYTHING(0)
    ) themerged_in_SE_sel_for_coalesced_delay_0 (
        .can_fast_read(can_fast_read_bitsignaltemp),
        .can_slow_read(can_slow_read_bitsignaltemp),
        .no_space_for_result(no_space_for_result_bitsignaltemp),
        .forced_read(forced_read_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_in_stall_in_sync_balance_reg0(REG,68)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_in_stall_in_sync_balance_reg0_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_backStall);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_in_stall_in_sync_balance_reg1(REG,69)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_in_stall_in_sync_balance_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_in_stall_in_sync_balance_reg0_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_in_stall_in_sync_balance_reg2(REG,70)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_in_stall_in_sync_balance_reg2_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_in_stall_in_sync_balance_reg1_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_in_stall_in_reg0(REG,78)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_in_stall_in_reg0_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_in_stall_in_sync_balance_reg2_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_in_stall_in_reg1(REG,79)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_in_stall_in_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_in_stall_in_reg0_q);
        end
    end

    // stall_entry_o13_reg0(REG,115)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o13_reg0_q <= $unsigned(in_c0_exe91177);
        end
    end

    // stall_entry_o13_reg1(REG,114)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o13_reg1_q <= $unsigned(stall_entry_o13_reg0_q);
        end
    end

    // stall_entry_o12_reg0(REG,113)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o12_reg0_q <= $unsigned(in_c0_exe81166);
        end
    end

    // stall_entry_o12_reg1(REG,112)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o12_reg1_q <= $unsigned(stall_entry_o12_reg0_q);
        end
    end

    // stall_entry_o11_reg0(REG,111)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o11_reg0_q <= $unsigned(in_c0_exe71155);
        end
    end

    // stall_entry_o11_reg1(REG,110)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o11_reg1_q <= $unsigned(stall_entry_o11_reg0_q);
        end
    end

    // stall_entry_o10_reg0(REG,109)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o10_reg0_q <= $unsigned(in_c0_exe61144);
        end
    end

    // stall_entry_o10_reg1(REG,108)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o10_reg1_q <= $unsigned(stall_entry_o10_reg0_q);
        end
    end

    // stall_entry_o9_reg0(REG,107)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o9_reg0_q <= $unsigned(in_c0_exe51133);
        end
    end

    // stall_entry_o9_reg1(REG,106)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o9_reg1_q <= $unsigned(stall_entry_o9_reg0_q);
        end
    end

    // stall_entry_o8_reg0(REG,105)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o8_reg0_q <= $unsigned(in_c0_exe21102);
        end
    end

    // stall_entry_o8_reg1(REG,104)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o8_reg1_q <= $unsigned(stall_entry_o8_reg0_q);
        end
    end

    // stall_entry_o7_reg0(REG,103)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o7_reg0_q <= $unsigned(in_c0_exe1210);
        end
    end

    // stall_entry_o7_reg1(REG,102)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o7_reg1_q <= $unsigned(stall_entry_o7_reg0_q);
        end
    end

    // stall_entry_o6_reg0(REG,101)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o6_reg0_q <= $unsigned(in_c0_exe119);
        end
    end

    // stall_entry_o6_reg1(REG,100)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o6_reg1_q <= $unsigned(stall_entry_o6_reg0_q);
        end
    end

    // stall_entry_o5_reg0(REG,99)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg0_q <= $unsigned(in_c0_exe11091);
        end
    end

    // stall_entry_o5_reg1(REG,98)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o5_reg1_q <= $unsigned(stall_entry_o5_reg0_q);
        end
    end

    // stall_entry_o4_reg0(REG,97)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg0_q <= $unsigned(in_c0_exe101188);
        end
    end

    // stall_entry_o4_reg1(REG,96)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_o4_reg1_q <= $unsigned(stall_entry_o4_reg0_q);
        end
    end

    // bubble_join_stall_entry(BITJOIN,36)
    assign bubble_join_stall_entry_q = {stall_entry_o13_reg1_q, stall_entry_o12_reg1_q, stall_entry_o11_reg1_q, stall_entry_o10_reg1_q, stall_entry_o9_reg1_q, stall_entry_o8_reg1_q, stall_entry_o7_reg1_q, stall_entry_o6_reg1_q, stall_entry_o5_reg1_q, stall_entry_o4_reg1_q};

    // bubble_select_stall_entry(BITSELECT,37)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[66:66]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[98:67]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[99:99]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[100:100]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[101:101]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[165:102]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[166:166]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // stall_entry_frontAlmostEmpty_reg0(REG,95)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg0_q <= $unsigned(in_almost_empty_in);
        end
    end

    // stall_entry_frontAlmostEmpty_reg1(REG,94)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontAlmostEmpty_reg1_q <= $unsigned(stall_entry_frontAlmostEmpty_reg0_q);
        end
    end

    // stall_entry_frontEmpty_reg0(REG,93)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg0_q <= $unsigned(in_empty_in);
        end
    end

    // stall_entry_frontEmpty_reg1(REG,92)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontEmpty_reg1_q <= $unsigned(stall_entry_frontEmpty_reg0_q);
        end
    end

    // stall_entry_frontValid_reg0(REG,91)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg0_q <= $unsigned(in_valid_in);
        end
    end

    // stall_entry_frontValid_reg1(REG,90)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontValid_reg1_q <= $unsigned(stall_entry_frontValid_reg0_q);
        end
    end

    // merged_in_SE_bubble_join_stall_entry(STALLENABLE,66)
    // Desync
    assign merged_in_SE_bubble_join_stall_entry_temp_back_stall = i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_stall_out | coalesced_delay_0_fifo_o_stall;
    assign merged_in_SE_bubble_join_stall_entry_backStall = merged_in_SE_bubble_join_stall_entry_temp_back_stall;
    assign merged_in_SE_bubble_join_stall_entry_V0 = stall_entry_frontValid_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V2 = stall_entry_frontEmpty_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V4 = stall_entry_frontAlmostEmpty_reg1_q;
    assign merged_in_SE_bubble_join_stall_entry_V1 = merged_in_SE_bubble_join_stall_entry_V0;
    assign merged_in_SE_bubble_join_stall_entry_V3 = merged_in_SE_bubble_join_stall_entry_V2;
    assign merged_in_SE_bubble_join_stall_entry_V5 = merged_in_SE_bubble_join_stall_entry_V4;

    // i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0(BLACKBOX,9)@0
    // in in_stall_in@20000000
    // out out_almost_empty_out@17
    // out out_data_out@17
    // out out_empty_out@17
    // out out_feedback_stall_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@17
    atax_i_llvm_fpga_pop_i1_memdep_phi2_pop13_0 thei_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0 (
        .in_almost_empty_in(merged_in_SE_bubble_join_stall_entry_V4),
        .in_data_in(GND_q),
        .in_dir_in(bubble_select_stall_entry_i),
        .in_empty_in(merged_in_SE_bubble_join_stall_entry_V2),
        .in_feedback_almost_empty_in_13(in_feedback_almost_empty_in_13),
        .in_feedback_data_in_13(in_feedback_data_in_13),
        .in_feedback_empty_in_13(in_feedback_empty_in_13),
        .in_stall_in(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_in_stall_in_reg1_q),
        .in_valid_in(merged_in_SE_bubble_join_stall_entry_V0),
        .out_almost_empty_out(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_almost_empty_out),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_data_out),
        .out_empty_out(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_empty_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_feedback_stall_out_13),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_valid_out),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // feedback_stall_out_13_sync(GPOUT,8)
    assign out_feedback_stall_out_13 = i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_feedback_stall_out_13;

    // stall_entry_frontStall_reg0(REG,88)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg0_q <= $unsigned(merged_in_SE_bubble_join_stall_entry_backStall);
        end
    end

    // stall_entry_frontStall_reg1(REG,89)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            stall_entry_frontStall_reg1_q <= $unsigned(stall_entry_frontStall_reg0_q);
        end
    end

    // sync_out(GPOUT,15)@0
    assign out_stall_out = stall_entry_frontStall_reg1_q;

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0(REG,77)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1(REG,76)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg0_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2(REG,75)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg1_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3(REG,74)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg2_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4(REG,73)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg3_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5(REG,72)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg4_q);
        end
    end

    // merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6(REG,71)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6_q <= $unsigned(merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg5_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_data_out_reg0(REG,83)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_data_out_reg0_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_data_out);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_data_out_reg1(REG,82)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_data_out_reg1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_data_out_reg0_q);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0(BITJOIN,32)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_q = i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_out_data_out_reg1_q;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0(BITSELECT,33)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_q[0:0]);

    // coalesced_delay_0_fifo_o_data_reg0(REG,121)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_data_reg0_q <= $unsigned(coalesced_delay_0_fifo_o_data);
        end
    end

    // coalesced_delay_0_fifo_o_data_reg1(REG,120)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            coalesced_delay_0_fifo_o_data_reg1_q <= $unsigned(coalesced_delay_0_fifo_o_data_reg0_q);
        end
    end

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,40)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_o_data_reg1_q;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,41)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[165:0]);

    // sel_for_coalesced_delay_0(BITSELECT,29)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[159:128]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[160:160]);
    assign sel_for_coalesced_delay_0_f = $unsigned(bubble_select_coalesced_delay_0_fifo_b[161:161]);
    assign sel_for_coalesced_delay_0_g = $unsigned(bubble_select_coalesced_delay_0_fifo_b[162:162]);
    assign sel_for_coalesced_delay_0_h = $unsigned(bubble_select_coalesced_delay_0_fifo_b[163:163]);
    assign sel_for_coalesced_delay_0_i = $unsigned(bubble_select_coalesced_delay_0_fifo_b[164:164]);
    assign sel_for_coalesced_delay_0_j = $unsigned(bubble_select_coalesced_delay_0_fifo_b[165:165]);

    // dupName_0_sync_out_x(GPOUT,17)@17
    assign out_almost_empty_out = merged_in_SE_sel_for_coalesced_delay_0_V2;
    assign out_c0_exe101188 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe11091 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe119 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe1210 = sel_for_coalesced_delay_0_g;
    assign out_c0_exe21102 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe51133 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe61144 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe81166 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe91177 = sel_for_coalesced_delay_0_j;
    assign out_empty_out = merged_in_SE_sel_for_coalesced_delay_0_V1;
    assign out_memdep_phi2_pop13 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi2_pop13_atax0_b;
    assign out_valid_out = merged_in_SE_sel_for_coalesced_delay_0_V0_sync_valid_reg6_q;

    // rst_sync(RESETSYNC,126)
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
