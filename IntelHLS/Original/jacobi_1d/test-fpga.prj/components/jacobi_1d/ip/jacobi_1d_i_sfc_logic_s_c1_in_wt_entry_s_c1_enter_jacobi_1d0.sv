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

// SystemVerilog created from i_sfc_logic_s_c1_in_wt_entry_jacobi_1ds_c1_enter_jacobi_1d0
// Created for function/kernel jacobi_1d
// SystemVerilog created on Wed Apr 26 12:46:08 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_jacobi_1d0 (
    input wire [31:0] in_pre_pre1_jacobi_1d_avm_readdata,
    input wire [0:0] in_pre_pre1_jacobi_1d_avm_writeack,
    input wire [0:0] in_pre_pre1_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_pre_pre1_jacobi_1d_avm_readdatavalid,
    output wire [31:0] out_pre_pre1_jacobi_1d_avm_address,
    output wire [0:0] out_pre_pre1_jacobi_1d_avm_enable,
    output wire [0:0] out_pre_pre1_jacobi_1d_avm_read,
    output wire [0:0] out_pre_pre1_jacobi_1d_avm_write,
    output wire [31:0] out_pre_pre1_jacobi_1d_avm_writedata,
    output wire [3:0] out_pre_pre1_jacobi_1d_avm_byteenable,
    output wire [0:0] out_pre_pre1_jacobi_1d_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_jacobi_1d1,
    output wire [0:0] out_unnamed_jacobi_1d4_0_tpl,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [0:0] in_c1_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_i64_46297004169368698927_q;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_jacobi_1d3_jacobi_1d3_out_intel_reserved_ffwd_0_0;
    wire [31:0] i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_pre_pre1_jacobi_1d_avm_address;
    wire [0:0] i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_pre_pre1_jacobi_1d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_pre_pre1_jacobi_1d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_pre_pre1_jacobi_1d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_pre_pre1_jacobi_1d_avm_read;
    wire [0:0] i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_pre_pre1_jacobi_1d_avm_write;
    wire [31:0] i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_pre_pre1_jacobi_1d_avm_writedata;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    reg [0:0] redist0_sync_together9_aunroll_x_in_c1_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together9_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist1_sync_together9_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist1_sync_together9_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist1_sync_together9_aunroll_x_in_i_valid_4_delay_2;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg1(REG,15)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist0_sync_together9_aunroll_x_in_c1_eni1_1_tpl_1(DELAY,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together9_aunroll_x_in_c1_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together9_aunroll_x_in_c1_eni1_1_tpl_1_q <= $unsigned(in_c1_eni1_1_tpl);
        end
    end

    // c_i64_46297004169368698927(CONSTANT,4)
    assign c_i64_46297004169368698927_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000100);

    // i_llvm_fpga_mem_pre_pre1_jacobi_1d2(BLACKBOX,8)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_pre_pre1_jacobi_1d_avm_address@20000000
    // out out_pre_pre1_jacobi_1d_avm_burstcount@20000000
    // out out_pre_pre1_jacobi_1d_avm_byteenable@20000000
    // out out_pre_pre1_jacobi_1d_avm_enable@20000000
    // out out_pre_pre1_jacobi_1d_avm_read@20000000
    // out out_pre_pre1_jacobi_1d_avm_write@20000000
    // out out_pre_pre1_jacobi_1d_avm_writedata@20000000
    jacobi_1d_i_llvm_fpga_mem_pre_pre1_0 thei_llvm_fpga_mem_pre_pre1_jacobi_1d2 (
        .in_flush(in_flush),
        .in_i_address(c_i64_46297004169368698927_q),
        .in_i_dependence(redist0_sync_together9_aunroll_x_in_c1_eni1_1_tpl_1_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .in_pre_pre1_jacobi_1d_avm_readdata(in_pre_pre1_jacobi_1d_avm_readdata),
        .in_pre_pre1_jacobi_1d_avm_readdatavalid(in_pre_pre1_jacobi_1d_avm_readdatavalid),
        .in_pre_pre1_jacobi_1d_avm_waitrequest(in_pre_pre1_jacobi_1d_avm_waitrequest),
        .in_pre_pre1_jacobi_1d_avm_writeack(in_pre_pre1_jacobi_1d_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_pre_pre1_jacobi_1d_avm_address(i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_pre_pre1_jacobi_1d_avm_address),
        .out_pre_pre1_jacobi_1d_avm_burstcount(i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_pre_pre1_jacobi_1d_avm_burstcount),
        .out_pre_pre1_jacobi_1d_avm_byteenable(i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_pre_pre1_jacobi_1d_avm_byteenable),
        .out_pre_pre1_jacobi_1d_avm_enable(i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_pre_pre1_jacobi_1d_avm_enable),
        .out_pre_pre1_jacobi_1d_avm_read(i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_pre_pre1_jacobi_1d_avm_read),
        .out_pre_pre1_jacobi_1d_avm_write(i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_pre_pre1_jacobi_1d_avm_write),
        .out_pre_pre1_jacobi_1d_avm_writedata(i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_pre_pre1_jacobi_1d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_pre_pre1_jacobi_1d_avm_address = i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_pre_pre1_jacobi_1d_avm_address;
    assign out_pre_pre1_jacobi_1d_avm_enable = i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_pre_pre1_jacobi_1d_avm_enable;
    assign out_pre_pre1_jacobi_1d_avm_read = i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_pre_pre1_jacobi_1d_avm_read;
    assign out_pre_pre1_jacobi_1d_avm_write = i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_pre_pre1_jacobi_1d_avm_write;
    assign out_pre_pre1_jacobi_1d_avm_writedata = i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_pre_pre1_jacobi_1d_avm_writedata;
    assign out_pre_pre1_jacobi_1d_avm_byteenable = i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_pre_pre1_jacobi_1d_avm_byteenable;
    assign out_pre_pre1_jacobi_1d_avm_burstcount = i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_pre_pre1_jacobi_1d_avm_burstcount;

    // redist1_sync_together9_aunroll_x_in_i_valid_4(DELAY,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together9_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist1_sync_together9_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist1_sync_together9_aunroll_x_in_i_valid_4_delay_2 <= '0;
            redist1_sync_together9_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist1_sync_together9_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(in_i_valid);
            redist1_sync_together9_aunroll_x_in_i_valid_4_delay_1 <= redist1_sync_together9_aunroll_x_in_i_valid_4_delay_0;
            redist1_sync_together9_aunroll_x_in_i_valid_4_delay_2 <= redist1_sync_together9_aunroll_x_in_i_valid_4_delay_1;
            redist1_sync_together9_aunroll_x_in_i_valid_4_q <= redist1_sync_together9_aunroll_x_in_i_valid_4_delay_2;
        end
    end

    // valid_fanout_reg2(REG,16)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist1_sync_together9_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_jacobi_1d3_jacobi_1d3(BLACKBOX,7)@7
    // out out_intel_reserved_ffwd_0_0@20000000
    jacobi_1d_i_llvm_fpga_ffwd_source_i32_unnamed_3_jacobi_1d0 thei_llvm_fpga_ffwd_source_i32_unnamed_jacobi_1d3_jacobi_1d3 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(i_llvm_fpga_mem_pre_pre1_jacobi_1d2_out_o_readdata),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i32_unnamed_jacobi_1d3_jacobi_1d3_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,10)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i32_unnamed_jacobi_1d3_jacobi_1d3_out_intel_reserved_ffwd_0_0;

    // valid_fanout_reg0(REG,14)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together9_aunroll_x_in_i_valid_4_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,12)@7
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_jacobi_1d1 = GND_q;
    assign out_unnamed_jacobi_1d4_0_tpl = GND_q;

endmodule
