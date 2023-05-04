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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_end19_loopexit_if_loop_3s_c0_enter44_if_loop_30
// Created for function/kernel if_loop_3
// SystemVerilog created on Thu May  4 08:08:13 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_3_i_sfc_logic_s_c0_in_for_end19_00000_enter44_if_loop_30 (
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exi145_0_tpl,
    output wire [31:0] out_c0_exi145_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_if_loop_36,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_10008_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp101512_if_loop_31_out_dest_data_out_3_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_15_if_loop_32_out_dest_data_out_5_0;
    wire [0:0] i_sum_0_lcssa_select_if_loop_33_s;
    reg [31:0] i_sum_0_lcssa_select_if_loop_33_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg0_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg1_q;
    (* preserve_syn_only *) reg [0:0] valid_fanout_reg2_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,13)@0 + 1
    always @ (posedge clock)
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

    // valid_fanout_reg2(REG,15)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_acl_15_if_loop_32(BLACKBOX,6)@1
    if_loop_3_i_llvm_fpga_ffwd_dest_i32_acl_15_0 thei_llvm_fpga_ffwd_dest_i32_acl_15_if_loop_32 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i32_acl_15_if_loop_32_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_10008(CONSTANT,4)
    assign c_i32_10008_q = $unsigned(32'b00000000000000000000001111101000);

    // valid_fanout_reg1(REG,14)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_cmp101512_if_loop_31(BLACKBOX,5)@1
    if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp101512_0 thei_llvm_fpga_ffwd_dest_i1_cmp101512_if_loop_31 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_cmp101512_if_loop_31_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sum_0_lcssa_select_if_loop_33(MUX,7)@1
    assign i_sum_0_lcssa_select_if_loop_33_s = i_llvm_fpga_ffwd_dest_i1_cmp101512_if_loop_31_out_dest_data_out_3_0;
    always @(i_sum_0_lcssa_select_if_loop_33_s or c_i32_10008_q or i_llvm_fpga_ffwd_dest_i32_acl_15_if_loop_32_out_dest_data_out_5_0)
    begin
        unique case (i_sum_0_lcssa_select_if_loop_33_s)
            1'b0 : i_sum_0_lcssa_select_if_loop_33_q = c_i32_10008_q;
            1'b1 : i_sum_0_lcssa_select_if_loop_33_q = i_llvm_fpga_ffwd_dest_i32_acl_15_if_loop_32_out_dest_data_out_5_0;
            default : i_sum_0_lcssa_select_if_loop_33_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,12)@1
    assign out_c0_exi145_0_tpl = GND_q;
    assign out_c0_exi145_1_tpl = i_sum_0_lcssa_select_if_loop_33_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_if_loop_36 = GND_q;

endmodule
