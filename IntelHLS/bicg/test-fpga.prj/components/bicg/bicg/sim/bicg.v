// bicg.v

// Generated using ACDS version 21.4 67

`timescale 1 ps / 1 ps
module bicg (
		input  wire        clock,                //     clock.clk
		input  wire        resetn,               //     reset.reset_n
		input  wire        start,                //      call.valid
		output wire        busy,                 //          .stall
		output wire        done,                 //    return.valid
		input  wire        stall,                //          .stall
		input  wire [63:0] A,                    //         A.data
		input  wire [63:0] s,                    //         s.data
		input  wire [63:0] q,                    //         q.data
		input  wire [63:0] p,                    //         p.data
		input  wire [63:0] r,                    //         r.data
		output wire [63:0] avmm_0_rw_address,    // avmm_0_rw.address
		output wire [7:0]  avmm_0_rw_byteenable, //          .byteenable
		output wire        avmm_0_rw_read,       //          .read
		input  wire [63:0] avmm_0_rw_readdata,   //          .readdata
		output wire        avmm_0_rw_write,      //          .write
		output wire [63:0] avmm_0_rw_writedata   //          .writedata
	);

	bicg_internal bicg_internal_inst (
		.clock                (clock),                //   input,   width = 1,     clock.clk
		.resetn               (resetn),               //   input,   width = 1,     reset.reset_n
		.start                (start),                //   input,   width = 1,      call.valid
		.busy                 (busy),                 //  output,   width = 1,          .stall
		.done                 (done),                 //  output,   width = 1,    return.valid
		.stall                (stall),                //   input,   width = 1,          .stall
		.A                    (A),                    //   input,  width = 64,         A.data
		.s                    (s),                    //   input,  width = 64,         s.data
		.q                    (q),                    //   input,  width = 64,         q.data
		.p                    (p),                    //   input,  width = 64,         p.data
		.r                    (r),                    //   input,  width = 64,         r.data
		.avmm_0_rw_address    (avmm_0_rw_address),    //  output,  width = 64, avmm_0_rw.address
		.avmm_0_rw_byteenable (avmm_0_rw_byteenable), //  output,   width = 8,          .byteenable
		.avmm_0_rw_read       (avmm_0_rw_read),       //  output,   width = 1,          .read
		.avmm_0_rw_readdata   (avmm_0_rw_readdata),   //   input,  width = 64,          .readdata
		.avmm_0_rw_write      (avmm_0_rw_write),      //  output,   width = 1,          .write
		.avmm_0_rw_writedata  (avmm_0_rw_writedata)   //  output,  width = 64,          .writedata
	);

endmodule
