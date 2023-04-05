module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] histogram_start
	, output logic [0:0] histogram_busy
	, output logic [0:0] histogram_done
	, input logic [0:0] histogram_stall
	, input logic [63:0] histogram_hist_r
	, input logic [31:0] histogram_n
	, output logic [63:0] histogram_avmm_0_rw_address
	, output logic [7:0] histogram_avmm_0_rw_byteenable
	, output logic [0:0] histogram_avmm_0_rw_read
	, input logic [63:0] histogram_avmm_0_rw_readdata
	, output logic [0:0] histogram_avmm_0_rw_write
	, output logic [63:0] histogram_avmm_0_rw_writedata
	);

	logic [0:0] histogram_start_reg;
	logic [0:0] histogram_busy_reg;
	logic [0:0] histogram_done_reg;
	logic [0:0] histogram_stall_reg;
	logic [63:0] histogram_hist_r_reg;
	logic [31:0] histogram_n_reg;
	logic [63:0] histogram_avmm_0_rw_address_reg;
	logic [7:0] histogram_avmm_0_rw_byteenable_reg;
	logic [0:0] histogram_avmm_0_rw_read_reg;
	logic [63:0] histogram_avmm_0_rw_readdata_reg;
	logic [0:0] histogram_avmm_0_rw_write_reg;
	logic [63:0] histogram_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		histogram_start_reg <= histogram_start;
		histogram_busy <= histogram_busy_reg;
		histogram_done <= histogram_done_reg;
		histogram_stall_reg <= histogram_stall;
		histogram_hist_r_reg <= histogram_hist_r;
		histogram_n_reg <= histogram_n;
		histogram_avmm_0_rw_address <= histogram_avmm_0_rw_address_reg;
		histogram_avmm_0_rw_byteenable <= histogram_avmm_0_rw_byteenable_reg;
		histogram_avmm_0_rw_read <= histogram_avmm_0_rw_read_reg;
		histogram_avmm_0_rw_readdata_reg <= histogram_avmm_0_rw_readdata;
		histogram_avmm_0_rw_write <= histogram_avmm_0_rw_write_reg;
		histogram_avmm_0_rw_writedata <= histogram_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	histogram histogram_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(histogram_start_reg)
		, .busy(histogram_busy_reg)
		, .done(histogram_done_reg)
		, .stall(histogram_stall_reg)
		, .hist_r(histogram_hist_r_reg)
		, .n(histogram_n_reg)
		, .avmm_0_rw_address(histogram_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(histogram_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(histogram_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(histogram_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(histogram_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(histogram_avmm_0_rw_writedata_reg)
	);



endmodule
