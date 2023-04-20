library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use std.textio.all;

use work.sim_package.all;



entity matvec_tb is

end entity matvec_tb;

architecture behav of matvec_tb is

	-- Constant declarations

	constant HALF_CLK_PERIOD : TIME := 2.00 ns;
	constant TRANSACTION_NUM : INTEGER := 1;
	constant INPUT_end : STRING := "";
	constant OUTPUT_end : STRING := "../VHDL_OUT/output_end.dat";
	constant DATA_WIDTH_end : INTEGER := 32;
	constant INPUT_M : STRING := "../INPUT_VECTORS/input_M.dat";
	constant OUTPUT_M : STRING := "";
	constant DATA_WIDTH_M : INTEGER := 32;
	constant ADDR_WIDTH_M : INTEGER := 32;
	constant DATA_DEPTH_M : INTEGER := 900;
	constant INPUT_V : STRING := "../INPUT_VECTORS/input_V.dat";
	constant OUTPUT_V : STRING := "";
	constant DATA_WIDTH_V : INTEGER := 32;
	constant ADDR_WIDTH_V : INTEGER := 32;
	constant DATA_DEPTH_V : INTEGER := 30;
	constant INPUT_Out : STRING := "";
	constant OUTPUT_Out : STRING := "../VHDL_OUT/output_Out.dat";
	constant DATA_WIDTH_Out : INTEGER := 32;
	constant ADDR_WIDTH_Out : INTEGER := 32;
	constant DATA_DEPTH_Out : INTEGER := 30;

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


	signal M_mem_ce0 : std_logic;
	signal M_mem_we0 : std_logic;
	signal M_mem_din0 : std_logic_vector(DATA_WIDTH_M - 1 downto 0);
	signal M_mem_dout0 : std_logic_vector(DATA_WIDTH_M - 1 downto 0);
	signal M_mem_address0 : std_logic_vector(ADDR_WIDTH_M - 1 downto 0);

	signal M_mem_ce1 : std_logic;
	signal M_mem_we1 : std_logic;
	signal M_mem_din1 : std_logic_vector(DATA_WIDTH_M - 1 downto 0);
	signal M_mem_dout1 : std_logic_vector(DATA_WIDTH_M - 1 downto 0);
	signal M_mem_address1 : std_logic_vector(ADDR_WIDTH_M - 1 downto 0);

	signal V_mem_ce0 : std_logic;
	signal V_mem_we0 : std_logic;
	signal V_mem_din0 : std_logic_vector(DATA_WIDTH_V - 1 downto 0);
	signal V_mem_dout0 : std_logic_vector(DATA_WIDTH_V - 1 downto 0);
	signal V_mem_address0 : std_logic_vector(ADDR_WIDTH_V - 1 downto 0);

	signal V_mem_ce1 : std_logic;
	signal V_mem_we1 : std_logic;
	signal V_mem_din1 : std_logic_vector(DATA_WIDTH_V - 1 downto 0);
	signal V_mem_dout1 : std_logic_vector(DATA_WIDTH_V - 1 downto 0);
	signal V_mem_address1 : std_logic_vector(ADDR_WIDTH_V - 1 downto 0);

	signal Out_mem_ce0 : std_logic;
	signal Out_mem_we0 : std_logic;
	signal Out_mem_din0 : std_logic_vector(DATA_WIDTH_Out - 1 downto 0);
	signal Out_mem_dout0 : std_logic_vector(DATA_WIDTH_Out - 1 downto 0);
	signal Out_mem_address0 : std_logic_vector(ADDR_WIDTH_Out - 1 downto 0);

	signal Out_mem_ce1 : std_logic;
	signal Out_mem_we1 : std_logic;
	signal Out_mem_din1 : std_logic_vector(DATA_WIDTH_Out - 1 downto 0);
	signal Out_mem_dout1 : std_logic_vector(DATA_WIDTH_Out - 1 downto 0);
	signal Out_mem_address1 : std_logic_vector(ADDR_WIDTH_Out - 1 downto 0);


	signal tb_temp_idle : std_logic:= '1';
	shared variable transaction_idx : INTEGER := 0;

begin


duv: 	 entity work.matvec
		port map (
			clk => tb_clk,
			rst => tb_rst,
			end_out => end_mem_din0,
			end_valid => tb_end_valid,
			end_ready => '1',
			M_address0 => M_mem_address0,
			M_ce0 => M_mem_ce0,
			M_we0 => M_mem_we0,
			M_din0 => M_mem_dout0,
			M_dout0 => M_mem_din0,
			M_address1 => M_mem_address1,
			M_ce1 => M_mem_ce1,
			M_we1 => M_mem_we1,
			M_din1 => M_mem_dout1,
			M_dout1 => M_mem_din1,
			V_address0 => V_mem_address0,
			V_ce0 => V_mem_ce0,
			V_we0 => V_mem_we0,
			V_din0 => V_mem_dout0,
			V_dout0 => V_mem_din0,
			V_address1 => V_mem_address1,
			V_ce1 => V_mem_ce1,
			V_we1 => V_mem_we1,
			V_din1 => V_mem_dout1,
			V_dout1 => V_mem_din1,
			Out_address0 => Out_mem_address0,
			Out_ce0 => Out_mem_ce0,
			Out_we0 => Out_mem_we0,
			Out_din0 => Out_mem_dout0,
			Out_dout0 => Out_mem_din0,
			Out_address1 => Out_mem_address1,
			Out_ce1 => Out_mem_ce1,
			Out_we1 => Out_mem_we1,
			Out_din1 => Out_mem_dout1,
			Out_dout1 => Out_mem_din1,
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

mem_inst_M:	 entity work.two_port_RAM 
	generic map(
		TV_IN => INPUT_M,
		TV_OUT => OUTPUT_M,
		DEPTH => DATA_DEPTH_M,
		DATA_WIDTH => DATA_WIDTH_M,
		ADDR_WIDTH => ADDR_WIDTH_M
	)
	port map(
		clk => tb_clk,
		rst => tb_rst,
		ce0 => M_mem_ce0,
		we0 => M_mem_we0,
		address0 => M_mem_address0,
		mem_dout0 => M_mem_dout0,
		mem_din0 => M_mem_din0,
		ce1 => M_mem_ce1,
		we1 => M_mem_we1,
		address1 => M_mem_address1,
		mem_dout1 => M_mem_dout1,
		mem_din1 => M_mem_din1,
		done => tb_temp_idle
	);

mem_inst_V:	 entity work.two_port_RAM 
	generic map(
		TV_IN => INPUT_V,
		TV_OUT => OUTPUT_V,
		DEPTH => DATA_DEPTH_V,
		DATA_WIDTH => DATA_WIDTH_V,
		ADDR_WIDTH => ADDR_WIDTH_V
	)
	port map(
		clk => tb_clk,
		rst => tb_rst,
		ce0 => V_mem_ce0,
		we0 => V_mem_we0,
		address0 => V_mem_address0,
		mem_dout0 => V_mem_dout0,
		mem_din0 => V_mem_din0,
		ce1 => V_mem_ce1,
		we1 => V_mem_we1,
		address1 => V_mem_address1,
		mem_dout1 => V_mem_dout1,
		mem_din1 => V_mem_din1,
		done => tb_temp_idle
	);

mem_inst_Out:	 entity work.two_port_RAM 
	generic map(
		TV_IN => INPUT_Out,
		TV_OUT => OUTPUT_Out,
		DEPTH => DATA_DEPTH_Out,
		DATA_WIDTH => DATA_WIDTH_Out,
		ADDR_WIDTH => ADDR_WIDTH_Out
	)
	port map(
		clk => tb_clk,
		rst => tb_rst,
		ce0 => Out_mem_ce0,
		we0 => Out_mem_we0,
		address0 => Out_mem_address0,
		mem_dout0 => Out_mem_dout0,
		mem_din0 => Out_mem_din0,
		ce1 => Out_mem_ce1,
		we1 => Out_mem_we1,
		address1 => Out_mem_address1,
		mem_dout1 => Out_mem_dout1,
		mem_din1 => Out_mem_din1,
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
write_output_transactor_Out_runtime_proc : process
	file fp             : TEXT;
	variable fstatus    : FILE_OPEN_STATUS;
	variable token_line : LINE;
	variable token      : STRING(1 to 1024);

begin
	file_open(fstatus, fp, OUTPUT_Out, WRITE_MODE);
	if (fstatus /= OPEN_OK) then
		assert false report "Open file " & OUTPUT_Out & " failed!!!" severity note;
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
	file_open(fstatus, fp, OUTPUT_Out, APPEND_MODE);
	if (fstatus /= OPEN_OK) then
		assert false report "Open file " & OUTPUT_Out & " failed!!!" severity note;
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

