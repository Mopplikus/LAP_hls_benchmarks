library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use std.textio.all;

use work.sim_package.all;



entity stencil_2d_tb is

end entity stencil_2d_tb;

architecture behav of stencil_2d_tb is

	-- Constant declarations

	constant HALF_CLK_PERIOD : TIME := 2.00 ns;
	constant TRANSACTION_NUM : INTEGER := 1;
	constant INPUT_end : STRING := "";
	constant OUTPUT_end : STRING := "../VHDL_OUT/output_end.dat";
	constant DATA_WIDTH_end : INTEGER := 32;
	constant INPUT_orig : STRING := "../INPUT_VECTORS/input_orig.dat";
	constant OUTPUT_orig : STRING := "";
	constant DATA_WIDTH_orig : INTEGER := 32;
	constant ADDR_WIDTH_orig : INTEGER := 32;
	constant DATA_DEPTH_orig : INTEGER := 900;
	constant INPUT_sol : STRING := "";
	constant OUTPUT_sol : STRING := "../VHDL_OUT/output_sol.dat";
	constant DATA_WIDTH_sol : INTEGER := 32;
	constant ADDR_WIDTH_sol : INTEGER := 32;
	constant DATA_DEPTH_sol : INTEGER := 900;
	constant INPUT_filter : STRING := "../INPUT_VECTORS/input_filter.dat";
	constant OUTPUT_filter : STRING := "";
	constant DATA_WIDTH_filter : INTEGER := 32;
	constant ADDR_WIDTH_filter : INTEGER := 32;
	constant DATA_DEPTH_filter : INTEGER := 10;

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


	signal orig_mem_ce0 : std_logic;
	signal orig_mem_we0 : std_logic;
	signal orig_mem_din0 : std_logic_vector(DATA_WIDTH_orig - 1 downto 0);
	signal orig_mem_dout0 : std_logic_vector(DATA_WIDTH_orig - 1 downto 0);
	signal orig_mem_address0 : std_logic_vector(ADDR_WIDTH_orig - 1 downto 0);

	signal orig_mem_ce1 : std_logic;
	signal orig_mem_we1 : std_logic;
	signal orig_mem_din1 : std_logic_vector(DATA_WIDTH_orig - 1 downto 0);
	signal orig_mem_dout1 : std_logic_vector(DATA_WIDTH_orig - 1 downto 0);
	signal orig_mem_address1 : std_logic_vector(ADDR_WIDTH_orig - 1 downto 0);

	signal sol_mem_ce0 : std_logic;
	signal sol_mem_we0 : std_logic;
	signal sol_mem_din0 : std_logic_vector(DATA_WIDTH_sol - 1 downto 0);
	signal sol_mem_dout0 : std_logic_vector(DATA_WIDTH_sol - 1 downto 0);
	signal sol_mem_address0 : std_logic_vector(ADDR_WIDTH_sol - 1 downto 0);

	signal sol_mem_ce1 : std_logic;
	signal sol_mem_we1 : std_logic;
	signal sol_mem_din1 : std_logic_vector(DATA_WIDTH_sol - 1 downto 0);
	signal sol_mem_dout1 : std_logic_vector(DATA_WIDTH_sol - 1 downto 0);
	signal sol_mem_address1 : std_logic_vector(ADDR_WIDTH_sol - 1 downto 0);

	signal filter_mem_ce0 : std_logic;
	signal filter_mem_we0 : std_logic;
	signal filter_mem_din0 : std_logic_vector(DATA_WIDTH_filter - 1 downto 0);
	signal filter_mem_dout0 : std_logic_vector(DATA_WIDTH_filter - 1 downto 0);
	signal filter_mem_address0 : std_logic_vector(ADDR_WIDTH_filter - 1 downto 0);

	signal filter_mem_ce1 : std_logic;
	signal filter_mem_we1 : std_logic;
	signal filter_mem_din1 : std_logic_vector(DATA_WIDTH_filter - 1 downto 0);
	signal filter_mem_dout1 : std_logic_vector(DATA_WIDTH_filter - 1 downto 0);
	signal filter_mem_address1 : std_logic_vector(ADDR_WIDTH_filter - 1 downto 0);


	signal tb_temp_idle : std_logic:= '1';
	shared variable transaction_idx : INTEGER := 0;

begin


duv: 	 entity work.stencil_2d
		port map (
			clk => tb_clk,
			rst => tb_rst,
			end_out => end_mem_din0,
			end_valid => tb_end_valid,
			end_ready => '1',
			orig_address0 => orig_mem_address0,
			orig_ce0 => orig_mem_ce0,
			orig_we0 => orig_mem_we0,
			orig_din0 => orig_mem_dout0,
			orig_dout0 => orig_mem_din0,
			orig_address1 => orig_mem_address1,
			orig_ce1 => orig_mem_ce1,
			orig_we1 => orig_mem_we1,
			orig_din1 => orig_mem_dout1,
			orig_dout1 => orig_mem_din1,
			sol_address0 => sol_mem_address0,
			sol_ce0 => sol_mem_ce0,
			sol_we0 => sol_mem_we0,
			sol_din0 => sol_mem_dout0,
			sol_dout0 => sol_mem_din0,
			sol_address1 => sol_mem_address1,
			sol_ce1 => sol_mem_ce1,
			sol_we1 => sol_mem_we1,
			sol_din1 => sol_mem_dout1,
			sol_dout1 => sol_mem_din1,
			filter_address0 => filter_mem_address0,
			filter_ce0 => filter_mem_ce0,
			filter_we0 => filter_mem_we0,
			filter_din0 => filter_mem_dout0,
			filter_dout0 => filter_mem_din0,
			filter_address1 => filter_mem_address1,
			filter_ce1 => filter_mem_ce1,
			filter_we1 => filter_mem_we1,
			filter_din1 => filter_mem_dout1,
			filter_dout1 => filter_mem_din1,
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

mem_inst_orig:	 entity work.two_port_RAM 
	generic map(
		TV_IN => INPUT_orig,
		TV_OUT => OUTPUT_orig,
		DEPTH => DATA_DEPTH_orig,
		DATA_WIDTH => DATA_WIDTH_orig,
		ADDR_WIDTH => ADDR_WIDTH_orig
	)
	port map(
		clk => tb_clk,
		rst => tb_rst,
		ce0 => orig_mem_ce0,
		we0 => orig_mem_we0,
		address0 => orig_mem_address0,
		mem_dout0 => orig_mem_dout0,
		mem_din0 => orig_mem_din0,
		ce1 => orig_mem_ce1,
		we1 => orig_mem_we1,
		address1 => orig_mem_address1,
		mem_dout1 => orig_mem_dout1,
		mem_din1 => orig_mem_din1,
		done => tb_temp_idle
	);

mem_inst_sol:	 entity work.two_port_RAM 
	generic map(
		TV_IN => INPUT_sol,
		TV_OUT => OUTPUT_sol,
		DEPTH => DATA_DEPTH_sol,
		DATA_WIDTH => DATA_WIDTH_sol,
		ADDR_WIDTH => ADDR_WIDTH_sol
	)
	port map(
		clk => tb_clk,
		rst => tb_rst,
		ce0 => sol_mem_ce0,
		we0 => sol_mem_we0,
		address0 => sol_mem_address0,
		mem_dout0 => sol_mem_dout0,
		mem_din0 => sol_mem_din0,
		ce1 => sol_mem_ce1,
		we1 => sol_mem_we1,
		address1 => sol_mem_address1,
		mem_dout1 => sol_mem_dout1,
		mem_din1 => sol_mem_din1,
		done => tb_temp_idle
	);

mem_inst_filter:	 entity work.two_port_RAM 
	generic map(
		TV_IN => INPUT_filter,
		TV_OUT => OUTPUT_filter,
		DEPTH => DATA_DEPTH_filter,
		DATA_WIDTH => DATA_WIDTH_filter,
		ADDR_WIDTH => ADDR_WIDTH_filter
	)
	port map(
		clk => tb_clk,
		rst => tb_rst,
		ce0 => filter_mem_ce0,
		we0 => filter_mem_we0,
		address0 => filter_mem_address0,
		mem_dout0 => filter_mem_dout0,
		mem_din0 => filter_mem_din0,
		ce1 => filter_mem_ce1,
		we1 => filter_mem_we1,
		address1 => filter_mem_address1,
		mem_dout1 => filter_mem_dout1,
		mem_din1 => filter_mem_din1,
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
write_output_transactor_sol_runtime_proc : process
	file fp             : TEXT;
	variable fstatus    : FILE_OPEN_STATUS;
	variable token_line : LINE;
	variable token      : STRING(1 to 1024);

begin
	file_open(fstatus, fp, OUTPUT_sol, WRITE_MODE);
	if (fstatus /= OPEN_OK) then
		assert false report "Open file " & OUTPUT_sol & " failed!!!" severity note;
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
	file_open(fstatus, fp, OUTPUT_sol, APPEND_MODE);
	if (fstatus /= OPEN_OK) then
		assert false report "Open file " & OUTPUT_sol & " failed!!!" severity note;
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

