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

// SystemVerilog created from i_sfc_logic_s_c1_in_wt_entry_if_loop_1s_c1_enter_if_loop_10
// Created for function/kernel if_loop_1
// SystemVerilog created on Wed Apr 26 23:16:30 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_1_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_if_loop_10 (
    output wire [0:0] out_intel_reserved_ffwd_0_0,
    output wire [32:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_if_loop_14_0_tpl,
    output wire [0:0] out_unnamed_if_loop_15,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [63:0] in_c1_eni1_1_tpl,
    input wire [31:0] in_c1_eni1_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_117_q;
    wire [31:0] c_i32_118_q;
    wire [32:0] c_i33_119_q;
    wire [33:0] i_cmp9_if_loop_13_a;
    wire [33:0] i_cmp9_if_loop_13_b;
    logic [33:0] i_cmp9_if_loop_13_o;
    wire [0:0] i_cmp9_if_loop_13_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_12_if_loop_111_out_intel_reserved_ffwd_0_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_13_if_loop_112_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_smax_if_loop_17_s;
    reg [31:0] i_smax_if_loop_17_q;
    wire [31:0] i_smax_if_loop_17_vt_join_q;
    wire [30:0] i_smax_if_loop_17_vt_select_30_b;
    wire [33:0] i_unnamed_if_loop_110_a;
    wire [33:0] i_unnamed_if_loop_110_b;
    logic [33:0] i_unnamed_if_loop_110_o;
    wire [33:0] i_unnamed_if_loop_110_q;
    wire [33:0] i_unnamed_if_loop_15_a;
    wire [33:0] i_unnamed_if_loop_15_b;
    logic [33:0] i_unnamed_if_loop_15_o;
    wire [0:0] i_unnamed_if_loop_15_c;
    wire [32:0] i_unnamed_if_loop_18_a;
    wire [32:0] i_unnamed_if_loop_18_b;
    logic [32:0] i_unnamed_if_loop_18_o;
    wire [32:0] i_unnamed_if_loop_18_q;
    wire [32:0] i_unnamed_if_loop_19_vt_join_q;
    wire [31:0] i_unnamed_if_loop_19_vt_select_31_b;
    wire [32:0] bgTrunc_i_unnamed_if_loop_110_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_if_loop_18_sel_x_b;
    wire [31:0] c_i32_016_recast_x_q;
    wire [32:0] i_unnamed_if_loop_19_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    reg [31:0] redist0_sync_together20_aunroll_x_in_c1_eni1_2_tpl_1_q;
    reg [0:0] redist1_sync_together20_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist1_sync_together20_aunroll_x_in_i_valid_2_delay_0;
    reg [31:0] redist2_i_unnamed_if_loop_19_vt_select_31_b_1_q;
    reg [30:0] redist3_i_smax_if_loop_17_vt_select_30_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg1(REG,36)@76 + 1
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

    // redist0_sync_together20_aunroll_x_in_c1_eni1_2_tpl_1(DELAY,41)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together20_aunroll_x_in_c1_eni1_2_tpl_1_q <= $unsigned(in_c1_eni1_2_tpl);
        end
    end

    // c_i32_016_recast_x(CONSTANT,29)
    assign c_i32_016_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp9_if_loop_13(COMPARE,9)@77
    assign i_cmp9_if_loop_13_a = $unsigned({{2{c_i32_016_recast_x_q[31]}}, c_i32_016_recast_x_q});
    assign i_cmp9_if_loop_13_b = $unsigned({{2{redist0_sync_together20_aunroll_x_in_c1_eni1_2_tpl_1_q[31]}}, redist0_sync_together20_aunroll_x_in_c1_eni1_2_tpl_1_q});
    assign i_cmp9_if_loop_13_o = $unsigned($signed(i_cmp9_if_loop_13_a) - $signed(i_cmp9_if_loop_13_b));
    assign i_cmp9_if_loop_13_c[0] = i_cmp9_if_loop_13_o[33];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_12_if_loop_111(BLACKBOX,10)@77
    // out out_intel_reserved_ffwd_0_0@20000000
    if_loop_1_i_llvm_fpga_ffwd_source_i1_unnamed_2_if_loop_10 thei_llvm_fpga_ffwd_source_i1_unnamed_if_loop_12_if_loop_111 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(i_cmp9_if_loop_13_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_12_if_loop_111_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,25)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_12_if_loop_111_out_intel_reserved_ffwd_0_0;

    // redist1_sync_together20_aunroll_x_in_i_valid_2(DELAY,42)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together20_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist1_sync_together20_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together20_aunroll_x_in_i_valid_2_q <= redist1_sync_together20_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // valid_fanout_reg2(REG,37)@78 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist1_sync_together20_aunroll_x_in_i_valid_2_q);
        end
    end

    // c_i33_119(CONSTANT,8)
    assign c_i33_119_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_118(CONSTANT,7)
    assign c_i32_118_q = $unsigned(32'b11111111111111111111111111111111);

    // c_i32_117(CONSTANT,6)
    assign c_i32_117_q = $unsigned(32'b00000000000000000000000000000001);

    // i_unnamed_if_loop_15(COMPARE,17)@76 + 1
    assign i_unnamed_if_loop_15_a = $unsigned({{2{c_i32_117_q[31]}}, c_i32_117_q});
    assign i_unnamed_if_loop_15_b = $unsigned({{2{in_c1_eni1_2_tpl[31]}}, in_c1_eni1_2_tpl});
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_unnamed_if_loop_15_o <= $unsigned($signed(i_unnamed_if_loop_15_a) - $signed(i_unnamed_if_loop_15_b));
        end
    end
    assign i_unnamed_if_loop_15_c[0] = i_unnamed_if_loop_15_o[33];

    // i_smax_if_loop_17(MUX,12)@77
    assign i_smax_if_loop_17_s = i_unnamed_if_loop_15_c;
    always @(i_smax_if_loop_17_s or c_i32_117_q or redist0_sync_together20_aunroll_x_in_c1_eni1_2_tpl_1_q)
    begin
        unique case (i_smax_if_loop_17_s)
            1'b0 : i_smax_if_loop_17_q = c_i32_117_q;
            1'b1 : i_smax_if_loop_17_q = redist0_sync_together20_aunroll_x_in_c1_eni1_2_tpl_1_q;
            default : i_smax_if_loop_17_q = 32'b0;
        endcase
    end

    // i_smax_if_loop_17_vt_select_30(BITSELECT,15)@77
    assign i_smax_if_loop_17_vt_select_30_b = i_smax_if_loop_17_q[30:0];

    // redist3_i_smax_if_loop_17_vt_select_30_b_1(DELAY,44)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_i_smax_if_loop_17_vt_select_30_b_1_q <= $unsigned(i_smax_if_loop_17_vt_select_30_b);
        end
    end

    // i_smax_if_loop_17_vt_join(BITJOIN,14)@78
    assign i_smax_if_loop_17_vt_join_q = {GND_q, redist3_i_smax_if_loop_17_vt_select_30_b_1_q};

    // i_unnamed_if_loop_18(ADD,18)@78
    assign i_unnamed_if_loop_18_a = {1'b0, i_smax_if_loop_17_vt_join_q};
    assign i_unnamed_if_loop_18_b = {1'b0, c_i32_118_q};
    assign i_unnamed_if_loop_18_o = $unsigned(i_unnamed_if_loop_18_a) + $unsigned(i_unnamed_if_loop_18_b);
    assign i_unnamed_if_loop_18_q = i_unnamed_if_loop_18_o[32:0];

    // bgTrunc_i_unnamed_if_loop_18_sel_x(BITSELECT,28)@78
    assign bgTrunc_i_unnamed_if_loop_18_sel_x_b = i_unnamed_if_loop_18_q[31:0];

    // i_unnamed_if_loop_19_sel_x(BITSELECT,32)@78
    assign i_unnamed_if_loop_19_sel_x_b = {1'b0, bgTrunc_i_unnamed_if_loop_18_sel_x_b[31:0]};

    // i_unnamed_if_loop_19_vt_select_31(BITSELECT,22)@78
    assign i_unnamed_if_loop_19_vt_select_31_b = i_unnamed_if_loop_19_sel_x_b[31:0];

    // redist2_i_unnamed_if_loop_19_vt_select_31_b_1(DELAY,43)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_unnamed_if_loop_19_vt_select_31_b_1_q <= $unsigned(i_unnamed_if_loop_19_vt_select_31_b);
        end
    end

    // i_unnamed_if_loop_19_vt_join(BITJOIN,21)@79
    assign i_unnamed_if_loop_19_vt_join_q = {GND_q, redist2_i_unnamed_if_loop_19_vt_select_31_b_1_q};

    // i_unnamed_if_loop_110(ADD,16)@79
    assign i_unnamed_if_loop_110_a = {1'b0, i_unnamed_if_loop_19_vt_join_q};
    assign i_unnamed_if_loop_110_b = {1'b0, c_i33_119_q};
    assign i_unnamed_if_loop_110_o = $unsigned(i_unnamed_if_loop_110_a) + $unsigned(i_unnamed_if_loop_110_b);
    assign i_unnamed_if_loop_110_q = i_unnamed_if_loop_110_o[33:0];

    // bgTrunc_i_unnamed_if_loop_110_sel_x(BITSELECT,27)@79
    assign bgTrunc_i_unnamed_if_loop_110_sel_x_b = i_unnamed_if_loop_110_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_13_if_loop_112(BLACKBOX,11)@79
    // out out_intel_reserved_ffwd_1_0@20000000
    if_loop_1_i_llvm_fpga_ffwd_source_i33_unnamed_3_if_loop_10 thei_llvm_fpga_ffwd_source_i33_unnamed_if_loop_13_if_loop_112 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bgTrunc_i_unnamed_if_loop_110_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_13_if_loop_112_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,31)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_13_if_loop_112_out_intel_reserved_ffwd_1_0;

    // valid_fanout_reg0(REG,35)@78 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together20_aunroll_x_in_i_valid_2_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,33)@79
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_if_loop_14_0_tpl = GND_q;
    assign out_unnamed_if_loop_15 = GND_q;

endmodule
