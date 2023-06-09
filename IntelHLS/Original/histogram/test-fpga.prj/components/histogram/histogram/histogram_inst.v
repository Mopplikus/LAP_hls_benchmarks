	histogram u0 (
		.clock  (_connected_to_clock_),  //   input,   width = 1,  clock.clk
		.resetn (_connected_to_resetn_), //   input,   width = 1,  reset.reset_n
		.start  (_connected_to_start_),  //   input,   width = 1,   call.valid
		.busy   (_connected_to_busy_),   //  output,   width = 1,       .stall
		.done   (_connected_to_done_),   //  output,   width = 1, return.valid
		.stall  (_connected_to_stall_),  //   input,   width = 1,       .stall
		.hist_r (_connected_to_hist_r_), //   input,  width = 64, hist_r.data
		.n      (_connected_to_n_)       //   input,  width = 32,      n.data
	);

