	kernel_3mm u0 (
		.clock  (_connected_to_clock_),  //   input,   width = 1,  clock.clk
		.resetn (_connected_to_resetn_), //   input,   width = 1,  reset.reset_n
		.start  (_connected_to_start_),  //   input,   width = 1,   call.valid
		.busy   (_connected_to_busy_),   //  output,   width = 1,       .stall
		.done   (_connected_to_done_),   //  output,   width = 1, return.valid
		.stall  (_connected_to_stall_),  //   input,   width = 1,       .stall
		.A      (_connected_to_A_),      //   input,  width = 64,      A.data
		.B      (_connected_to_B_),      //   input,  width = 64,      B.data
		.C      (_connected_to_C_),      //   input,  width = 64,      C.data
		.D      (_connected_to_D_),      //   input,  width = 64,      D.data
		.E      (_connected_to_E_),      //   input,  width = 64,      E.data
		.F      (_connected_to_F_),      //   input,  width = 64,      F.data
		.G      (_connected_to_G_)       //   input,  width = 64,      G.data
	);

