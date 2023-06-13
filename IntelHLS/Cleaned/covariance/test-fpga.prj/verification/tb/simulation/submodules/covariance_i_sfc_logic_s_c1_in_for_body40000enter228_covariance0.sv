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

// SystemVerilog created from i_sfc_logic_s_c1_in_for_body4_covariances_c1_enter228_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c1_in_for_body40000enter228_covariance0 (
    output wire [0:0] out_c1_exi1230_0_tpl,
    output wire [31:0] out_c1_exi1230_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_covariance0,
    input wire [0:0] in_c1_eni3_0_tpl,
    input wire [0:0] in_c1_eni3_1_tpl,
    input wire [31:0] in_c1_eni3_2_tpl,
    input wire [0:0] in_c1_eni3_3_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_add5_covariance3_sel_x_b;
    wire [31:0] c_i32_08_q;
    wire [32:0] i_add5_covariance3_a;
    wire [32:0] i_add5_covariance3_b;
    logic [32:0] i_add5_covariance3_o;
    wire [32:0] i_add5_covariance3_q;
    wire [31:0] i_llvm_fpga_pop_i32_m_074_pop30_covariance2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_m_074_pop30_covariance2_out_feedback_stall_out_30;
    wire [31:0] i_llvm_fpga_push_i32_m_074_push30_covariance4_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i32_m_074_push30_covariance4_out_feedback_valid_out_30;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    reg [0:0] redist0_sync_together12_aunroll_x_in_c1_eni3_1_tpl_1_q;
    reg [31:0] redist1_sync_together12_aunroll_x_in_c1_eni3_2_tpl_1_q;
    reg [0:0] redist2_sync_together12_aunroll_x_in_c1_eni3_3_tpl_1_q;
    wire [0:0] dupName_0_enable_stall_connector_x_not_enable_q;


    // valid_fanout_reg0(REG,15)@41 + 1
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

    // valid_fanout_reg1(REG,16)@41 + 1
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

    // dupName_0_enable_stall_connector_x_not_enable(LOGICAL,22)
    assign dupName_0_enable_stall_connector_x_not_enable_q = $unsigned(~ (in_enable));

    // valid_fanout_reg2(REG,17)@41 + 1
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

    // redist2_sync_together12_aunroll_x_in_c1_eni3_3_tpl_1(DELAY,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together12_aunroll_x_in_c1_eni3_3_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_sync_together12_aunroll_x_in_c1_eni3_3_tpl_1_q <= $unsigned(in_c1_eni3_3_tpl);
        end
    end

    // i_llvm_fpga_push_i32_m_074_push30_covariance4(BLACKBOX,13)@42
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    covariance_i_llvm_fpga_push_i32_m_074_push30_0 thei_llvm_fpga_push_i32_m_074_push30_covariance4 (
        .in_c1_ene3(redist2_sync_together12_aunroll_x_in_c1_eni3_3_tpl_1_q),
        .in_data_in(bgTrunc_i_add5_covariance3_sel_x_b),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i32_m_074_pop30_covariance2_out_feedback_stall_out_30),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i32_m_074_push30_covariance4_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i32_m_074_push30_covariance4_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together12_aunroll_x_in_c1_eni3_1_tpl_1(DELAY,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together12_aunroll_x_in_c1_eni3_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_together12_aunroll_x_in_c1_eni3_1_tpl_1_q <= $unsigned(in_c1_eni3_1_tpl);
        end
    end

    // c_i32_08(CONSTANT,8)
    assign c_i32_08_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_m_074_pop30_covariance2(BLACKBOX,12)@42
    // out out_feedback_stall_out_30@20000000
    covariance_i_llvm_fpga_pop_i32_m_074_pop30_0 thei_llvm_fpga_pop_i32_m_074_pop30_covariance2 (
        .in_data_in(c_i32_08_q),
        .in_dir(redist0_sync_together12_aunroll_x_in_c1_eni3_1_tpl_1_q),
        .in_feedback_in_30(i_llvm_fpga_push_i32_m_074_push30_covariance4_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i32_m_074_push30_covariance4_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_m_074_pop30_covariance2_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i32_m_074_pop30_covariance2_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together12_aunroll_x_in_c1_eni3_2_tpl_1(DELAY,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together12_aunroll_x_in_c1_eni3_2_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together12_aunroll_x_in_c1_eni3_2_tpl_1_q <= $unsigned(in_c1_eni3_2_tpl);
        end
    end

    // i_add5_covariance3(ADD,11)@42
    assign i_add5_covariance3_a = {1'b0, redist1_sync_together12_aunroll_x_in_c1_eni3_2_tpl_1_q};
    assign i_add5_covariance3_b = {1'b0, i_llvm_fpga_pop_i32_m_074_pop30_covariance2_out_data_out};
    assign i_add5_covariance3_o = $unsigned(i_add5_covariance3_a) + $unsigned(i_add5_covariance3_b);
    assign i_add5_covariance3_q = i_add5_covariance3_o[32:0];

    // bgTrunc_i_add5_covariance3_sel_x(BITSELECT,2)@42
    assign bgTrunc_i_add5_covariance3_sel_x_b = i_add5_covariance3_q[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,4)@42
    assign out_c1_exi1230_0_tpl = GND_q;
    assign out_c1_exi1230_1_tpl = bgTrunc_i_add5_covariance3_sel_x_b;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_covariance0 = GND_q;

endmodule
