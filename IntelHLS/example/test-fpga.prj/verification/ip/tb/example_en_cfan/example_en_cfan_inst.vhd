	component example_en_cfan is
		port (
			in_conduit : in std_logic := 'X'  -- conduit
		);
	end component example_en_cfan;

	u0 : component example_en_cfan
		port map (
			in_conduit => CONNECTED_TO_in_conduit  -- in_conduit.conduit
		);

