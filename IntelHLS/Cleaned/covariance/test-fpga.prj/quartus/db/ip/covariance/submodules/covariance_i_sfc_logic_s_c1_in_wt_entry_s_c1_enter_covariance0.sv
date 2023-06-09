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

// SystemVerilog created from i_sfc_logic_s_c1_in_wt_entry_covariances_c1_enter_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_covariance0 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_covariance0,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [0:0] in_c1_eni1_1_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [15:0] bgTrunc_i_inc36_covariance3_sel_x_b;
    wire [31:0] i_lim_ext_covariance5_sel_x_b;
    wire [15:0] c_i16_09_q;
    wire [15:0] c_i16_110_q;
    wire [16:0] i_inc36_covariance3_a;
    wire [16:0] i_inc36_covariance3_b;
    logic [16:0] i_inc36_covariance3_o;
    wire [16:0] i_inc36_covariance3_q;
    wire [31:0] i_lim_ext_covariance5_vt_join_q;
    wire [15:0] i_lim_ext_covariance5_vt_select_15_b;
    wire [15:0] i_llvm_fpga_pop_i16_reorder_limiter_count_pop17_covariance2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_reorder_limiter_count_pop17_covariance2_out_feedback_stall_out_17;
    wire [15:0] i_llvm_fpga_push_i16_reorder_limiter_count_push17_covariance4_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i16_reorder_limiter_count_push17_covariance4_out_feedback_valid_out_17;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    reg [0:0] redist0_sync_together15_aunroll_x_in_c1_eni1_1_tpl_1_q;
    wire [0:0] dupName_0_enable_stall_connector_x_not_enable_q;


    // valid_fanout_reg0(REG,21)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // c_i16_09(CONSTANT,8)
    assign c_i16_09_q = $unsigned(16'b0000000000000000);

    // valid_fanout_reg1(REG,22)@1 + 1
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

    // dupName_0_enable_stall_connector_x_not_enable(LOGICAL,27)
    assign dupName_0_enable_stall_connector_x_not_enable_q = $unsigned(~ (in_enable));

    // valid_fanout_reg2(REG,23)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // c_i16_110(CONSTANT,9)
    assign c_i16_110_q = $unsigned(16'b0000000000000001);

    // i_inc36_covariance3(ADD,13)@2
    assign i_inc36_covariance3_a = {1'b0, i_llvm_fpga_pop_i16_reorder_limiter_count_pop17_covariance2_out_data_out};
    assign i_inc36_covariance3_b = {1'b0, c_i16_110_q};
    assign i_inc36_covariance3_o = $unsigned(i_inc36_covariance3_a) + $unsigned(i_inc36_covariance3_b);
    assign i_inc36_covariance3_q = i_inc36_covariance3_o[16:0];

    // bgTrunc_i_inc36_covariance3_sel_x(BITSELECT,2)@2
    assign bgTrunc_i_inc36_covariance3_sel_x_b = i_inc36_covariance3_q[15:0];

    // i_llvm_fpga_push_i16_reorder_limiter_count_push17_covariance4(BLACKBOX,19)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    covariance_i_llvm_fpga_push_i16_reorder_limiter_count_push17_0 thei_llvm_fpga_push_i16_reorder_limiter_count_push17_covariance4 (
        .in_data_in(bgTrunc_i_inc36_covariance3_sel_x_b),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i16_reorder_limiter_count_pop17_covariance2_out_feedback_stall_out_17),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i16_reorder_limiter_count_push17_covariance4_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i16_reorder_limiter_count_push17_covariance4_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together15_aunroll_x_in_c1_eni1_1_tpl_1(DELAY,26)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together15_aunroll_x_in_c1_eni1_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_together15_aunroll_x_in_c1_eni1_1_tpl_1_q <= $unsigned(in_c1_eni1_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i16_reorder_limiter_count_pop17_covariance2(BLACKBOX,18)@2
    // out out_feedback_stall_out_17@20000000
    covariance_i_llvm_fpga_pop_i16_reorder_limiter_count_pop17_0 thei_llvm_fpga_pop_i16_reorder_limiter_count_pop17_covariance2 (
        .in_data_in(c_i16_09_q),
        .in_dir(redist0_sync_together15_aunroll_x_in_c1_eni1_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i16_reorder_limiter_count_push17_covariance4_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i16_reorder_limiter_count_push17_covariance4_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i16_reorder_limiter_count_pop17_covariance2_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i16_reorder_limiter_count_pop17_covariance2_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_lim_ext_covariance5_sel_x(BITSELECT,4)@2
    assign i_lim_ext_covariance5_sel_x_b = {16'b0000000000000000, i_llvm_fpga_pop_i16_reorder_limiter_count_pop17_covariance2_out_data_out[15:0]};

    // i_lim_ext_covariance5_vt_select_15(BITSELECT,17)@2
    assign i_lim_ext_covariance5_vt_select_15_b = i_lim_ext_covariance5_sel_x_b[15:0];

    // i_lim_ext_covariance5_vt_join(BITJOIN,16)@2
    assign i_lim_ext_covariance5_vt_join_q = {c_i16_09_q, i_lim_ext_covariance5_vt_select_15_b};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,5)@2
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_lim_ext_covariance5_vt_join_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_covariance0 = GND_q;

endmodule
