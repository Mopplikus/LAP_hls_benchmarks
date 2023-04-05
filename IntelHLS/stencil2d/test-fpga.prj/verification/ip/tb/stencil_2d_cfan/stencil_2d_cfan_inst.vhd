	component stencil_2d_cfan is
		port (
			in_conduit : in std_logic := 'X'  -- conduit
		);
	end component stencil_2d_cfan;

	u0 : component stencil_2d_cfan
		port map (
			in_conduit => CONNECTED_TO_in_conduit  -- in_conduit.conduit
		);

