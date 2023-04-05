-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Mar 30 00:13:08 2023
-- Host        : Frostspark running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Elija/AppData/Roaming/Xilinx/Vitis/stencil2d/solution1/impl/vhdl/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck24-ubva530-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_0_hls_inst_0 is
  Port ( 
    orig_ce0 : out STD_LOGIC;
    orig_ce1 : out STD_LOGIC;
    sol_ce0 : out STD_LOGIC;
    sol_we0 : out STD_LOGIC;
    filter_ce0 : out STD_LOGIC;
    filter_ce1 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 );
    orig_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    orig_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    orig_address1 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    orig_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sol_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    sol_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    filter_address0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    filter_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    filter_address1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    filter_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end bd_0_hls_inst_0;

architecture stub of bd_0_hls_inst_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "orig_ce0,orig_ce1,sol_ce0,sol_we0,filter_ce0,filter_ce1,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_return[31:0],orig_address0[9:0],orig_q0[31:0],orig_address1[9:0],orig_q1[31:0],sol_address0[9:0],sol_d0[31:0],filter_address0[3:0],filter_q0[31:0],filter_address1[3:0],filter_q1[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "stencil_2d,Vivado 2022.2";
begin
end;
