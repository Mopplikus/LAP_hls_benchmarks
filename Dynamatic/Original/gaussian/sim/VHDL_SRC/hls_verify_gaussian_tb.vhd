library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use std.textio.all;

use work.sim_package.all;



entity gaussian_tb is

end entity gaussian_tb;

architecture behav of gaussian_tb is

	-- Constant declarations

	constant HALF_CLK_PERIOD : TIME := 2.00 ns;
	constant TRANSACTION_NUM : INTEGER := 1;
	constant INPUT_end : STRING := "";
	constant OUTPUT_end : STRING := "";
	constant DATA_WIDTH_end : INTEGER := 0;
	constant INPUT_c : STRING := "../INPUT_VECTORS/input_c.dat";
	constant OUTPUT_c : STRING := "";
	constant DATA_WIDTH_c : INTEGER := 32;
	constant ADDR_WIDTH_c : INTEGER := 32;
	constant DATA_DEPTH_c : INTEGER := 20;
	constant INPUT_A : STRING := "../INPUT_VECTORS/input_A.dat";
	constant OUTPUT_A : STRING := "../VHDL_OUT/output_A.dat";
	constant DATA_WIDTH_A : INTEGER := 32;
	constant ADDR_WIDTH_A : INTEGER := 32;
	constant DATA_DEPTH_A : INTEGER := 400;

	-- Signal declarations

	signal tb_clk : std_logic := '0';
	signal tb_rst : std_logic := '0';
	signal tb_start_valid : std_logic := '0';
	signal tb_start_ready : std_logic;
	signal tb_end_valid : std_logic;

	signal c_mem_ce0 : std_logic;
	signal c_mem_we0 : std_logic;
	signal c_mem_din0 : std_logic_vector(DATA_WIDTH_c - 1 downto 0);
	signal c_mem_dout0 : std_logic_vector(DATA_WIDTH_c - 1 downto 0);
	signal c_mem_address0 : std_logic_vector(ADDR_WIDTH_c - 1 downto 0);

	signal c_mem_ce1 : std_logic;
	signal c_mem_we1 : std_logic;
	signal c_mem_din1 : std_logic_vector(DATA_WIDTH_c - 1 downto 0);
	signal c_mem_dout1 : std_logic_vector(DATA_WIDTH_c - 1 downto 0);
	signal c_mem_address1 : std_logic_vector(ADDR_WIDTH_c - 1 downto 0);

	signal A_mem_ce0 : std_logic;
	signal A_mem_we0 : std_logic;
	signal A_mem_din0 : std_logic_vector(DATA_WIDTH_A - 1 downto 0);
	signal A_mem_dout0 : std_logic_vector(DATA_WIDTH_A - 1 downto 0);
	signal A_mem_address0 : std_logic_vector(ADDR_WIDTH_A - 1 downto 0);

	signal A_mem_ce1 : std_logic;
	signal A_mem_we1 : std_logic;
	signal A_mem_din1 : std_logic_vector(DATA_WIDTH_A - 1 downto 0);
	signal A_mem_dout1 : std_logic_vector(DATA_WIDTH_A - 1 downto 0);
	signal A_mem_address1 : std_logic_vector(ADDR_WIDTH_A - 1 downto 0);


	signal tb_temp_idle : std_logic:= '1';
	shared variable transaction_idx : INTEGER := 0;

begin


duv: 	 entity work.gaussian
		port map (
			clk => tb_clk,
			rst => tb_rst,
			end_valid => tb_end_valid,
			end_ready => '1',
			c_address0 => c_mem_address0,
			c_ce0 => c_mem_ce0,
			c_we0 => c_mem_we0,
			c_din0 => c_mem_dout0,
			c_dout0 => c_mem_din0,
			c_address1 => c_mem_address1,
			c_ce1 => c_mem_ce1,
			c_we1 => c_mem_we1,
			c_din1 => c_mem_dout1,
			c_dout1 => c_mem_din1,
			A_address0 => A_mem_address0,
			A_ce0 => A_mem_ce0,
			A_we0 => A_mem_we0,
			A_din0 => A_mem_dout0,
			A_dout0 => A_mem_din0,
			A_address1 => A_mem_address1,
			A_ce1 => A_mem_ce1,
			A_we1 => A_mem_we1,
			A_din1 => A_mem_dout1,
			A_dout1 => A_mem_din1,
			start_in => (others => '0'),
			start_ready => tb_start_ready,
			start_valid => tb_start_valid
		);


mem_inst_c:	 entity work.two_port_RAM 
	generic map(
		TV_IN => INPUT_c,
		TV_OUT => OUTPUT_c,
		DEPTH => DATA_DEPTH_c,
		DATA_WIDTH => DATA_WIDTH_c,
		ADDR_WIDTH => ADDR_WIDTH_c
	)
	port map(
		clk => tb_clk,
		rst => tb_rst,
		ce0 => c_mem_ce0,
		we0 => c_mem_we0,
		address0 => c_mem_address0,
		mem_dout0 => c_mem_dout0,
		mem_din0 => c_mem_din0,
		ce1 => c_mem_ce1,
		we1 => c_mem_we1,
		address1 => c_mem_address1,
		mem_dout1 => c_mem_dout1,
		mem_din1 => c_mem_din1,
		done => tb_temp_idle
	);

mem_inst_A:	 entity work.two_port_RAM 
	generic map(
		TV_IN => INPUT_A,
		TV_OUT => OUTPUT_A,
		DEPTH => DATA_DEPTH_A,
		DATA_WIDTH => DATA_WIDTH_A,
		ADDR_WIDTH => ADDR_WIDTH_A
	)
	port map(
		clk => tb_clk,
		rst => tb_rst,
		ce0 => A_mem_ce0,
		we0 => A_mem_we0,
		address0 => A_mem_address0,
		mem_dout0 => A_mem_dout0,
		mem_din0 => A_mem_din0,
		ce1 => A_mem_ce1,
		we1 => A_mem_we1,
		address1 => A_mem_address1,
		mem_dout1 => A_mem_dout1,
		mem_din1 => A_mem_din1,
		done => tb_temp_idle
	);



----------------------------------------------------------------------------
-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor
write_output_transactor_A_runtime_proc : process
	file fp             : TEXT;
	variable fstatus    : FILE_OPEN_STATUS;
	variable token_line : LINE;
	variable token      : STRING(1 to 1024);

begin
	file_open(fstatus, fp, OUTPUT_A, WRITE_MODE);
	if (fstatus /= OPEN_OK) then
		assert false report "Open file " & OUTPUT_A & " failed!!!" severity note;
		assert false report "ERROR: Simulation using HLS TB failed." severity failure;
	end if;
	write(token_line, string'("[[[runtime]]]"));
	writeline(fp, token_line);
	file_close(fp);
	while transaction_idx /= TRANSACTION_NUM loop
		wait until tb_clk'event and tb_clk = '1';
	end loop;
	wait until tb_clk'event and tb_clk = '1';
	wait until tb_clk'event and tb_clk = '1';
	file_open(fstatus, fp, OUTPUT_A, APPEND_MODE);
	if (fstatus /= OPEN_OK) then
		assert false report "Open file " & OUTPUT_A & " failed!!!" severity note;
		assert false report "ERROR: Simulation using HLS TB failed." severity failure;
	end if;
	write(token_line, string'("[[[/runtime]]]"));
	writeline(fp, token_line);
	file_close(fp);
	wait;
end process;
----------------------------------------------------------------------------



----------------------------------------------------------------------------
generate_sim_done_proc : process
begin
	while (transaction_idx /= TRANSACTION_NUM) loop
		wait until tb_clk'event and tb_clk = '1';
	end loop;
	wait until tb_clk'event and tb_clk = '1';
	wait until tb_clk'event and tb_clk = '1';
	wait until tb_clk'event and tb_clk = '1';
	assert false report "simulation done!" severity note;
	assert false report "NORMAL EXIT (note: failure is to force the simulator to stop)" severity failure;
	wait;
end process;

----------------------------------------------------------------------------
gen_clock_proc : process
begin
	tb_clk <= '0';
	while (true) loop
		wait for HALF_CLK_PERIOD;
		tb_clk <= not tb_clk;
	end loop;
	wait;
end process;

----------------------------------------------------------------------------
gen_reset_proc : process
begin
	tb_rst <= '1';
	wait for 10 ns;
	tb_rst <= '0';
	wait;
end process;

----------------------------------------------------------------------------
generate_idle_signal: process(tb_clk,tb_rst)
begin
   if (tb_rst = '1') then
       tb_temp_idle <= '1';
   elsif rising_edge(tb_clk) then
       tb_temp_idle <= tb_temp_idle;
       if (tb_start_valid = '1') then
           tb_temp_idle <= '0';
       elsif(tb_end_valid = '1') then
           tb_temp_idle <= '1';
       end if;
   end if;
end process generate_idle_signal;

----------------------------------------------------------------------------
generate_start_signal : process(tb_clk, tb_rst)
begin
   if (tb_rst = '1') then
       tb_start_valid <= '0';
   elsif rising_edge(tb_clk) then
       if (tb_temp_idle = '1' and tb_start_ready = '1' and tb_start_valid = '0') then
           tb_start_valid <= '1';
       else
           tb_start_valid <= '0';
       end if;
   end if;
end process generate_start_signal;

----------------------------------------------------------------------------
transaction_increment : process
begin
	wait until tb_rst = '0';
	while (tb_temp_idle /= '1') loop
		wait until tb_clk'event and tb_clk = '1';
	end loop;
	wait until tb_temp_idle = '0';

	while (true) loop
		while (tb_temp_idle /= '1') loop
			wait until tb_clk'event and tb_clk = '1';
		end loop;
		transaction_idx := transaction_idx + 1;
		wait until tb_temp_idle = '0';
	end loop;
end process;

----------------------------------------------------------------------------


end architecture behav;

