module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] if_loop_3_start
	, output logic [0:0] if_loop_3_busy
	, output logic [0:0] if_loop_3_done
	, input logic [0:0] if_loop_3_stall
	, output logic [31:0] if_loop_3_returndata
	, input logic [63:0] if_loop_3_a
	, input logic [63:0] if_loop_3_b
	, input logic [31:0] if_loop_3_n
	, output logic [31:0] if_loop_3_avmm_1_rw_address
	, output logic [31:0] if_loop_3_avmm_1_rw_byteenable
	, output logic [0:0] if_loop_3_avmm_1_rw_read
	, input logic [255:0] if_loop_3_avmm_1_rw_readdata
	, output logic [0:0] if_loop_3_avmm_1_rw_write
	, output logic [255:0] if_loop_3_avmm_1_rw_writedata
	, output logic [31:0] if_loop_3_avmm_4_rw_address
	, output logic [31:0] if_loop_3_avmm_4_rw_byteenable
	, output logic [0:0] if_loop_3_avmm_4_rw_read
	, input logic [255:0] if_loop_3_avmm_4_rw_readdata
	, output logic [0:0] if_loop_3_avmm_4_rw_write
	, output logic [255:0] if_loop_3_avmm_4_rw_writedata
	);

	logic [0:0] if_loop_3_start_reg;
	logic [0:0] if_loop_3_busy_reg;
	logic [0:0] if_loop_3_done_reg;
	logic [0:0] if_loop_3_stall_reg;
	logic [31:0] if_loop_3_returndata_reg;
	logic [63:0] if_loop_3_a_reg;
	logic [63:0] if_loop_3_b_reg;
	logic [31:0] if_loop_3_n_reg;
	logic [31:0] if_loop_3_avmm_1_rw_address_reg;
	logic [31:0] if_loop_3_avmm_1_rw_byteenable_reg;
	logic [0:0] if_loop_3_avmm_1_rw_read_reg;
	logic [255:0] if_loop_3_avmm_1_rw_readdata_reg;
	logic [0:0] if_loop_3_avmm_1_rw_write_reg;
	logic [255:0] if_loop_3_avmm_1_rw_writedata_reg;
	logic [31:0] if_loop_3_avmm_4_rw_address_reg;
	logic [31:0] if_loop_3_avmm_4_rw_byteenable_reg;
	logic [0:0] if_loop_3_avmm_4_rw_read_reg;
	logic [255:0] if_loop_3_avmm_4_rw_readdata_reg;
	logic [0:0] if_loop_3_avmm_4_rw_write_reg;
	logic [255:0] if_loop_3_avmm_4_rw_writedata_reg;


	always @(posedge clock) begin
		if_loop_3_start_reg <= if_loop_3_start;
		if_loop_3_busy <= if_loop_3_busy_reg;
		if_loop_3_done <= if_loop_3_done_reg;
		if_loop_3_stall_reg <= if_loop_3_stall;
		if_loop_3_returndata <= if_loop_3_returndata_reg;
		if_loop_3_a_reg <= if_loop_3_a;
		if_loop_3_b_reg <= if_loop_3_b;
		if_loop_3_n_reg <= if_loop_3_n;
		if_loop_3_avmm_1_rw_address <= if_loop_3_avmm_1_rw_address_reg;
		if_loop_3_avmm_1_rw_byteenable <= if_loop_3_avmm_1_rw_byteenable_reg;
		if_loop_3_avmm_1_rw_read <= if_loop_3_avmm_1_rw_read_reg;
		if_loop_3_avmm_1_rw_readdata_reg <= if_loop_3_avmm_1_rw_readdata;
		if_loop_3_avmm_1_rw_write <= if_loop_3_avmm_1_rw_write_reg;
		if_loop_3_avmm_1_rw_writedata <= if_loop_3_avmm_1_rw_writedata_reg;
		if_loop_3_avmm_4_rw_address <= if_loop_3_avmm_4_rw_address_reg;
		if_loop_3_avmm_4_rw_byteenable <= if_loop_3_avmm_4_rw_byteenable_reg;
		if_loop_3_avmm_4_rw_read <= if_loop_3_avmm_4_rw_read_reg;
		if_loop_3_avmm_4_rw_readdata_reg <= if_loop_3_avmm_4_rw_readdata;
		if_loop_3_avmm_4_rw_write <= if_loop_3_avmm_4_rw_write_reg;
		if_loop_3_avmm_4_rw_writedata <= if_loop_3_avmm_4_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	if_loop_3 if_loop_3_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(if_loop_3_start_reg)
		, .busy(if_loop_3_busy_reg)
		, .done(if_loop_3_done_reg)
		, .stall(if_loop_3_stall_reg)
		, .returndata(if_loop_3_returndata_reg)
		, .a(if_loop_3_a_reg)
		, .b(if_loop_3_b_reg)
		, .n(if_loop_3_n_reg)
		, .avmm_1_rw_address(if_loop_3_avmm_1_rw_address_reg)
		, .avmm_1_rw_byteenable(if_loop_3_avmm_1_rw_byteenable_reg)
		, .avmm_1_rw_read(if_loop_3_avmm_1_rw_read_reg)
		, .avmm_1_rw_readdata(if_loop_3_avmm_1_rw_readdata_reg)
		, .avmm_1_rw_write(if_loop_3_avmm_1_rw_write_reg)
		, .avmm_1_rw_writedata(if_loop_3_avmm_1_rw_writedata_reg)
		, .avmm_4_rw_address(if_loop_3_avmm_4_rw_address_reg)
		, .avmm_4_rw_byteenable(if_loop_3_avmm_4_rw_byteenable_reg)
		, .avmm_4_rw_read(if_loop_3_avmm_4_rw_read_reg)
		, .avmm_4_rw_readdata(if_loop_3_avmm_4_rw_readdata_reg)
		, .avmm_4_rw_write(if_loop_3_avmm_4_rw_write_reg)
		, .avmm_4_rw_writedata(if_loop_3_avmm_4_rw_writedata_reg)
	);



endmodule
