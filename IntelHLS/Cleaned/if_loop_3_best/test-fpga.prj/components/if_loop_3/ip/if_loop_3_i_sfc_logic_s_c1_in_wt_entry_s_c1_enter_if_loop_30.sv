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

// SystemVerilog created from i_sfc_logic_s_c1_in_wt_entry_if_loop_3s_c1_enter_if_loop_30
// Created for function/kernel if_loop_3
// SystemVerilog created on Fri May  5 14:58:26 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_3_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_if_loop_30 (
    output wire [0:0] out_intel_reserved_ffwd_0_0,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [32:0] out_intel_reserved_ffwd_3_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_if_loop_36_0_tpl,
    output wire [0:0] out_unnamed_if_loop_37,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [63:0] in_c1_eni1_1_tpl,
    input wire [63:0] in_c1_eni1_2_tpl,
    input wire [31:0] in_c1_eni1_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_123_q;
    wire [31:0] c_i32_124_q;
    wire [32:0] c_i33_125_q;
    wire [33:0] i_cmp21_if_loop_33_a;
    wire [33:0] i_cmp21_if_loop_33_b;
    logic [33:0] i_cmp21_if_loop_33_o;
    wire [0:0] i_cmp21_if_loop_33_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_32_if_loop_313_out_intel_reserved_ffwd_0_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_35_if_loop_316_out_intel_reserved_ffwd_3_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_314_out_intel_reserved_ffwd_1_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_315_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_smax_if_loop_39_s;
    reg [31:0] i_smax_if_loop_39_q;
    wire [31:0] i_smax_if_loop_39_vt_join_q;
    wire [30:0] i_smax_if_loop_39_vt_select_30_b;
    wire [32:0] i_unnamed_if_loop_310_a;
    wire [32:0] i_unnamed_if_loop_310_b;
    logic [32:0] i_unnamed_if_loop_310_o;
    wire [32:0] i_unnamed_if_loop_310_q;
    wire [32:0] i_unnamed_if_loop_311_vt_join_q;
    wire [31:0] i_unnamed_if_loop_311_vt_select_31_b;
    wire [33:0] i_unnamed_if_loop_312_a;
    wire [33:0] i_unnamed_if_loop_312_b;
    logic [33:0] i_unnamed_if_loop_312_o;
    wire [33:0] i_unnamed_if_loop_312_q;
    wire [33:0] i_unnamed_if_loop_37_a;
    wire [33:0] i_unnamed_if_loop_37_b;
    logic [33:0] i_unnamed_if_loop_37_o;
    wire [0:0] i_unnamed_if_loop_37_c;
    wire [31:0] bgTrunc_i_unnamed_if_loop_310_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_if_loop_312_sel_x_b;
    wire [31:0] c_i32_022_recast_x_q;
    wire [32:0] i_unnamed_if_loop_311_sel_x_b;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg3_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg4_q;
    reg [63:0] redist0_sync_together26_aunroll_x_in_c1_eni1_1_tpl_1_q;
    reg [63:0] redist1_sync_together26_aunroll_x_in_c1_eni1_2_tpl_1_q;
    reg [31:0] redist2_sync_together26_aunroll_x_in_c1_eni1_3_tpl_1_q;
    reg [0:0] redist3_sync_together26_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist3_sync_together26_aunroll_x_in_i_valid_2_delay_0;
    reg [31:0] redist4_i_unnamed_if_loop_311_vt_select_31_b_1_q;
    reg [30:0] redist5_i_smax_if_loop_39_vt_select_30_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg1(REG,42)@76 + 1
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

    // redist2_sync_together26_aunroll_x_in_c1_eni1_3_tpl_1(DELAY,51)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist2_sync_together26_aunroll_x_in_c1_eni1_3_tpl_1_q <= $unsigned(in_c1_eni1_3_tpl);
        end
    end

    // c_i32_022_recast_x(CONSTANT,33)
    assign c_i32_022_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp21_if_loop_33(COMPARE,11)@77
    assign i_cmp21_if_loop_33_a = $unsigned({{2{c_i32_022_recast_x_q[31]}}, c_i32_022_recast_x_q});
    assign i_cmp21_if_loop_33_b = $unsigned({{2{redist2_sync_together26_aunroll_x_in_c1_eni1_3_tpl_1_q[31]}}, redist2_sync_together26_aunroll_x_in_c1_eni1_3_tpl_1_q});
    assign i_cmp21_if_loop_33_o = $unsigned($signed(i_cmp21_if_loop_33_a) - $signed(i_cmp21_if_loop_33_b));
    assign i_cmp21_if_loop_33_c[0] = i_cmp21_if_loop_33_o[33];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_32_if_loop_313(BLACKBOX,12)@77
    // out out_intel_reserved_ffwd_0_0@20000000
    if_loop_3_i_llvm_fpga_ffwd_source_i1_unnamed_2_if_loop_30 thei_llvm_fpga_ffwd_source_i1_unnamed_if_loop_32_if_loop_313 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(i_cmp21_if_loop_33_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_32_if_loop_313_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,29)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i1_unnamed_if_loop_32_if_loop_313_out_intel_reserved_ffwd_0_0;

    // valid_fanout_reg2(REG,43)@76 + 1
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

    // redist0_sync_together26_aunroll_x_in_c1_eni1_1_tpl_1(DELAY,49)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together26_aunroll_x_in_c1_eni1_1_tpl_1_q <= $unsigned(in_c1_eni1_1_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_314(BLACKBOX,14)@77
    // out out_intel_reserved_ffwd_1_0@20000000
    if_loop_3_i_llvm_fpga_ffwd_source_p1025i32_unnamed_3_if_loop_30 thei_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_314 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(redist0_sync_together26_aunroll_x_in_c1_eni1_1_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_314_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,35)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_p1025i32_unnamed_if_loop_33_if_loop_314_out_intel_reserved_ffwd_1_0;

    // valid_fanout_reg3(REG,44)@76 + 1
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

    // redist1_sync_together26_aunroll_x_in_c1_eni1_2_tpl_1(DELAY,50)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist1_sync_together26_aunroll_x_in_c1_eni1_2_tpl_1_q <= $unsigned(in_c1_eni1_2_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_315(BLACKBOX,15)@77
    // out out_intel_reserved_ffwd_2_0@20000000
    if_loop_3_i_llvm_fpga_ffwd_source_p1028i32_unnamed_4_if_loop_30 thei_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_315 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(redist1_sync_together26_aunroll_x_in_c1_eni1_2_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_315_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,36)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_p1028i32_unnamed_if_loop_34_if_loop_315_out_intel_reserved_ffwd_2_0;

    // redist3_sync_together26_aunroll_x_in_i_valid_2(DELAY,52)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist3_sync_together26_aunroll_x_in_i_valid_2_delay_0 <= '0;
        end
        else
        begin
            redist3_sync_together26_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist3_sync_together26_aunroll_x_in_i_valid_2_q <= redist3_sync_together26_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // valid_fanout_reg4(REG,45)@78 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist3_sync_together26_aunroll_x_in_i_valid_2_q);
        end
    end

    // c_i33_125(CONSTANT,10)
    assign c_i33_125_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_124(CONSTANT,9)
    assign c_i32_124_q = $unsigned(32'b11111111111111111111111111111111);

    // c_i32_123(CONSTANT,8)
    assign c_i32_123_q = $unsigned(32'b00000000000000000000000000000001);

    // i_unnamed_if_loop_37(COMPARE,26)@76 + 1
    assign i_unnamed_if_loop_37_a = $unsigned({{2{c_i32_123_q[31]}}, c_i32_123_q});
    assign i_unnamed_if_loop_37_b = $unsigned({{2{in_c1_eni1_3_tpl[31]}}, in_c1_eni1_3_tpl});
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            i_unnamed_if_loop_37_o <= $unsigned($signed(i_unnamed_if_loop_37_a) - $signed(i_unnamed_if_loop_37_b));
        end
    end
    assign i_unnamed_if_loop_37_c[0] = i_unnamed_if_loop_37_o[33];

    // i_smax_if_loop_39(MUX,16)@77
    assign i_smax_if_loop_39_s = i_unnamed_if_loop_37_c;
    always @(i_smax_if_loop_39_s or c_i32_123_q or redist2_sync_together26_aunroll_x_in_c1_eni1_3_tpl_1_q)
    begin
        unique case (i_smax_if_loop_39_s)
            1'b0 : i_smax_if_loop_39_q = c_i32_123_q;
            1'b1 : i_smax_if_loop_39_q = redist2_sync_together26_aunroll_x_in_c1_eni1_3_tpl_1_q;
            default : i_smax_if_loop_39_q = 32'b0;
        endcase
    end

    // i_smax_if_loop_39_vt_select_30(BITSELECT,19)@77
    assign i_smax_if_loop_39_vt_select_30_b = i_smax_if_loop_39_q[30:0];

    // redist5_i_smax_if_loop_39_vt_select_30_b_1(DELAY,54)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist5_i_smax_if_loop_39_vt_select_30_b_1_q <= $unsigned(i_smax_if_loop_39_vt_select_30_b);
        end
    end

    // i_smax_if_loop_39_vt_join(BITJOIN,18)@78
    assign i_smax_if_loop_39_vt_join_q = {GND_q, redist5_i_smax_if_loop_39_vt_select_30_b_1_q};

    // i_unnamed_if_loop_310(ADD,20)@78
    assign i_unnamed_if_loop_310_a = {1'b0, i_smax_if_loop_39_vt_join_q};
    assign i_unnamed_if_loop_310_b = {1'b0, c_i32_124_q};
    assign i_unnamed_if_loop_310_o = $unsigned(i_unnamed_if_loop_310_a) + $unsigned(i_unnamed_if_loop_310_b);
    assign i_unnamed_if_loop_310_q = i_unnamed_if_loop_310_o[32:0];

    // bgTrunc_i_unnamed_if_loop_310_sel_x(BITSELECT,31)@78
    assign bgTrunc_i_unnamed_if_loop_310_sel_x_b = i_unnamed_if_loop_310_q[31:0];

    // i_unnamed_if_loop_311_sel_x(BITSELECT,38)@78
    assign i_unnamed_if_loop_311_sel_x_b = {1'b0, bgTrunc_i_unnamed_if_loop_310_sel_x_b[31:0]};

    // i_unnamed_if_loop_311_vt_select_31(BITSELECT,24)@78
    assign i_unnamed_if_loop_311_vt_select_31_b = i_unnamed_if_loop_311_sel_x_b[31:0];

    // redist4_i_unnamed_if_loop_311_vt_select_31_b_1(DELAY,53)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist4_i_unnamed_if_loop_311_vt_select_31_b_1_q <= $unsigned(i_unnamed_if_loop_311_vt_select_31_b);
        end
    end

    // i_unnamed_if_loop_311_vt_join(BITJOIN,23)@79
    assign i_unnamed_if_loop_311_vt_join_q = {GND_q, redist4_i_unnamed_if_loop_311_vt_select_31_b_1_q};

    // i_unnamed_if_loop_312(ADD,25)@79
    assign i_unnamed_if_loop_312_a = {1'b0, i_unnamed_if_loop_311_vt_join_q};
    assign i_unnamed_if_loop_312_b = {1'b0, c_i33_125_q};
    assign i_unnamed_if_loop_312_o = $unsigned(i_unnamed_if_loop_312_a) + $unsigned(i_unnamed_if_loop_312_b);
    assign i_unnamed_if_loop_312_q = i_unnamed_if_loop_312_o[33:0];

    // bgTrunc_i_unnamed_if_loop_312_sel_x(BITSELECT,32)@79
    assign bgTrunc_i_unnamed_if_loop_312_sel_x_b = i_unnamed_if_loop_312_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_35_if_loop_316(BLACKBOX,13)@79
    // out out_intel_reserved_ffwd_3_0@20000000
    if_loop_3_i_llvm_fpga_ffwd_source_i33_unnamed_5_if_loop_30 thei_llvm_fpga_ffwd_source_i33_unnamed_if_loop_35_if_loop_316 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(bgTrunc_i_unnamed_if_loop_312_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_35_if_loop_316_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,37)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i33_unnamed_if_loop_35_if_loop_316_out_intel_reserved_ffwd_3_0;

    // valid_fanout_reg0(REG,41)@78 + 1
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together26_aunroll_x_in_i_valid_2_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,39)@79
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_if_loop_36_0_tpl = GND_q;
    assign out_unnamed_if_loop_37 = GND_q;

endmodule
