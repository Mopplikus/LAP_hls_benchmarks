	component triangular is
		port (
			clock  : in  std_logic                     := 'X';             -- clk
			resetn : in  std_logic                     := 'X';             -- reset_n
			start  : in  std_logic                     := 'X';             -- valid
			busy   : out std_logic;                                        -- stall
			done   : out std_logic;                                        -- valid
			stall  : in  std_logic                     := 'X';             -- stall
			x      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			A      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			n      : in  std_logic_vector(31 downto 0) := (others => 'X')  -- data
		);
	end component triangular;

	u0 : component triangular
		port map (
			clock  => CONNECTED_TO_clock,  --  clock.clk
			resetn => CONNECTED_TO_resetn, --  reset.reset_n
			start  => CONNECTED_TO_start,  --   call.valid
			busy   => CONNECTED_TO_busy,   --       .stall
			done   => CONNECTED_TO_done,   -- return.valid
			stall  => CONNECTED_TO_stall,  --       .stall
			x      => CONNECTED_TO_x,      --      x.data
			A      => CONNECTED_TO_A,      --      A.data
			n      => CONNECTED_TO_n       --      n.data
		);

