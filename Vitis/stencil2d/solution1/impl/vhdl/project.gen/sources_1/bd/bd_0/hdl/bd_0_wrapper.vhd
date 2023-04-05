--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Thu Mar 30 00:11:55 2023
--Host        : Frostspark running 64-bit major release  (build 9200)
--Command     : generate_target bd_0_wrapper.bd
--Design      : bd_0_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_wrapper is
  port (
    ap_clk : in STD_LOGIC;
    ap_ctrl_done : out STD_LOGIC;
    ap_ctrl_idle : out STD_LOGIC;
    ap_ctrl_ready : out STD_LOGIC;
    ap_ctrl_start : in STD_LOGIC;
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_rst : in STD_LOGIC;
    filter_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    filter_address1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    filter_ce0 : out STD_LOGIC;
    filter_ce1 : out STD_LOGIC;
    filter_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    filter_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    orig_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    orig_address1 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    orig_ce0 : out STD_LOGIC;
    orig_ce1 : out STD_LOGIC;
    orig_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    orig_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sol_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    sol_ce0 : out STD_LOGIC;
    sol_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sol_we0 : out STD_LOGIC
  );
end bd_0_wrapper;

architecture STRUCTURE of bd_0_wrapper is
  component bd_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_rst : in STD_LOGIC;
    filter_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    filter_address1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    filter_ce0 : out STD_LOGIC;
    filter_ce1 : out STD_LOGIC;
    filter_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    filter_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    orig_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    orig_address1 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    orig_ce0 : out STD_LOGIC;
    orig_ce1 : out STD_LOGIC;
    orig_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    orig_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sol_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    sol_ce0 : out STD_LOGIC;
    sol_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sol_we0 : out STD_LOGIC;
    ap_ctrl_start : in STD_LOGIC;
    ap_ctrl_done : out STD_LOGIC;
    ap_ctrl_idle : out STD_LOGIC;
    ap_ctrl_ready : out STD_LOGIC
  );
  end component bd_0;
begin
bd_0_i: component bd_0
     port map (
      ap_clk => ap_clk,
      ap_ctrl_done => ap_ctrl_done,
      ap_ctrl_idle => ap_ctrl_idle,
      ap_ctrl_ready => ap_ctrl_ready,
      ap_ctrl_start => ap_ctrl_start,
      ap_return(31 downto 0) => ap_return(31 downto 0),
      ap_rst => ap_rst,
      filter_address0(3 downto 0) => filter_address0(3 downto 0),
      filter_address1(3 downto 0) => filter_address1(3 downto 0),
      filter_ce0 => filter_ce0,
      filter_ce1 => filter_ce1,
      filter_q0(31 downto 0) => filter_q0(31 downto 0),
      filter_q1(31 downto 0) => filter_q1(31 downto 0),
      orig_address0(9 downto 0) => orig_address0(9 downto 0),
      orig_address1(9 downto 0) => orig_address1(9 downto 0),
      orig_ce0 => orig_ce0,
      orig_ce1 => orig_ce1,
      orig_q0(31 downto 0) => orig_q0(31 downto 0),
      orig_q1(31 downto 0) => orig_q1(31 downto 0),
      sol_address0(9 downto 0) => sol_address0(9 downto 0),
      sol_ce0 => sol_ce0,
      sol_d0(31 downto 0) => sol_d0(31 downto 0),
      sol_we0 => sol_we0
    );
end STRUCTURE;
