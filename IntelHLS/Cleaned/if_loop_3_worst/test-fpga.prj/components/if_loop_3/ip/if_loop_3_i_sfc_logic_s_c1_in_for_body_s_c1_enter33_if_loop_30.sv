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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body_if_loop_3s_c1_enter33_if_loop_30
// Created for function/kernel if_loop_3
// SystemVerilog created on Thu May  4 08:54:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_3_i_sfc_logic_s_c1_in_for_body_s_c1_enter33_if_loop_30 (
    input wire [31:0] in_memdep_if_loop_3_avm_readdata,
    input wire [0:0] in_memdep_if_loop_3_avm_writeack,
    input wire [0:0] in_memdep_if_loop_3_avm_waitrequest,
    input wire [0:0] in_memdep_if_loop_3_avm_readdatavalid,
    output wire [31:0] out_memdep_if_loop_3_avm_address,
    output wire [0:0] out_memdep_if_loop_3_avm_enable,
    output wire [0:0] out_memdep_if_loop_3_avm_read,
    output wire [0:0] out_memdep_if_loop_3_avm_write,
    output wire [31:0] out_memdep_if_loop_3_avm_writedata,
    output wire [3:0] out_memdep_if_loop_3_avm_byteenable,
    output wire [0:0] out_memdep_if_loop_3_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [31:0] in_memdep_3_if_loop_3_avm_readdata,
    input wire [0:0] in_memdep_3_if_loop_3_avm_writeack,
    input wire [0:0] in_memdep_3_if_loop_3_avm_waitrequest,
    input wire [0:0] in_memdep_3_if_loop_3_avm_readdatavalid,
    output wire [31:0] out_memdep_3_if_loop_3_avm_address,
    output wire [0:0] out_memdep_3_if_loop_3_avm_enable,
    output wire [0:0] out_memdep_3_if_loop_3_avm_read,
    output wire [0:0] out_memdep_3_if_loop_3_avm_write,
    output wire [31:0] out_memdep_3_if_loop_3_avm_writedata,
    output wire [3:0] out_memdep_3_if_loop_3_avm_byteenable,
    output wire [0:0] out_memdep_3_if_loop_3_avm_burstcount,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_if_loop_313_0_tpl,
    output wire [0:0] out_unnamed_if_loop_36,
    input wire [0:0] in_c1_eni3_0_tpl,
    input wire [63:0] in_c1_eni3_1_tpl,
    input wire [31:0] in_c1_eni3_2_tpl,
    input wire [31:0] in_c1_eni3_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_if_loop_3_a_local_pmem_q;
    wire [63:0] c_if_loop_3_b_local_pmem_q;
    wire [1:0] i_arrayidx41_if_loop_32_vt_const_1_q;
    wire [63:0] i_arrayidx41_if_loop_32_vt_join_q;
    wire [61:0] i_arrayidx41_if_loop_32_vt_select_63_b;
    wire [63:0] i_arrayidx82_if_loop_34_vt_join_q;
    wire [61:0] i_arrayidx82_if_loop_34_vt_select_63_b;
    wire [31:0] i_llvm_fpga_mem_memdep_3_if_loop_35_out_memdep_3_if_loop_3_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_3_if_loop_35_out_memdep_3_if_loop_3_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_3_if_loop_35_out_memdep_3_if_loop_3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_if_loop_35_out_memdep_3_if_loop_3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_if_loop_35_out_memdep_3_if_loop_3_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_3_if_loop_35_out_memdep_3_if_loop_3_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_3_if_loop_35_out_memdep_3_if_loop_3_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_if_loop_33_out_memdep_if_loop_3_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_if_loop_33_out_memdep_if_loop_3_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_if_loop_33_out_memdep_if_loop_3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_if_loop_33_out_memdep_if_loop_3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_if_loop_33_out_memdep_if_loop_3_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_if_loop_33_out_memdep_if_loop_3_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_if_loop_33_out_memdep_if_loop_3_avm_writedata;
    wire [9:0] i_arrayidx41_if_loop_30_add_x_a;
    wire [9:0] i_arrayidx41_if_loop_30_add_x_b;
    logic [9:0] i_arrayidx41_if_loop_30_add_x_o;
    wire [9:0] i_arrayidx41_if_loop_30_add_x_q;
    wire [63:0] i_arrayidx41_if_loop_30_append_upper_bits_x_q;
    wire [6:0] i_arrayidx41_if_loop_30_narrow_x_b;
    wire [8:0] i_arrayidx41_if_loop_30_shift_join_x_q;
    wire [8:0] i_arrayidx41_if_loop_30_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx41_if_loop_30_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx82_if_loop_30_add_x_a;
    wire [9:0] i_arrayidx82_if_loop_30_add_x_b;
    logic [9:0] i_arrayidx82_if_loop_30_add_x_o;
    wire [9:0] i_arrayidx82_if_loop_30_add_x_q;
    wire [63:0] i_arrayidx82_if_loop_30_append_upper_bits_x_q;
    wire [8:0] i_arrayidx82_if_loop_30_dupName_2_trunc_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    wire [54:0] i_arrayidx41_if_loop_30_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx41_if_loop_30_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx82_if_loop_30_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx82_if_loop_30_upper_bits_x_merged_bit_select_c;
    reg [31:0] redist0_sync_together12_aunroll_x_in_c1_eni3_2_tpl_1_q;
    reg [31:0] redist1_sync_together12_aunroll_x_in_c1_eni3_3_tpl_1_q;
    reg [0:0] redist2_sync_together12_aunroll_x_in_i_valid_1_q;
    reg [6:0] redist3_i_arrayidx41_if_loop_30_narrow_x_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together12_aunroll_x_in_c1_eni3_2_tpl_1(DELAY,53)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together12_aunroll_x_in_c1_eni3_2_tpl_1_q <= $unsigned(in_c1_eni3_2_tpl);
        end
    end

    // valid_fanout_reg1(REG,49)@67 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // c_if_loop_3_a_local_pmem(CONSTANT,6)
    assign c_if_loop_3_a_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx41_if_loop_30_upper_bits_x_merged_bit_select(BITSELECT,51)@68
    assign i_arrayidx41_if_loop_30_upper_bits_x_merged_bit_select_b = c_if_loop_3_a_local_pmem_q[63:9];
    assign i_arrayidx41_if_loop_30_upper_bits_x_merged_bit_select_c = c_if_loop_3_a_local_pmem_q[8:0];

    // i_arrayidx41_if_loop_30_dupName_0_trunc_sel_x(BITSELECT,32)@67
    assign i_arrayidx41_if_loop_30_dupName_0_trunc_sel_x_b = in_c1_eni3_1_tpl[8:0];

    // i_arrayidx41_if_loop_30_narrow_x(BITSELECT,25)@67
    assign i_arrayidx41_if_loop_30_narrow_x_b = i_arrayidx41_if_loop_30_dupName_0_trunc_sel_x_b[6:0];

    // redist3_i_arrayidx41_if_loop_30_narrow_x_b_1(DELAY,56)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_arrayidx41_if_loop_30_narrow_x_b_1_q <= $unsigned(i_arrayidx41_if_loop_30_narrow_x_b);
        end
    end

    // i_arrayidx41_if_loop_30_shift_join_x(BITJOIN,26)@68
    assign i_arrayidx41_if_loop_30_shift_join_x_q = {redist3_i_arrayidx41_if_loop_30_narrow_x_b_1_q, i_arrayidx41_if_loop_32_vt_const_1_q};

    // i_arrayidx41_if_loop_30_add_x(ADD,22)@68
    assign i_arrayidx41_if_loop_30_add_x_a = {1'b0, i_arrayidx41_if_loop_30_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx41_if_loop_30_add_x_b = {1'b0, i_arrayidx41_if_loop_30_shift_join_x_q};
    assign i_arrayidx41_if_loop_30_add_x_o = $unsigned(i_arrayidx41_if_loop_30_add_x_a) + $unsigned(i_arrayidx41_if_loop_30_add_x_b);
    assign i_arrayidx41_if_loop_30_add_x_q = i_arrayidx41_if_loop_30_add_x_o[9:0];

    // i_arrayidx41_if_loop_30_dupName_2_trunc_sel_x(BITSELECT,33)@68
    assign i_arrayidx41_if_loop_30_dupName_2_trunc_sel_x_b = i_arrayidx41_if_loop_30_add_x_q[8:0];

    // i_arrayidx41_if_loop_30_append_upper_bits_x(BITJOIN,23)@68
    assign i_arrayidx41_if_loop_30_append_upper_bits_x_q = {i_arrayidx41_if_loop_30_upper_bits_x_merged_bit_select_b, i_arrayidx41_if_loop_30_dupName_2_trunc_sel_x_b};

    // i_arrayidx41_if_loop_32_vt_select_63(BITSELECT,12)@68
    assign i_arrayidx41_if_loop_32_vt_select_63_b = i_arrayidx41_if_loop_30_append_upper_bits_x_q[63:2];

    // i_arrayidx41_if_loop_32_vt_const_1(CONSTANT,10)
    assign i_arrayidx41_if_loop_32_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx41_if_loop_32_vt_join(BITJOIN,11)@68
    assign i_arrayidx41_if_loop_32_vt_join_q = {i_arrayidx41_if_loop_32_vt_select_63_b, i_arrayidx41_if_loop_32_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_memdep_if_loop_33(BLACKBOX,17)@68
    // out out_memdep_if_loop_3_avm_address@20000000
    // out out_memdep_if_loop_3_avm_burstcount@20000000
    // out out_memdep_if_loop_3_avm_byteenable@20000000
    // out out_memdep_if_loop_3_avm_enable@20000000
    // out out_memdep_if_loop_3_avm_read@20000000
    // out out_memdep_if_loop_3_avm_write@20000000
    // out out_memdep_if_loop_3_avm_writedata@20000000
    // out out_o_almost_empty@69
    // out out_o_empty@69
    // out out_o_stall@69
    // out out_o_valid@69
    // out out_o_writeack@69
    if_loop_3_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_if_loop_33 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx41_if_loop_32_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .in_i_writedata(redist0_sync_together12_aunroll_x_in_c1_eni3_2_tpl_1_q),
        .in_memdep_if_loop_3_avm_readdata(in_memdep_if_loop_3_avm_readdata),
        .in_memdep_if_loop_3_avm_readdatavalid(in_memdep_if_loop_3_avm_readdatavalid),
        .in_memdep_if_loop_3_avm_waitrequest(in_memdep_if_loop_3_avm_waitrequest),
        .in_memdep_if_loop_3_avm_writeack(in_memdep_if_loop_3_avm_writeack),
        .out_memdep_if_loop_3_avm_address(i_llvm_fpga_mem_memdep_if_loop_33_out_memdep_if_loop_3_avm_address),
        .out_memdep_if_loop_3_avm_burstcount(i_llvm_fpga_mem_memdep_if_loop_33_out_memdep_if_loop_3_avm_burstcount),
        .out_memdep_if_loop_3_avm_byteenable(i_llvm_fpga_mem_memdep_if_loop_33_out_memdep_if_loop_3_avm_byteenable),
        .out_memdep_if_loop_3_avm_enable(i_llvm_fpga_mem_memdep_if_loop_33_out_memdep_if_loop_3_avm_enable),
        .out_memdep_if_loop_3_avm_read(i_llvm_fpga_mem_memdep_if_loop_33_out_memdep_if_loop_3_avm_read),
        .out_memdep_if_loop_3_avm_write(i_llvm_fpga_mem_memdep_if_loop_33_out_memdep_if_loop_3_avm_write),
        .out_memdep_if_loop_3_avm_writedata(i_llvm_fpga_mem_memdep_if_loop_33_out_memdep_if_loop_3_avm_writedata),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,9)
    assign out_memdep_if_loop_3_avm_address = i_llvm_fpga_mem_memdep_if_loop_33_out_memdep_if_loop_3_avm_address;
    assign out_memdep_if_loop_3_avm_enable = i_llvm_fpga_mem_memdep_if_loop_33_out_memdep_if_loop_3_avm_enable;
    assign out_memdep_if_loop_3_avm_read = i_llvm_fpga_mem_memdep_if_loop_33_out_memdep_if_loop_3_avm_read;
    assign out_memdep_if_loop_3_avm_write = i_llvm_fpga_mem_memdep_if_loop_33_out_memdep_if_loop_3_avm_write;
    assign out_memdep_if_loop_3_avm_writedata = i_llvm_fpga_mem_memdep_if_loop_33_out_memdep_if_loop_3_avm_writedata;
    assign out_memdep_if_loop_3_avm_byteenable = i_llvm_fpga_mem_memdep_if_loop_33_out_memdep_if_loop_3_avm_byteenable;
    assign out_memdep_if_loop_3_avm_burstcount = i_llvm_fpga_mem_memdep_if_loop_33_out_memdep_if_loop_3_avm_burstcount;

    // redist1_sync_together12_aunroll_x_in_c1_eni3_3_tpl_1(DELAY,54)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together12_aunroll_x_in_c1_eni3_3_tpl_1_q <= $unsigned(in_c1_eni3_3_tpl);
        end
    end

    // valid_fanout_reg2(REG,50)@67 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // c_if_loop_3_b_local_pmem(CONSTANT,7)
    assign c_if_loop_3_b_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx82_if_loop_30_upper_bits_x_merged_bit_select(BITSELECT,52)@68
    assign i_arrayidx82_if_loop_30_upper_bits_x_merged_bit_select_b = c_if_loop_3_b_local_pmem_q[63:9];
    assign i_arrayidx82_if_loop_30_upper_bits_x_merged_bit_select_c = c_if_loop_3_b_local_pmem_q[8:0];

    // i_arrayidx82_if_loop_30_add_x(ADD,34)@68
    assign i_arrayidx82_if_loop_30_add_x_a = {1'b0, i_arrayidx82_if_loop_30_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx82_if_loop_30_add_x_b = {1'b0, i_arrayidx41_if_loop_30_shift_join_x_q};
    assign i_arrayidx82_if_loop_30_add_x_o = $unsigned(i_arrayidx82_if_loop_30_add_x_a) + $unsigned(i_arrayidx82_if_loop_30_add_x_b);
    assign i_arrayidx82_if_loop_30_add_x_q = i_arrayidx82_if_loop_30_add_x_o[9:0];

    // i_arrayidx82_if_loop_30_dupName_2_trunc_sel_x(BITSELECT,45)@68
    assign i_arrayidx82_if_loop_30_dupName_2_trunc_sel_x_b = i_arrayidx82_if_loop_30_add_x_q[8:0];

    // i_arrayidx82_if_loop_30_append_upper_bits_x(BITJOIN,35)@68
    assign i_arrayidx82_if_loop_30_append_upper_bits_x_q = {i_arrayidx82_if_loop_30_upper_bits_x_merged_bit_select_b, i_arrayidx82_if_loop_30_dupName_2_trunc_sel_x_b};

    // i_arrayidx82_if_loop_34_vt_select_63(BITSELECT,15)@68
    assign i_arrayidx82_if_loop_34_vt_select_63_b = i_arrayidx82_if_loop_30_append_upper_bits_x_q[63:2];

    // i_arrayidx82_if_loop_34_vt_join(BITJOIN,14)@68
    assign i_arrayidx82_if_loop_34_vt_join_q = {i_arrayidx82_if_loop_34_vt_select_63_b, i_arrayidx41_if_loop_32_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_3_if_loop_35(BLACKBOX,16)@68
    // out out_memdep_3_if_loop_3_avm_address@20000000
    // out out_memdep_3_if_loop_3_avm_burstcount@20000000
    // out out_memdep_3_if_loop_3_avm_byteenable@20000000
    // out out_memdep_3_if_loop_3_avm_enable@20000000
    // out out_memdep_3_if_loop_3_avm_read@20000000
    // out out_memdep_3_if_loop_3_avm_write@20000000
    // out out_memdep_3_if_loop_3_avm_writedata@20000000
    // out out_o_almost_empty@69
    // out out_o_empty@69
    // out out_o_stall@69
    // out out_o_valid@69
    // out out_o_writeack@69
    if_loop_3_i_llvm_fpga_mem_memdep_3_0 thei_llvm_fpga_mem_memdep_3_if_loop_35 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx82_if_loop_34_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg2_q),
        .in_i_writedata(redist1_sync_together12_aunroll_x_in_c1_eni3_3_tpl_1_q),
        .in_memdep_3_if_loop_3_avm_readdata(in_memdep_3_if_loop_3_avm_readdata),
        .in_memdep_3_if_loop_3_avm_readdatavalid(in_memdep_3_if_loop_3_avm_readdatavalid),
        .in_memdep_3_if_loop_3_avm_waitrequest(in_memdep_3_if_loop_3_avm_waitrequest),
        .in_memdep_3_if_loop_3_avm_writeack(in_memdep_3_if_loop_3_avm_writeack),
        .out_memdep_3_if_loop_3_avm_address(i_llvm_fpga_mem_memdep_3_if_loop_35_out_memdep_3_if_loop_3_avm_address),
        .out_memdep_3_if_loop_3_avm_burstcount(i_llvm_fpga_mem_memdep_3_if_loop_35_out_memdep_3_if_loop_3_avm_burstcount),
        .out_memdep_3_if_loop_3_avm_byteenable(i_llvm_fpga_mem_memdep_3_if_loop_35_out_memdep_3_if_loop_3_avm_byteenable),
        .out_memdep_3_if_loop_3_avm_enable(i_llvm_fpga_mem_memdep_3_if_loop_35_out_memdep_3_if_loop_3_avm_enable),
        .out_memdep_3_if_loop_3_avm_read(i_llvm_fpga_mem_memdep_3_if_loop_35_out_memdep_3_if_loop_3_avm_read),
        .out_memdep_3_if_loop_3_avm_write(i_llvm_fpga_mem_memdep_3_if_loop_35_out_memdep_3_if_loop_3_avm_write),
        .out_memdep_3_if_loop_3_avm_writedata(i_llvm_fpga_mem_memdep_3_if_loop_35_out_memdep_3_if_loop_3_avm_writedata),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,21)
    assign out_memdep_3_if_loop_3_avm_address = i_llvm_fpga_mem_memdep_3_if_loop_35_out_memdep_3_if_loop_3_avm_address;
    assign out_memdep_3_if_loop_3_avm_enable = i_llvm_fpga_mem_memdep_3_if_loop_35_out_memdep_3_if_loop_3_avm_enable;
    assign out_memdep_3_if_loop_3_avm_read = i_llvm_fpga_mem_memdep_3_if_loop_35_out_memdep_3_if_loop_3_avm_read;
    assign out_memdep_3_if_loop_3_avm_write = i_llvm_fpga_mem_memdep_3_if_loop_35_out_memdep_3_if_loop_3_avm_write;
    assign out_memdep_3_if_loop_3_avm_writedata = i_llvm_fpga_mem_memdep_3_if_loop_35_out_memdep_3_if_loop_3_avm_writedata;
    assign out_memdep_3_if_loop_3_avm_byteenable = i_llvm_fpga_mem_memdep_3_if_loop_35_out_memdep_3_if_loop_3_avm_byteenable;
    assign out_memdep_3_if_loop_3_avm_burstcount = i_llvm_fpga_mem_memdep_3_if_loop_35_out_memdep_3_if_loop_3_avm_burstcount;

    // redist2_sync_together12_aunroll_x_in_i_valid_1(DELAY,55)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist2_sync_together12_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together12_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,48)@68 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist2_sync_together12_aunroll_x_in_i_valid_1_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,46)@69
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_if_loop_313_0_tpl = GND_q;
    assign out_unnamed_if_loop_36 = GND_q;

endmodule
