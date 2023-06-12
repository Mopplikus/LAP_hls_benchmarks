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

// SystemVerilog created from i_sfc_logic_s_c1_in_wt_entry_triangulars_c1_enter_triangular0
// Created for function/kernel triangular
// SystemVerilog created on Tue Apr 25 22:47:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_triangular0 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_triangular0,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [0:0] in_c1_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [15:0] c_i16_09_q;
    wire [15:0] c_i16_110_q;
    wire [16:0] i_inc_triangular3_a;
    wire [16:0] i_inc_triangular3_b;
    logic [16:0] i_inc_triangular3_o;
    wire [16:0] i_inc_triangular3_q;
    wire [31:0] i_lim_ext_triangular5_vt_join_q;
    wire [15:0] i_lim_ext_triangular5_vt_select_15_b;
    wire [15:0] bgTrunc_i_inc_triangular3_sel_x_b;
    wire [31:0] i_lim_ext_triangular5_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular0_i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular2_mux_x_s;
    reg [15:0] i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular0_i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular2_mux_x_q;
    wire [0:0] i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular1_x_i_valid;
    wire i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular1_x_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular1_x_i_stall;
    wire i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular1_x_i_stall_bitsignaltemp;
    wire [15:0] i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular1_x_i_data;
    wire [15:0] i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular1_x_o_data;
    wire [0:0] i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_inv_pred_x_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    reg [0:0] redist0_valid_fanout_reg0_q_1_q;
    reg [0:0] redist1_sync_together13_aunroll_x_in_c1_eni1_1_tpl_4_q;
    reg [0:0] redist1_sync_together13_aunroll_x_in_c1_eni1_1_tpl_4_delay_0;
    reg [0:0] redist1_sync_together13_aunroll_x_in_c1_eni1_1_tpl_4_delay_1;
    reg [0:0] redist1_sync_together13_aunroll_x_in_c1_eni1_1_tpl_4_delay_2;
    reg [0:0] redist2_sync_together13_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist2_sync_together13_aunroll_x_in_i_valid_2_delay_0;
    reg [0:0] redist3_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_inv_pred_x_q_2_q;
    reg [0:0] redist3_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_inv_pred_x_q_2_delay_0;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together13_aunroll_x_in_i_valid_2(DELAY,29)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist2_sync_together13_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist2_sync_together13_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together13_aunroll_x_in_i_valid_2_q <= redist2_sync_together13_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // valid_fanout_reg0(REG,21)@10 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist2_sync_together13_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist0_valid_fanout_reg0_q_1(DELAY,27)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // c_i16_09(CONSTANT,3)
    assign c_i16_09_q = $unsigned(16'b0000000000000000);

    // c_i16_110(CONSTANT,4)
    assign c_i16_110_q = $unsigned(16'b0000000000000001);

    // i_inc_triangular3(ADD,7)@12
    assign i_inc_triangular3_a = {1'b0, i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular0_i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular2_mux_x_q};
    assign i_inc_triangular3_b = {1'b0, c_i16_110_q};
    assign i_inc_triangular3_o = $unsigned(i_inc_triangular3_a) + $unsigned(i_inc_triangular3_b);
    assign i_inc_triangular3_q = i_inc_triangular3_o[16:0];

    // bgTrunc_i_inc_triangular3_sel_x(BITSELECT,13)@12
    assign bgTrunc_i_inc_triangular3_sel_x_b = i_inc_triangular3_q[15:0];

    // i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_inv_pred_x(LOGICAL,17)@9
    assign i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_inv_pred_x_q = ~ (GND_q);

    // valid_fanout_reg3(REG,24)@8 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // redist3_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_inv_pred_x_q_2(DELAY,30)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_inv_pred_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_inv_pred_x_q);
            redist3_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_inv_pred_x_q_2_q <= redist3_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_inv_pred_x_q_2_delay_0;
        end
    end

    // valid_fanout_reg2(REG,23)@10 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist2_sync_together13_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular1_x(FIFODELAY,16)@9 + 1
    // in i_valid@11
    // in i_write_pred@11
    // in i_data@12
    // out o_data@12
    assign i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular1_x_i_stall = ~ (valid_fanout_reg3_q & i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_inv_pred_x_q);
    assign i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular1_x_i_valid = valid_fanout_reg2_q & redist3_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_inv_pred_x_q_2_q;
    assign i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular1_x_i_data = bgTrunc_i_inc_triangular3_sel_x_b;
    assign i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular1_x_i_valid_bitsignaltemp = i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular1_x_i_valid[0];
    assign i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular1_x_i_stall_bitsignaltemp = i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular1_x_i_stall[0];
    hld_fifo #(
        .DEPTH(1),
        .WIDTH(16),
        .STYLE("ll"),
        .ALMOST_FULL_CUTOFF(0),
        .ALMOST_EMPTY_CUTOFF(0),
        .USE_STALL_LATENCY_UPSTREAM(0),
        .USE_STALL_LATENCY_DOWNSTREAM(0),
        .RESET_EXTERNALLY_HELD(1),
        .ASYNC_RESET(0),
        .SYNCHRONIZE_RESET(0),
        .NEVER_OVERFLOWS(1),
        .INITIAL_OCCUPANCY(1),
        .WRITE_AND_READ_DURING_FULL(1),
        .STALL_IN_EARLINESS(3),
        .VALID_IN_EARLINESS(1)
    ) thei_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular1_x (
        .i_valid(i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular1_x_i_valid_bitsignaltemp),
        .i_stall(i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular1_x_i_stall_bitsignaltemp),
        .i_data(bgTrunc_i_inc_triangular3_sel_x_b),
        .o_data(i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular1_x_o_data),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together13_aunroll_x_in_c1_eni1_1_tpl_4(DELAY,28)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together13_aunroll_x_in_c1_eni1_1_tpl_4_delay_0 <= $unsigned(in_c1_eni1_1_tpl);
            redist1_sync_together13_aunroll_x_in_c1_eni1_1_tpl_4_delay_1 <= redist1_sync_together13_aunroll_x_in_c1_eni1_1_tpl_4_delay_0;
            redist1_sync_together13_aunroll_x_in_c1_eni1_1_tpl_4_delay_2 <= redist1_sync_together13_aunroll_x_in_c1_eni1_1_tpl_4_delay_1;
            redist1_sync_together13_aunroll_x_in_c1_eni1_1_tpl_4_q <= redist1_sync_together13_aunroll_x_in_c1_eni1_1_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular0_i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular2_mux_x(MUX,15)@12
    assign i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular0_i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular2_mux_x_s = redist1_sync_together13_aunroll_x_in_c1_eni1_1_tpl_4_q;
    always @(i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular0_i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular2_mux_x_s or i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular1_x_o_data or c_i16_09_q)
    begin
        unique case (i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular0_i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular2_mux_x_s)
            1'b0 : i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular0_i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular2_mux_x_q = i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular0_i_llvm_fpga_push_i16_reorder_limiter_count_push9_triangular1_x_o_data;
            1'b1 : i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular0_i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular2_mux_x_q = c_i16_09_q;
            default : i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular0_i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular2_mux_x_q = 16'b0;
        endcase
    end

    // i_lim_ext_triangular5_sel_x(BITSELECT,14)@12
    assign i_lim_ext_triangular5_sel_x_b = {16'b0000000000000000, i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular0_i_llvm_fpga_pop_i16_reorder_limiter_count_pop9_triangular2_mux_x_q[15:0]};

    // i_lim_ext_triangular5_vt_select_15(BITSELECT,11)@12
    assign i_lim_ext_triangular5_vt_select_15_b = i_lim_ext_triangular5_sel_x_b[15:0];

    // i_lim_ext_triangular5_vt_join(BITJOIN,10)@12
    assign i_lim_ext_triangular5_vt_join_q = {c_i16_09_q, i_lim_ext_triangular5_vt_select_15_b};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,19)@12
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_lim_ext_triangular5_vt_join_q;
    assign out_o_valid = redist0_valid_fanout_reg0_q_1_q;
    assign out_unnamed_triangular0 = GND_q;

endmodule
