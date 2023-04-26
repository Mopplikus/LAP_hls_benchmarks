module cpm5n_v1_0_1_FIFOAsyncNoHead
  import cpm5n_v1_0_1_pkg::*;
#(
  parameter BUF_DATAWIDTH = 256,
  parameter BUF_WE = BUF_DATAWIDTH/8,
  parameter BUF_DEPTH = 512,
  parameter BUF_PTR =
    (BUF_DEPTH <=2) ? 1:
    (BUF_DEPTH <=4) ? 2:
    (BUF_DEPTH <=8) ? 3:
    (BUF_DEPTH <=16) ? 4:
    (BUF_DEPTH <=32) ? 5:
    (BUF_DEPTH <=64) ? 6:
    (BUF_DEPTH <=128) ? 7:
    (BUF_DEPTH <=256) ? 8:
    (BUF_DEPTH <=512) ? 9:
    (BUF_DEPTH <=1024) ? 10 : -1
)
(
  input clkin,
  input reset_n,
  input clkout,
  input reseto_n,
  input [BUF_DATAWIDTH-1:0] DataIn,
  output [BUF_DATAWIDTH-1:0] DataOut,
  input WrEn,
  input RdEn,
  output almost_empty,
  output almost_full,
  output empty,
  output full
 );
(* ram_style = "DISTRIBUTED" *)
   reg [BUF_DATAWIDTH-1:0] MemArray [BUF_DEPTH-1:0];
   reg [BUF_PTR-1:0] WrPtr;
   reg [BUF_PTR-1:0] RdPtr;
   reg [BUF_PTR:0] FifoCntrWr;
   reg [BUF_PTR:0] FifoCntrRd;
   wire WriteQ, RdDeQ;
   reg almost_empty_ff;
   reg almost_full_ff;
   reg empty_ff;
   reg full_ff;
   assign WriteQ = WrEn;
   assign RdDeQ = RdEn;

   assign DataOut = MemArray[RdPtr];

   assign almost_empty = almost_empty_ff;
   assign almost_full = almost_full_ff;
   assign empty = empty_ff;
   assign full = full_ff;
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
         WrPtr <= 'd0;
    end
        else if (WrEn) begin
        WrPtr <= WrPtr + 'd1;
        end
    end

    `XLREG_XDMA(clkin, reset_n) begin
         if (~reset_n) begin
            RdPtr <= 'd0;
    end else if (RdEn) begin
          RdPtr <= RdPtr + 'd1;
    end
   end

`ifdef SOFT_IP
   always @ (posedge clkin) begin
        if (WrEn)
           MemArray[WrPtr] <= DataIn;
    end
`else
   //always @ (posedge clkin) begin
    `XLREG_HARD(clkin, reset_n)
    for (int i = 0; i < BUF_DEPTH; i = i+1)
        MemArray[i] <= 'h0;
    `XLREG_END
    begin
        if (WrEn)
            MemArray[WrPtr] <= DataIn;
    end
`endif

   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
         FifoCntrWr <= 'd0;
    end
        else if ((WrEn & RdDeQ) | (~WrEn & ~RdDeQ))begin
        FifoCntrWr <= FifoCntrWr;
        end
    else if (WrEn) begin
        FifoCntrWr <= FifoCntrWr +'d1;
    end
        else begin
        FifoCntrWr <= FifoCntrWr -'d1;
    end
    end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
         FifoCntrRd <= 'd0;
    end
        else if ((RdEn & WriteQ) | (~RdEn & ~WriteQ)) begin
        FifoCntrRd <= FifoCntrRd;
        end
    else if (WriteQ) begin
        FifoCntrRd <= FifoCntrRd +'d1;
    end
        else begin
        FifoCntrRd <= FifoCntrRd -'d1;
    end
    end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
        almost_empty_ff <= 1'b1;
        empty_ff <= 1'b1;
    end
    else begin
        if(~WrEn && ((FifoCntrRd==0) || ((FifoCntrRd==1) && RdEn))) begin
          empty_ff <= 1'b1;
        end
        else if(FifoCntrRd>0) begin
          empty_ff <= 1'b0;
        end

        if((FifoCntrRd==0) || ((FifoCntrRd==1) && RdEn)) begin
          almost_empty_ff <= 1'b1;
        end
        else if(FifoCntrRd>(BUF_DEPTH>>2)) begin
          almost_empty_ff <= 1'b0;
        end
        else if(FifoCntrRd<=(BUF_DEPTH>>2)) begin
          almost_empty_ff <= 1'b1;
        end
    end
   end
   `XLREG_XDMA(clkin, reset_n) begin
      if (~reset_n) begin
        almost_full_ff <= 1'b0;
        full_ff <= 1'b0;
      end
      else begin
        if((FifoCntrWr==(BUF_DEPTH)) || ((FifoCntrWr==(BUF_DEPTH-1)) && WriteQ)) begin
          full_ff <= 1'b1;
        end
        else if    (FifoCntrWr<BUF_DEPTH) begin
          full_ff <= 1'b0;
        end

        if((FifoCntrWr==(BUF_DEPTH)) || ((FifoCntrWr==(BUF_DEPTH-1)) && WriteQ)) begin
          almost_full_ff <= 1'b1;
        end
        else if(FifoCntrWr>(BUF_DEPTH-2)) begin
          almost_full_ff <= 1'b1;
        end
        else if(FifoCntrWr<=(BUF_DEPTH-2)) begin
            almost_full_ff <= 1'b0;
        end
    end
   end
   endmodule

  module cpm5n_v1_0_1_FIFOAsync
  import cpm5n_v1_0_1_pkg::*;
    #(parameter BUF_DATAWIDTH = 256,
      parameter BUF_WE = BUF_DATAWIDTH/8,
      parameter BUF_DEPTH = 512,
      parameter BUF_PTR = (BUF_DEPTH <=2) ? 1:
                           (BUF_DEPTH <=4)    ? 2:
                           (BUF_DEPTH <=8)    ? 3:
                           (BUF_DEPTH <=16)   ? 4:
                           (BUF_DEPTH <=32)   ? 5:
                           (BUF_DEPTH <=64)   ? 6:
                           (BUF_DEPTH <=128)   ? 7:
                           (BUF_DEPTH <=256)   ? 8:
                           (BUF_DEPTH <=512)   ? 9:
                   (BUF_DEPTH <=1024)   ? 10 : -1,
      parameter AE_THRESHOLD = BUF_DEPTH >> 2,
      parameter AF_THRESHOLD = BUF_DEPTH - 2
    )
    (
        input clkin,
    input reset_n,
    input clkout,
    input reseto_n,
        input [BUF_DATAWIDTH-1:0] DataIn,
        output [BUF_DATAWIDTH-1:0] DataOut,
    input WrEn,
    input RdEn,
    output almost_empty,
    output almost_full,
    output empty,
    output full
   );

(* ram_style = "DISTRIBUTED" *)
   reg [BUF_DATAWIDTH-1:0] MemArray [BUF_DEPTH-1:0];
(* max_fanout = 128 *) reg [BUF_PTR-1:0] WrPtr;
(* max_fanout = 128 *) reg [BUF_PTR-1:0] RdPtr;
   reg [BUF_PTR:0] FifoCntrWr;
   reg [BUF_PTR:0] FifoCntrRd;
   wire WriteQ, RdDeQ;
   reg almost_empty_ff;
   reg almost_full_ff;
   reg empty_ff;
   reg full_ff;
   assign WriteQ = WrEn;
   assign RdDeQ = RdEn;

   reg [BUF_DATAWIDTH-1:0] Head;

   assign almost_empty = almost_empty_ff;
   assign almost_full = almost_full_ff;
   assign empty = empty_ff;
   assign full = full_ff;
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
         WrPtr <= 'd0;
    end
        else if (WrEn) begin
        WrPtr <= WrPtr + 'd1;
        end
    end

    `XLREG_XDMA(clkin, reset_n) begin
           if (~reset_n) begin
             RdPtr <= 'd0;
    end
           else if ((RdEn && (FifoCntrRd>1) ) ||
         (WrEn && (FifoCntrRd==0) ) ||
         (RdEn && WrEn && (FifoCntrRd==1)))begin
               RdPtr <= RdPtr + 'd1;
           end
    end
`ifdef SOFT_IP
   always @(posedge clkin) begin
        if (WrEn)
            MemArray[WrPtr] <= DataIn;
    end
`else
  //always @(posedge clkin) begin
   `XLREG_HARD(clkin, reset_n)
    for (int i = 0; i < BUF_DEPTH; i = i+1)
        MemArray[i] <= 'h0;
   `XLREG_END
    begin
        if (WrEn)
            MemArray[WrPtr] <= DataIn;
    end
`endif

   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
         FifoCntrWr <= 'd0;
    end
        else if ((WrEn & RdDeQ) | (~WrEn & ~RdDeQ))begin
        FifoCntrWr <= FifoCntrWr;
        end
    else if (WrEn) begin
        FifoCntrWr <= FifoCntrWr +'d1;
    end
        else begin
        FifoCntrWr <= FifoCntrWr -'d1;
    end
    end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
         FifoCntrRd <= 'd0;
    end
        else if ((RdEn & WriteQ) | (~RdEn & ~WriteQ)) begin
        FifoCntrRd <= FifoCntrRd;
        end
    else if (WriteQ) begin
        FifoCntrRd <= FifoCntrRd +'d1;
    end
        else begin
        FifoCntrRd <= FifoCntrRd -'d1;
    end
    end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
        almost_empty_ff <= 1'b1;
        empty_ff <= 1'b1;
    end
    else begin
        if((FifoCntrRd==0) || ((FifoCntrRd==1) && RdEn)) begin
            empty_ff <= 1'b1;
        end
        else if(FifoCntrRd>0) begin
            empty_ff <= 1'b0;
        end

        if((FifoCntrRd==0) || ((FifoCntrRd==1) && RdEn)) begin
            almost_empty_ff <= 1'b1;
        end
        else if(FifoCntrRd>(AE_THRESHOLD)) begin
            almost_empty_ff <= 1'b0;
        end
        else if(FifoCntrRd<=(AE_THRESHOLD)) begin
            almost_empty_ff <= 1'b1;
        end
    end
   end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
        almost_full_ff <= 1'b0;
        full_ff <= 1'b0;
    end
    else begin
        if((FifoCntrWr==(BUF_DEPTH)) || ((FifoCntrWr==(BUF_DEPTH-1)) && WriteQ)) begin
            full_ff <= 1'b1;
        end
        else if    (FifoCntrWr<BUF_DEPTH) begin
            full_ff <= 1'b0;
        end

        if((FifoCntrWr==(BUF_DEPTH)) || ((FifoCntrWr==(BUF_DEPTH-1)) && WriteQ)) begin
            almost_full_ff <= 1'b1;
        end
        else if(FifoCntrWr>(AF_THRESHOLD)) begin
            almost_full_ff <= 1'b1;
        end
        else if(FifoCntrWr<=(AF_THRESHOLD)) begin
            almost_full_ff <= 1'b0;
        end
    end
   end

   `XLREG_XDMA(clkin, reset_n) begin
          if (~reset_n) begin
        Head <= 1'b0;
    end
    else begin
        if ((WrEn && (FifoCntrRd == 0)) || (WrEn && RdEn && (FifoCntrRd == 1)))
            Head <= DataIn;
        else if (RdEn || (FifoCntrRd == 0))
               Head <= MemArray[RdPtr];
    end
    end
    assign DataOut = Head;

   endmodule

  module cpm5n_v1_0_1_FIFOHead
  import cpm5n_v1_0_1_pkg::*;
    #(parameter BUF_DATAWIDTH = 256,
      parameter NP2_SIZE      = 0,    // Non power of 2 size
      parameter BUF_WE = BUF_DATAWIDTH/8,
      parameter BUF_DEPTH = 512,
      parameter BUF_PTR = (BUF_DEPTH <=2) ? 1:
                           (BUF_DEPTH <=4)    ? 2:
                           (BUF_DEPTH <=8)    ? 3:
                           (BUF_DEPTH <=16)   ? 4:
                           (BUF_DEPTH <=32)   ? 5:
                           (BUF_DEPTH <=64)   ? 6:
                           (BUF_DEPTH <=128)   ? 7:
                           (BUF_DEPTH <=256)   ? 8:
                           (BUF_DEPTH <=512)   ? 9:
                   (BUF_DEPTH <=1024)   ? 10 : -1,
      parameter AE_THRESHOLD = BUF_DEPTH >> 2,
      parameter AF_THRESHOLD = BUF_DEPTH - 2
    )
    (
        input clkin,
    input reset_n,
    input sync_reset_n,
    input [BUF_DATAWIDTH-1:0] DataIn,
    output [BUF_DATAWIDTH-1:0] DataOut,
    input WrEn,
    input WrAlloc,
    input RdEn,
    output almost_empty,
    output almost_full,
    output empty,
    output full
   );

(* ram_style = "DISTRIBUTED" *)
   reg [BUF_DATAWIDTH-1:0] MemArray [BUF_DEPTH-1:0];
      reg [BUF_DATAWIDTH-1:0] MemArrayRd;
   reg [BUF_PTR-1:0] WrPtr;
   reg [BUF_PTR-1:0] RdPtr;
   reg [BUF_PTR:0] FifoCntrWr;
   reg [BUF_PTR:0] FifoCntrRd;
   wire WriteQ, RdDeQ;
   reg almost_empty_ff;
   reg almost_full_ff;
   reg empty_ff;
   reg full_ff;
   assign WriteQ = WrEn;
   assign RdDeQ = RdEn;

   reg [BUF_DATAWIDTH-1:0] Head;

   assign almost_empty = almost_empty_ff;
   assign almost_full = almost_full_ff;
   assign empty = empty_ff;
   assign full = full_ff;

   `XLREG_XDMA(clkin, reset_n) begin
       if (~reset_n) begin
           WrPtr <= 'd0;
       end
       else if (~sync_reset_n)
           WrPtr <= 'd0;
       else if (WrEn) begin
           if (NP2_SIZE && (WrPtr == (BUF_DEPTH-1)))
               WrPtr <= '0;
           else
               WrPtr <= WrPtr + 'd1;
       end
    end

   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
            RdPtr <= 'd0;
        end
        else if (~sync_reset_n)
            RdPtr <= 'd0;
        else if ((RdEn && (FifoCntrRd>1) ) || (WrEn && (FifoCntrRd==0) ) || (RdEn && WrEn && (FifoCntrRd==1)))
        begin
            if (NP2_SIZE && (RdPtr == (BUF_DEPTH-1)))
                RdPtr <= '0;
            else
                RdPtr <= RdPtr + 'd1;
        end
    end


`ifdef SOFT_IP
   always @(posedge clkin) begin
        if (WrEn)
            MemArray[WrPtr] <= DataIn;
    end
`else
   //always @(posedge clkin) begin
   `XLREG_HARD(clkin, reset_n)
    for (int i = 0; i < BUF_DEPTH; i = i+1)
        MemArray[i] <= 'h0;
   `XLREG_END
    begin
        if (WrEn)
            MemArray[WrPtr] <= DataIn;
    end
`endif

   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
         FifoCntrWr <= 'd0;
    end
    else if (~sync_reset_n)
         FifoCntrWr <= 'd0;
        else if ((WrAlloc & RdDeQ) | (~WrAlloc & ~RdDeQ))begin
        FifoCntrWr <= FifoCntrWr;
        end
    else if (WrAlloc) begin
        FifoCntrWr <= FifoCntrWr +'d1;
    end
        else begin
        FifoCntrWr <= FifoCntrWr -'d1;
    end
    end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
         FifoCntrRd <= 'd0;
    end
        else if (~sync_reset_n)
         FifoCntrRd <= 'd0;
        else if ((RdEn & WriteQ) | (~RdEn & ~WriteQ)) begin
        FifoCntrRd <= FifoCntrRd;
        end
    else if (WriteQ) begin
        FifoCntrRd <= FifoCntrRd +'d1;
    end
        else begin
        FifoCntrRd <= FifoCntrRd -'d1;
    end
    end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
        almost_empty_ff <= 1'b1;
        empty_ff <= 1'b1;
    end
        else if (~sync_reset_n) begin
        almost_empty_ff <= 1'b1;
        empty_ff <= 1'b1;
    end
    else begin
        if((FifoCntrRd==0) || ((FifoCntrRd==1) && RdEn)) begin
            empty_ff <= 1'b1;
        end
        else if(FifoCntrRd>0) begin
            empty_ff <= 1'b0;
        end

        if((FifoCntrRd==0) || ((FifoCntrRd==1) && RdEn)) begin
            almost_empty_ff <= 1'b1;
        end
        else if(FifoCntrRd>(AE_THRESHOLD)) begin
            almost_empty_ff <= 1'b0;
        end
        else if(FifoCntrRd<=(AE_THRESHOLD)) begin
            almost_empty_ff <= 1'b1;
        end
    end
   end
   `XLREG_XDMA(clkin, reset_n) begin
        if (~reset_n) begin
        almost_full_ff <= 1'b0;
        full_ff <= 1'b0;
    end
        else if (~sync_reset_n) begin
        almost_full_ff <= 1'b0;
        full_ff <= 1'b0;
    end
    else begin
        if((FifoCntrWr>=(BUF_DEPTH+1)) || ((FifoCntrWr==(BUF_DEPTH)) && WrAlloc)) begin
            full_ff <= 1'b1;
        end
        else if    (FifoCntrWr<(BUF_DEPTH+1)) begin
            full_ff <= 1'b0;
        end

        if((FifoCntrWr>=(BUF_DEPTH+1)) || ((FifoCntrWr==(BUF_DEPTH)) && WrAlloc)) begin
            almost_full_ff <= 1'b1;
        end
        else if((FifoCntrWr>AF_THRESHOLD) || ((FifoCntrWr == AF_THRESHOLD) && WrAlloc)) begin
            almost_full_ff <= 1'b1;
        end
        else if(FifoCntrWr<=(AF_THRESHOLD)) begin
            almost_full_ff <= 1'b0;
        end
    end
   end

assign MemArrayRd = MemArray[RdPtr];
   `XLREG_XDMA(clkin, reset_n) begin
          if (~reset_n) begin
        Head <= 1'b0;
    end
    else if (~sync_reset_n) begin
        Head <= 1'b0;
    end
    else begin
        if ((WrEn && (FifoCntrRd == 0)) || (WrEn && RdEn && (FifoCntrRd == 1)))
            Head <= DataIn;
        else if (RdEn || (FifoCntrRd == 0))
            Head <= MemArrayRd;
    end
    end
    assign DataOut = Head;

   endmodule


