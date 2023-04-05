module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] example_start
	, output logic [0:0] example_busy
	, output logic [0:0] example_done
	, input logic [0:0] example_stall
	, output logic [31:0] example_returndata
	, input logic [63:0] example_A
	, input logic [63:0] example_B
	, output logic [63:0] example_avmm_0_rw_address
	, output logic [7:0] example_avmm_0_rw_byteenable
	, output logic [0:0] example_avmm_0_rw_read
	, input logic [63:0] example_avmm_0_rw_readdata
	, output logic [0:0] example_avmm_0_rw_write
	, output logic [63:0] example_avmm_0_rw_writedata
	);

	logic [0:0] example_start_reg;
	logic [0:0] example_busy_reg;
	logic [0:0] example_done_reg;
	logic [0:0] example_stall_reg;
	logic [31:0] example_returndata_reg;
	logic [63:0] example_A_reg;
	logic [63:0] example_B_reg;
	logic [63:0] example_avmm_0_rw_address_reg;
	logic [7:0] example_avmm_0_rw_byteenable_reg;
	logic [0:0] example_avmm_0_rw_read_reg;
	logic [63:0] example_avmm_0_rw_readdata_reg;
	logic [0:0] example_avmm_0_rw_write_reg;
	logic [63:0] example_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		example_start_reg <= example_start;
		example_busy <= example_busy_reg;
		example_done <= example_done_reg;
		example_stall_reg <= example_stall;
		example_returndata <= example_returndata_reg;
		example_A_reg <= example_A;
		example_B_reg <= example_B;
		example_avmm_0_rw_address <= example_avmm_0_rw_address_reg;
		example_avmm_0_rw_byteenable <= example_avmm_0_rw_byteenable_reg;
		example_avmm_0_rw_read <= example_avmm_0_rw_read_reg;
		example_avmm_0_rw_readdata_reg <= example_avmm_0_rw_readdata;
		example_avmm_0_rw_write <= example_avmm_0_rw_write_reg;
		example_avmm_0_rw_writedata <= example_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	example example_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(example_start_reg)
		, .busy(example_busy_reg)
		, .done(example_done_reg)
		, .stall(example_stall_reg)
		, .returndata(example_returndata_reg)
		, .A(example_A_reg)
		, .B(example_B_reg)
		, .avmm_0_rw_address(example_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(example_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(example_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(example_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(example_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(example_avmm_0_rw_writedata_reg)
	);



endmodule
