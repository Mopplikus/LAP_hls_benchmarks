-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:stencil_2d:1.0
-- IP Revision: 2112964631

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY bd_0_hls_inst_0 IS
  PORT (
    orig_ce0 : OUT STD_LOGIC;
    orig_ce1 : OUT STD_LOGIC;
    sol_ce0 : OUT STD_LOGIC;
    sol_we0 : OUT STD_LOGIC;
    filter_ce0 : OUT STD_LOGIC;
    filter_ce1 : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_return : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    orig_address0 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    orig_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    orig_address1 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    orig_q1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    sol_address0 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    sol_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    filter_address0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    filter_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    filter_address1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    filter_q1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END bd_0_hls_inst_0;

ARCHITECTURE bd_0_hls_inst_0_arch OF bd_0_hls_inst_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF bd_0_hls_inst_0_arch: ARCHITECTURE IS "yes";
  COMPONENT stencil_2d IS
    PORT (
      orig_ce0 : OUT STD_LOGIC;
      orig_ce1 : OUT STD_LOGIC;
      sol_ce0 : OUT STD_LOGIC;
      sol_we0 : OUT STD_LOGIC;
      filter_ce0 : OUT STD_LOGIC;
      filter_ce1 : OUT STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      ap_return : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      orig_address0 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      orig_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      orig_address1 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      orig_q1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      sol_address0 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      sol_d0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      filter_address0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      filter_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      filter_address1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      filter_q1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT stencil_2d;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 200000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_return: SIGNAL IS "XIL_INTERFACENAME ap_return, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF ap_return: SIGNAL IS "xilinx.com:signal:data:1.0 ap_return DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst: SIGNAL IS "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst RST";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_PARAMETER OF filter_address0: SIGNAL IS "XIL_INTERFACENAME filter_address0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF filter_address0: SIGNAL IS "xilinx.com:signal:data:1.0 filter_address0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF filter_address1: SIGNAL IS "XIL_INTERFACENAME filter_address1, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF filter_address1: SIGNAL IS "xilinx.com:signal:data:1.0 filter_address1 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF filter_q0: SIGNAL IS "XIL_INTERFACENAME filter_q0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF filter_q0: SIGNAL IS "xilinx.com:signal:data:1.0 filter_q0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF filter_q1: SIGNAL IS "XIL_INTERFACENAME filter_q1, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF filter_q1: SIGNAL IS "xilinx.com:signal:data:1.0 filter_q1 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF orig_address0: SIGNAL IS "XIL_INTERFACENAME orig_address0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF orig_address0: SIGNAL IS "xilinx.com:signal:data:1.0 orig_address0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF orig_address1: SIGNAL IS "XIL_INTERFACENAME orig_address1, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF orig_address1: SIGNAL IS "xilinx.com:signal:data:1.0 orig_address1 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF orig_q0: SIGNAL IS "XIL_INTERFACENAME orig_q0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF orig_q0: SIGNAL IS "xilinx.com:signal:data:1.0 orig_q0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF orig_q1: SIGNAL IS "XIL_INTERFACENAME orig_q1, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF orig_q1: SIGNAL IS "xilinx.com:signal:data:1.0 orig_q1 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF sol_address0: SIGNAL IS "XIL_INTERFACENAME sol_address0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF sol_address0: SIGNAL IS "xilinx.com:signal:data:1.0 sol_address0 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF sol_d0: SIGNAL IS "XIL_INTERFACENAME sol_d0, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF sol_d0: SIGNAL IS "xilinx.com:signal:data:1.0 sol_d0 DATA";
BEGIN
  U0 : stencil_2d
    PORT MAP (
      orig_ce0 => orig_ce0,
      orig_ce1 => orig_ce1,
      sol_ce0 => sol_ce0,
      sol_we0 => sol_we0,
      filter_ce0 => filter_ce0,
      filter_ce1 => filter_ce1,
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_return => ap_return,
      orig_address0 => orig_address0,
      orig_q0 => orig_q0,
      orig_address1 => orig_address1,
      orig_q1 => orig_q1,
      sol_address0 => sol_address0,
      sol_d0 => sol_d0,
      filter_address0 => filter_address0,
      filter_q0 => filter_q0,
      filter_address1 => filter_address1,
      filter_q1 => filter_q1
    );
END bd_0_hls_inst_0_arch;
