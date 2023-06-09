	component jacobi_1d_ir_cfan is
		port (
			in_conduit    : in  std_logic := 'X'; -- conduit
			out_conduit_0 : out std_logic;        -- conduit
			out_conduit_1 : out std_logic;        -- conduit
			out_conduit_2 : out std_logic         -- conduit
		);
	end component jacobi_1d_ir_cfan;

	u0 : component jacobi_1d_ir_cfan
		port map (
			in_conduit    => CONNECTED_TO_in_conduit,    --    in_conduit.conduit
			out_conduit_0 => CONNECTED_TO_out_conduit_0, -- out_conduit_0.conduit
			out_conduit_1 => CONNECTED_TO_out_conduit_1, -- out_conduit_1.conduit
			out_conduit_2 => CONNECTED_TO_out_conduit_2  -- out_conduit_2.conduit
		);

