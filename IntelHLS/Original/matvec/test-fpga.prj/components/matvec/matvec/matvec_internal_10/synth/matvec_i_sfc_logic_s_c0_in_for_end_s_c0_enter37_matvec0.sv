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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_end_matvecs_c0_enter37_matvec0
// Created for function/kernel matvec
// SystemVerilog created on Thu Apr 27 14:29:50 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module matvec_i_sfc_logic_s_c0_in_for_end_s_c0_enter37_matvec0 (
    input wire [31:0] in_unnamed_matvec4_matvec_avm_readdata,
    input wire [0:0] in_unnamed_matvec4_matvec_avm_writeack,
    input wire [0:0] in_unnamed_matvec4_matvec_avm_waitrequest,
    input wire [0:0] in_unnamed_matvec4_matvec_avm_readdatavalid,
    output wire [31:0] out_unnamed_matvec4_matvec_avm_address,
    output wire [0:0] out_unnamed_matvec4_matvec_avm_enable,
    output wire [0:0] out_unnamed_matvec4_matvec_avm_read,
    output wire [0:0] out_unnamed_matvec4_matvec_avm_write,
    output wire [31:0] out_unnamed_matvec4_matvec_avm_writedata,
    output wire [3:0] out_unnamed_matvec4_matvec_avm_byteenable,
    output wire [0:0] out_unnamed_matvec4_matvec_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_matvec5_0_tpl,
    output wire [0:0] out_unnamed_matvec6,
    input wire [0:0] in_c0_eni236_0_tpl,
    input wire [63:0] in_c0_eni236_1_tpl,
    input wire [31:0] in_c0_eni236_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_matvec_Out_local_pmem_q;
    wire [1:0] i_arrayidx123_matvec2_vt_const_1_q;
    wire [63:0] i_arrayidx123_matvec2_vt_join_q;
    wire [61:0] i_arrayidx123_matvec2_vt_select_63_b;
    wire [31:0] i_llvm_fpga_mem_unnamed_matvec4_matvec3_out_unnamed_matvec4_matvec_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec4_matvec3_out_unnamed_matvec4_matvec_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_matvec4_matvec3_out_unnamed_matvec4_matvec_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec4_matvec3_out_unnamed_matvec4_matvec_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec4_matvec3_out_unnamed_matvec4_matvec_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec4_matvec3_out_unnamed_matvec4_matvec_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_matvec4_matvec3_out_unnamed_matvec4_matvec_avm_writedata;
    wire [7:0] i_arrayidx123_matvec0_add_x_a;
    wire [7:0] i_arrayidx123_matvec0_add_x_b;
    logic [7:0] i_arrayidx123_matvec0_add_x_o;
    wire [7:0] i_arrayidx123_matvec0_add_x_q;
    wire [63:0] i_arrayidx123_matvec0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx123_matvec0_narrow_x_b;
    wire [6:0] i_arrayidx123_matvec0_shift_join_x_q;
    wire [6:0] i_arrayidx123_matvec0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx123_matvec0_dupName_2_trunc_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    wire [56:0] i_arrayidx123_matvec0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx123_matvec0_upper_bits_x_merged_bit_select_c;
    reg [31:0] redist0_sync_together8_aunroll_x_in_c0_eni236_2_tpl_1_q;
    reg [0:0] redist1_sync_together8_aunroll_x_in_i_valid_1_q;
    reg [4:0] redist2_i_arrayidx123_matvec0_narrow_x_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together8_aunroll_x_in_c0_eni236_2_tpl_1(DELAY,30)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together8_aunroll_x_in_c0_eni236_2_tpl_1_q <= $unsigned(in_c0_eni236_2_tpl);
        end
    end

    // valid_fanout_reg1(REG,28)@0 + 1
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

    // c_matvec_Out_local_pmem(CONSTANT,4)
    assign c_matvec_Out_local_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx123_matvec0_upper_bits_x_merged_bit_select(BITSELECT,29)@1
    assign i_arrayidx123_matvec0_upper_bits_x_merged_bit_select_b = c_matvec_Out_local_pmem_q[63:7];
    assign i_arrayidx123_matvec0_upper_bits_x_merged_bit_select_c = c_matvec_Out_local_pmem_q[6:0];

    // i_arrayidx123_matvec0_dupName_0_trunc_sel_x(BITSELECT,23)@0
    assign i_arrayidx123_matvec0_dupName_0_trunc_sel_x_b = in_c0_eni236_1_tpl[6:0];

    // i_arrayidx123_matvec0_narrow_x(BITSELECT,16)@0
    assign i_arrayidx123_matvec0_narrow_x_b = i_arrayidx123_matvec0_dupName_0_trunc_sel_x_b[4:0];

    // redist2_i_arrayidx123_matvec0_narrow_x_b_1(DELAY,32)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_arrayidx123_matvec0_narrow_x_b_1_q <= $unsigned(i_arrayidx123_matvec0_narrow_x_b);
        end
    end

    // i_arrayidx123_matvec0_shift_join_x(BITJOIN,17)@1
    assign i_arrayidx123_matvec0_shift_join_x_q = {redist2_i_arrayidx123_matvec0_narrow_x_b_1_q, i_arrayidx123_matvec2_vt_const_1_q};

    // i_arrayidx123_matvec0_add_x(ADD,13)@1
    assign i_arrayidx123_matvec0_add_x_a = {1'b0, i_arrayidx123_matvec0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx123_matvec0_add_x_b = {1'b0, i_arrayidx123_matvec0_shift_join_x_q};
    assign i_arrayidx123_matvec0_add_x_o = $unsigned(i_arrayidx123_matvec0_add_x_a) + $unsigned(i_arrayidx123_matvec0_add_x_b);
    assign i_arrayidx123_matvec0_add_x_q = i_arrayidx123_matvec0_add_x_o[7:0];

    // i_arrayidx123_matvec0_dupName_2_trunc_sel_x(BITSELECT,24)@1
    assign i_arrayidx123_matvec0_dupName_2_trunc_sel_x_b = i_arrayidx123_matvec0_add_x_q[6:0];

    // i_arrayidx123_matvec0_append_upper_bits_x(BITJOIN,14)@1
    assign i_arrayidx123_matvec0_append_upper_bits_x_q = {i_arrayidx123_matvec0_upper_bits_x_merged_bit_select_b, i_arrayidx123_matvec0_dupName_2_trunc_sel_x_b};

    // i_arrayidx123_matvec2_vt_select_63(BITSELECT,9)@1
    assign i_arrayidx123_matvec2_vt_select_63_b = i_arrayidx123_matvec0_append_upper_bits_x_q[63:2];

    // i_arrayidx123_matvec2_vt_const_1(CONSTANT,7)
    assign i_arrayidx123_matvec2_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx123_matvec2_vt_join(BITJOIN,8)@1
    assign i_arrayidx123_matvec2_vt_join_q = {i_arrayidx123_matvec2_vt_select_63_b, i_arrayidx123_matvec2_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_unnamed_matvec4_matvec3(BLACKBOX,10)@1
    // out out_o_almost_empty@2
    // out out_o_empty@2
    // out out_o_stall@2
    // out out_o_valid@2
    // out out_unnamed_matvec4_matvec_avm_address@20000000
    // out out_unnamed_matvec4_matvec_avm_burstcount@20000000
    // out out_unnamed_matvec4_matvec_avm_byteenable@20000000
    // out out_unnamed_matvec4_matvec_avm_enable@20000000
    // out out_unnamed_matvec4_matvec_avm_read@20000000
    // out out_unnamed_matvec4_matvec_avm_write@20000000
    // out out_unnamed_matvec4_matvec_avm_writedata@20000000
    matvec_i_llvm_fpga_mem_unnamed_4_matvec0 thei_llvm_fpga_mem_unnamed_matvec4_matvec3 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx123_matvec2_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .in_i_writedata(redist0_sync_together8_aunroll_x_in_c0_eni236_2_tpl_1_q),
        .in_unnamed_matvec4_matvec_avm_readdata(in_unnamed_matvec4_matvec_avm_readdata),
        .in_unnamed_matvec4_matvec_avm_readdatavalid(in_unnamed_matvec4_matvec_avm_readdatavalid),
        .in_unnamed_matvec4_matvec_avm_waitrequest(in_unnamed_matvec4_matvec_avm_waitrequest),
        .in_unnamed_matvec4_matvec_avm_writeack(in_unnamed_matvec4_matvec_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_matvec4_matvec_avm_address(i_llvm_fpga_mem_unnamed_matvec4_matvec3_out_unnamed_matvec4_matvec_avm_address),
        .out_unnamed_matvec4_matvec_avm_burstcount(i_llvm_fpga_mem_unnamed_matvec4_matvec3_out_unnamed_matvec4_matvec_avm_burstcount),
        .out_unnamed_matvec4_matvec_avm_byteenable(i_llvm_fpga_mem_unnamed_matvec4_matvec3_out_unnamed_matvec4_matvec_avm_byteenable),
        .out_unnamed_matvec4_matvec_avm_enable(i_llvm_fpga_mem_unnamed_matvec4_matvec3_out_unnamed_matvec4_matvec_avm_enable),
        .out_unnamed_matvec4_matvec_avm_read(i_llvm_fpga_mem_unnamed_matvec4_matvec3_out_unnamed_matvec4_matvec_avm_read),
        .out_unnamed_matvec4_matvec_avm_write(i_llvm_fpga_mem_unnamed_matvec4_matvec3_out_unnamed_matvec4_matvec_avm_write),
        .out_unnamed_matvec4_matvec_avm_writedata(i_llvm_fpga_mem_unnamed_matvec4_matvec3_out_unnamed_matvec4_matvec_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_unnamed_matvec4_matvec_avm_address = i_llvm_fpga_mem_unnamed_matvec4_matvec3_out_unnamed_matvec4_matvec_avm_address;
    assign out_unnamed_matvec4_matvec_avm_enable = i_llvm_fpga_mem_unnamed_matvec4_matvec3_out_unnamed_matvec4_matvec_avm_enable;
    assign out_unnamed_matvec4_matvec_avm_read = i_llvm_fpga_mem_unnamed_matvec4_matvec3_out_unnamed_matvec4_matvec_avm_read;
    assign out_unnamed_matvec4_matvec_avm_write = i_llvm_fpga_mem_unnamed_matvec4_matvec3_out_unnamed_matvec4_matvec_avm_write;
    assign out_unnamed_matvec4_matvec_avm_writedata = i_llvm_fpga_mem_unnamed_matvec4_matvec3_out_unnamed_matvec4_matvec_avm_writedata;
    assign out_unnamed_matvec4_matvec_avm_byteenable = i_llvm_fpga_mem_unnamed_matvec4_matvec3_out_unnamed_matvec4_matvec_avm_byteenable;
    assign out_unnamed_matvec4_matvec_avm_burstcount = i_llvm_fpga_mem_unnamed_matvec4_matvec3_out_unnamed_matvec4_matvec_avm_burstcount;

    // redist1_sync_together8_aunroll_x_in_i_valid_1(DELAY,31)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together8_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist1_sync_together8_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,27)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together8_aunroll_x_in_i_valid_1_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,25)@2
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_matvec5_0_tpl = GND_q;
    assign out_unnamed_matvec6 = GND_q;

endmodule
