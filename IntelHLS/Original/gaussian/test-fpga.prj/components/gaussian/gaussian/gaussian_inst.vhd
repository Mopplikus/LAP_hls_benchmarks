	component gaussian is
		port (
			clock  : in  std_logic                     := 'X';             -- clk
			resetn : in  std_logic                     := 'X';             -- reset_n
			start  : in  std_logic                     := 'X';             -- valid
			busy   : out std_logic;                                        -- stall
			done   : out std_logic;                                        -- valid
			stall  : in  std_logic                     := 'X';             -- stall
			A_r    : in  std_logic_vector(63 downto 0) := (others => 'X')  -- data
		);
	end component gaussian;

	u0 : component gaussian
		port map (
			clock  => CONNECTED_TO_clock,  --  clock.clk
			resetn => CONNECTED_TO_resetn, --  reset.reset_n
			start  => CONNECTED_TO_start,  --   call.valid
			busy   => CONNECTED_TO_busy,   --       .stall
			done   => CONNECTED_TO_done,   -- return.valid
			stall  => CONNECTED_TO_stall,  --       .stall
			A_r    => CONNECTED_TO_A_r     --    A_r.data
		);

