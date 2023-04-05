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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_end91_kernel_3mms_c0_enter320_kernel_3mm0
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_i_sfc_logic_s_c0_in_for_end910000enter320_kernel_3mm0 (
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
    output wire [0:0] out_c0_exi2324_0_tpl,
    output wire [63:0] out_c0_exi2324_1_tpl,
    output wire [31:0] out_c0_exi2324_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kernel_3mm1,
    input wire [0:0] in_c0_eni2319_0_tpl,
    input wire [63:0] in_c0_eni2319_1_tpl,
    input wire [63:0] in_c0_eni2319_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_kernel_3mm_F_local_pmem_q;
    wire [1:0] i_arrayidx11211_kernel_3mm2_vt_const_1_q;
    wire [63:0] i_arrayidx11211_kernel_3mm2_vt_join_q;
    wire [61:0] i_arrayidx11211_kernel_3mm2_vt_select_63_b;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_unnamed_kernel_3mm21_kernel_3mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_unnamed_kernel_3mm21_kernel_3mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_unnamed_kernel_3mm21_kernel_3mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_unnamed_kernel_3mm21_kernel_3mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata;
    wire [9:0] i_arrayidx11211_kernel_3mm0_add_x_a;
    wire [9:0] i_arrayidx11211_kernel_3mm0_add_x_b;
    logic [9:0] i_arrayidx11211_kernel_3mm0_add_x_o;
    wire [9:0] i_arrayidx11211_kernel_3mm0_add_x_q;
    wire [63:0] i_arrayidx11211_kernel_3mm0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx11211_kernel_3mm0_narrow_x_b;
    wire [8:0] i_arrayidx11211_kernel_3mm0_shift_join_x_q;
    wire [9:0] i_arrayidx11211_kernel_3mm0_dupName_0_add_x_a;
    wire [9:0] i_arrayidx11211_kernel_3mm0_dupName_0_add_x_b;
    logic [9:0] i_arrayidx11211_kernel_3mm0_dupName_0_add_x_o;
    wire [9:0] i_arrayidx11211_kernel_3mm0_dupName_0_add_x_q;
    wire [17:0] i_arrayidx11211_kernel_3mm0_mult_extender_x_q;
    wire [2:0] i_arrayidx11211_kernel_3mm0_mult_multconst_x_q;
    wire [8:0] i_arrayidx11211_kernel_3mm0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx11211_kernel_3mm0_dupName_1_trunc_sel_x_b;
    wire [8:0] i_arrayidx11211_kernel_3mm0_dupName_2_trunc_sel_x_b;
    wire [8:0] i_arrayidx11211_kernel_3mm0_dupName_3_trunc_sel_x_b;
    wire [8:0] i_arrayidx11211_kernel_3mm0_dupName_5_trunc_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    wire [9:0] addsumAHighB_uid50_i_arrayidx11211_kernel_3mm0_mult_x_a;
    wire [9:0] addsumAHighB_uid50_i_arrayidx11211_kernel_3mm0_mult_x_b;
    logic [9:0] addsumAHighB_uid50_i_arrayidx11211_kernel_3mm0_mult_x_o;
    wire [9:0] addsumAHighB_uid50_i_arrayidx11211_kernel_3mm0_mult_x_q;
    wire [11:0] add_uid51_i_arrayidx11211_kernel_3mm0_mult_x_q;
    wire [14:0] sR_mergedSignalTM_uid56_i_arrayidx11211_kernel_3mm0_mult_x_q;
    wire [54:0] i_arrayidx11211_kernel_3mm0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx11211_kernel_3mm0_upper_bits_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid48_i_arrayidx11211_kernel_3mm0_mult_x_merged_bit_select_b;
    wire [6:0] lowRangeB_uid48_i_arrayidx11211_kernel_3mm0_mult_x_merged_bit_select_c;
    reg [0:0] redist0_valid_fanout_reg0_q_4_q;
    reg [0:0] redist0_valid_fanout_reg0_q_4_delay_0;
    reg [0:0] redist0_valid_fanout_reg0_q_4_delay_1;
    reg [0:0] redist0_valid_fanout_reg0_q_4_delay_2;
    reg [8:0] redist1_i_arrayidx11211_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q;
    reg [6:0] redist2_i_arrayidx11211_kernel_3mm0_narrow_x_b_1_q;
    reg [63:0] redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_inputreg0_q;
    wire redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_mem_reset0;
    wire [63:0] redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_mem_ia;
    wire [0:0] redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_mem_aa;
    wire [0:0] redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_mem_ab;
    wire [63:0] redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_mem_iq;
    wire [63:0] redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_mem_q;
    wire [0:0] redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_rdcnt_q;
    (* preserve *) reg [0:0] redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_rdcnt_i;
    reg [0:0] redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_cmpReg_q;
    wire [0:0] redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_notEnable_q;
    wire [0:0] redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_sticky_ena_q;
    wire [0:0] redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg1(REG,39)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_kernel_3mm_F_local_pmem(CONSTANT,3)
    assign c_kernel_3mm_F_local_pmem_q = $unsigned(64'b0100000001000101000000000000000000000000000000000000000000000000);

    // i_arrayidx11211_kernel_3mm0_upper_bits_x_merged_bit_select(BITSELECT,86)@1
    assign i_arrayidx11211_kernel_3mm0_upper_bits_x_merged_bit_select_b = c_kernel_3mm_F_local_pmem_q[63:9];
    assign i_arrayidx11211_kernel_3mm0_upper_bits_x_merged_bit_select_c = c_kernel_3mm_F_local_pmem_q[8:0];

    // i_arrayidx11211_kernel_3mm0_dupName_3_trunc_sel_x(BITSELECT,34)@0
    assign i_arrayidx11211_kernel_3mm0_dupName_3_trunc_sel_x_b = in_c0_eni2319_2_tpl[8:0];

    // i_arrayidx11211_kernel_3mm0_narrow_x(BITSELECT,17)@0
    assign i_arrayidx11211_kernel_3mm0_narrow_x_b = i_arrayidx11211_kernel_3mm0_dupName_3_trunc_sel_x_b[6:0];

    // redist2_i_arrayidx11211_kernel_3mm0_narrow_x_b_1(DELAY,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_arrayidx11211_kernel_3mm0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist2_i_arrayidx11211_kernel_3mm0_narrow_x_b_1_q <= $unsigned(i_arrayidx11211_kernel_3mm0_narrow_x_b);
        end
    end

    // i_arrayidx11211_kernel_3mm0_shift_join_x(BITJOIN,18)@1
    assign i_arrayidx11211_kernel_3mm0_shift_join_x_q = {redist2_i_arrayidx11211_kernel_3mm0_narrow_x_b_1_q, i_arrayidx11211_kernel_3mm2_vt_const_1_q};

    // i_arrayidx11211_kernel_3mm0_mult_multconst_x(CONSTANT,29)
    assign i_arrayidx11211_kernel_3mm0_mult_multconst_x_q = $unsigned(3'b000);

    // i_arrayidx11211_kernel_3mm0_dupName_0_trunc_sel_x(BITSELECT,31)@0
    assign i_arrayidx11211_kernel_3mm0_dupName_0_trunc_sel_x_b = in_c0_eni2319_1_tpl[8:0];

    // addsumAHighB_uid50_i_arrayidx11211_kernel_3mm0_mult_x(ADD,49)@0
    assign addsumAHighB_uid50_i_arrayidx11211_kernel_3mm0_mult_x_a = {1'b0, i_arrayidx11211_kernel_3mm0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid50_i_arrayidx11211_kernel_3mm0_mult_x_b = {3'b000, lowRangeB_uid48_i_arrayidx11211_kernel_3mm0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid50_i_arrayidx11211_kernel_3mm0_mult_x_o = $unsigned(addsumAHighB_uid50_i_arrayidx11211_kernel_3mm0_mult_x_a) + $unsigned(addsumAHighB_uid50_i_arrayidx11211_kernel_3mm0_mult_x_b);
    assign addsumAHighB_uid50_i_arrayidx11211_kernel_3mm0_mult_x_q = addsumAHighB_uid50_i_arrayidx11211_kernel_3mm0_mult_x_o[9:0];

    // lowRangeB_uid48_i_arrayidx11211_kernel_3mm0_mult_x_merged_bit_select(BITSELECT,87)@0
    assign lowRangeB_uid48_i_arrayidx11211_kernel_3mm0_mult_x_merged_bit_select_b = i_arrayidx11211_kernel_3mm0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid48_i_arrayidx11211_kernel_3mm0_mult_x_merged_bit_select_c = i_arrayidx11211_kernel_3mm0_dupName_0_trunc_sel_x_b[8:2];

    // add_uid51_i_arrayidx11211_kernel_3mm0_mult_x(BITJOIN,50)@0
    assign add_uid51_i_arrayidx11211_kernel_3mm0_mult_x_q = {addsumAHighB_uid50_i_arrayidx11211_kernel_3mm0_mult_x_q, lowRangeB_uid48_i_arrayidx11211_kernel_3mm0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid56_i_arrayidx11211_kernel_3mm0_mult_x(BITJOIN,55)@0
    assign sR_mergedSignalTM_uid56_i_arrayidx11211_kernel_3mm0_mult_x_q = {add_uid51_i_arrayidx11211_kernel_3mm0_mult_x_q, i_arrayidx11211_kernel_3mm0_mult_multconst_x_q};

    // i_arrayidx11211_kernel_3mm0_mult_extender_x(BITJOIN,28)@0
    assign i_arrayidx11211_kernel_3mm0_mult_extender_x_q = {i_arrayidx11211_kernel_3mm0_mult_multconst_x_q, sR_mergedSignalTM_uid56_i_arrayidx11211_kernel_3mm0_mult_x_q};

    // i_arrayidx11211_kernel_3mm0_dupName_1_trunc_sel_x(BITSELECT,32)@0
    assign i_arrayidx11211_kernel_3mm0_dupName_1_trunc_sel_x_b = i_arrayidx11211_kernel_3mm0_mult_extender_x_q[8:0];

    // redist1_i_arrayidx11211_kernel_3mm0_dupName_1_trunc_sel_x_b_1(DELAY,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_arrayidx11211_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist1_i_arrayidx11211_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx11211_kernel_3mm0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx11211_kernel_3mm0_add_x(ADD,12)@1
    assign i_arrayidx11211_kernel_3mm0_add_x_a = {1'b0, i_arrayidx11211_kernel_3mm0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx11211_kernel_3mm0_add_x_b = {1'b0, redist1_i_arrayidx11211_kernel_3mm0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx11211_kernel_3mm0_add_x_o = $unsigned(i_arrayidx11211_kernel_3mm0_add_x_a) + $unsigned(i_arrayidx11211_kernel_3mm0_add_x_b);
    assign i_arrayidx11211_kernel_3mm0_add_x_q = i_arrayidx11211_kernel_3mm0_add_x_o[9:0];

    // i_arrayidx11211_kernel_3mm0_dupName_2_trunc_sel_x(BITSELECT,33)@1
    assign i_arrayidx11211_kernel_3mm0_dupName_2_trunc_sel_x_b = i_arrayidx11211_kernel_3mm0_add_x_q[8:0];

    // i_arrayidx11211_kernel_3mm0_dupName_0_add_x(ADD,22)@1
    assign i_arrayidx11211_kernel_3mm0_dupName_0_add_x_a = {1'b0, i_arrayidx11211_kernel_3mm0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx11211_kernel_3mm0_dupName_0_add_x_b = {1'b0, i_arrayidx11211_kernel_3mm0_shift_join_x_q};
    assign i_arrayidx11211_kernel_3mm0_dupName_0_add_x_o = $unsigned(i_arrayidx11211_kernel_3mm0_dupName_0_add_x_a) + $unsigned(i_arrayidx11211_kernel_3mm0_dupName_0_add_x_b);
    assign i_arrayidx11211_kernel_3mm0_dupName_0_add_x_q = i_arrayidx11211_kernel_3mm0_dupName_0_add_x_o[9:0];

    // i_arrayidx11211_kernel_3mm0_dupName_5_trunc_sel_x(BITSELECT,35)@1
    assign i_arrayidx11211_kernel_3mm0_dupName_5_trunc_sel_x_b = i_arrayidx11211_kernel_3mm0_dupName_0_add_x_q[8:0];

    // i_arrayidx11211_kernel_3mm0_append_upper_bits_x(BITJOIN,13)@1
    assign i_arrayidx11211_kernel_3mm0_append_upper_bits_x_q = {i_arrayidx11211_kernel_3mm0_upper_bits_x_merged_bit_select_b, i_arrayidx11211_kernel_3mm0_dupName_5_trunc_sel_x_b};

    // i_arrayidx11211_kernel_3mm2_vt_select_63(BITSELECT,8)@1
    assign i_arrayidx11211_kernel_3mm2_vt_select_63_b = i_arrayidx11211_kernel_3mm0_append_upper_bits_x_q[63:2];

    // i_arrayidx11211_kernel_3mm2_vt_const_1(CONSTANT,6)
    assign i_arrayidx11211_kernel_3mm2_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx11211_kernel_3mm2_vt_join(BITJOIN,7)@1
    assign i_arrayidx11211_kernel_3mm2_vt_join_q = {i_arrayidx11211_kernel_3mm2_vt_select_63_b, i_arrayidx11211_kernel_3mm2_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3(BLACKBOX,9)@1
    // in in_i_stall@20000000
    // out out_o_readdata@5
    // out out_o_stall@4
    // out out_o_valid@5
    // out out_unnamed_kernel_3mm21_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm21_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm21_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm21_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata@20000000
    kernel_3mm_i_llvm_fpga_mem_unnamed_21_kernel_3mm0 thei_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx11211_kernel_3mm2_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm21_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm21_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm21_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm21_kernel_3mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_unnamed_kernel_3mm21_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_unnamed_kernel_3mm21_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_unnamed_kernel_3mm21_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_unnamed_kernel_3mm21_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_unnamed_kernel_3mm21_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_unnamed_kernel_3mm21_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_unnamed_kernel_3mm21_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_unnamed_kernel_3mm21_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount;

    // valid_fanout_reg0(REG,38)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // redist0_valid_fanout_reg0_q_4(DELAY,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_4_delay_0 <= '0;
            redist0_valid_fanout_reg0_q_4_delay_1 <= '0;
            redist0_valid_fanout_reg0_q_4_delay_2 <= '0;
            redist0_valid_fanout_reg0_q_4_q <= '0;
        end
        else
        begin
            redist0_valid_fanout_reg0_q_4_delay_0 <= $unsigned(valid_fanout_reg0_q);
            redist0_valid_fanout_reg0_q_4_delay_1 <= redist0_valid_fanout_reg0_q_4_delay_0;
            redist0_valid_fanout_reg0_q_4_delay_2 <= redist0_valid_fanout_reg0_q_4_delay_1;
            redist0_valid_fanout_reg0_q_4_q <= redist0_valid_fanout_reg0_q_4_delay_2;
        end
    end

    // redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_notEnable(LOGICAL,97)
    assign redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_nor(LOGICAL,98)
    assign redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_nor_q = ~ (redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_notEnable_q | redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_sticky_ena_q);

    // redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_cmpReg(REG,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_sticky_ena(REG,99)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_nor_q == 1'b1)
        begin
            redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_sticky_ena_q <= $unsigned(redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_cmpReg_q);
        end
    end

    // redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_enaAnd(LOGICAL,100)
    assign redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_enaAnd_q = redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_sticky_ena_q & VCC_q;

    // redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_rdcnt(COUNTER,94)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_rdcnt_i <= $unsigned(redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_rdcnt_q = redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_rdcnt_i[0:0];

    // redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_inputreg0(DELAY,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_inputreg0_q <= '0;
        end
        else
        begin
            redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_inputreg0_q <= $unsigned(i_arrayidx11211_kernel_3mm2_vt_join_q);
        end
    end

    // redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_wraddr(REG,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_wraddr_q <= $unsigned(redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_rdcnt_q);
        end
    end

    // redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_mem(DUALMEM,93)
    assign redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_mem_ia = $unsigned(redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_inputreg0_q);
    assign redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_mem_aa = redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_wraddr_q;
    assign redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_mem_ab = redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_rdcnt_q;
    assign redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(64),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_mem_dmem (
        .clocken1(redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_mem_aa),
        .data_a(redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_mem_ab),
        .q_b(redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_mem_q = redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_mem_iq[63:0];

    // sync_out_aunroll_x(GPOUT,36)@5
    assign out_c0_exi2324_0_tpl = GND_q;
    assign out_c0_exi2324_1_tpl = redist3_i_arrayidx11211_kernel_3mm2_vt_join_q_4_mem_q;
    assign out_c0_exi2324_2_tpl = i_llvm_fpga_mem_unnamed_kernel_3mm21_kernel_3mm3_out_o_readdata;
    assign out_o_valid = redist0_valid_fanout_reg0_q_4_q;
    assign out_unnamed_kernel_3mm1 = GND_q;

endmodule
