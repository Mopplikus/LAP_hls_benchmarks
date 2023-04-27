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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_end_kernel_3mms_c0_enter394_kernel_3mm0
// Created for function/kernel kernel_3mm
// SystemVerilog created on Thu Apr 27 14:26:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_logic_s_c0_in_for_end_s_c0_enter394_kernel_3mm0 (
    input wire [31:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_c0_exi2399_0_tpl,
    output wire [63:0] out_c0_exi2399_1_tpl,
    output wire [31:0] out_c0_exi2399_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_3mm6,
    input wire [0:0] in_c0_eni3393_0_tpl,
    input wire [63:0] in_c0_eni3393_1_tpl,
    input wire [63:0] in_c0_eni3393_2_tpl,
    input wire [0:0] in_c0_eni3393_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_kernel_3mm_F_local_pmem_q;
    wire [1:0] i_arrayidx444_kernel_3mm2_vt_const_1_q;
    wire [63:0] i_arrayidx444_kernel_3mm2_vt_join_q;
    wire [61:0] i_arrayidx444_kernel_3mm2_vt_select_63_b;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_unnamed_kernel_3mm5_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_unnamed_kernel_3mm5_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_unnamed_kernel_3mm5_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata;
    wire [9:0] i_arrayidx444_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx444_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx444_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx444_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx444_kernel_3mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx444_kernel_3mm0_narrow_x_b;
    wire [8:0] i_arrayidx444_kernel_3mm0_shift_join_x_q;
    wire [9:0] i_arrayidx444_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx444_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx444_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx444_kernel_3mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx444_kernel_3mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx444_kernel_3mm0_mult_multconst_x_q;
    wire [8:0] i_arrayidx444_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx444_kernel_3mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx444_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx444_kernel_3mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx444_kernel_3mm0_dupName_5_trunc_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    wire [9:0] addsumAHighB_uid51_i_arrayidx444_kernel_3mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid51_i_arrayidx444_kernel_3mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid51_i_arrayidx444_kernel_3mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid51_i_arrayidx444_kernel_3mm0_mult_x_q;
    wire [11:0] add_uid52_i_arrayidx444_kernel_3mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid57_i_arrayidx444_kernel_3mm0_mult_x_q;
    wire [54:0] i_arrayidx444_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx444_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid49_i_arrayidx444_kernel_3mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid49_i_arrayidx444_kernel_3mm0_mult_x_merged_bit_select_c;
    reg [54:0] redist0_i_arrayidx444_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q;
    reg [0:0] redist1_valid_fanout_reg0_q_4_q;
    reg [0:0] redist1_valid_fanout_reg0_q_4_delay_0;
    reg [0:0] redist1_valid_fanout_reg0_q_4_delay_1;
    reg [0:0] redist1_valid_fanout_reg0_q_4_delay_2;
    reg [0:0] redist2_sync_together10_aunroll_x_in_c0_eni3393_3_tpl_2_q;
    reg [0:0] redist2_sync_together10_aunroll_x_in_c0_eni3393_3_tpl_2_delay_0;
    reg [0:0] redist3_sync_together10_aunroll_x_in_i_valid_1_q;
    reg [8:0] redist4_i_arrayidx444_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q;
    reg [8:0] redist5_i_arrayidx444_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [6:0] redist6_i_arrayidx444_kernel_3mm0_narrow_x_b_2_q;
    reg [6:0] redist6_i_arrayidx444_kernel_3mm0_narrow_x_b_2_delay_0;
    reg [63:0] redist7_i_arrayidx444_kernel_3mm2_vt_join_q_4_q;
    reg [63:0] redist7_i_arrayidx444_kernel_3mm2_vt_join_q_4_delay_0;
    reg [63:0] redist7_i_arrayidx444_kernel_3mm2_vt_join_q_4_delay_1;
    reg [63:0] redist7_i_arrayidx444_kernel_3mm2_vt_join_q_4_inputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist3_sync_together10_aunroll_x_in_i_valid_1(DELAY,92)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist3_sync_together10_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist3_sync_together10_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg1(REG,40)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist3_sync_together10_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist2_sync_together10_aunroll_x_in_c0_eni3393_3_tpl_2(DELAY,91)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together10_aunroll_x_in_c0_eni3393_3_tpl_2_delay_0 <= $unsigned(in_c0_eni3393_3_tpl);
            redist2_sync_together10_aunroll_x_in_c0_eni3393_3_tpl_2_q <= redist2_sync_together10_aunroll_x_in_c0_eni3393_3_tpl_2_delay_0;
        end
    end

    // c_kernel_3mm_F_local_pmem(CONSTANT,4)
    assign c_kernel_3mm_F_local_pmem_q = $unsigned(64'b0100000001000101000000000000000000000000000000000000000000000000);

    // i_arrayidx444_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,87)@1
    assign i_arrayidx444_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_F_local_pmem_q[63:9];
    assign i_arrayidx444_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_F_local_pmem_q[8:0];

    // redist0_i_arrayidx444_kernel_3mm0_upper_bits_x_merged_bit_select_b_1(DELAY,89)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_i_arrayidx444_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q <= $unsigned(i_arrayidx444_kernel_3mm0_upper_bits_x_merged_bit_select_b);
        end
    end

    // i_arrayidx444_kernel_3mm0_dupName_3_trunc_sel_x(BITSELECT,35)@0
    assign i_arrayidx444_kernel_3mm0_dupName_3_trunc_sel_x_b = in_c0_eni3393_2_tpl[8:0];

    // i_arrayidx444_kernel_3mm0_narrow_x(BITSELECT,18)@0
    assign i_arrayidx444_kernel_3mm0_narrow_x_b = i_arrayidx444_kernel_3mm0_dupName_3_trunc_sel_x_b[6:0];

    // redist6_i_arrayidx444_kernel_3mm0_narrow_x_b_2(DELAY,95)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist6_i_arrayidx444_kernel_3mm0_narrow_x_b_2_delay_0 <= $unsigned(i_arrayidx444_kernel_3mm0_narrow_x_b);
            redist6_i_arrayidx444_kernel_3mm0_narrow_x_b_2_q <= redist6_i_arrayidx444_kernel_3mm0_narrow_x_b_2_delay_0;
        end
    end

    // i_arrayidx444_kernel_3mm0_shift_join_x(BITJOIN,19)@2
    assign i_arrayidx444_kernel_3mm0_shift_join_x_q = {redist6_i_arrayidx444_kernel_3mm0_narrow_x_b_2_q, i_arrayidx444_kernel_3mm2_vt_const_1_q};

    // i_arrayidx444_kernel_3mm0_mult_multconst_x(CONSTANT,30)
    assign i_arrayidx444_kernel_3mm0_mult_multconst_x_q = $unsigned(3'b000);

    // i_arrayidx444_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,32)@0
    assign i_arrayidx444_kernel_3mm0_dupName_0_trunc_sel_x_b = in_c0_eni3393_1_tpl[8:0];

    // addsumAHighB_uid51_i_arrayidx444_kernel_3mm0_mult_x(ADD,50)@0
    assign addsumAHighB_uid51_i_arrayidx444_kernel_3mm0_mult_x_a = {1'b0, i_arrayidx444_kernel_3mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid51_i_arrayidx444_kernel_3mm0_mult_x_b = {3'b000, lowRangeB_uid49_i_arrayidx444_kernel_3mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid51_i_arrayidx444_kernel_3mm0_mult_x_o = $unsigned(addsumAHighB_uid51_i_arrayidx444_kernel_3mm0_mult_x_a) + $unsigned(addsumAHighB_uid51_i_arrayidx444_kernel_3mm0_mult_x_b);
    assign addsumAHighB_uid51_i_arrayidx444_kernel_3mm0_mult_x_q = addsumAHighB_uid51_i_arrayidx444_kernel_3mm0_mult_x_o[9:0];

    // lowRangeB_uid49_i_arrayidx444_kernel_3mm0_mult_x_merged_bit_select(BITSELECT,88)@0
    assign lowRangeB_uid49_i_arrayidx444_kernel_3mm0_mult_x_merged_bit_select_b = i_arrayidx444_kernel_3mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid49_i_arrayidx444_kernel_3mm0_mult_x_merged_bit_select_c = i_arrayidx444_kernel_3mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid52_i_arrayidx444_kernel_3mm0_mult_x(BITJOIN,51)@0
    assign add_uid52_i_arrayidx444_kernel_3mm0_mult_x_q = {addsumAHighB_uid51_i_arrayidx444_kernel_3mm0_mult_x_q, lowRangeB_uid49_i_arrayidx444_kernel_3mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid57_i_arrayidx444_kernel_3mm0_mult_x(BITJOIN,56)@0
    assign sR_mergedSignalTM_uid57_i_arrayidx444_kernel_3mm0_mult_x_q = {add_uid52_i_arrayidx444_kernel_3mm0_mult_x_q, i_arrayidx444_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx444_kernel_3mm0_mult_extender_x(BITJOIN,29)@0
    assign i_arrayidx444_kernel_3mm0_mult_extender_x_q = {i_arrayidx444_kernel_3mm0_mult_multconst_x_q, sR_mergedSignalTM_uid57_i_arrayidx444_kernel_3mm0_mult_x_q};

    // i_arrayidx444_kernel_3mm0_dupName_1_trunc_sel_x(BITSELECT,33)@0
    assign i_arrayidx444_kernel_3mm0_dupName_1_trunc_sel_x_b = i_arrayidx444_kernel_3mm0_mult_extender_x_q[8:0];

    // redist5_i_arrayidx444_kernel_3mm0_dupName_1_trunc_sel_x_b_1(DELAY,94)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_arrayidx444_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx444_kernel_3mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx444_kernel_3mm0_add_x(ADD,13)@1
    assign i_arrayidx444_kernel_3mm0_add_x_a = {1'b0, i_arrayidx444_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx444_kernel_3mm0_add_x_b = {1'b0, redist5_i_arrayidx444_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx444_kernel_3mm0_add_x_o = $unsigned(i_arrayidx444_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx444_kernel_3mm0_add_x_b);
    assign i_arrayidx444_kernel_3mm0_add_x_q = i_arrayidx444_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx444_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,34)@1
    assign i_arrayidx444_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx444_kernel_3mm0_add_x_q[8:0];

    // redist4_i_arrayidx444_kernel_3mm0_dupName_2_trunc_sel_x_b_1(DELAY,93)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_arrayidx444_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx444_kernel_3mm0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_arrayidx444_kernel_3mm0_dupName_0_add_x(ADD,23)@2
    assign i_arrayidx444_kernel_3mm0_dupName_0_add_x_a = {1'b0, redist4_i_arrayidx444_kernel_3mm0_dupName_2_trunc_sel_x_b_1_q};
    assign i_arrayidx444_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx444_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx444_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx444_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx444_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx444_kernel_3mm0_dupName_0_add_x_q = i_arrayidx444_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx444_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,36)@2
    assign i_arrayidx444_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx444_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx444_kernel_3mm0_append_upper_bits_x(BITJOIN,14)@2
    assign i_arrayidx444_kernel_3mm0_append_upper_bits_x_q = {redist0_i_arrayidx444_kernel_3mm0_upper_bits_x_merged_bit_select_b_1_q, i_arrayidx444_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx444_kernel_3mm2_vt_select_63(BITSELECT,9)@2
    assign i_arrayidx444_kernel_3mm2_vt_select_63_b = i_arrayidx444_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx444_kernel_3mm2_vt_const_1(CONSTANT,7)
    assign i_arrayidx444_kernel_3mm2_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx444_kernel_3mm2_vt_join(BITJOIN,8)@2
    assign i_arrayidx444_kernel_3mm2_vt_join_q = {i_arrayidx444_kernel_3mm2_vt_select_63_b, i_arrayidx444_kernel_3mm2_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3(BLACKBOX,10)@2
    // out out_o_almost_empty@6
    // out out_o_empty@6
    // out out_o_readdata@6
    // out out_o_stall@6
    // out out_o_valid@6
    // out out_unnamed_kernel_3mm5_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm5_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm5_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm5_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_5_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3 (
        .in_almost_empty_in(GND_q),
        .in_empty_in(GND_q),
        .in_flush(in_flush),
        .in_i_address(i_arrayidx444_kernel_3mm2_vt_join_q),
        .in_i_dependence(redist2_sync_together10_aunroll_x_in_c0_eni3393_3_tpl_2_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack),
        .out_o_almost_empty(),
        .out_o_empty(),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_unnamed_kernel_3mm5_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_unnamed_kernel_3mm5_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_unnamed_kernel_3mm5_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_unnamed_kernel_3mm5_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_unnamed_kernel_3mm5_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_unnamed_kernel_3mm5_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount;

    // valid_fanout_reg0(REG,39)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together10_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist1_valid_fanout_reg0_q_4(DELAY,90)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_valid_fanout_reg0_q_4_delay_0 <= '0;
        end
        else
        begin
            redist1_valid_fanout_reg0_q_4_delay_0 <= $unsigned(valid_fanout_reg0_q);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_valid_fanout_reg0_q_4_delay_1 <= redist1_valid_fanout_reg0_q_4_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_valid_fanout_reg0_q_4_delay_2 <= '0;
        end
        else
        begin
            redist1_valid_fanout_reg0_q_4_delay_2 <= redist1_valid_fanout_reg0_q_4_delay_1;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_valid_fanout_reg0_q_4_q <= redist1_valid_fanout_reg0_q_4_delay_2;
        end
    end

    // redist7_i_arrayidx444_kernel_3mm2_vt_join_q_4_inputreg0(DELAY,97)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_arrayidx444_kernel_3mm2_vt_join_q_4_inputreg0_q <= $unsigned(i_arrayidx444_kernel_3mm2_vt_join_q);
        end
    end

    // redist7_i_arrayidx444_kernel_3mm2_vt_join_q_4(DELAY,96)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist7_i_arrayidx444_kernel_3mm2_vt_join_q_4_delay_0 <= $unsigned(redist7_i_arrayidx444_kernel_3mm2_vt_join_q_4_inputreg0_q);
            redist7_i_arrayidx444_kernel_3mm2_vt_join_q_4_delay_1 <= redist7_i_arrayidx444_kernel_3mm2_vt_join_q_4_delay_0;
            redist7_i_arrayidx444_kernel_3mm2_vt_join_q_4_q <= redist7_i_arrayidx444_kernel_3mm2_vt_join_q_4_delay_1;
        end
    end

    // sync_out_aunroll_x(GPOUT,37)@6
    assign out_c0_exi2399_0_tpl = GND_q;
    assign out_c0_exi2399_1_tpl = redist7_i_arrayidx444_kernel_3mm2_vt_join_q_4_q;
    assign out_c0_exi2399_2_tpl = i_llvm_fpga_mem_unnamed_kernel_3mm5_kernel_3mm3_out_o_readdata;
    assign out_o_valid = redist1_valid_fanout_reg0_q_4_q;
    assign out_unnamed_kernel_3mm6 = GND_q;

endmodule
