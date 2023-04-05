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

// SystemVerilog created from bb_triangular_B4_stall_region
// Created for function/kernel triangular
// SystemVerilog created on Wed Apr  5 14:46:57 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B4_stall_region (
    input wire [63:0] in_unnamed_triangular8_triangular_avm_readdata,
    input wire [0:0] in_unnamed_triangular8_triangular_avm_writeack,
    input wire [0:0] in_unnamed_triangular8_triangular_avm_waitrequest,
    input wire [0:0] in_unnamed_triangular8_triangular_avm_readdatavalid,
    output wire [63:0] out_unnamed_triangular8_triangular_avm_address,
    output wire [0:0] out_unnamed_triangular8_triangular_avm_enable,
    output wire [0:0] out_unnamed_triangular8_triangular_avm_read,
    output wire [0:0] out_unnamed_triangular8_triangular_avm_write,
    output wire [63:0] out_unnamed_triangular8_triangular_avm_writedata,
    output wire [7:0] out_unnamed_triangular8_triangular_avm_byteenable,
    output wire [0:0] out_unnamed_triangular8_triangular_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_c0_exe31581,
    input wire [31:0] in_c0_exe73,
    input wire [0:0] in_c0_exe84,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_memdep_triangular_avm_readdata,
    input wire [0:0] in_memdep_triangular_avm_writeack,
    input wire [0:0] in_memdep_triangular_avm_waitrequest,
    input wire [0:0] in_memdep_triangular_avm_readdatavalid,
    output wire [31:0] out_memdep_triangular_avm_address,
    output wire [0:0] out_memdep_triangular_avm_enable,
    output wire [0:0] out_memdep_triangular_avm_read,
    output wire [0:0] out_memdep_triangular_avm_write,
    output wire [31:0] out_memdep_triangular_avm_writedata,
    output wire [3:0] out_memdep_triangular_avm_byteenable,
    output wire [0:0] out_memdep_triangular_avm_burstcount,
    output wire [31:0] out_c0_exe73,
    output wire [0:0] out_c0_exe84,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] c_triangular_x_local_pmem_q;
    wire [1:0] i_arrayidx162_triangular3_vt_const_1_q;
    wire [63:0] i_arrayidx162_triangular3_vt_join_q;
    wire [61:0] i_arrayidx162_triangular3_vt_select_63_b;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_out_valid_out;
    wire [31:0] i_llvm_fpga_mem_memdep_triangular4_out_memdep_triangular_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_triangular4_out_memdep_triangular_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_triangular4_out_memdep_triangular_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_triangular4_out_memdep_triangular_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_triangular4_out_memdep_triangular_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_triangular4_out_memdep_triangular_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_triangular4_out_memdep_triangular_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_triangular4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_triangular4_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_unnamed_triangular8_triangular_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_unnamed_triangular8_triangular_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_unnamed_triangular8_triangular_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_unnamed_triangular8_triangular_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_unnamed_triangular8_triangular_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_unnamed_triangular8_triangular_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_unnamed_triangular8_triangular_avm_writedata;
    wire [64:0] i_arrayidx14_triangular0_add_x_a;
    wire [64:0] i_arrayidx14_triangular0_add_x_b;
    logic [64:0] i_arrayidx14_triangular0_add_x_o;
    wire [64:0] i_arrayidx14_triangular0_add_x_q;
    wire [61:0] i_arrayidx14_triangular0_narrow_x_b;
    wire [63:0] i_arrayidx14_triangular0_shift_join_x_q;
    wire [63:0] i_arrayidx14_triangular0_dupName_0_trunc_sel_x_b;
    wire [9:0] i_arrayidx162_triangular0_add_x_a;
    wire [9:0] i_arrayidx162_triangular0_add_x_b;
    logic [9:0] i_arrayidx162_triangular0_add_x_o;
    wire [9:0] i_arrayidx162_triangular0_add_x_q;
    wire [63:0] i_arrayidx162_triangular0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx162_triangular0_narrow_x_b;
    wire [8:0] i_arrayidx162_triangular0_shift_join_x_q;
    wire [8:0] i_arrayidx162_triangular0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx162_triangular0_dupName_2_trunc_sel_x_b;
    wire [54:0] i_arrayidx162_triangular0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx162_triangular0_upper_bits_x_merged_bit_select_c;
    wire [32:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_valid_in;
    wire redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_stall_in;
    wire redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_stall_in_bitsignaltemp;
    wire [6:0] redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_data_in;
    wire [0:0] redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_valid_out;
    wire redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_stall_out;
    wire redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_stall_out_bitsignaltemp;
    wire [6:0] redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_data_out;
    reg [63:0] redist1_stall_entry_o4_1_0_q;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [32:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [32:0] coalesced_delay_0_fifo_data_out;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_triangular8_triangular2_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_triangular8_triangular2_b;
    wire [96:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [6:0] bubble_join_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_q;
    wire [6:0] bubble_select_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_b;
    wire [32:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [32:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_V0;
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
    wire [0:0] SE_out_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_wireValid;
    wire [0:0] SE_out_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_and0;
    wire [0:0] SE_out_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_backStall;
    wire [0:0] SE_out_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_V0;
    reg [0:0] SE_redist1_stall_entry_o4_1_0_R_v_0;
    reg [0:0] SE_redist1_stall_entry_o4_1_0_R_v_1;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_v_s_0;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_s_tv_0;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_s_tv_1;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_backEN;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_or0;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_backStall;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_V0;
    wire [0:0] SE_redist1_stall_entry_o4_1_0_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,67)
    assign bubble_join_stall_entry_q = {in_c0_exe84, in_c0_exe73, in_c0_exe31581};

    // bubble_select_stall_entry(BITSELECT,68)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[95:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[96:96]);

    // redist1_stall_entry_o4_1_0(REG,57)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_stall_entry_o4_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist1_stall_entry_o4_1_0_backEN == 1'b1)
        begin
            redist1_stall_entry_o4_1_0_q <= $unsigned(bubble_select_stall_entry_b);
        end
    end

    // i_arrayidx162_triangular0_dupName_0_trunc_sel_x(BITSELECT,46)@1
    assign i_arrayidx162_triangular0_dupName_0_trunc_sel_x_b = redist1_stall_entry_o4_1_0_q[8:0];

    // i_arrayidx162_triangular0_narrow_x(BITSELECT,39)@1
    assign i_arrayidx162_triangular0_narrow_x_b = i_arrayidx162_triangular0_dupName_0_trunc_sel_x_b[6:0];

    // redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo(STALLFIFO,56)
    assign redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_valid_in = SE_redist1_stall_entry_o4_1_0_V1;
    assign redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_stall_in = SE_out_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_backStall;
    assign redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_data_in = i_arrayidx162_triangular0_narrow_x_b;
    assign redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_valid_in_bitsignaltemp = redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_valid_in[0];
    assign redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_stall_in_bitsignaltemp = redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_stall_in[0];
    assign redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_valid_out[0] = redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_valid_out_bitsignaltemp;
    assign redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_stall_out[0] = redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(7),
        .IMPL("ram")
    ) theredist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo (
        .valid_in(redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx162_triangular0_narrow_x_b),
        .valid_out(redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,54)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_d, bubble_select_stall_entry_c};

    // bubble_join_i_llvm_fpga_mem_unnamed_triangular8_triangular2(BITJOIN,64)
    assign bubble_join_i_llvm_fpga_mem_unnamed_triangular8_triangular2_q = i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_triangular8_triangular2(BITSELECT,65)
    assign bubble_select_i_llvm_fpga_mem_unnamed_triangular8_triangular2_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_triangular8_triangular2_q[31:0]);

    // c_triangular_x_local_pmem(CONSTANT,3)
    assign c_triangular_x_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx162_triangular0_upper_bits_x_merged_bit_select(BITSELECT,48)@33
    assign i_arrayidx162_triangular0_upper_bits_x_merged_bit_select_b = c_triangular_x_local_pmem_q[63:9];
    assign i_arrayidx162_triangular0_upper_bits_x_merged_bit_select_c = c_triangular_x_local_pmem_q[8:0];

    // bubble_join_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo(BITJOIN,71)
    assign bubble_join_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_q = redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_data_out;

    // bubble_select_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo(BITSELECT,72)
    assign bubble_select_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_b = $unsigned(bubble_join_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_q[6:0]);

    // i_arrayidx162_triangular0_shift_join_x(BITJOIN,40)@33
    assign i_arrayidx162_triangular0_shift_join_x_q = {bubble_select_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_b, i_arrayidx162_triangular3_vt_const_1_q};

    // i_arrayidx162_triangular0_add_x(ADD,36)@33
    assign i_arrayidx162_triangular0_add_x_a = {1'b0, i_arrayidx162_triangular0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx162_triangular0_add_x_b = {1'b0, i_arrayidx162_triangular0_shift_join_x_q};
    assign i_arrayidx162_triangular0_add_x_o = $unsigned(i_arrayidx162_triangular0_add_x_a) + $unsigned(i_arrayidx162_triangular0_add_x_b);
    assign i_arrayidx162_triangular0_add_x_q = i_arrayidx162_triangular0_add_x_o[9:0];

    // i_arrayidx162_triangular0_dupName_2_trunc_sel_x(BITSELECT,47)@33
    assign i_arrayidx162_triangular0_dupName_2_trunc_sel_x_b = i_arrayidx162_triangular0_add_x_q[8:0];

    // i_arrayidx162_triangular0_append_upper_bits_x(BITJOIN,37)@33
    assign i_arrayidx162_triangular0_append_upper_bits_x_q = {i_arrayidx162_triangular0_upper_bits_x_merged_bit_select_b, i_arrayidx162_triangular0_dupName_2_trunc_sel_x_b};

    // i_arrayidx162_triangular3_vt_select_63(BITSELECT,10)@33
    assign i_arrayidx162_triangular3_vt_select_63_b = i_arrayidx162_triangular0_append_upper_bits_x_q[63:2];

    // i_arrayidx162_triangular3_vt_const_1(CONSTANT,8)
    assign i_arrayidx162_triangular3_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx162_triangular3_vt_join(BITJOIN,9)@33
    assign i_arrayidx162_triangular3_vt_join_q = {i_arrayidx162_triangular3_vt_select_63_b, i_arrayidx162_triangular3_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_triangular4(BLACKBOX,12)@33
    // in in_i_stall@20000000
    // out out_memdep_triangular_avm_address@20000000
    // out out_memdep_triangular_avm_burstcount@20000000
    // out out_memdep_triangular_avm_byteenable@20000000
    // out out_memdep_triangular_avm_enable@20000000
    // out out_memdep_triangular_avm_read@20000000
    // out out_memdep_triangular_avm_write@20000000
    // out out_memdep_triangular_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_o_writeack@34
    triangular_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_triangular4 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx162_triangular3_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_triangular8_triangular2_b),
        .in_memdep_triangular_avm_readdata(in_memdep_triangular_avm_readdata),
        .in_memdep_triangular_avm_readdatavalid(in_memdep_triangular_avm_readdatavalid),
        .in_memdep_triangular_avm_waitrequest(in_memdep_triangular_avm_waitrequest),
        .in_memdep_triangular_avm_writeack(in_memdep_triangular_avm_writeack),
        .out_memdep_triangular_avm_address(i_llvm_fpga_mem_memdep_triangular4_out_memdep_triangular_avm_address),
        .out_memdep_triangular_avm_burstcount(i_llvm_fpga_mem_memdep_triangular4_out_memdep_triangular_avm_burstcount),
        .out_memdep_triangular_avm_byteenable(i_llvm_fpga_mem_memdep_triangular4_out_memdep_triangular_avm_byteenable),
        .out_memdep_triangular_avm_enable(i_llvm_fpga_mem_memdep_triangular4_out_memdep_triangular_avm_enable),
        .out_memdep_triangular_avm_read(i_llvm_fpga_mem_memdep_triangular4_out_memdep_triangular_avm_read),
        .out_memdep_triangular_avm_write(i_llvm_fpga_mem_memdep_triangular4_out_memdep_triangular_avm_write),
        .out_memdep_triangular_avm_writedata(i_llvm_fpga_mem_memdep_triangular4_out_memdep_triangular_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_triangular4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_triangular4_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,103)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_memdep_triangular4_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // coalesced_delay_0_fifo(STALLFIFO,58)
    assign coalesced_delay_0_fifo_valid_in = SE_stall_entry_V2;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(35),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(33),
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

    // SE_stall_entry(STALLENABLE,84)
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
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (SE_redist1_stall_entry_o4_1_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
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

    // SE_redist1_stall_entry_o4_1_0(STALLENABLE,101)
    // Valid signal propagation
    assign SE_redist1_stall_entry_o4_1_0_V0 = SE_redist1_stall_entry_o4_1_0_R_v_0;
    assign SE_redist1_stall_entry_o4_1_0_V1 = SE_redist1_stall_entry_o4_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist1_stall_entry_o4_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_backStall & SE_redist1_stall_entry_o4_1_0_R_v_0;
    assign SE_redist1_stall_entry_o4_1_0_s_tv_1 = redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_stall_out & SE_redist1_stall_entry_o4_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist1_stall_entry_o4_1_0_or0 = SE_redist1_stall_entry_o4_1_0_s_tv_0;
    assign SE_redist1_stall_entry_o4_1_0_backEN = ~ (SE_redist1_stall_entry_o4_1_0_s_tv_1 | SE_redist1_stall_entry_o4_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_stall_entry_o4_1_0_v_s_0 = SE_redist1_stall_entry_o4_1_0_backEN & SE_stall_entry_V1;
    // Backward Stall generation
    assign SE_redist1_stall_entry_o4_1_0_backStall = ~ (SE_redist1_stall_entry_o4_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_stall_entry_o4_1_0_R_v_0 <= 1'b0;
            SE_redist1_stall_entry_o4_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_stall_entry_o4_1_0_backEN == 1'b0)
            begin
                SE_redist1_stall_entry_o4_1_0_R_v_0 <= SE_redist1_stall_entry_o4_1_0_R_v_0 & SE_redist1_stall_entry_o4_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_stall_entry_o4_1_0_R_v_0 <= SE_redist1_stall_entry_o4_1_0_v_s_0;
            end

            if (SE_redist1_stall_entry_o4_1_0_backEN == 1'b0)
            begin
                SE_redist1_stall_entry_o4_1_0_R_v_1 <= SE_redist1_stall_entry_o4_1_0_R_v_1 & SE_redist1_stall_entry_o4_1_0_s_tv_1;
            end
            else
            begin
                SE_redist1_stall_entry_o4_1_0_R_v_1 <= SE_redist1_stall_entry_o4_1_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    triangular_i_llvm_fpga_ffwd_dest_p1024i32_x4427_0 thei_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0(STALLENABLE,79)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_backStall = i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_and0 = i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_wireValid = SE_redist1_stall_entry_o4_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_and0;

    // SE_out_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo(STALLENABLE,100)
    // Valid signal propagation
    assign SE_out_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_V0 = SE_out_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_backStall = i_llvm_fpga_mem_memdep_triangular4_out_o_stall | ~ (SE_out_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_and0 = redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_valid_out;
    assign SE_out_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_wireValid = i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_o_valid & SE_out_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_and0;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_arrayidx14_triangular0_narrow_x(BITSELECT,32)@1
    assign i_arrayidx14_triangular0_narrow_x_b = redist1_stall_entry_o4_1_0_q[61:0];

    // i_arrayidx14_triangular0_shift_join_x(BITJOIN,33)@1
    assign i_arrayidx14_triangular0_shift_join_x_q = {i_arrayidx14_triangular0_narrow_x_b, i_arrayidx162_triangular3_vt_const_1_q};

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0(BITJOIN,60)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_q = i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0(BITSELECT,61)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_q[63:0]);

    // i_arrayidx14_triangular0_add_x(ADD,30)@1
    assign i_arrayidx14_triangular0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_b};
    assign i_arrayidx14_triangular0_add_x_b = {1'b0, i_arrayidx14_triangular0_shift_join_x_q};
    assign i_arrayidx14_triangular0_add_x_o = $unsigned(i_arrayidx14_triangular0_add_x_a) + $unsigned(i_arrayidx14_triangular0_add_x_b);
    assign i_arrayidx14_triangular0_add_x_q = i_arrayidx14_triangular0_add_x_o[64:0];

    // i_arrayidx14_triangular0_dupName_0_trunc_sel_x(BITSELECT,35)@1
    assign i_arrayidx14_triangular0_dupName_0_trunc_sel_x_b = i_arrayidx14_triangular0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_triangular8_triangular2(BLACKBOX,13)@1
    // in in_i_stall@20000000
    // out out_o_readdata@33
    // out out_o_stall@20000000
    // out out_o_valid@33
    // out out_unnamed_triangular8_triangular_avm_address@20000000
    // out out_unnamed_triangular8_triangular_avm_burstcount@20000000
    // out out_unnamed_triangular8_triangular_avm_byteenable@20000000
    // out out_unnamed_triangular8_triangular_avm_enable@20000000
    // out out_unnamed_triangular8_triangular_avm_read@20000000
    // out out_unnamed_triangular8_triangular_avm_write@20000000
    // out out_unnamed_triangular8_triangular_avm_writedata@20000000
    triangular_i_llvm_fpga_mem_unnamed_8_triangular0 thei_llvm_fpga_mem_unnamed_triangular8_triangular2 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx14_triangular0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_redist0_i_arrayidx162_triangular0_narrow_x_b_32_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_x4427_triangular0_V0),
        .in_unnamed_triangular8_triangular_avm_readdata(in_unnamed_triangular8_triangular_avm_readdata),
        .in_unnamed_triangular8_triangular_avm_readdatavalid(in_unnamed_triangular8_triangular_avm_readdatavalid),
        .in_unnamed_triangular8_triangular_avm_waitrequest(in_unnamed_triangular8_triangular_avm_waitrequest),
        .in_unnamed_triangular8_triangular_avm_writeack(in_unnamed_triangular8_triangular_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_o_valid),
        .out_unnamed_triangular8_triangular_avm_address(i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_unnamed_triangular8_triangular_avm_address),
        .out_unnamed_triangular8_triangular_avm_burstcount(i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_unnamed_triangular8_triangular_avm_burstcount),
        .out_unnamed_triangular8_triangular_avm_byteenable(i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_unnamed_triangular8_triangular_avm_byteenable),
        .out_unnamed_triangular8_triangular_avm_enable(i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_unnamed_triangular8_triangular_avm_enable),
        .out_unnamed_triangular8_triangular_avm_read(i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_unnamed_triangular8_triangular_avm_read),
        .out_unnamed_triangular8_triangular_avm_write(i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_unnamed_triangular8_triangular_avm_write),
        .out_unnamed_triangular8_triangular_avm_writedata(i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_unnamed_triangular8_triangular_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_unnamed_triangular8_triangular_avm_address = i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_unnamed_triangular8_triangular_avm_address;
    assign out_unnamed_triangular8_triangular_avm_enable = i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_unnamed_triangular8_triangular_avm_enable;
    assign out_unnamed_triangular8_triangular_avm_read = i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_unnamed_triangular8_triangular_avm_read;
    assign out_unnamed_triangular8_triangular_avm_write = i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_unnamed_triangular8_triangular_avm_write;
    assign out_unnamed_triangular8_triangular_avm_writedata = i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_unnamed_triangular8_triangular_avm_writedata;
    assign out_unnamed_triangular8_triangular_avm_byteenable = i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_unnamed_triangular8_triangular_avm_byteenable;
    assign out_unnamed_triangular8_triangular_avm_burstcount = i_llvm_fpga_mem_unnamed_triangular8_triangular2_out_unnamed_triangular8_triangular_avm_burstcount;

    // sync_out(GPOUT,25)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,28)
    assign out_memdep_triangular_avm_address = i_llvm_fpga_mem_memdep_triangular4_out_memdep_triangular_avm_address;
    assign out_memdep_triangular_avm_enable = i_llvm_fpga_mem_memdep_triangular4_out_memdep_triangular_avm_enable;
    assign out_memdep_triangular_avm_read = i_llvm_fpga_mem_memdep_triangular4_out_memdep_triangular_avm_read;
    assign out_memdep_triangular_avm_write = i_llvm_fpga_mem_memdep_triangular4_out_memdep_triangular_avm_write;
    assign out_memdep_triangular_avm_writedata = i_llvm_fpga_mem_memdep_triangular4_out_memdep_triangular_avm_writedata;
    assign out_memdep_triangular_avm_byteenable = i_llvm_fpga_mem_memdep_triangular4_out_memdep_triangular_avm_byteenable;
    assign out_memdep_triangular_avm_burstcount = i_llvm_fpga_mem_memdep_triangular4_out_memdep_triangular_avm_burstcount;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,74)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,75)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[32:0]);

    // sel_for_coalesced_delay_0(BITSELECT,55)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[32:32]);

    // dupName_0_sync_out_x(GPOUT,29)@34
    assign out_c0_exe73 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe84 = sel_for_coalesced_delay_0_c;
    assign out_valid_out = SE_out_coalesced_delay_0_fifo_V0;

endmodule
