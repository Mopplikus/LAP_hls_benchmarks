// tb_if_loop_2_inst.v

// Generated using ACDS version 21.1 850

`timescale 1 ps / 1 ps
module tb_if_loop_2_inst (
		input  wire [63:0] a,                    //          a.data
		output wire [31:0] avmm_1_rw_address,    //  avmm_1_rw.address
		output wire [3:0]  avmm_1_rw_byteenable, //           .byteenable
		output wire        avmm_1_rw_read,       //           .read
		input  wire [31:0] avmm_1_rw_readdata,   //           .readdata
		output wire        avmm_1_rw_write,      //           .write
		output wire [31:0] avmm_1_rw_writedata,  //           .writedata
		input  wire        start,                //       call.valid
		output wire        busy,                 //           .stall
		input  wire        clock,                //      clock.clk
		input  wire [31:0] n,                    //          n.data
		input  wire        resetn,               //      reset.reset_n
		output wire        done,                 //     return.valid
		input  wire        stall,                //           .stall
		output wire [31:0] returndata            // returndata.data
	);

	if_loop_2_internal if_loop_2_internal_inst (
		.clock                (clock),                //      clock.clk
		.resetn               (resetn),               //      reset.reset_n
		.start                (start),                //       call.valid
		.busy                 (busy),                 //           .stall
		.done                 (done),                 //     return.valid
		.stall                (stall),                //           .stall
		.returndata           (returndata),           // returndata.data
		.a                    (a),                    //          a.data
		.n                    (n),                    //          n.data
		.avmm_1_rw_address    (avmm_1_rw_address),    //  avmm_1_rw.address
		.avmm_1_rw_byteenable (avmm_1_rw_byteenable), //           .byteenable
		.avmm_1_rw_read       (avmm_1_rw_read),       //           .read
		.avmm_1_rw_readdata   (avmm_1_rw_readdata),   //           .readdata
		.avmm_1_rw_write      (avmm_1_rw_write),      //           .write
		.avmm_1_rw_writedata  (avmm_1_rw_writedata)   //           .writedata
	);

endmodule
