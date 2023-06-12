	jacobi_1d u0 (
		.clock  (_connected_to_clock_),  //   input,   width = 1,  clock.clk
		.resetn (_connected_to_resetn_), //   input,   width = 1,  reset.reset_n
		.start  (_connected_to_start_),  //   input,   width = 1,   call.valid
		.busy   (_connected_to_busy_),   //  output,   width = 1,       .stall
		.done   (_connected_to_done_),   //  output,   width = 1, return.valid
		.stall  (_connected_to_stall_),  //   input,   width = 1,       .stall
		.A_1    (_connected_to_A_1_),    //   input,  width = 64,    A_1.data
		.A_2    (_connected_to_A_2_),    //   input,  width = 64,    A_2.data
		.B      (_connected_to_B_)       //   input,  width = 64,      B.data
	);

