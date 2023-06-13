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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body_bicgs_c1_enter_bicg0
// Created for function/kernel bicg
// SystemVerilog created on Tue Jun 13 02:00:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_i_sfc_logic_s_c1_in_for_body_s_c1_enter_bicg0 (
    output wire [0:0] out_c1_exi3_0_tpl,
    output wire [63:0] out_c1_exi3_1_tpl,
    output wire [31:0] out_c1_exi3_2_tpl,
    output wire [63:0] out_c1_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_bicg1,
    input wire [0:0] in_c1_eni2_0_tpl,
    input wire [0:0] in_c1_eni2_1_tpl,
    input wire [0:0] in_c1_eni2_2_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_inc15_bicg9_sel_x_b;
    wire [31:0] bgTrunc_i_mul_bicg6_sel_x_b;
    wire [63:0] i_mptr_bitcast_index80_bicg0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index80_bicg0_c_i2_01_x_q;
    wire [63:0] i_mptr_bitcast_index84_bicg0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_mul_bicg6_extender_x_q;
    wire [26:0] i_mul_bicg6_multconst_x_q;
    wire [31:0] c_i32_014_q;
    wire [31:0] c_i32_116_q;
    wire [32:0] i_inc15_bicg9_a;
    wire [32:0] i_inc15_bicg9_b;
    logic [32:0] i_inc15_bicg9_o;
    wire [32:0] i_inc15_bicg9_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast798815_bicg4_out_dest_data_out_0_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839118_bicg7_out_dest_data_out_3_0;
    wire [31:0] i_llvm_fpga_pop_i32_i_072_pop9_bicg2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_072_pop9_bicg2_out_feedback_stall_out_9;
    wire [31:0] i_llvm_fpga_push_i32_i_072_push9_bicg10_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i32_i_072_push9_bicg10_out_feedback_valid_out_9;
    wire [31:0] i_mul_bicg6_vt_join_q;
    wire [30:0] i_mul_bicg6_vt_select_31_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    wire [36:0] i_mul_bicg6_sums_align_1_q;
    wire [36:0] i_mul_bicg6_sums_align_1_qint;
    wire [37:0] i_mul_bicg6_sums_result_add_0_0_a;
    wire [37:0] i_mul_bicg6_sums_result_add_0_0_b;
    logic [37:0] i_mul_bicg6_sums_result_add_0_0_o;
    wire [37:0] i_mul_bicg6_sums_result_add_0_0_q;
    wire [18:0] xIfSign_mergedSignalTM_uid92_i_mul_bicg6_im0_q;
    wire [3:0] padACst_uid96_i_mul_bicg6_im0_q;
    wire [22:0] aPostPad_uid97_i_mul_bicg6_im0_q;
    wire [23:0] sub_uid98_i_mul_bicg6_im0_a;
    wire [23:0] sub_uid98_i_mul_bicg6_im0_b;
    logic [23:0] sub_uid98_i_mul_bicg6_im0_o;
    wire [23:0] sub_uid98_i_mul_bicg6_im0_q;
    wire [21:0] sR_bottomRange_uid102_i_mul_bicg6_im0_in;
    wire [21:0] sR_bottomRange_uid102_i_mul_bicg6_im0_b;
    wire [22:0] sR_mergedSignalTM_uid103_i_mul_bicg6_im0_q;
    wire [14:0] xIfSign_mergedSignalTM_uid154_i_mul_bicg6_im3_q;
    wire [18:0] aPostPad_uid159_i_mul_bicg6_im3_q;
    wire [19:0] sub_uid160_i_mul_bicg6_im3_a;
    wire [19:0] sub_uid160_i_mul_bicg6_im3_b;
    logic [19:0] sub_uid160_i_mul_bicg6_im3_o;
    wire [19:0] sub_uid160_i_mul_bicg6_im3_q;
    wire [17:0] sR_bottomRange_uid164_i_mul_bicg6_im3_in;
    wire [17:0] sR_bottomRange_uid164_i_mul_bicg6_im3_b;
    wire [18:0] sR_mergedSignalTM_uid165_i_mul_bicg6_im3_q;
    wire [60:0] i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index80_bicg0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index80_bicg0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index80_bicg0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index80_bicg0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index80_bicg0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index80_bicg0_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index84_bicg0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index84_bicg0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index84_bicg0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index84_bicg0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index84_bicg0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index84_bicg0_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [25:0] i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [3:0] i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [4:0] i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [4:0] i_mptr_bitcast_index84_bicg0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index84_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index84_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [17:0] i_mul_bicg6_bs1_merged_bit_select_b;
    wire [13:0] i_mul_bicg6_bs1_merged_bit_select_c;
    reg [3:0] redist0_i_mptr_bitcast_index84_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [3:0] redist1_i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [59:0] redist2_i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_q_1_q;
    reg [59:0] redist3_i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_q_1_q;
    reg [17:0] redist4_sR_bottomRange_uid164_i_mul_bicg6_im3_b_1_q;
    reg [21:0] redist5_sR_bottomRange_uid102_i_mul_bicg6_im0_b_1_q;
    reg [0:0] redist6_valid_fanout_reg0_q_2_q;
    reg [0:0] redist6_valid_fanout_reg0_q_2_delay_0;
    reg [30:0] redist7_i_mul_bicg6_vt_select_31_b_1_q;
    reg [31:0] redist8_i_llvm_fpga_pop_i32_i_072_pop9_bicg2_out_data_out_1_q;
    reg [0:0] redist9_sync_together22_aunroll_x_in_c1_eni2_1_tpl_1_q;
    reg [0:0] redist10_sync_together22_aunroll_x_in_c1_eni2_2_tpl_1_q;
    reg [0:0] redist11_sync_together22_aunroll_x_in_i_valid_1_q;
    wire [0:0] dupName_0_enable_stall_connector_x_not_enable_q;


    // redist11_sync_together22_aunroll_x_in_i_valid_1(DELAY,241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together22_aunroll_x_in_i_valid_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist11_sync_together22_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,49)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist11_sync_together22_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist6_valid_fanout_reg0_q_2(DELAY,236)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_valid_fanout_reg0_q_2_delay_0 <= '0;
            redist6_valid_fanout_reg0_q_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist6_valid_fanout_reg0_q_2_delay_0 <= $unsigned(valid_fanout_reg0_q);
            redist6_valid_fanout_reg0_q_2_q <= redist6_valid_fanout_reg0_q_2_delay_0;
        end
    end

    // c_i32_014(CONSTANT,28)
    assign c_i32_014_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,210)
    assign i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_b_tessel0_2_b = c_i32_014_q[25:0];

    // valid_fanout_reg1(REG,50)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // dupName_0_enable_stall_connector_x_not_enable(LOGICAL,242)
    assign dupName_0_enable_stall_connector_x_not_enable_q = $unsigned(~ (in_enable));

    // valid_fanout_reg4(REG,53)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_116(CONSTANT,29)
    assign c_i32_116_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc15_bicg9(ADD,33)@2
    assign i_inc15_bicg9_a = {1'b0, i_llvm_fpga_pop_i32_i_072_pop9_bicg2_out_data_out};
    assign i_inc15_bicg9_b = {1'b0, c_i32_116_q};
    assign i_inc15_bicg9_o = $unsigned(i_inc15_bicg9_a) + $unsigned(i_inc15_bicg9_b);
    assign i_inc15_bicg9_q = i_inc15_bicg9_o[32:0];

    // bgTrunc_i_inc15_bicg9_sel_x(BITSELECT,2)@2
    assign bgTrunc_i_inc15_bicg9_sel_x_b = i_inc15_bicg9_q[31:0];

    // redist10_sync_together22_aunroll_x_in_c1_eni2_2_tpl_1(DELAY,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together22_aunroll_x_in_c1_eni2_2_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist10_sync_together22_aunroll_x_in_c1_eni2_2_tpl_1_q <= $unsigned(in_c1_eni2_2_tpl);
        end
    end

    // i_llvm_fpga_push_i32_i_072_push9_bicg10(BLACKBOX,37)@2
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    bicg_i_llvm_fpga_push_i32_i_072_push9_0 thei_llvm_fpga_push_i32_i_072_push9_bicg10 (
        .in_c1_ene2(redist10_sync_together22_aunroll_x_in_c1_eni2_2_tpl_1_q),
        .in_data_in(bgTrunc_i_inc15_bicg9_sel_x_b),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i32_i_072_pop9_bicg2_out_feedback_stall_out_9),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i32_i_072_push9_bicg10_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i32_i_072_push9_bicg10_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together22_aunroll_x_in_c1_eni2_1_tpl_1(DELAY,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together22_aunroll_x_in_c1_eni2_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist9_sync_together22_aunroll_x_in_c1_eni2_1_tpl_1_q <= $unsigned(in_c1_eni2_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i_072_pop9_bicg2(BLACKBOX,36)@2
    // out out_feedback_stall_out_9@20000000
    bicg_i_llvm_fpga_pop_i32_i_072_pop9_0 thei_llvm_fpga_pop_i32_i_072_pop9_bicg2 (
        .in_data_in(c_i32_014_q),
        .in_dir(redist9_sync_together22_aunroll_x_in_c1_eni2_1_tpl_1_q),
        .in_feedback_in_9(i_llvm_fpga_push_i32_i_072_push9_bicg10_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i32_i_072_push9_bicg10_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_072_pop9_bicg2_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i32_i_072_pop9_bicg2_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_pop_i32_i_072_pop9_bicg2_out_data_out_1(DELAY,238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i32_i_072_pop9_bicg2_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist8_i_llvm_fpga_pop_i32_i_072_pop9_bicg2_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_072_pop9_bicg2_out_data_out);
        end
    end

    // i_mptr_bitcast_index80_bicg0_c_i2_01_x(CONSTANT,11)
    assign i_mptr_bitcast_index80_bicg0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,211)@3
    assign i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_b_tessel0_2_b, redist8_i_llvm_fpga_pop_i32_i_072_pop9_bicg2_out_data_out_1_q, i_mptr_bitcast_index80_bicg0_c_i2_01_x_q};

    // valid_fanout_reg3(REG,52)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg3_q <= $unsigned(redist11_sync_together22_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839118_bicg7(BLACKBOX,35)@3
    bicg_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839118_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839118_bicg7 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839118_bicg7_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index84_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,228)@3
    assign i_mptr_bitcast_index84_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839118_bicg7_out_dest_data_out_3_0[59:0]);
    assign i_mptr_bitcast_index84_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast839118_bicg7_out_dest_data_out_3_0[63:60]);

    // i_mptr_bitcast_index84_bicg0_add_x_p1_of_2(ADD,200)@3 + 1
    assign i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index84_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_q = i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,212)
    assign i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_b_tessel1_0_b = c_i32_014_q[29:26];

    // i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,214)@4
    assign i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_b_tessel1_0_b};

    // redist0_i_mptr_bitcast_index84_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index84_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_i_mptr_bitcast_index84_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index84_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index84_bicg0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,219)@4
    assign i_mptr_bitcast_index84_bicg0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index84_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index84_bicg0_add_x_p2_of_2(ADD,201)@4 + 1
    assign i_mptr_bitcast_index84_bicg0_add_x_p2_of_2_cin = i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index84_bicg0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index84_bicg0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index84_bicg0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index84_bicg0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index84_bicg0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mptr_bitcast_index84_bicg0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index84_bicg0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index84_bicg0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index84_bicg0_add_x_p2_of_2_q = i_mptr_bitcast_index84_bicg0_add_x_p2_of_2_o[5:1];

    // redist2_i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_q_1(DELAY,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index84_bicg0_add_x_BitJoin_for_q(BITJOIN,202)@5
    assign i_mptr_bitcast_index84_bicg0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index84_bicg0_add_x_p2_of_2_q, redist2_i_mptr_bitcast_index84_bicg0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index84_bicg0_dupName_0_trunc_sel_x(BITSELECT,14)@5
    assign i_mptr_bitcast_index84_bicg0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index84_bicg0_add_x_BitJoin_for_q_q[63:0];

    // i_mul_bicg6_multconst_x(CONSTANT,21)
    assign i_mul_bicg6_multconst_x_q = $unsigned(27'b000000000000000000000000000);

    // i_mul_bicg6_bs1_merged_bit_select(BITSELECT,229)@3
    assign i_mul_bicg6_bs1_merged_bit_select_b = redist8_i_llvm_fpga_pop_i32_i_072_pop9_bicg2_out_data_out_1_q[17:0];
    assign i_mul_bicg6_bs1_merged_bit_select_c = redist8_i_llvm_fpga_pop_i32_i_072_pop9_bicg2_out_data_out_1_q[31:18];

    // xIfSign_mergedSignalTM_uid154_i_mul_bicg6_im3(BITJOIN,153)@3
    assign xIfSign_mergedSignalTM_uid154_i_mul_bicg6_im3_q = {GND_q, i_mul_bicg6_bs1_merged_bit_select_c};

    // padACst_uid96_i_mul_bicg6_im0(CONSTANT,95)
    assign padACst_uid96_i_mul_bicg6_im0_q = $unsigned(4'b0000);

    // aPostPad_uid159_i_mul_bicg6_im3(BITJOIN,158)@3
    assign aPostPad_uid159_i_mul_bicg6_im3_q = {xIfSign_mergedSignalTM_uid154_i_mul_bicg6_im3_q, padACst_uid96_i_mul_bicg6_im0_q};

    // sub_uid160_i_mul_bicg6_im3(SUB,159)@3
    assign sub_uid160_i_mul_bicg6_im3_a = $unsigned({{1{aPostPad_uid159_i_mul_bicg6_im3_q[18]}}, aPostPad_uid159_i_mul_bicg6_im3_q});
    assign sub_uid160_i_mul_bicg6_im3_b = $unsigned({{5{xIfSign_mergedSignalTM_uid154_i_mul_bicg6_im3_q[14]}}, xIfSign_mergedSignalTM_uid154_i_mul_bicg6_im3_q});
    assign sub_uid160_i_mul_bicg6_im3_o = $unsigned($signed(sub_uid160_i_mul_bicg6_im3_a) - $signed(sub_uid160_i_mul_bicg6_im3_b));
    assign sub_uid160_i_mul_bicg6_im3_q = sub_uid160_i_mul_bicg6_im3_o[19:0];

    // sR_bottomRange_uid164_i_mul_bicg6_im3(BITSELECT,163)@3
    assign sR_bottomRange_uid164_i_mul_bicg6_im3_in = $unsigned(sub_uid160_i_mul_bicg6_im3_q[17:0]);
    assign sR_bottomRange_uid164_i_mul_bicg6_im3_b = $unsigned(sR_bottomRange_uid164_i_mul_bicg6_im3_in[17:0]);

    // redist4_sR_bottomRange_uid164_i_mul_bicg6_im3_b_1(DELAY,234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sR_bottomRange_uid164_i_mul_bicg6_im3_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_sR_bottomRange_uid164_i_mul_bicg6_im3_b_1_q <= $unsigned(sR_bottomRange_uid164_i_mul_bicg6_im3_b);
        end
    end

    // sR_mergedSignalTM_uid165_i_mul_bicg6_im3(BITJOIN,164)@4
    assign sR_mergedSignalTM_uid165_i_mul_bicg6_im3_q = {redist4_sR_bottomRange_uid164_i_mul_bicg6_im3_b_1_q, GND_q};

    // i_mul_bicg6_sums_align_1(BITSHIFT,64)@4
    assign i_mul_bicg6_sums_align_1_qint = { sR_mergedSignalTM_uid165_i_mul_bicg6_im3_q, 18'b000000000000000000 };
    assign i_mul_bicg6_sums_align_1_q = i_mul_bicg6_sums_align_1_qint[36:0];

    // xIfSign_mergedSignalTM_uid92_i_mul_bicg6_im0(BITJOIN,91)@3
    assign xIfSign_mergedSignalTM_uid92_i_mul_bicg6_im0_q = {GND_q, i_mul_bicg6_bs1_merged_bit_select_b};

    // aPostPad_uid97_i_mul_bicg6_im0(BITJOIN,96)@3
    assign aPostPad_uid97_i_mul_bicg6_im0_q = {xIfSign_mergedSignalTM_uid92_i_mul_bicg6_im0_q, padACst_uid96_i_mul_bicg6_im0_q};

    // sub_uid98_i_mul_bicg6_im0(SUB,97)@3
    assign sub_uid98_i_mul_bicg6_im0_a = $unsigned({{1{aPostPad_uid97_i_mul_bicg6_im0_q[22]}}, aPostPad_uid97_i_mul_bicg6_im0_q});
    assign sub_uid98_i_mul_bicg6_im0_b = $unsigned({{5{xIfSign_mergedSignalTM_uid92_i_mul_bicg6_im0_q[18]}}, xIfSign_mergedSignalTM_uid92_i_mul_bicg6_im0_q});
    assign sub_uid98_i_mul_bicg6_im0_o = $unsigned($signed(sub_uid98_i_mul_bicg6_im0_a) - $signed(sub_uid98_i_mul_bicg6_im0_b));
    assign sub_uid98_i_mul_bicg6_im0_q = sub_uid98_i_mul_bicg6_im0_o[23:0];

    // sR_bottomRange_uid102_i_mul_bicg6_im0(BITSELECT,101)@3
    assign sR_bottomRange_uid102_i_mul_bicg6_im0_in = $unsigned(sub_uid98_i_mul_bicg6_im0_q[21:0]);
    assign sR_bottomRange_uid102_i_mul_bicg6_im0_b = $unsigned(sR_bottomRange_uid102_i_mul_bicg6_im0_in[21:0]);

    // redist5_sR_bottomRange_uid102_i_mul_bicg6_im0_b_1(DELAY,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sR_bottomRange_uid102_i_mul_bicg6_im0_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist5_sR_bottomRange_uid102_i_mul_bicg6_im0_b_1_q <= $unsigned(sR_bottomRange_uid102_i_mul_bicg6_im0_b);
        end
    end

    // sR_mergedSignalTM_uid103_i_mul_bicg6_im0(BITJOIN,102)@4
    assign sR_mergedSignalTM_uid103_i_mul_bicg6_im0_q = {redist5_sR_bottomRange_uid102_i_mul_bicg6_im0_b_1_q, GND_q};

    // i_mul_bicg6_sums_result_add_0_0(ADD,66)@4
    assign i_mul_bicg6_sums_result_add_0_0_a = {15'b000000000000000, sR_mergedSignalTM_uid103_i_mul_bicg6_im0_q};
    assign i_mul_bicg6_sums_result_add_0_0_b = {1'b0, i_mul_bicg6_sums_align_1_q};
    assign i_mul_bicg6_sums_result_add_0_0_o = $unsigned(i_mul_bicg6_sums_result_add_0_0_a) + $unsigned(i_mul_bicg6_sums_result_add_0_0_b);
    assign i_mul_bicg6_sums_result_add_0_0_q = i_mul_bicg6_sums_result_add_0_0_o[37:0];

    // i_mul_bicg6_extender_x(BITJOIN,20)@4
    assign i_mul_bicg6_extender_x_q = {i_mul_bicg6_multconst_x_q, i_mul_bicg6_sums_result_add_0_0_q[36:0]};

    // bgTrunc_i_mul_bicg6_sel_x(BITSELECT,3)@4
    assign bgTrunc_i_mul_bicg6_sel_x_b = i_mul_bicg6_extender_x_q[31:0];

    // i_mul_bicg6_vt_select_31(BITSELECT,41)@4
    assign i_mul_bicg6_vt_select_31_b = bgTrunc_i_mul_bicg6_sel_x_b[31:1];

    // redist7_i_mul_bicg6_vt_select_31_b_1(DELAY,237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_mul_bicg6_vt_select_31_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist7_i_mul_bicg6_vt_select_31_b_1_q <= $unsigned(i_mul_bicg6_vt_select_31_b);
        end
    end

    // i_mul_bicg6_vt_join(BITJOIN,40)@5
    assign i_mul_bicg6_vt_join_q = {redist7_i_mul_bicg6_vt_select_31_b_1_q, GND_q};

    // valid_fanout_reg2(REG,51)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(redist11_sync_together22_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast798815_bicg4(BLACKBOX,34)@3
    bicg_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast798815_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast798815_bicg4 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast798815_bicg4_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,227)@3
    assign i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast798815_bicg4_out_dest_data_out_0_0[59:0]);
    assign i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast798815_bicg4_out_dest_data_out_0_0[63:60]);

    // i_mptr_bitcast_index80_bicg0_add_x_p1_of_2(ADD,191)@3 + 1
    assign i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_q = i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_o[59:0];

    // redist1_i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,207)@4
    assign i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist1_i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index80_bicg0_add_x_p2_of_2(ADD,192)@4 + 1
    assign i_mptr_bitcast_index80_bicg0_add_x_p2_of_2_cin = i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index80_bicg0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index80_bicg0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index80_bicg0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index80_bicg0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index80_bicg0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mptr_bitcast_index80_bicg0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index80_bicg0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index80_bicg0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index80_bicg0_add_x_p2_of_2_q = i_mptr_bitcast_index80_bicg0_add_x_p2_of_2_o[5:1];

    // redist3_i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_q_1(DELAY,233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index80_bicg0_add_x_BitJoin_for_q(BITJOIN,193)@5
    assign i_mptr_bitcast_index80_bicg0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index80_bicg0_add_x_p2_of_2_q, redist3_i_mptr_bitcast_index80_bicg0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index80_bicg0_dupName_0_trunc_sel_x(BITSELECT,8)@5
    assign i_mptr_bitcast_index80_bicg0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index80_bicg0_add_x_BitJoin_for_q_q[63:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,23)@5
    assign out_c1_exi3_0_tpl = GND_q;
    assign out_c1_exi3_1_tpl = i_mptr_bitcast_index80_bicg0_dupName_0_trunc_sel_x_b;
    assign out_c1_exi3_2_tpl = i_mul_bicg6_vt_join_q;
    assign out_c1_exi3_3_tpl = i_mptr_bitcast_index84_bicg0_dupName_0_trunc_sel_x_b;
    assign out_o_valid = redist6_valid_fanout_reg0_q_2_q;
    assign out_unnamed_bicg1 = GND_q;

endmodule
