//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Thu Mar 30 00:34:57 2023
//Host        : Frostspark running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
   (A_address0,
    A_ce0,
    A_q0,
    B_address0,
    B_ce0,
    B_q0,
    ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_return,
    ap_rst,
    n);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_ADDRESS0, LAYERED_METADATA undef" *) output [6:0]A_address0;
  output A_ce0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_Q0, LAYERED_METADATA undef" *) input [31:0]A_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_ADDRESS0, LAYERED_METADATA undef" *) output [6:0]B_address0;
  output B_ce0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_Q0, LAYERED_METADATA undef" *) input [31:0]B_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_RESET ap_rst, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 200000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) input ap_ctrl_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.AP_RETURN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.AP_RETURN, LAYERED_METADATA undef" *) output [31:0]ap_return;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.N DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.N, LAYERED_METADATA undef" *) input [31:0]n;

  wire [31:0]A_q0_0_1;
  wire [31:0]B_q0_0_1;
  wire ap_clk_0_1;
  wire ap_ctrl_0_1_done;
  wire ap_ctrl_0_1_idle;
  wire ap_ctrl_0_1_ready;
  wire ap_ctrl_0_1_start;
  wire ap_rst_0_1;
  wire [6:0]hls_inst_A_address0;
  wire hls_inst_A_ce0;
  wire [6:0]hls_inst_B_address0;
  wire hls_inst_B_ce0;
  wire [31:0]hls_inst_ap_return;
  wire [31:0]n_0_1;

  assign A_address0[6:0] = hls_inst_A_address0;
  assign A_ce0 = hls_inst_A_ce0;
  assign A_q0_0_1 = A_q0[31:0];
  assign B_address0[6:0] = hls_inst_B_address0;
  assign B_ce0 = hls_inst_B_ce0;
  assign B_q0_0_1 = B_q0[31:0];
  assign ap_clk_0_1 = ap_clk;
  assign ap_ctrl_0_1_start = ap_ctrl_start;
  assign ap_ctrl_done = ap_ctrl_0_1_done;
  assign ap_ctrl_idle = ap_ctrl_0_1_idle;
  assign ap_ctrl_ready = ap_ctrl_0_1_ready;
  assign ap_return[31:0] = hls_inst_ap_return;
  assign ap_rst_0_1 = ap_rst;
  assign n_0_1 = n[31:0];
  bd_0_hls_inst_0 hls_inst
       (.A_address0(hls_inst_A_address0),
        .A_ce0(hls_inst_A_ce0),
        .A_q0(A_q0_0_1),
        .B_address0(hls_inst_B_address0),
        .B_ce0(hls_inst_B_ce0),
        .B_q0(B_q0_0_1),
        .ap_clk(ap_clk_0_1),
        .ap_done(ap_ctrl_0_1_done),
        .ap_idle(ap_ctrl_0_1_idle),
        .ap_ready(ap_ctrl_0_1_ready),
        .ap_return(hls_inst_ap_return),
        .ap_rst(ap_rst_0_1),
        .ap_start(ap_ctrl_0_1_start),
        .n(n_0_1));
endmodule
