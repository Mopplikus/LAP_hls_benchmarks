	bicg u0 (
		.clock  (_connected_to_clock_),  //   input,   width = 1,  clock.clk
		.resetn (_connected_to_resetn_), //   input,   width = 1,  reset.reset_n
		.start  (_connected_to_start_),  //   input,   width = 1,   call.valid
		.busy   (_connected_to_busy_),   //  output,   width = 1,       .stall
		.done   (_connected_to_done_),   //  output,   width = 1, return.valid
		.stall  (_connected_to_stall_),  //   input,   width = 1,       .stall
		.A      (_connected_to_A_),      //   input,  width = 64,      A.data
		.s      (_connected_to_s_),      //   input,  width = 64,      s.data
		.q      (_connected_to_q_),      //   input,  width = 64,      q.data
		.p      (_connected_to_p_),      //   input,  width = 64,      p.data
		.r      (_connected_to_r_)       //   input,  width = 64,      r.data
	);

