	component kernel_3mm is
		port (
			clock  : in  std_logic                     := 'X';             -- clk
			resetn : in  std_logic                     := 'X';             -- reset_n
			start  : in  std_logic                     := 'X';             -- valid
			busy   : out std_logic;                                        -- stall
			done   : out std_logic;                                        -- valid
			stall  : in  std_logic                     := 'X';             -- stall
			A      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			B      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			C      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			D      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			E      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			F      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			G      : in  std_logic_vector(63 downto 0) := (others => 'X')  -- data
		);
	end component kernel_3mm;

	u0 : component kernel_3mm
		port map (
			clock  => CONNECTED_TO_clock,  --  clock.clk
			resetn => CONNECTED_TO_resetn, --  reset.reset_n
			start  => CONNECTED_TO_start,  --   call.valid
			busy   => CONNECTED_TO_busy,   --       .stall
			done   => CONNECTED_TO_done,   -- return.valid
			stall  => CONNECTED_TO_stall,  --       .stall
			A      => CONNECTED_TO_A,      --      A.data
			B      => CONNECTED_TO_B,      --      B.data
			C      => CONNECTED_TO_C,      --      C.data
			D      => CONNECTED_TO_D,      --      D.data
			E      => CONNECTED_TO_E,      --      E.data
			F      => CONNECTED_TO_F,      --      F.data
			G      => CONNECTED_TO_G       --      G.data
		);

