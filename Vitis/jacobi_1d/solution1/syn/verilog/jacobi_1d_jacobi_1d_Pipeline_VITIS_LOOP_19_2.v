// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module jacobi_1d_jacobi_1d_Pipeline_VITIS_LOOP_19_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A_1_address0,
        A_1_ce0,
        A_1_q0,
        A_1_address1,
        A_1_ce1,
        A_1_q1,
        B_address0,
        B_ce0,
        B_we0,
        B_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] A_1_address0;
output   A_1_ce0;
input  [31:0] A_1_q0;
output  [6:0] A_1_address1;
output   A_1_ce1;
input  [31:0] A_1_q1;
output  [6:0] B_address0;
output   B_ce0;
output   B_we0;
output  [31:0] B_d0;

reg ap_idle;
reg[6:0] A_1_address0;
reg A_1_ce0;
reg A_1_ce1;
reg B_ce0;
reg B_we0;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state4_pp0_stage1_iter1;
wire    ap_block_state6_pp0_stage1_iter2;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln19_reg_206;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] i_1_reg_201;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln19_fu_106_p2;
wire   [63:0] i_cast1_fu_112_p1;
reg   [63:0] i_cast1_reg_210;
reg   [63:0] i_cast1_reg_210_pp0_iter1_reg;
reg   [63:0] i_cast1_reg_210_pp0_iter2_reg;
reg   [6:0] lshr_ln20_1_reg_215;
reg   [6:0] lshr_ln_reg_225;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] A_1_load_1_reg_235;
reg   [31:0] A_1_load_reg_245;
reg   [31:0] A_1_load_2_reg_250;
wire   [31:0] add_ln20_4_fu_179_p2;
reg   [31:0] add_ln20_4_reg_255;
wire   [31:0] sub_ln20_fu_189_p2;
reg   [31:0] sub_ln20_reg_261;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln20_fu_157_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln20_1_fu_166_p1;
reg   [6:0] i_fu_48;
wire   [6:0] add_ln20_1_fu_161_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_1;
wire   [8:0] shl_ln_fu_117_p3;
wire   [8:0] add_ln20_fu_125_p2;
wire   [8:0] add_ln20_2_fu_141_p2;
wire   [31:0] add_ln20_3_fu_175_p2;
wire   [31:0] shl_ln20_fu_184_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

jacobi_1d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_48 <= 7'd1;
    end else if (((icmp_ln19_reg_206 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_48 <= add_ln20_1_fu_161_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln19_reg_206 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_1_load_1_reg_235 <= A_1_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_1_load_2_reg_250 <= A_1_q0;
        A_1_load_reg_245 <= A_1_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln20_4_reg_255 <= add_ln20_4_fu_179_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_reg_201 <= ap_sig_allocacmp_i_1;
        i_cast1_reg_210_pp0_iter1_reg[6 : 0] <= i_cast1_reg_210[6 : 0];
        i_cast1_reg_210_pp0_iter2_reg[6 : 0] <= i_cast1_reg_210_pp0_iter1_reg[6 : 0];
        icmp_ln19_reg_206 <= icmp_ln19_fu_106_p2;
        sub_ln20_reg_261 <= sub_ln20_fu_189_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln19_fu_106_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_cast1_reg_210[6 : 0] <= i_cast1_fu_112_p1[6 : 0];
        lshr_ln20_1_reg_215 <= {{add_ln20_fu_125_p2[8:2]}};
        lshr_ln_reg_225 <= {{add_ln20_2_fu_141_p2[8:2]}};
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            A_1_address0 = zext_ln20_1_fu_166_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            A_1_address0 = i_cast1_fu_112_p1;
        end else begin
            A_1_address0 = 'bx;
        end
    end else begin
        A_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        A_1_ce0 = 1'b1;
    end else begin
        A_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_1_ce1 = 1'b1;
    end else begin
        A_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_ce0 = 1'b1;
    end else begin
        B_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_we0 = 1'b1;
    end else begin
        B_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln19_reg_206 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_1 = 7'd1;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_48;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_1_address1 = zext_ln20_fu_157_p1;

assign B_address0 = i_cast1_reg_210_pp0_iter2_reg;

assign B_d0 = sub_ln20_reg_261;

assign add_ln20_1_fu_161_p2 = (i_1_reg_201 + 7'd1);

assign add_ln20_2_fu_141_p2 = (shl_ln_fu_117_p3 + 9'd4);

assign add_ln20_3_fu_175_p2 = (A_1_load_reg_245 + A_1_load_2_reg_250);

assign add_ln20_4_fu_179_p2 = (add_ln20_3_fu_175_p2 + A_1_load_1_reg_235);

assign add_ln20_fu_125_p2 = ($signed(shl_ln_fu_117_p3) + $signed(9'd508));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign i_cast1_fu_112_p1 = ap_sig_allocacmp_i_1;

assign icmp_ln19_fu_106_p2 = ((ap_sig_allocacmp_i_1 == 7'd99) ? 1'b1 : 1'b0);

assign shl_ln20_fu_184_p2 = add_ln20_4_reg_255 << 32'd2;

assign shl_ln_fu_117_p3 = {{ap_sig_allocacmp_i_1}, {2'd0}};

assign sub_ln20_fu_189_p2 = (shl_ln20_fu_184_p2 - add_ln20_4_reg_255);

assign zext_ln20_1_fu_166_p1 = lshr_ln_reg_225;

assign zext_ln20_fu_157_p1 = lshr_ln20_1_reg_215;

always @ (posedge ap_clk) begin
    i_cast1_reg_210[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    i_cast1_reg_210_pp0_iter1_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    i_cast1_reg_210_pp0_iter2_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end

endmodule //jacobi_1d_jacobi_1d_Pipeline_VITIS_LOOP_19_2
