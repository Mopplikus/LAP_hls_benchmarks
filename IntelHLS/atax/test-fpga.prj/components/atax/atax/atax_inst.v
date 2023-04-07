	atax u0 (
		.clock  (_connected_to_clock_),  //   input,   width = 1,  clock.clk
		.resetn (_connected_to_resetn_), //   input,   width = 1,  reset.reset_n
		.start  (_connected_to_start_),  //   input,   width = 1,   call.valid
		.busy   (_connected_to_busy_),   //  output,   width = 1,       .stall
		.done   (_connected_to_done_),   //  output,   width = 1, return.valid
		.stall  (_connected_to_stall_),  //   input,   width = 1,       .stall
		.A      (_connected_to_A_),      //   input,  width = 64,      A.data
		.x      (_connected_to_x_),      //   input,  width = 64,      x.data
		.y      (_connected_to_y_),      //   input,  width = 64,      y.data
		.tmp    (_connected_to_tmp_)     //   input,  width = 64,    tmp.data
	);

