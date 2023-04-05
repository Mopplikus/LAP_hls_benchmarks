module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] kernel_3mm_start
	, output logic [0:0] kernel_3mm_busy
	, output logic [0:0] kernel_3mm_done
	, input logic [0:0] kernel_3mm_stall
	, input logic [63:0] kernel_3mm_A
	, input logic [63:0] kernel_3mm_B
	, input logic [63:0] kernel_3mm_C
	, input logic [63:0] kernel_3mm_D
	, input logic [63:0] kernel_3mm_E
	, input logic [63:0] kernel_3mm_F
	, input logic [63:0] kernel_3mm_G
	, output logic [63:0] kernel_3mm_avmm_0_rw_address
	, output logic [7:0] kernel_3mm_avmm_0_rw_byteenable
	, output logic [0:0] kernel_3mm_avmm_0_rw_read
	, input logic [63:0] kernel_3mm_avmm_0_rw_readdata
	, output logic [0:0] kernel_3mm_avmm_0_rw_write
	, output logic [63:0] kernel_3mm_avmm_0_rw_writedata
	);

	logic [0:0] kernel_3mm_start_reg;
	logic [0:0] kernel_3mm_busy_reg;
	logic [0:0] kernel_3mm_done_reg;
	logic [0:0] kernel_3mm_stall_reg;
	logic [63:0] kernel_3mm_A_reg;
	logic [63:0] kernel_3mm_B_reg;
	logic [63:0] kernel_3mm_C_reg;
	logic [63:0] kernel_3mm_D_reg;
	logic [63:0] kernel_3mm_E_reg;
	logic [63:0] kernel_3mm_F_reg;
	logic [63:0] kernel_3mm_G_reg;
	logic [63:0] kernel_3mm_avmm_0_rw_address_reg;
	logic [7:0] kernel_3mm_avmm_0_rw_byteenable_reg;
	logic [0:0] kernel_3mm_avmm_0_rw_read_reg;
	logic [63:0] kernel_3mm_avmm_0_rw_readdata_reg;
	logic [0:0] kernel_3mm_avmm_0_rw_write_reg;
	logic [63:0] kernel_3mm_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		kernel_3mm_start_reg <= kernel_3mm_start;
		kernel_3mm_busy <= kernel_3mm_busy_reg;
		kernel_3mm_done <= kernel_3mm_done_reg;
		kernel_3mm_stall_reg <= kernel_3mm_stall;
		kernel_3mm_A_reg <= kernel_3mm_A;
		kernel_3mm_B_reg <= kernel_3mm_B;
		kernel_3mm_C_reg <= kernel_3mm_C;
		kernel_3mm_D_reg <= kernel_3mm_D;
		kernel_3mm_E_reg <= kernel_3mm_E;
		kernel_3mm_F_reg <= kernel_3mm_F;
		kernel_3mm_G_reg <= kernel_3mm_G;
		kernel_3mm_avmm_0_rw_address <= kernel_3mm_avmm_0_rw_address_reg;
		kernel_3mm_avmm_0_rw_byteenable <= kernel_3mm_avmm_0_rw_byteenable_reg;
		kernel_3mm_avmm_0_rw_read <= kernel_3mm_avmm_0_rw_read_reg;
		kernel_3mm_avmm_0_rw_readdata_reg <= kernel_3mm_avmm_0_rw_readdata;
		kernel_3mm_avmm_0_rw_write <= kernel_3mm_avmm_0_rw_write_reg;
		kernel_3mm_avmm_0_rw_writedata <= kernel_3mm_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	kernel_3mm kernel_3mm_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(kernel_3mm_start_reg)
		, .busy(kernel_3mm_busy_reg)
		, .done(kernel_3mm_done_reg)
		, .stall(kernel_3mm_stall_reg)
		, .A(kernel_3mm_A_reg)
		, .B(kernel_3mm_B_reg)
		, .C(kernel_3mm_C_reg)
		, .D(kernel_3mm_D_reg)
		, .E(kernel_3mm_E_reg)
		, .F(kernel_3mm_F_reg)
		, .G(kernel_3mm_G_reg)
		, .avmm_0_rw_address(kernel_3mm_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(kernel_3mm_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(kernel_3mm_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(kernel_3mm_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(kernel_3mm_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(kernel_3mm_avmm_0_rw_writedata_reg)
	);



endmodule
