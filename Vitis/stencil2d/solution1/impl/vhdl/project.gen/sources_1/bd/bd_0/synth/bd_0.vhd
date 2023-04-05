--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Thu Mar 30 00:11:55 2023
--Host        : Frostspark running 64-bit major release  (build 9200)
--Command     : generate_target bd_0.bd
--Design      : bd_0
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_0 : entity is "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_0 : entity is "bd_0.hwdef";
end bd_0;

architecture STRUCTURE of bd_0 is
  component bd_0_hls_inst_0 is
  port (
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
  end component bd_0_hls_inst_0;
  signal ap_clk_0_1 : STD_LOGIC;
  signal ap_ctrl_0_1_done : STD_LOGIC;
  signal ap_ctrl_0_1_idle : STD_LOGIC;
  signal ap_ctrl_0_1_ready : STD_LOGIC;
  signal ap_ctrl_0_1_start : STD_LOGIC;
  signal ap_rst_0_1 : STD_LOGIC;
  signal filter_q0_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal filter_q1_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hls_inst_ap_return : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hls_inst_filter_address0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hls_inst_filter_address1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hls_inst_filter_ce0 : STD_LOGIC;
  signal hls_inst_filter_ce1 : STD_LOGIC;
  signal hls_inst_orig_address0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal hls_inst_orig_address1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal hls_inst_orig_ce0 : STD_LOGIC;
  signal hls_inst_orig_ce1 : STD_LOGIC;
  signal hls_inst_sol_address0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal hls_inst_sol_ce0 : STD_LOGIC;
  signal hls_inst_sol_d0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hls_inst_sol_we0 : STD_LOGIC;
  signal orig_q0_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal orig_q1_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_RESET ap_rst, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 200000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of ap_ctrl_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ";
  attribute X_INTERFACE_INFO of ap_ctrl_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ";
  attribute X_INTERFACE_INFO of ap_ctrl_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ";
  attribute X_INTERFACE_INFO of ap_ctrl_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 RST.AP_RST RST";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME RST.AP_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of ap_return : signal is "xilinx.com:signal:data:1.0 DATA.AP_RETURN DATA";
  attribute X_INTERFACE_PARAMETER of ap_return : signal is "XIL_INTERFACENAME DATA.AP_RETURN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of filter_address0 : signal is "xilinx.com:signal:data:1.0 DATA.FILTER_ADDRESS0 DATA";
  attribute X_INTERFACE_PARAMETER of filter_address0 : signal is "XIL_INTERFACENAME DATA.FILTER_ADDRESS0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of filter_address1 : signal is "xilinx.com:signal:data:1.0 DATA.FILTER_ADDRESS1 DATA";
  attribute X_INTERFACE_PARAMETER of filter_address1 : signal is "XIL_INTERFACENAME DATA.FILTER_ADDRESS1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of filter_q0 : signal is "xilinx.com:signal:data:1.0 DATA.FILTER_Q0 DATA";
  attribute X_INTERFACE_PARAMETER of filter_q0 : signal is "XIL_INTERFACENAME DATA.FILTER_Q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of filter_q1 : signal is "xilinx.com:signal:data:1.0 DATA.FILTER_Q1 DATA";
  attribute X_INTERFACE_PARAMETER of filter_q1 : signal is "XIL_INTERFACENAME DATA.FILTER_Q1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of orig_address0 : signal is "xilinx.com:signal:data:1.0 DATA.ORIG_ADDRESS0 DATA";
  attribute X_INTERFACE_PARAMETER of orig_address0 : signal is "XIL_INTERFACENAME DATA.ORIG_ADDRESS0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of orig_address1 : signal is "xilinx.com:signal:data:1.0 DATA.ORIG_ADDRESS1 DATA";
  attribute X_INTERFACE_PARAMETER of orig_address1 : signal is "XIL_INTERFACENAME DATA.ORIG_ADDRESS1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of orig_q0 : signal is "xilinx.com:signal:data:1.0 DATA.ORIG_Q0 DATA";
  attribute X_INTERFACE_PARAMETER of orig_q0 : signal is "XIL_INTERFACENAME DATA.ORIG_Q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of orig_q1 : signal is "xilinx.com:signal:data:1.0 DATA.ORIG_Q1 DATA";
  attribute X_INTERFACE_PARAMETER of orig_q1 : signal is "XIL_INTERFACENAME DATA.ORIG_Q1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of sol_address0 : signal is "xilinx.com:signal:data:1.0 DATA.SOL_ADDRESS0 DATA";
  attribute X_INTERFACE_PARAMETER of sol_address0 : signal is "XIL_INTERFACENAME DATA.SOL_ADDRESS0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of sol_d0 : signal is "xilinx.com:signal:data:1.0 DATA.SOL_D0 DATA";
  attribute X_INTERFACE_PARAMETER of sol_d0 : signal is "XIL_INTERFACENAME DATA.SOL_D0, LAYERED_METADATA undef";
begin
  ap_clk_0_1 <= ap_clk;
  ap_ctrl_0_1_start <= ap_ctrl_start;
  ap_ctrl_done <= ap_ctrl_0_1_done;
  ap_ctrl_idle <= ap_ctrl_0_1_idle;
  ap_ctrl_ready <= ap_ctrl_0_1_ready;
  ap_return(31 downto 0) <= hls_inst_ap_return(31 downto 0);
  ap_rst_0_1 <= ap_rst;
  filter_address0(3 downto 0) <= hls_inst_filter_address0(3 downto 0);
  filter_address1(3 downto 0) <= hls_inst_filter_address1(3 downto 0);
  filter_ce0 <= hls_inst_filter_ce0;
  filter_ce1 <= hls_inst_filter_ce1;
  filter_q0_0_1(31 downto 0) <= filter_q0(31 downto 0);
  filter_q1_0_1(31 downto 0) <= filter_q1(31 downto 0);
  orig_address0(9 downto 0) <= hls_inst_orig_address0(9 downto 0);
  orig_address1(9 downto 0) <= hls_inst_orig_address1(9 downto 0);
  orig_ce0 <= hls_inst_orig_ce0;
  orig_ce1 <= hls_inst_orig_ce1;
  orig_q0_0_1(31 downto 0) <= orig_q0(31 downto 0);
  orig_q1_0_1(31 downto 0) <= orig_q1(31 downto 0);
  sol_address0(9 downto 0) <= hls_inst_sol_address0(9 downto 0);
  sol_ce0 <= hls_inst_sol_ce0;
  sol_d0(31 downto 0) <= hls_inst_sol_d0(31 downto 0);
  sol_we0 <= hls_inst_sol_we0;
hls_inst: component bd_0_hls_inst_0
     port map (
      ap_clk => ap_clk_0_1,
      ap_done => ap_ctrl_0_1_done,
      ap_idle => ap_ctrl_0_1_idle,
      ap_ready => ap_ctrl_0_1_ready,
      ap_return(31 downto 0) => hls_inst_ap_return(31 downto 0),
      ap_rst => ap_rst_0_1,
      ap_start => ap_ctrl_0_1_start,
      filter_address0(3 downto 0) => hls_inst_filter_address0(3 downto 0),
      filter_address1(3 downto 0) => hls_inst_filter_address1(3 downto 0),
      filter_ce0 => hls_inst_filter_ce0,
      filter_ce1 => hls_inst_filter_ce1,
      filter_q0(31 downto 0) => filter_q0_0_1(31 downto 0),
      filter_q1(31 downto 0) => filter_q1_0_1(31 downto 0),
      orig_address0(9 downto 0) => hls_inst_orig_address0(9 downto 0),
      orig_address1(9 downto 0) => hls_inst_orig_address1(9 downto 0),
      orig_ce0 => hls_inst_orig_ce0,
      orig_ce1 => hls_inst_orig_ce1,
      orig_q0(31 downto 0) => orig_q0_0_1(31 downto 0),
      orig_q1(31 downto 0) => orig_q1_0_1(31 downto 0),
      sol_address0(9 downto 0) => hls_inst_sol_address0(9 downto 0),
      sol_ce0 => hls_inst_sol_ce0,
      sol_d0(31 downto 0) => hls_inst_sol_d0(31 downto 0),
      sol_we0 => hls_inst_sol_we0
    );
end STRUCTURE;
