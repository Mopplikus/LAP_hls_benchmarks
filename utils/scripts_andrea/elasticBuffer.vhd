library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE work.customTypes.all;

entity elasticBuffer is
Generic (
  INPUTS: integer:=2; OUTPUTS: integer:=2; DATA_SIZE_IN: integer:=1; DATA_SIZE_OUT: integer:=1 
);
port(
    clk, rst : in std_logic;  
    dataInArray : in data_array (0 downto 0)(DATA_SIZE_IN-1 downto 0);
    dataOutArray : out data_array (0 downto 0)(DATA_SIZE_OUT-1 downto 0);
    ReadyArray : out std_logic_vector(0 downto 0);
    ValidArray : out std_logic_vector(0 downto 0);
    nReadyArray : in std_logic_vector(0 downto 0);
    pValidArray : in std_logic_vector(0 downto 0));
end elasticBuffer;
------------------------------------------------------------------------ 
-- elastic buffer 
------------------------------------------------------------------------ 
architecture arch of elasticBuffer is
    
    signal tehb1_valid, tehb1_ready : STD_LOGIC;
    signal oehb1_valid, oehb1_ready : STD_LOGIC;
    signal tehb1_dataOut, oehb1_dataOut : std_logic_vector(DATA_SIZE_IN-1 downto 0);

    
begin

tehb1: entity work.TEHB(arch) generic map (1, 1, DATA_SIZE_IN, DATA_SIZE_IN)
        port map (
        --inputspValidArray
            clk => clk, 
            rst => rst, 
            pValidArray(0)  => pValidArray(0), -- real or speculatef condition (determined by merge1)
            nReadyArray(0) => oehb1_ready,    
            validArray(0) => tehb1_valid, 
        --outputs
            readyArray(0) => tehb1_ready,   
            dataInArray(0) => dataInArray(0),
            dataOutArray(0) => tehb1_dataOut
        );

oehb1: entity work.OEHB(arch) generic map (1, 1, DATA_SIZE_IN, DATA_SIZE_IN)
        port map (
        --inputspValidArray
            clk => clk, 
            rst => rst, 
            pValidArray(0)  => tehb1_valid, -- real or speculatef condition (determined by merge1)
            nReadyArray(0) => nReadyArray(0),    
            validArray(0) => oehb1_valid, 
        --outputs
            readyArray(0) => oehb1_ready,   
            dataInArray(0) =>tehb1_dataOut,
            dataOutArray(0) => oehb1_dataOut
        );

dataOutArray(0) <= oehb1_dataOut;
ValidArray(0) <= oehb1_valid;
ReadyArray(0) <= tehb1_ready;
    
end arch;


--------------------------------------------------------------  end
---------------------------------------------------------------------
