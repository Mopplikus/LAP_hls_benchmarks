module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] getTanh_start
	, output logic [0:0] getTanh_busy
	, output logic [0:0] getTanh_done
	, input logic [0:0] getTanh_stall
	, output logic [31:0] getTanh_returndata
	, input logic [63:0] getTanh_A
	, input logic [63:0] getTanh_addr
	, output logic [31:0] getTanh_avmm_1_rw_address
	, output logic [3:0] getTanh_avmm_1_rw_byteenable
	, output logic [0:0] getTanh_avmm_1_rw_read
	, input logic [31:0] getTanh_avmm_1_rw_readdata
	, output logic [0:0] getTanh_avmm_1_rw_write
	, output logic [31:0] getTanh_avmm_1_rw_writedata
	);

	logic [0:0] getTanh_start_reg;
	logic [0:0] getTanh_busy_reg;
	logic [0:0] getTanh_done_reg;
	logic [0:0] getTanh_stall_reg;
	logic [31:0] getTanh_returndata_reg;
	logic [63:0] getTanh_A_reg;
	logic [63:0] getTanh_addr_reg;
	logic [31:0] getTanh_avmm_1_rw_address_reg;
	logic [3:0] getTanh_avmm_1_rw_byteenable_reg;
	logic [0:0] getTanh_avmm_1_rw_read_reg;
	logic [31:0] getTanh_avmm_1_rw_readdata_reg;
	logic [0:0] getTanh_avmm_1_rw_write_reg;
	logic [31:0] getTanh_avmm_1_rw_writedata_reg;


	always @(posedge clock) begin
		getTanh_start_reg <= getTanh_start;
		getTanh_busy <= getTanh_busy_reg;
		getTanh_done <= getTanh_done_reg;
		getTanh_stall_reg <= getTanh_stall;
		getTanh_returndata <= getTanh_returndata_reg;
		getTanh_A_reg <= getTanh_A;
		getTanh_addr_reg <= getTanh_addr;
		getTanh_avmm_1_rw_address <= getTanh_avmm_1_rw_address_reg;
		getTanh_avmm_1_rw_byteenable <= getTanh_avmm_1_rw_byteenable_reg;
		getTanh_avmm_1_rw_read <= getTanh_avmm_1_rw_read_reg;
		getTanh_avmm_1_rw_readdata_reg <= getTanh_avmm_1_rw_readdata;
		getTanh_avmm_1_rw_write <= getTanh_avmm_1_rw_write_reg;
		getTanh_avmm_1_rw_writedata <= getTanh_avmm_1_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	getTanh getTanh_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(getTanh_start_reg)
		, .busy(getTanh_busy_reg)
		, .done(getTanh_done_reg)
		, .stall(getTanh_stall_reg)
		, .returndata(getTanh_returndata_reg)
		, .A(getTanh_A_reg)
		, .addr(getTanh_addr_reg)
		, .avmm_1_rw_address(getTanh_avmm_1_rw_address_reg)
		, .avmm_1_rw_byteenable(getTanh_avmm_1_rw_byteenable_reg)
		, .avmm_1_rw_read(getTanh_avmm_1_rw_read_reg)
		, .avmm_1_rw_readdata(getTanh_avmm_1_rw_readdata_reg)
		, .avmm_1_rw_write(getTanh_avmm_1_rw_write_reg)
		, .avmm_1_rw_writedata(getTanh_avmm_1_rw_writedata_reg)
	);



endmodule
