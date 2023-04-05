-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Mar 30 01:37:17 2023
-- Host        : Frostspark running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck24-ubva530-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    c_ce0 : out STD_LOGIC;
    A_ce0 : out STD_LOGIC;
    A_we0 : out STD_LOGIC;
    A_ce1 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    c_address0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    c_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    A_address0 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    A_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    A_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    A_address1 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    A_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "c_ce0,A_ce0,A_we0,A_ce1,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,c_address0[4:0],c_q0[31:0],A_address0[8:0],A_d0[31:0],A_q0[31:0],A_address1[8:0],A_q1[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "gaussian,Vivado 2022.2";
begin
end;
