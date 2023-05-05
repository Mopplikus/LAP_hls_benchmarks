	if_loop_3 u0 (
		.clock                (_connected_to_clock_),                //   input,    width = 1,      clock.clk
		.resetn               (_connected_to_resetn_),               //   input,    width = 1,      reset.reset_n
		.start                (_connected_to_start_),                //   input,    width = 1,       call.valid
		.busy                 (_connected_to_busy_),                 //  output,    width = 1,           .stall
		.done                 (_connected_to_done_),                 //  output,    width = 1,     return.valid
		.stall                (_connected_to_stall_),                //   input,    width = 1,           .stall
		.returndata           (_connected_to_returndata_),           //  output,   width = 32, returndata.data
		.a                    (_connected_to_a_),                    //   input,   width = 64,          a.data
		.b                    (_connected_to_b_),                    //   input,   width = 64,          b.data
		.n                    (_connected_to_n_),                    //   input,   width = 32,          n.data
		.avmm_1_rw_address    (_connected_to_avmm_1_rw_address_),    //  output,   width = 32,  avmm_1_rw.address
		.avmm_1_rw_byteenable (_connected_to_avmm_1_rw_byteenable_), //  output,   width = 32,           .byteenable
		.avmm_1_rw_read       (_connected_to_avmm_1_rw_read_),       //  output,    width = 1,           .read
		.avmm_1_rw_readdata   (_connected_to_avmm_1_rw_readdata_),   //   input,  width = 256,           .readdata
		.avmm_1_rw_write      (_connected_to_avmm_1_rw_write_),      //  output,    width = 1,           .write
		.avmm_1_rw_writedata  (_connected_to_avmm_1_rw_writedata_),  //  output,  width = 256,           .writedata
		.avmm_4_rw_address    (_connected_to_avmm_4_rw_address_),    //  output,   width = 32,  avmm_4_rw.address
		.avmm_4_rw_byteenable (_connected_to_avmm_4_rw_byteenable_), //  output,   width = 32,           .byteenable
		.avmm_4_rw_read       (_connected_to_avmm_4_rw_read_),       //  output,    width = 1,           .read
		.avmm_4_rw_readdata   (_connected_to_avmm_4_rw_readdata_),   //   input,  width = 256,           .readdata
		.avmm_4_rw_write      (_connected_to_avmm_4_rw_write_),      //  output,    width = 1,           .write
		.avmm_4_rw_writedata  (_connected_to_avmm_4_rw_writedata_)   //  output,  width = 256,           .writedata
	);

