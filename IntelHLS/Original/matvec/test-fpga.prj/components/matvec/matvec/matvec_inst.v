	matvec u0 (
		.clock  (_connected_to_clock_),  //   input,   width = 1,  clock.clk
		.resetn (_connected_to_resetn_), //   input,   width = 1,  reset.reset_n
		.start  (_connected_to_start_),  //   input,   width = 1,   call.valid
		.busy   (_connected_to_busy_),   //  output,   width = 1,       .stall
		.done   (_connected_to_done_),   //  output,   width = 1, return.valid
		.stall  (_connected_to_stall_),  //   input,   width = 1,       .stall
		.M      (_connected_to_M_),      //   input,  width = 64,      M.data
		.V      (_connected_to_V_),      //   input,  width = 64,      V.data
		.Out0   (_connected_to_Out0_)    //   input,  width = 64,   Out0.data
	);

