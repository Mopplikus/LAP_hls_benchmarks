module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] gaussian_start
	, output logic [0:0] gaussian_busy
	, output logic [0:0] gaussian_done
	, input logic [0:0] gaussian_stall
	, input logic [63:0] gaussian_A_r
	, output logic [63:0] gaussian_avmm_0_rw_address
	, output logic [7:0] gaussian_avmm_0_rw_byteenable
	, output logic [0:0] gaussian_avmm_0_rw_read
	, input logic [63:0] gaussian_avmm_0_rw_readdata
	, output logic [0:0] gaussian_avmm_0_rw_write
	, output logic [63:0] gaussian_avmm_0_rw_writedata
	);

	logic [0:0] gaussian_start_reg;
	logic [0:0] gaussian_busy_reg;
	logic [0:0] gaussian_done_reg;
	logic [0:0] gaussian_stall_reg;
	logic [63:0] gaussian_A_r_reg;
	logic [63:0] gaussian_avmm_0_rw_address_reg;
	logic [7:0] gaussian_avmm_0_rw_byteenable_reg;
	logic [0:0] gaussian_avmm_0_rw_read_reg;
	logic [63:0] gaussian_avmm_0_rw_readdata_reg;
	logic [0:0] gaussian_avmm_0_rw_write_reg;
	logic [63:0] gaussian_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		gaussian_start_reg <= gaussian_start;
		gaussian_busy <= gaussian_busy_reg;
		gaussian_done <= gaussian_done_reg;
		gaussian_stall_reg <= gaussian_stall;
		gaussian_A_r_reg <= gaussian_A_r;
		gaussian_avmm_0_rw_address <= gaussian_avmm_0_rw_address_reg;
		gaussian_avmm_0_rw_byteenable <= gaussian_avmm_0_rw_byteenable_reg;
		gaussian_avmm_0_rw_read <= gaussian_avmm_0_rw_read_reg;
		gaussian_avmm_0_rw_readdata_reg <= gaussian_avmm_0_rw_readdata;
		gaussian_avmm_0_rw_write <= gaussian_avmm_0_rw_write_reg;
		gaussian_avmm_0_rw_writedata <= gaussian_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	gaussian gaussian_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(gaussian_start_reg)
		, .busy(gaussian_busy_reg)
		, .done(gaussian_done_reg)
		, .stall(gaussian_stall_reg)
		, .A_r(gaussian_A_r_reg)
		, .avmm_0_rw_address(gaussian_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(gaussian_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(gaussian_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(gaussian_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(gaussian_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(gaussian_avmm_0_rw_writedata_reg)
	);



endmodule
