library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use std.textio.all;

use work.sim_package.all;



entity if_loop_2_tb is

end entity if_loop_2_tb;

architecture behav of if_loop_2_tb is

	-- Constant declarations

	constant HALF_CLK_PERIOD : TIME := 2.00 ns;
	constant TRANSACTION_NUM : INTEGER := 1;
	constant INPUT_end : STRING := "";
	constant OUTPUT_end : STRING := "../VHDL_OUT/output_end.dat";
	constant DATA_WIDTH_end : INTEGER := 32;
	constant INPUT_a : STRING := "../INPUT_VECTORS/input_a.dat";
	constant OUTPUT_a : STRING := "";
	constant DATA_WIDTH_a : INTEGER := 32;
	constant ADDR_WIDTH_a : INTEGER := 32;
	constant DATA_DEPTH_a : INTEGER := 100;
	constant INPUT_n : STRING := "../INPUT_VECTORS/input_n.dat";
	constant OUTPUT_n : STRING := "";
	constant DATA_WIDTH_n : INTEGER := 32;

	-- Signal declarations

	signal tb_clk : std_logic := '0';
	signal tb_rst : std_logic := '0';
	signal tb_start_valid : std_logic := '0';
	signal tb_start_ready : std_logic;
	signal tb_end_valid : std_logic;

	signal end_mem_ce0 : std_logic;
	signal end_mem_we0 : std_logic;
	signal end_mem_dout0 : std_logic_vector(DATA_WIDTH_end - 1 downto 0);
	signal end_mem_din0 : std_logic_vector(DATA_WIDTH_end - 1 downto 0);


	signal a_mem_ce0 : std_logic;
	signal a_mem_we0 : std_logic;
	signal a_mem_din0 : std_logic_vector(DATA_WIDTH_a - 1 downto 0);
	signal a_mem_dout0 : std_logic_vector(DATA_WIDTH_a - 1 downto 0);
	signal a_mem_address0 : std_logic_vector(ADDR_WIDTH_a - 1 downto 0);

	signal a_mem_ce1 : std_logic;
	signal a_mem_we1 : std_logic;
	signal a_mem_din1 : std_logic_vector(DATA_WIDTH_a - 1 downto 0);
	signal a_mem_dout1 : std_logic_vector(DATA_WIDTH_a - 1 downto 0);
	signal a_mem_address1 : std_logic_vector(ADDR_WIDTH_a - 1 downto 0);

	signal n_mem_ce0 : std_logic;
	signal n_mem_we0 : std_logic;
	signal n_mem_dout0 : std_logic_vector(DATA_WIDTH_n - 1 downto 0);
	signal n_mem_din0 : std_logic_vector(DATA_WIDTH_n - 1 downto 0);



	signal tb_temp_idle : std_logic:= '1';
	shared variable transaction_idx : INTEGER := 0;

begin


duv: 	 entity work.if_loop_2
		port map (
			clk => tb_clk,
			rst => tb_rst,
			end_out => end_mem_din0,
			end_valid => tb_end_valid,
			end_ready => '1',
			a_address0 => a_mem_address0,
			a_ce0 => a_mem_ce0,
			a_we0 => a_mem_we0,
			a_din0 => a_mem_dout0,
			a_dout0 => a_mem_din0,
			a_address1 => a_mem_address1,
			a_ce1 => a_mem_ce1,
			a_we1 => a_mem_we1,
			a_din1 => a_mem_dout1,
			a_dout1 => a_mem_din1,
			n_valid_in => '1',
			n_din => n_mem_dout0,
			start_in => (others => '0'),
			start_ready => tb_start_ready,
			start_valid => tb_start_valid
		);


arg_inst_end:	 entity work.single_argument
	generic map(
		TV_IN => INPUT_end,
		TV_OUT => OUTPUT_end,
		DATA_WIDTH => DATA_WIDTH_end
	)
	port map(
		clk => tb_clk,
		rst => tb_rst,
		ce0 => '1',
		we0 => tb_end_valid,
		mem_dout0 => end_mem_dout0,
		mem_din0 => end_mem_din0,
		done => tb_temp_idle
	);

mem_inst_a:	 entity work.two_port_RAM 
	generic map(
		TV_IN => INPUT_a,
		TV_OUT => OUTPUT_a,
		DEPTH => DATA_DEPTH_a,
		DATA_WIDTH => DATA_WIDTH_a,
		ADDR_WIDTH => ADDR_WIDTH_a
	)
	port map(
		clk => tb_clk,
		rst => tb_rst,
		ce0 => a_mem_ce0,
		we0 => a_mem_we0,
		address0 => a_mem_address0,
		mem_dout0 => a_mem_dout0,
		mem_din0 => a_mem_din0,
		ce1 => a_mem_ce1,
		we1 => a_mem_we1,
		address1 => a_mem_address1,
		mem_dout1 => a_mem_dout1,
		mem_din1 => a_mem_din1,
		done => tb_temp_idle
	);

arg_inst_n:	 entity work.single_argument
	generic map(
		TV_IN => INPUT_n,
		TV_OUT => OUTPUT_n,
		DATA_WIDTH => DATA_WIDTH_n
	)
	port map(
		clk => tb_clk,
		rst => tb_rst,
		ce0 => '1',
		we0 => '0',
		mem_dout0 => n_mem_dout0,
		mem_din0 => (others => '0'),
		done => tb_temp_idle
	);



----------------------------------------------------------------------------
-- Write "[[[runtime]]]" and "[[[/runtime]]]" for output transactor
write_output_transactor_end_runtime_proc : process
	file fp             : TEXT;
	variable fstatus    : FILE_OPEN_STATUS;
	variable token_line : LINE;
	variable token      : STRING(1 to 1024);

begin
	file_open(fstatus, fp, OUTPUT_end, WRITE_MODE);
	if (fstatus /= OPEN_OK) then
		assert false report "Open file " & OUTPUT_end & " failed!!!" severity note;
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
	file_open(fstatus, fp, OUTPUT_end, APPEND_MODE);
	if (fstatus /= OPEN_OK) then
		assert false report "Open file " & OUTPUT_end & " failed!!!" severity note;
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

