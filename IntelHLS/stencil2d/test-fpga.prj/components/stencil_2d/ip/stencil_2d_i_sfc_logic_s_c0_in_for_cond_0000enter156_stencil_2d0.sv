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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond_cleanup10_stencil_2ds_c0_enter156_stencil_2d0
// Created for function/kernel stencil_2d
// SystemVerilog created on Thu Apr 27 14:23:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_i_sfc_logic_s_c0_in_for_cond_0000enter156_stencil_2d0 (
    input wire [31:0] in_unnamed_stencil_2d5_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_writeack,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid,
    output wire [31:0] out_unnamed_stencil_2d5_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d5_stencil_2d_avm_writedata,
    output wire [3:0] out_unnamed_stencil_2d5_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_stencil_2d3,
    output wire [0:0] out_unnamed_stencil_2d6_0_tpl,
    input wire [0:0] in_c0_eni3155_0_tpl,
    input wire [31:0] in_c0_eni3155_1_tpl,
    input wire [31:0] in_c0_eni3155_2_tpl,
    input wire [31:0] in_c0_eni3155_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_stencil_2d_sol_pmem_q;
    wire [32:0] i_add29_stencil_2d2_a;
    wire [32:0] i_add29_stencil_2d2_b;
    logic [32:0] i_add29_stencil_2d2_o;
    wire [32:0] i_add29_stencil_2d2_q;
    wire [1:0] i_arrayidx313_stencil_2d4_vt_const_1_q;
    wire [63:0] i_arrayidx313_stencil_2d4_vt_join_q;
    wire [61:0] i_arrayidx313_stencil_2d4_vt_select_63_b;
    wire [31:0] i_idxprom30_stencil_2d3_vt_const_63_q;
    wire [63:0] i_idxprom30_stencil_2d3_vt_join_q;
    wire [31:0] i_idxprom30_stencil_2d3_vt_select_31_b;
    wire [31:0] i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5_out_unnamed_stencil_2d5_stencil_2d_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5_out_unnamed_stencil_2d5_stencil_2d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5_out_unnamed_stencil_2d5_stencil_2d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5_out_unnamed_stencil_2d5_stencil_2d_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5_out_unnamed_stencil_2d5_stencil_2d_avm_writedata;
    wire [31:0] bgTrunc_i_add29_stencil_2d2_sel_x_b;
    wire [12:0] i_arrayidx313_stencil_2d0_add_x_a;
    wire [12:0] i_arrayidx313_stencil_2d0_add_x_b;
    logic [12:0] i_arrayidx313_stencil_2d0_add_x_o;
    wire [12:0] i_arrayidx313_stencil_2d0_add_x_q;
    wire [63:0] i_arrayidx313_stencil_2d0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx313_stencil_2d0_narrow_x_b;
    wire [11:0] i_arrayidx313_stencil_2d0_shift_join_x_q;
    wire [11:0] i_arrayidx313_stencil_2d0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx313_stencil_2d0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_idxprom30_stencil_2d3_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    wire [51:0] i_arrayidx313_stencil_2d0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx313_stencil_2d0_upper_bits_x_merged_bit_select_c;
    reg [31:0] redist0_sync_together9_aunroll_x_in_c0_eni3155_3_tpl_1_q;
    reg [0:0] redist1_sync_together9_aunroll_x_in_i_valid_1_q;
    reg [9:0] redist2_i_arrayidx313_stencil_2d0_narrow_x_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together9_aunroll_x_in_c0_eni3155_3_tpl_1(DELAY,39)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together9_aunroll_x_in_c0_eni3155_3_tpl_1_q <= $unsigned(in_c0_eni3155_3_tpl);
        end
    end

    // valid_fanout_reg1(REG,35)@0 + 1
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

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_stencil_2d_sol_pmem(CONSTANT,4)
    assign c_stencil_2d_sol_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx313_stencil_2d0_upper_bits_x_merged_bit_select(BITSELECT,38)@1
    assign i_arrayidx313_stencil_2d0_upper_bits_x_merged_bit_select_b = c_stencil_2d_sol_pmem_q[63:12];
    assign i_arrayidx313_stencil_2d0_upper_bits_x_merged_bit_select_c = c_stencil_2d_sol_pmem_q[11:0];

    // i_idxprom30_stencil_2d3_vt_const_63(CONSTANT,12)
    assign i_idxprom30_stencil_2d3_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // i_add29_stencil_2d2(ADD,7)@0
    assign i_add29_stencil_2d2_a = {1'b0, in_c0_eni3155_1_tpl};
    assign i_add29_stencil_2d2_b = {1'b0, in_c0_eni3155_2_tpl};
    assign i_add29_stencil_2d2_o = $unsigned(i_add29_stencil_2d2_a) + $unsigned(i_add29_stencil_2d2_b);
    assign i_add29_stencil_2d2_q = i_add29_stencil_2d2_o[32:0];

    // bgTrunc_i_add29_stencil_2d2_sel_x(BITSELECT,18)@0
    assign bgTrunc_i_add29_stencil_2d2_sel_x_b = i_add29_stencil_2d2_q[31:0];

    // i_idxprom30_stencil_2d3_sel_x(BITSELECT,31)@0
    assign i_idxprom30_stencil_2d3_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add29_stencil_2d2_sel_x_b[31:0]};

    // i_idxprom30_stencil_2d3_vt_select_31(BITSELECT,14)@0
    assign i_idxprom30_stencil_2d3_vt_select_31_b = i_idxprom30_stencil_2d3_sel_x_b[31:0];

    // i_idxprom30_stencil_2d3_vt_join(BITJOIN,13)@0
    assign i_idxprom30_stencil_2d3_vt_join_q = {i_idxprom30_stencil_2d3_vt_const_63_q, i_idxprom30_stencil_2d3_vt_select_31_b};

    // i_arrayidx313_stencil_2d0_dupName_0_trunc_sel_x(BITSELECT,29)@0
    assign i_arrayidx313_stencil_2d0_dupName_0_trunc_sel_x_b = i_idxprom30_stencil_2d3_vt_join_q[11:0];

    // i_arrayidx313_stencil_2d0_narrow_x(BITSELECT,22)@0
    assign i_arrayidx313_stencil_2d0_narrow_x_b = i_arrayidx313_stencil_2d0_dupName_0_trunc_sel_x_b[9:0];

    // redist2_i_arrayidx313_stencil_2d0_narrow_x_b_1(DELAY,41)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_arrayidx313_stencil_2d0_narrow_x_b_1_q <= $unsigned(i_arrayidx313_stencil_2d0_narrow_x_b);
        end
    end

    // i_arrayidx313_stencil_2d0_shift_join_x(BITJOIN,23)@1
    assign i_arrayidx313_stencil_2d0_shift_join_x_q = {redist2_i_arrayidx313_stencil_2d0_narrow_x_b_1_q, i_arrayidx313_stencil_2d4_vt_const_1_q};

    // i_arrayidx313_stencil_2d0_add_x(ADD,19)@1
    assign i_arrayidx313_stencil_2d0_add_x_a = {1'b0, i_arrayidx313_stencil_2d0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx313_stencil_2d0_add_x_b = {1'b0, i_arrayidx313_stencil_2d0_shift_join_x_q};
    assign i_arrayidx313_stencil_2d0_add_x_o = $unsigned(i_arrayidx313_stencil_2d0_add_x_a) + $unsigned(i_arrayidx313_stencil_2d0_add_x_b);
    assign i_arrayidx313_stencil_2d0_add_x_q = i_arrayidx313_stencil_2d0_add_x_o[12:0];

    // i_arrayidx313_stencil_2d0_dupName_2_trunc_sel_x(BITSELECT,30)@1
    assign i_arrayidx313_stencil_2d0_dupName_2_trunc_sel_x_b = i_arrayidx313_stencil_2d0_add_x_q[11:0];

    // i_arrayidx313_stencil_2d0_append_upper_bits_x(BITJOIN,20)@1
    assign i_arrayidx313_stencil_2d0_append_upper_bits_x_q = {i_arrayidx313_stencil_2d0_upper_bits_x_merged_bit_select_b, i_arrayidx313_stencil_2d0_dupName_2_trunc_sel_x_b};

    // i_arrayidx313_stencil_2d4_vt_select_63(BITSELECT,10)@1
    assign i_arrayidx313_stencil_2d4_vt_select_63_b = i_arrayidx313_stencil_2d0_append_upper_bits_x_q[63:2];

    // i_arrayidx313_stencil_2d4_vt_const_1(CONSTANT,8)
    assign i_arrayidx313_stencil_2d4_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx313_stencil_2d4_vt_join(BITJOIN,9)@1
    assign i_arrayidx313_stencil_2d4_vt_join_q = {i_arrayidx313_stencil_2d4_vt_select_63_b, i_arrayidx313_stencil_2d4_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5(BLACKBOX,15)@1
    // out out_o_stall@2
    // out out_o_valid@2
    // out out_unnamed_stencil_2d5_stencil_2d_avm_address@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_burstcount@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_byteenable@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_enable@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_read@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_write@20000000
    // out out_unnamed_stencil_2d5_stencil_2d_avm_writedata@20000000
    stencil_2d_i_llvm_fpga_mem_unnamed_5_stencil_2d0 thei_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx313_stencil_2d4_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .in_i_writedata(redist0_sync_together9_aunroll_x_in_c0_eni3155_3_tpl_1_q),
        .in_unnamed_stencil_2d5_stencil_2d_avm_readdata(in_unnamed_stencil_2d5_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d5_stencil_2d_avm_writeack(in_unnamed_stencil_2d5_stencil_2d_avm_writeack),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_stencil_2d5_stencil_2d_avm_address(i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5_out_unnamed_stencil_2d5_stencil_2d_avm_address),
        .out_unnamed_stencil_2d5_stencil_2d_avm_burstcount(i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d5_stencil_2d_avm_byteenable(i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d5_stencil_2d_avm_enable(i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5_out_unnamed_stencil_2d5_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d5_stencil_2d_avm_read(i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5_out_unnamed_stencil_2d5_stencil_2d_avm_read),
        .out_unnamed_stencil_2d5_stencil_2d_avm_write(i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5_out_unnamed_stencil_2d5_stencil_2d_avm_write),
        .out_unnamed_stencil_2d5_stencil_2d_avm_writedata(i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5_out_unnamed_stencil_2d5_stencil_2d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_address = i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5_out_unnamed_stencil_2d5_stencil_2d_avm_address;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_enable = i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5_out_unnamed_stencil_2d5_stencil_2d_avm_enable;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_read = i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5_out_unnamed_stencil_2d5_stencil_2d_avm_read;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_write = i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5_out_unnamed_stencil_2d5_stencil_2d_avm_write;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_writedata = i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5_out_unnamed_stencil_2d5_stencil_2d_avm_writedata;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_byteenable = i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable;
    assign out_unnamed_stencil_2d5_stencil_2d_avm_burstcount = i_llvm_fpga_mem_unnamed_stencil_2d5_stencil_2d5_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount;

    // redist1_sync_together9_aunroll_x_in_i_valid_1(DELAY,40)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together9_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist1_sync_together9_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,34)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together9_aunroll_x_in_i_valid_1_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,32)@2
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_stencil_2d3 = GND_q;
    assign out_unnamed_stencil_2d6_0_tpl = GND_q;

endmodule
