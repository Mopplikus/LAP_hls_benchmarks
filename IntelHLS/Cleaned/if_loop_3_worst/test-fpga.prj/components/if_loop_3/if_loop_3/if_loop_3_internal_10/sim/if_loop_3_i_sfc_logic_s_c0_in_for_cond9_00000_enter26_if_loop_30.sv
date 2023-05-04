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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond9_preheader_if_loop_3s_c0_enter26_if_loop_30
// Created for function/kernel if_loop_3
// SystemVerilog created on Thu May  4 08:54:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_3_i_sfc_logic_s_c0_in_for_cond9_00000_enter26_if_loop_30 (
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    output wire [0:0] out_intel_reserved_ffwd_3_0,
    input wire [0:0] in_i_valid,
    output wire [32:0] out_intel_reserved_ffwd_4_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_if_loop_310_0_tpl,
    output wire [0:0] out_unnamed_if_loop_36,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_122_q;
    wire [31:0] c_i32_123_q;
    wire [32:0] c_i33_124_q;
    wire [33:0] i_cmp1015_if_loop_32_a;
    wire [33:0] i_cmp1015_if_loop_32_b;
    logic [33:0] i_cmp1015_if_loop_32_o;
    wire [0:0] i_cmp1015_if_loop_32_c;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_n2110_if_loop_34_out_dest_data_out_2_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_n2111_if_loop_31_out_dest_data_out_2_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_n219_if_loop_37_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_38_if_loop_312_out_intel_reserved_ffwd_3_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_39_if_loop_313_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_smax_if_loop_38_s;
    reg [31:0] i_smax_if_loop_38_q;
    wire [32:0] i_unnamed_if_loop_310_vt_join_q;
    wire [31:0] i_unnamed_if_loop_310_vt_select_31_b;
    wire [33:0] i_unnamed_if_loop_311_a;
    wire [33:0] i_unnamed_if_loop_311_b;
    logic [33:0] i_unnamed_if_loop_311_o;
    wire [33:0] i_unnamed_if_loop_311_q;
    wire [33:0] i_unnamed_if_loop_35_a;
    wire [33:0] i_unnamed_if_loop_35_b;
    logic [33:0] i_unnamed_if_loop_35_o;
    wire [0:0] i_unnamed_if_loop_35_c;
    wire [32:0] i_unnamed_if_loop_39_a;
    wire [32:0] i_unnamed_if_loop_39_b;
    logic [32:0] i_unnamed_if_loop_39_o;
    wire [32:0] i_unnamed_if_loop_39_q;
    wire [32:0] bgTrunc_i_unnamed_if_loop_311_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_if_loop_39_sel_x_b;
    wire [31:0] c_i32_021_recast_x_q;
    wire [32:0] i_unnamed_if_loop_310_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg5_q;
    reg [0:0] redist0_sync_together26_in_i_valid_1_q;
    reg [0:0] redist1_sync_together26_in_i_valid_3_q;
    reg [0:0] redist1_sync_together26_in_i_valid_3_delay_0;
    reg [31:0] redist2_i_unnamed_if_loop_310_vt_select_31_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg4(REG,43)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg1(REG,40)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_n2111_if_loop_31(BLACKBOX,14)@1
    if_loop_3_i_llvm_fpga_ffwd_dest_i32_n2111_0 thei_llvm_fpga_ffwd_dest_i32_n2111_if_loop_31 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_n2111_if_loop_31_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_021_recast_x(CONSTANT,34)
    assign c_i32_021_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp1015_if_loop_32(COMPARE,12)@1
    assign i_cmp1015_if_loop_32_a = $unsigned({{2{c_i32_021_recast_x_q[31]}}, c_i32_021_recast_x_q});
    assign i_cmp1015_if_loop_32_b = $unsigned({{2{i_llvm_fpga_ffwd_dest_i32_n2111_if_loop_31_out_dest_data_out_2_0[31]}}, i_llvm_fpga_ffwd_dest_i32_n2111_if_loop_31_out_dest_data_out_2_0});
    assign i_cmp1015_if_loop_32_o = $unsigned($signed(i_cmp1015_if_loop_32_a) - $signed(i_cmp1015_if_loop_32_b));
    assign i_cmp1015_if_loop_32_c[0] = i_cmp1015_if_loop_32_o[33];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_38_if_loop_312(BLACKBOX,16)@1
    // out out_intel_reserved_ffwd_3_0@20000000
    if_loop_3_i_llvm_fpga_ffwd_source_i1_unnamed_8_if_loop_30 thei_llvm_fpga_ffwd_source_i1_unnamed_if_loop_38_if_loop_312 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(i_cmp1015_if_loop_32_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_38_if_loop_312_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,29)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_38_if_loop_312_out_intel_reserved_ffwd_3_0;

    // redist0_sync_together26_in_i_valid_1(DELAY,48)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist0_sync_together26_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist0_sync_together26_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist1_sync_together26_in_i_valid_3(DELAY,49)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together26_in_i_valid_3_delay_0 <= $unsigned(redist0_sync_together26_in_i_valid_1_q);
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist1_sync_together26_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist1_sync_together26_in_i_valid_3_q <= redist1_sync_together26_in_i_valid_3_delay_0;
        end
    end

    // valid_fanout_reg5(REG,44)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist1_sync_together26_in_i_valid_3_q);
        end
    end

    // c_i33_124(CONSTANT,11)
    assign c_i33_124_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_123(CONSTANT,10)
    assign c_i32_123_q = $unsigned(32'b11111111111111111111111111111111);

    // valid_fanout_reg3(REG,42)@1 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist0_sync_together26_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_n219_if_loop_37(BLACKBOX,15)@2
    if_loop_3_i_llvm_fpga_ffwd_dest_i32_n219_0 thei_llvm_fpga_ffwd_dest_i32_n219_if_loop_37 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_n219_if_loop_37_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_122(CONSTANT,9)
    assign c_i32_122_q = $unsigned(32'b00000000000000000000000000000001);

    // valid_fanout_reg2(REG,41)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_n2110_if_loop_34(BLACKBOX,13)@1
    if_loop_3_i_llvm_fpga_ffwd_dest_i32_n2110_0 thei_llvm_fpga_ffwd_dest_i32_n2110_if_loop_34 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_n2110_if_loop_34_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_35(COMPARE,24)@1 + 1
    assign i_unnamed_if_loop_35_a = $unsigned({{2{c_i32_122_q[31]}}, c_i32_122_q});
    assign i_unnamed_if_loop_35_b = $unsigned({{2{i_llvm_fpga_ffwd_dest_i32_n2110_if_loop_34_out_dest_data_out_2_0[31]}}, i_llvm_fpga_ffwd_dest_i32_n2110_if_loop_34_out_dest_data_out_2_0});
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_unnamed_if_loop_35_o <= $unsigned($signed(i_unnamed_if_loop_35_a) - $signed(i_unnamed_if_loop_35_b));
        end
    end
    assign i_unnamed_if_loop_35_c[0] = i_unnamed_if_loop_35_o[33];

    // i_smax_if_loop_38(MUX,18)@2 + 1
    assign i_smax_if_loop_38_s = i_unnamed_if_loop_35_c;
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            unique case (i_smax_if_loop_38_s)
                1'b0 : i_smax_if_loop_38_q <= c_i32_122_q;
                1'b1 : i_smax_if_loop_38_q <= i_llvm_fpga_ffwd_dest_i32_n219_if_loop_37_out_dest_data_out_2_0;
                default : i_smax_if_loop_38_q <= 32'b0;
            endcase
        end
    end

    // i_unnamed_if_loop_39(ADD,25)@3
    assign i_unnamed_if_loop_39_a = {1'b0, i_smax_if_loop_38_q};
    assign i_unnamed_if_loop_39_b = {1'b0, c_i32_123_q};
    assign i_unnamed_if_loop_39_o = $unsigned(i_unnamed_if_loop_39_a) + $unsigned(i_unnamed_if_loop_39_b);
    assign i_unnamed_if_loop_39_q = i_unnamed_if_loop_39_o[32:0];

    // bgTrunc_i_unnamed_if_loop_39_sel_x(BITSELECT,33)@3
    assign bgTrunc_i_unnamed_if_loop_39_sel_x_b = i_unnamed_if_loop_39_q[31:0];

    // i_unnamed_if_loop_310_sel_x(BITSELECT,37)@3
    assign i_unnamed_if_loop_310_sel_x_b = {1'b0, bgTrunc_i_unnamed_if_loop_39_sel_x_b[31:0]};

    // i_unnamed_if_loop_310_vt_select_31(BITSELECT,22)@3
    assign i_unnamed_if_loop_310_vt_select_31_b = i_unnamed_if_loop_310_sel_x_b[31:0];

    // redist2_i_unnamed_if_loop_310_vt_select_31_b_1(DELAY,50)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_i_unnamed_if_loop_310_vt_select_31_b_1_q <= $unsigned(i_unnamed_if_loop_310_vt_select_31_b);
        end
    end

    // i_unnamed_if_loop_310_vt_join(BITJOIN,21)@4
    assign i_unnamed_if_loop_310_vt_join_q = {GND_q, redist2_i_unnamed_if_loop_310_vt_select_31_b_1_q};

    // i_unnamed_if_loop_311(ADD,23)@4
    assign i_unnamed_if_loop_311_a = {1'b0, i_unnamed_if_loop_310_vt_join_q};
    assign i_unnamed_if_loop_311_b = {1'b0, c_i33_124_q};
    assign i_unnamed_if_loop_311_o = $unsigned(i_unnamed_if_loop_311_a) + $unsigned(i_unnamed_if_loop_311_b);
    assign i_unnamed_if_loop_311_q = i_unnamed_if_loop_311_o[33:0];

    // bgTrunc_i_unnamed_if_loop_311_sel_x(BITSELECT,32)@4
    assign bgTrunc_i_unnamed_if_loop_311_sel_x_b = i_unnamed_if_loop_311_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_39_if_loop_313(BLACKBOX,17)@4
    // out out_intel_reserved_ffwd_4_0@20000000
    if_loop_3_i_llvm_fpga_ffwd_source_i33_unnamed_9_if_loop_30 thei_llvm_fpga_ffwd_source_i33_unnamed_if_loop_39_if_loop_313 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(bgTrunc_i_unnamed_if_loop_311_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_39_if_loop_313_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,36)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_39_if_loop_313_out_intel_reserved_ffwd_4_0;

    // valid_fanout_reg0(REG,39)@3 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together26_in_i_valid_3_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,38)@4
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_if_loop_310_0_tpl = GND_q;
    assign out_unnamed_if_loop_36 = GND_q;

endmodule
