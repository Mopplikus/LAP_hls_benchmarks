module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] stencil_2d_start
	, output logic [0:0] stencil_2d_busy
	, output logic [0:0] stencil_2d_done
	, input logic [0:0] stencil_2d_stall
	, input logic [63:0] stencil_2d_orig
	, input logic [63:0] stencil_2d_sol
	, input logic [63:0] stencil_2d_filter
	, output logic [31:0] stencil_2d_avmm_1_rw_address
	, output logic [3:0] stencil_2d_avmm_1_rw_byteenable
	, output logic [0:0] stencil_2d_avmm_1_rw_read
	, input logic [31:0] stencil_2d_avmm_1_rw_readdata
	, output logic [0:0] stencil_2d_avmm_1_rw_write
	, output logic [31:0] stencil_2d_avmm_1_rw_writedata
	);

	logic [0:0] stencil_2d_start_reg;
	logic [0:0] stencil_2d_busy_reg;
	logic [0:0] stencil_2d_done_reg;
	logic [0:0] stencil_2d_stall_reg;
	logic [63:0] stencil_2d_orig_reg;
	logic [63:0] stencil_2d_sol_reg;
	logic [63:0] stencil_2d_filter_reg;
	logic [31:0] stencil_2d_avmm_1_rw_address_reg;
	logic [3:0] stencil_2d_avmm_1_rw_byteenable_reg;
	logic [0:0] stencil_2d_avmm_1_rw_read_reg;
	logic [31:0] stencil_2d_avmm_1_rw_readdata_reg;
	logic [0:0] stencil_2d_avmm_1_rw_write_reg;
	logic [31:0] stencil_2d_avmm_1_rw_writedata_reg;


	always @(posedge clock) begin
		stencil_2d_start_reg <= stencil_2d_start;
		stencil_2d_busy <= stencil_2d_busy_reg;
		stencil_2d_done <= stencil_2d_done_reg;
		stencil_2d_stall_reg <= stencil_2d_stall;
		stencil_2d_orig_reg <= stencil_2d_orig;
		stencil_2d_sol_reg <= stencil_2d_sol;
		stencil_2d_filter_reg <= stencil_2d_filter;
		stencil_2d_avmm_1_rw_address <= stencil_2d_avmm_1_rw_address_reg;
		stencil_2d_avmm_1_rw_byteenable <= stencil_2d_avmm_1_rw_byteenable_reg;
		stencil_2d_avmm_1_rw_read <= stencil_2d_avmm_1_rw_read_reg;
		stencil_2d_avmm_1_rw_readdata_reg <= stencil_2d_avmm_1_rw_readdata;
		stencil_2d_avmm_1_rw_write <= stencil_2d_avmm_1_rw_write_reg;
		stencil_2d_avmm_1_rw_writedata <= stencil_2d_avmm_1_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	stencil_2d stencil_2d_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(stencil_2d_start_reg)
		, .busy(stencil_2d_busy_reg)
		, .done(stencil_2d_done_reg)
		, .stall(stencil_2d_stall_reg)
		, .orig(stencil_2d_orig_reg)
		, .sol(stencil_2d_sol_reg)
		, .filter(stencil_2d_filter_reg)
		, .avmm_1_rw_address(stencil_2d_avmm_1_rw_address_reg)
		, .avmm_1_rw_byteenable(stencil_2d_avmm_1_rw_byteenable_reg)
		, .avmm_1_rw_read(stencil_2d_avmm_1_rw_read_reg)
		, .avmm_1_rw_readdata(stencil_2d_avmm_1_rw_readdata_reg)
		, .avmm_1_rw_write(stencil_2d_avmm_1_rw_write_reg)
		, .avmm_1_rw_writedata(stencil_2d_avmm_1_rw_writedata_reg)
	);



endmodule
