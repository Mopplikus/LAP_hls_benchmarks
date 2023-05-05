module if_loop_3 (
		input  wire         clock,                //      clock.clk
		input  wire         resetn,               //      reset.reset_n
		input  wire         start,                //       call.valid
		output wire         busy,                 //           .stall
		output wire         done,                 //     return.valid
		input  wire         stall,                //           .stall
		output wire [31:0]  returndata,           // returndata.data
		input  wire [63:0]  a,                    //          a.data
		input  wire [63:0]  b,                    //          b.data
		input  wire [31:0]  n,                    //          n.data
		output wire [31:0]  avmm_1_rw_address,    //  avmm_1_rw.address
		output wire [31:0]  avmm_1_rw_byteenable, //           .byteenable
		output wire         avmm_1_rw_read,       //           .read
		input  wire [255:0] avmm_1_rw_readdata,   //           .readdata
		output wire         avmm_1_rw_write,      //           .write
		output wire [255:0] avmm_1_rw_writedata,  //           .writedata
		output wire [31:0]  avmm_4_rw_address,    //  avmm_4_rw.address
		output wire [31:0]  avmm_4_rw_byteenable, //           .byteenable
		output wire         avmm_4_rw_read,       //           .read
		input  wire [255:0] avmm_4_rw_readdata,   //           .readdata
		output wire         avmm_4_rw_write,      //           .write
		output wire [255:0] avmm_4_rw_writedata   //           .writedata
	);
endmodule

