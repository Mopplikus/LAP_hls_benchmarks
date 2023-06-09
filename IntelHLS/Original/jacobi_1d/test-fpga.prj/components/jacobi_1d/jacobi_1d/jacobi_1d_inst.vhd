	component jacobi_1d is
		port (
			clock  : in  std_logic                     := 'X';             -- clk
			resetn : in  std_logic                     := 'X';             -- reset_n
			start  : in  std_logic                     := 'X';             -- valid
			busy   : out std_logic;                                        -- stall
			done   : out std_logic;                                        -- valid
			stall  : in  std_logic                     := 'X';             -- stall
			A_1    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			A_2    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			B      : in  std_logic_vector(63 downto 0) := (others => 'X')  -- data
		);
	end component jacobi_1d;

	u0 : component jacobi_1d
		port map (
			clock  => CONNECTED_TO_clock,  --  clock.clk
			resetn => CONNECTED_TO_resetn, --  reset.reset_n
			start  => CONNECTED_TO_start,  --   call.valid
			busy   => CONNECTED_TO_busy,   --       .stall
			done   => CONNECTED_TO_done,   -- return.valid
			stall  => CONNECTED_TO_stall,  --       .stall
			A_1    => CONNECTED_TO_A_1,    --    A_1.data
			A_2    => CONNECTED_TO_A_2,    --    A_2.data
			B      => CONNECTED_TO_B       --      B.data
		);

