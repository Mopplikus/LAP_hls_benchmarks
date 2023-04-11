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

// SystemVerilog created from bb_atax_B6_stall_region
// Created for function/kernel atax
// SystemVerilog created on Fri Apr  7 18:08:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B6_stall_region (
    input wire [31:0] in_memdep_atax_avm_readdata,
    input wire [0:0] in_memdep_atax_avm_writeack,
    input wire [0:0] in_memdep_atax_avm_waitrequest,
    input wire [0:0] in_memdep_atax_avm_readdatavalid,
    output wire [31:0] out_memdep_atax_avm_address,
    output wire [0:0] out_memdep_atax_avm_enable,
    output wire [0:0] out_memdep_atax_avm_read,
    output wire [0:0] out_memdep_atax_avm_write,
    output wire [31:0] out_memdep_atax_avm_writedata,
    output wire [3:0] out_memdep_atax_avm_byteenable,
    output wire [0:0] out_memdep_atax_avm_burstcount,
    output wire [0:0] out_feedback_out_13,
    input wire [0:0] in_feedback_stall_in_13,
    output wire [0:0] out_feedback_valid_out_13,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe216312,
    input wire [0:0] in_c0_exe316413,
    input wire [63:0] in_c0_exe516614,
    input wire [0:0] in_c0_exe616715,
    input wire [0:0] in_c0_exe716816,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe716816,
    output wire [0:0] out_memdep,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_llvm_fpga_mem_memdep_atax0_out_memdep_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_atax0_out_memdep_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_atax0_out_memdep_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_atax0_out_memdep_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_atax0_out_memdep_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_atax0_out_memdep_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_atax0_out_memdep_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_atax0_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_atax0_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_atax0_out_o_writeack;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push13_atax1_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push13_atax1_out_feedback_valid_out_13;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push13_atax1_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi2_push13_atax1_out_valid_out;
    reg [0:0] redist0_stall_entry_o8_1_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_atax0_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_atax0_b;
    wire [98:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_atax0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_atax0_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_atax0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_atax0_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_push13_atax1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi2_push13_atax1_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    reg [0:0] SE_redist0_stall_entry_o8_1_0_R_v_0;
    wire [0:0] SE_redist0_stall_entry_o8_1_0_v_s_0;
    wire [0:0] SE_redist0_stall_entry_o8_1_0_s_tv_0;
    wire [0:0] SE_redist0_stall_entry_o8_1_0_backEN;
    wire [0:0] SE_redist0_stall_entry_o8_1_0_backStall;
    wire [0:0] SE_redist0_stall_entry_o8_1_0_V0;


    // SE_out_i_llvm_fpga_push_i1_memdep_phi2_push13_atax1(STALLENABLE,37)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_push13_atax1_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi2_push13_atax1_wireValid = i_llvm_fpga_push_i1_memdep_phi2_push13_atax1_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi2_push13_atax1(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    atax_i_llvm_fpga_push_i1_memdep_phi2_push13_0 thei_llvm_fpga_push_i1_memdep_phi2_push13_atax1 (
        .in_c0_exe616715(bubble_select_stall_entry_e),
        .in_data_in(bubble_select_stall_entry_c),
        .in_feedback_stall_in_13(in_feedback_stall_in_13),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi2_push13_atax1_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i1_memdep_phi2_push13_atax1_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i1_memdep_phi2_push13_atax1_out_feedback_valid_out_13),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi2_push13_atax1_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi2_push13_atax1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist0_stall_entry_o8_1_0(STALLENABLE,40)
    // Valid signal propagation
    assign SE_redist0_stall_entry_o8_1_0_V0 = SE_redist0_stall_entry_o8_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_stall_entry_o8_1_0_s_tv_0 = SE_out_i_llvm_fpga_mem_memdep_atax0_backStall & SE_redist0_stall_entry_o8_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_stall_entry_o8_1_0_backEN = ~ (SE_redist0_stall_entry_o8_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_stall_entry_o8_1_0_v_s_0 = SE_redist0_stall_entry_o8_1_0_backEN & SE_stall_entry_V0;
    // Backward Stall generation
    assign SE_redist0_stall_entry_o8_1_0_backStall = ~ (SE_redist0_stall_entry_o8_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_stall_entry_o8_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_stall_entry_o8_1_0_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o8_1_0_R_v_0 <= SE_redist0_stall_entry_o8_1_0_R_v_0 & SE_redist0_stall_entry_o8_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_stall_entry_o8_1_0_R_v_0 <= SE_redist0_stall_entry_o8_1_0_v_s_0;
            end

        end
    end

    // SE_stall_entry(STALLENABLE,38)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (SE_redist0_stall_entry_o8_1_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_mem_memdep_atax0_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_push_i1_memdep_phi2_push13_atax1_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed2 & SE_stall_entry_or1);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_llvm_fpga_mem_memdep_atax0(STALLENABLE,35)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_atax0_V0 = SE_out_i_llvm_fpga_mem_memdep_atax0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_atax0_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_mem_memdep_atax0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_atax0_and0 = i_llvm_fpga_mem_memdep_atax0_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_memdep_atax0_wireValid = SE_redist0_stall_entry_o8_1_0_V0 & SE_out_i_llvm_fpga_mem_memdep_atax0_and0;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_stall_entry(BITJOIN,30)
    assign bubble_join_stall_entry_q = {in_c0_exe716816, in_c0_exe616715, in_c0_exe516614, in_c0_exe316413, in_c0_exe216312};

    // bubble_select_stall_entry(BITSELECT,31)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[96:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[97:97]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[98:98]);

    // i_llvm_fpga_mem_memdep_atax0(BLACKBOX,10)@0
    // in in_i_stall@20000000
    // out out_memdep_atax_avm_address@20000000
    // out out_memdep_atax_avm_burstcount@20000000
    // out out_memdep_atax_avm_byteenable@20000000
    // out out_memdep_atax_avm_enable@20000000
    // out out_memdep_atax_avm_read@20000000
    // out out_memdep_atax_avm_write@20000000
    // out out_memdep_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@1
    // out out_o_writeack@1
    atax_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_atax0 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_stall_entry_d),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_atax0_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_i_writedata(bubble_select_stall_entry_b),
        .in_memdep_atax_avm_readdata(in_memdep_atax_avm_readdata),
        .in_memdep_atax_avm_readdatavalid(in_memdep_atax_avm_readdatavalid),
        .in_memdep_atax_avm_waitrequest(in_memdep_atax_avm_waitrequest),
        .in_memdep_atax_avm_writeack(in_memdep_atax_avm_writeack),
        .out_memdep_atax_avm_address(i_llvm_fpga_mem_memdep_atax0_out_memdep_atax_avm_address),
        .out_memdep_atax_avm_burstcount(i_llvm_fpga_mem_memdep_atax0_out_memdep_atax_avm_burstcount),
        .out_memdep_atax_avm_byteenable(i_llvm_fpga_mem_memdep_atax0_out_memdep_atax_avm_byteenable),
        .out_memdep_atax_avm_enable(i_llvm_fpga_mem_memdep_atax0_out_memdep_atax_avm_enable),
        .out_memdep_atax_avm_read(i_llvm_fpga_mem_memdep_atax0_out_memdep_atax_avm_read),
        .out_memdep_atax_avm_write(i_llvm_fpga_mem_memdep_atax0_out_memdep_atax_avm_write),
        .out_memdep_atax_avm_writedata(i_llvm_fpga_mem_memdep_atax0_out_memdep_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_atax0_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_atax0_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_atax0_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_memdep_atax_avm_address = i_llvm_fpga_mem_memdep_atax0_out_memdep_atax_avm_address;
    assign out_memdep_atax_avm_enable = i_llvm_fpga_mem_memdep_atax0_out_memdep_atax_avm_enable;
    assign out_memdep_atax_avm_read = i_llvm_fpga_mem_memdep_atax0_out_memdep_atax_avm_read;
    assign out_memdep_atax_avm_write = i_llvm_fpga_mem_memdep_atax0_out_memdep_atax_avm_write;
    assign out_memdep_atax_avm_writedata = i_llvm_fpga_mem_memdep_atax0_out_memdep_atax_avm_writedata;
    assign out_memdep_atax_avm_byteenable = i_llvm_fpga_mem_memdep_atax0_out_memdep_atax_avm_byteenable;
    assign out_memdep_atax_avm_burstcount = i_llvm_fpga_mem_memdep_atax0_out_memdep_atax_avm_burstcount;

    // feedback_out_13_sync(GPOUT,7)
    assign out_feedback_out_13 = i_llvm_fpga_push_i1_memdep_phi2_push13_atax1_out_feedback_out_13;

    // feedback_valid_out_13_sync(GPOUT,9)
    assign out_feedback_valid_out_13 = i_llvm_fpga_push_i1_memdep_phi2_push13_atax1_out_feedback_valid_out_13;

    // sync_out(GPOUT,20)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_llvm_fpga_mem_memdep_atax0(BITJOIN,26)
    assign bubble_join_i_llvm_fpga_mem_memdep_atax0_q = i_llvm_fpga_mem_memdep_atax0_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_atax0(BITSELECT,27)
    assign bubble_select_i_llvm_fpga_mem_memdep_atax0_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_atax0_q[0:0]);

    // redist0_stall_entry_o8_1_0(REG,24)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_stall_entry_o8_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_stall_entry_o8_1_0_backEN == 1'b1)
        begin
            redist0_stall_entry_o8_1_0_q <= $unsigned(bubble_select_stall_entry_f);
        end
    end

    // dupName_0_sync_out_x(GPOUT,22)@1
    assign out_c0_exe716816 = redist0_stall_entry_o8_1_0_q;
    assign out_memdep = bubble_select_i_llvm_fpga_mem_memdep_atax0_b;
    assign out_valid_out = SE_out_i_llvm_fpga_mem_memdep_atax0_V0;

endmodule
