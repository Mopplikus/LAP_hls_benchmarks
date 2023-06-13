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

// SystemVerilog created from bb_kernel_2mm_B10_stall_region
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 01:31:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B10_stall_region (
    output wire [0:0] out_c0_exe62573,
    output wire [0:0] out_c0_exe82595,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_memdep_1_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_1_kernel_2mm_avm_writeack,
    input wire [0:0] in_memdep_1_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_1_kernel_2mm_avm_readdatavalid,
    output wire [31:0] out_memdep_1_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_1_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_1_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_1_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_1_kernel_2mm_avm_writedata,
    output wire [3:0] out_memdep_1_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_1_kernel_2mm_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe62573,
    input wire [63:0] in_c0_exe72584,
    input wire [0:0] in_c0_exe82595,
    input wire [31:0] in_c1_exe16,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_memdep_1_kernel_2mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_memdep_1_kernel_2mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_memdep_1_kernel_2mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_memdep_1_kernel_2mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_memdep_1_kernel_2mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_memdep_1_kernel_2mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_memdep_1_kernel_2mm_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_o_valid;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [1:0] coalesced_delay_0_0_q;
    wire [97:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_kernel_2mm0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_kernel_2mm0_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_kernel_2mm0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_kernel_2mm0_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // SE_stall_entry(STALLENABLE,30)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (SE_coalesced_delay_0_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_coalesced_delay_0_0(STALLENABLE,34)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_mem_memdep_1_kernel_2mm0_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_stall_entry_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_stall_entry(BITJOIN,25)
    assign bubble_join_stall_entry_q = {in_c1_exe16, in_c0_exe82595, in_c0_exe72584, in_c0_exe62573};

    // bubble_select_stall_entry(BITSELECT,26)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[97:66]);

    // i_llvm_fpga_mem_memdep_1_kernel_2mm0(BLACKBOX,8)@0
    // in in_i_stall@20000000
    // out out_memdep_1_kernel_2mm_avm_address@20000000
    // out out_memdep_1_kernel_2mm_avm_burstcount@20000000
    // out out_memdep_1_kernel_2mm_avm_byteenable@20000000
    // out out_memdep_1_kernel_2mm_avm_enable@20000000
    // out out_memdep_1_kernel_2mm_avm_read@20000000
    // out out_memdep_1_kernel_2mm_avm_write@20000000
    // out out_memdep_1_kernel_2mm_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@1
    // out out_o_writeack@1
    kernel_2mm_i_llvm_fpga_mem_memdep_1_0 thei_llvm_fpga_mem_memdep_1_kernel_2mm0 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_stall_entry_c),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_1_kernel_2mm0_backStall),
        .in_i_valid(SE_stall_entry_V1),
        .in_i_writedata(bubble_select_stall_entry_e),
        .in_memdep_1_kernel_2mm_avm_readdata(in_memdep_1_kernel_2mm_avm_readdata),
        .in_memdep_1_kernel_2mm_avm_readdatavalid(in_memdep_1_kernel_2mm_avm_readdatavalid),
        .in_memdep_1_kernel_2mm_avm_waitrequest(in_memdep_1_kernel_2mm_avm_waitrequest),
        .in_memdep_1_kernel_2mm_avm_writeack(in_memdep_1_kernel_2mm_avm_writeack),
        .out_memdep_1_kernel_2mm_avm_address(i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_memdep_1_kernel_2mm_avm_address),
        .out_memdep_1_kernel_2mm_avm_burstcount(i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_memdep_1_kernel_2mm_avm_burstcount),
        .out_memdep_1_kernel_2mm_avm_byteenable(i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_memdep_1_kernel_2mm_avm_byteenable),
        .out_memdep_1_kernel_2mm_avm_enable(i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_memdep_1_kernel_2mm_avm_enable),
        .out_memdep_1_kernel_2mm_avm_read(i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_memdep_1_kernel_2mm_avm_read),
        .out_memdep_1_kernel_2mm_avm_write(i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_memdep_1_kernel_2mm_avm_write),
        .out_memdep_1_kernel_2mm_avm_writedata(i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_memdep_1_kernel_2mm_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_1_kernel_2mm0(STALLENABLE,29)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_1_kernel_2mm0_V0 = SE_out_i_llvm_fpga_mem_memdep_1_kernel_2mm0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_1_kernel_2mm0_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_mem_memdep_1_kernel_2mm0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_1_kernel_2mm0_and0 = i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_memdep_1_kernel_2mm0_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_mem_memdep_1_kernel_2mm0_and0;

    // join_for_coalesced_delay_0(BITJOIN,20)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_d, bubble_select_stall_entry_b};

    // coalesced_delay_0_0(REG,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,21)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[1:1]);

    // dupName_0_sync_out_x(GPOUT,2)@1
    assign out_c0_exe62573 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe82595 = sel_for_coalesced_delay_0_c;
    assign out_valid_out = SE_out_i_llvm_fpga_mem_memdep_1_kernel_2mm0_V0;

    // ext_sig_sync_out(GPOUT,7)
    assign out_memdep_1_kernel_2mm_avm_address = i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_memdep_1_kernel_2mm_avm_address;
    assign out_memdep_1_kernel_2mm_avm_enable = i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_memdep_1_kernel_2mm_avm_enable;
    assign out_memdep_1_kernel_2mm_avm_read = i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_memdep_1_kernel_2mm_avm_read;
    assign out_memdep_1_kernel_2mm_avm_write = i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_memdep_1_kernel_2mm_avm_write;
    assign out_memdep_1_kernel_2mm_avm_writedata = i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_memdep_1_kernel_2mm_avm_writedata;
    assign out_memdep_1_kernel_2mm_avm_byteenable = i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_memdep_1_kernel_2mm_avm_byteenable;
    assign out_memdep_1_kernel_2mm_avm_burstcount = i_llvm_fpga_mem_memdep_1_kernel_2mm0_out_memdep_1_kernel_2mm_avm_burstcount;

    // sync_out(GPOUT,15)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
