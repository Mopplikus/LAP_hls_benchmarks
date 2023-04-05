
//------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/siflibs/ccs_in_wait_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_in_wait_v1 (idat, rdy, ivld, dat, irdy, vld);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] idat;
  output             rdy;
  output             ivld;
  input  [width-1:0] dat;
  input              irdy;
  input              vld;

  wire   [width-1:0] idat;
  wire               rdy;
  wire               ivld;

  assign idat = dat;
  assign rdy = irdy;
  assign ivld = vld;

endmodule


//------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/siflibs/ccs_out_wait_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_out_wait_v1 (dat, irdy, vld, idat, rdy, ivld);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] dat;
  output             irdy;
  output             vld;
  input  [width-1:0] idat;
  input              rdy;
  input              ivld;

  wire   [width-1:0] dat;
  wire               irdy;
  wire               vld;

  assign dat = idat;
  assign irdy = rdy;
  assign vld = ivld;

endmodule



//------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/siflibs/mgc_io_sync_v2.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module mgc_io_sync_v2 (ld, lz);
    parameter valid = 0;

    input  ld;
    output lz;

    wire   lz;

    assign lz = ld;

endmodule


//------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/siflibs/mgc_shift_r_beh_v5.v 
module mgc_shift_r_v5(a,s,z);
   parameter    width_a = 4;
   parameter    signd_a = 1;
   parameter    width_s = 2;
   parameter    width_z = 8;

   input [width_a-1:0] a;
   input [width_s-1:0] s;
   output [width_z -1:0] z;

   generate
     if (signd_a)
     begin: SGNED
       assign z = fshr_u(a,s,a[width_a-1]);
     end
     else
     begin: UNSGNED
       assign z = fshr_u(a,s,1'b0);
     end
   endgenerate

   //Shift right - unsigned shift argument
   function [width_z-1:0] fshr_u;
      input [width_a-1:0] arg1;
      input [width_s-1:0] arg2;
      input sbit;
      parameter olen = width_z;
      parameter ilen = signd_a ? width_a : width_a+1;
      parameter len = (ilen >= olen) ? ilen : olen;
      reg signed [len-1:0] result;
      reg signed [len-1:0] result_t;
      begin
        result_t = $signed( {(len){sbit}} );
        result_t[width_a-1:0] = arg1;
        result = result_t >>> arg2;
        fshr_u =  result[olen-1:0];
      end
   endfunction // fshl_u

endmodule

//------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/siflibs/mgc_shift_l_beh_v5.v 
module mgc_shift_l_v5(a,s,z);
   parameter    width_a = 4;
   parameter    signd_a = 1;
   parameter    width_s = 2;
   parameter    width_z = 8;

   input [width_a-1:0] a;
   input [width_s-1:0] s;
   output [width_z -1:0] z;

   generate
   if (signd_a)
   begin: SGNED
      assign z = fshl_u(a,s,a[width_a-1]);
   end
   else
   begin: UNSGNED
      assign z = fshl_u(a,s,1'b0);
   end
   endgenerate

   //Shift-left - unsigned shift argument one bit more
   function [width_z-1:0] fshl_u_1;
      input [width_a  :0] arg1;
      input [width_s-1:0] arg2;
      input sbit;
      parameter olen = width_z;
      parameter ilen = width_a+1;
      parameter len = (ilen >= olen) ? ilen : olen;
      reg [len-1:0] result;
      reg [len-1:0] result_t;
      begin
        result_t = {(len){sbit}};
        result_t[ilen-1:0] = arg1;
        result = result_t <<< arg2;
        fshl_u_1 =  result[olen-1:0];
      end
   endfunction // fshl_u

   //Shift-left - unsigned shift argument
   function [width_z-1:0] fshl_u;
      input [width_a-1:0] arg1;
      input [width_s-1:0] arg2;
      input sbit;
      fshl_u = fshl_u_1({sbit,arg1} ,arg2, sbit);
   endfunction // fshl_u

endmodule

//------> ../td_ccore_solutions/leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.5c/896140 Production Release
//  HLS Date:       Sun Sep  6 22:45:38 PDT 2020
// 
//  Generated by:   dirren@lapsrv6.epfl.ch
//  Generated date: Wed Mar  8 16:25:38 2023
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    leading_sign_28_1_1_0
// ------------------------------------------------------------------


module leading_sign_28_1_1_0 (
  mantissa, all_same, rtn
);
  input [27:0] mantissa;
  output all_same;
  output [4:0] rtn;


  // Interconnect Declarations
  wire return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_6_2_sdt_2;
  wire return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_18_3_sdt_3;
  wire return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_26_2_sdt_2;
  wire return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_42_4_sdt_4;
  wire return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_50_2_sdt_2;
  wire return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_62_3_sdt_3;
  wire return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_78_5_sdt_5;
  wire return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_6_2_sdt_1;
  wire return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_14_2_sdt_1;
  wire return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_26_2_sdt_1;
  wire return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_34_2_sdt_1;
  wire return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_50_2_sdt_1;
  wire return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_58_2_sdt_1;
  wire return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_68_2_sdt_1;
  wire [26:0] return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0;
  wire c_h_1_2;
  wire c_h_1_5;
  wire c_h_1_6;
  wire c_h_1_9;
  wire c_h_1_11;
  wire c_h_1_12;

  wire[0:0] return_add_generic_AC_RND_CONV_false_ls_all_sign_and_101_nl;
  wire[0:0] return_add_generic_AC_RND_CONV_false_ls_all_sign_return_add_generic_AC_RND_CONV_false_ls_all_sign_and_nl;
  wire[1:0] return_add_generic_AC_RND_CONV_false_ls_all_sign_return_add_generic_AC_RND_CONV_false_ls_all_sign_or_2_nl;
  wire[0:0] return_add_generic_AC_RND_CONV_false_ls_all_sign_and_106_nl;
  wire[0:0] return_add_generic_AC_RND_CONV_false_ls_all_sign_and_109_nl;

  // Interconnect Declarations for Component Instantiations 
  assign return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0 = (mantissa[26:0])
      ^ (signext_27_1(~ (mantissa[27])));
  assign return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_6_2_sdt_2 = (return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[24:23]==2'b11);
  assign return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_6_2_sdt_1 = (return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[26:25]==2'b11);
  assign return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_14_2_sdt_1 = (return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[22:21]==2'b11);
  assign c_h_1_2 = return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_6_2_sdt_1
      & return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_6_2_sdt_2;
  assign return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_18_3_sdt_3 = (return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[20:19]==2'b11)
      & return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_14_2_sdt_1;
  assign return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_26_2_sdt_2 = (return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[16:15]==2'b11);
  assign return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_26_2_sdt_1 = (return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[18:17]==2'b11);
  assign return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_34_2_sdt_1 = (return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[14:13]==2'b11);
  assign c_h_1_5 = return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_26_2_sdt_1
      & return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_26_2_sdt_2;
  assign c_h_1_6 = c_h_1_2 & return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_18_3_sdt_3;
  assign return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_42_4_sdt_4 = (return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[12:11]==2'b11)
      & return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_34_2_sdt_1 & c_h_1_5;
  assign return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_50_2_sdt_2 = (return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[8:7]==2'b11);
  assign return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_50_2_sdt_1 = (return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[10:9]==2'b11);
  assign return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_58_2_sdt_1 = (return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[6:5]==2'b11);
  assign c_h_1_9 = return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_50_2_sdt_1
      & return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_50_2_sdt_2;
  assign return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_62_3_sdt_3 = (return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[4:3]==2'b11)
      & return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_58_2_sdt_1;
  assign return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_68_2_sdt_1 = (return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[2:1]==2'b11);
  assign c_h_1_11 = c_h_1_9 & return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_62_3_sdt_3;
  assign c_h_1_12 = c_h_1_6 & return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_42_4_sdt_4;
  assign return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_78_5_sdt_5 = (return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[0])
      & return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_68_2_sdt_1 & c_h_1_11
      & c_h_1_12;
  assign all_same = return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_78_5_sdt_5;
  assign return_add_generic_AC_RND_CONV_false_ls_all_sign_and_101_nl = c_h_1_6 &
      (c_h_1_11 | (~ return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_42_4_sdt_4));
  assign return_add_generic_AC_RND_CONV_false_ls_all_sign_return_add_generic_AC_RND_CONV_false_ls_all_sign_and_nl
      = c_h_1_2 & (c_h_1_5 | (~ return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_18_3_sdt_3))
      & (~((~(c_h_1_9 & (~ return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_62_3_sdt_3)))
      & c_h_1_12));
  assign return_add_generic_AC_RND_CONV_false_ls_all_sign_and_106_nl = return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_6_2_sdt_1
      & (return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_14_2_sdt_1 | (~ return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_6_2_sdt_2))
      & (~((~(return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_26_2_sdt_1 &
      (return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_34_2_sdt_1 | (~ return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_26_2_sdt_2))))
      & c_h_1_6)) & (~((~(return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_50_2_sdt_1
      & (return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_58_2_sdt_1 | (~ return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_50_2_sdt_2))
      & (return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_68_2_sdt_1 | (~ c_h_1_11))))
      & c_h_1_12));
  assign return_add_generic_AC_RND_CONV_false_ls_all_sign_and_109_nl = (return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[26])
      & ((return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[25:24]!=2'b10))
      & (~((~((return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[22]) & ((return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[21:20]!=2'b10))))
      & c_h_1_2)) & (~((~((return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[18])
      & ((return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[17:16]!=2'b10))
      & (~((~((return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[14]) & ((return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[13:12]!=2'b10))))
      & c_h_1_5)))) & c_h_1_6)) & (~((~((return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[10])
      & ((return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[9:8]!=2'b10))
      & (~((~((return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[6]) & ((return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[5:4]!=2'b10))))
      & c_h_1_9)) & (~((~((return_add_generic_AC_RND_CONV_false_ls_all_sign_xor_26_0[2:1]==2'b10)))
      & c_h_1_11)))) & c_h_1_12));
  assign return_add_generic_AC_RND_CONV_false_ls_all_sign_return_add_generic_AC_RND_CONV_false_ls_all_sign_or_2_nl
      = MUX_v_2_2_2(({return_add_generic_AC_RND_CONV_false_ls_all_sign_and_106_nl
      , return_add_generic_AC_RND_CONV_false_ls_all_sign_and_109_nl}), 2'b11, return_add_generic_AC_RND_CONV_false_ls_all_sign_wrs_c_78_5_sdt_5);
  assign rtn = {c_h_1_12 , return_add_generic_AC_RND_CONV_false_ls_all_sign_and_101_nl
      , return_add_generic_AC_RND_CONV_false_ls_all_sign_return_add_generic_AC_RND_CONV_false_ls_all_sign_and_nl
      , return_add_generic_AC_RND_CONV_false_ls_all_sign_return_add_generic_AC_RND_CONV_false_ls_all_sign_or_2_nl};

  function automatic [1:0] MUX_v_2_2_2;
    input [1:0] input_0;
    input [1:0] input_1;
    input [0:0] sel;
    reg [1:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_2_2_2 = result;
  end
  endfunction


  function automatic [26:0] signext_27_1;
    input [0:0] vector;
  begin
    signext_27_1= {{26{vector[0]}}, vector};
  end
  endfunction

endmodule




//------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/siflibs/ccs_in_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_in_v1 (idat, dat);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] idat;
  input  [width-1:0] dat;

  wire   [width-1:0] idat;

  assign idat = dat;

endmodule


//------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/siflibs/ccs_out_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2015 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------

module ccs_out_v1 (dat, idat);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output   [width-1:0] dat;
  input    [width-1:0] idat;

  wire     [width-1:0] dat;

  assign dat = idat;

endmodule




//------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/siflibs/ccs_genreg_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------

module ccs_genreg_v1 (clk, en, arst, srst, d, z);
    parameter integer width   = 1;
    parameter integer ph_clk  = 1;
    parameter integer ph_en   = 1;
    parameter integer ph_arst = 0;
    parameter integer ph_srst = 1;
    parameter         has_en  = 1'b1;

    input clk;
    input en;
    input arst;
    input srst;
    input      [width-1:0] d;
    output reg [width-1:0] z;

    //  Generate parameters
    //  ph_clk | ph_arst | has_en     Label:
    //    1        1          1       GEN_CLK1_ARST1_EN1
    //    1        1          0       GEN_CLK1_ARST1_EN0
    //    1        0          1       GEN_CLK1_ARST0_EN1
    //    1        0          0       GEN_CLK1_ARST0_EN0
    //    0        1          1       GEN_CLK0_ARST1_EN1
    //    0        1          0       GEN_CLK0_ARST1_EN0
    //    0        0          1       GEN_CLK0_ARST0_EN1
    //    0        0          0       GEN_CLK0_ARST0_EN0
    
    generate 
      // Pos edge clock, pos edge async reset, has enable
      if (ph_clk == 1 & ph_arst == 1 & has_en == 1)
      begin: GEN_CLK1_ARST1_EN1
        always @(posedge clk or posedge arst)
          if (arst == 1'b1)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else if (en == $unsigned(ph_en))
            z <= d;
      end  //GEN_CLK1_ARST1_EN1

      // Pos edge clock, pos edge async reset, no enable
      else if (ph_clk == 1 & ph_arst == 1 & has_en == 0)
      begin: GEN_CLK1_ARST1_EN0
        always @(posedge clk or posedge arst)
          if (arst == 1'b1)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else
            z <= d;
      end  //GEN_CLK1_ARST1_EN0

      // Pos edge clock, neg edge async reset, has enable
      else if (ph_clk == 1 & ph_arst == 0 & has_en == 1)
      begin: GEN_CLK1_ARST0_EN1
        always @(posedge clk or negedge arst)
          if (arst == 1'b0)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else if (en == $unsigned(ph_en))
            z <= d;
      end  //GEN_CLK1_ARST0_EN1

      // Pos edge clock, neg edge async reset, no enable
      else if (ph_clk == 1 & ph_arst == 0 & has_en == 0)
      begin: GEN_CLK1_ARST0_EN0
        always @(posedge clk or negedge arst)
          if (arst == 1'b0)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else
            z <= d;
      end  //GEN_CLK1_ARST0_EN0


      // Neg edge clock, pos edge async reset, has enable
      if (ph_clk == 0 & ph_arst == 1 & has_en == 1)
      begin: GEN_CLK0_ARST1_EN1
        always @(negedge clk or posedge arst)
          if (arst == 1'b1)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else if (en == $unsigned(ph_en))
            z <= d;
      end  //GEN_CLK0_ARST1_EN1

      // Neg edge clock, pos edge async reset, no enable
      else if (ph_clk == 0 & ph_arst == 1 & has_en == 0)
      begin: GEN_CLK0_ARST1_EN0
        always @(negedge clk or posedge arst)
          if (arst == 1'b1)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else
            z <= d;
      end  //GEN_CLK0_ARST1_EN0

      // Neg edge clock, neg edge async reset, has enable
      else if (ph_clk == 0 & ph_arst == 0 & has_en == 1)
      begin: GEN_CLK0_ARST0_EN1
        always @(negedge clk or negedge arst)
          if (arst == 1'b0)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else if (en == $unsigned(ph_en))
            z <= d;
      end  //GEN_CLK0_ARST0_EN1

      // Neg edge clock, neg edge async reset, no enable
      else if (ph_clk == 0 & ph_arst == 0 & has_en == 0)
      begin: GEN_CLK0_ARST0_EN0
        always @(negedge clk or negedge arst)
          if (arst == 1'b0)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else
            z <= d;
      end  //GEN_CLK0_ARST0_EN0
    endgenerate
endmodule


//------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/siflibs/ccs_fifo_wait_core_v5.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------

/*
 *            _________________________________________________
 * WRITER    |                                                 |   READER
 *           |               ccs_fifo_wait_core                |
 *           |             _____________________               |
 *        --<|  din_rdy --<|  ---------------- <|--- dout_rdy <|---
 *           |             |       FIFO         |              |
 *        ---|> din_vld ---|> ----------------  |>-- dout_vld  |>--
 *        ---|>     din ---|> ----------------  |>-- dout      |>--
 *           |             |____________________|              |
 *           |_________________________________________________|
 *
 *    rdy    - can be considered as a notFULL signal
 *    vld    - can be considered as a notEMPTY signal
 *    is_idle - clk can be safely gated
 *
 * Change History:
 *    2019-01-24 - Add assertion to verify rdy signal behavior under reset.
 *                 Fix bug in that behavior.
 */

module ccs_fifo_wait_core_v5 (clk, en, arst, srst, din_vld, din_rdy, din, dout_vld, dout_rdy, dout, sd, is_idle);

    parameter integer rscid    = 0;     // resource ID
    parameter integer width    = 8;     // fifo width
    parameter integer sz_width = 8;     // size of port for elements in fifo
    parameter integer fifo_sz  = 8;     // fifo depth
    parameter integer ph_clk   = 1;  // clock polarity 1=rising edge, 0=falling edge
    parameter integer ph_en    = 1;  // clock enable polarity
    parameter integer ph_arst  = 1;  // async reset polarity
    parameter integer ph_srst  = 1;  // sync reset polarity
    parameter integer ph_log2  = 3;     // log2(fifo_sz)

    input                 clk;
    input                 en;
    input                 arst;
    input                 srst;
    input                 din_vld;    // writer has valid data 
    output                din_rdy;    // fifo ready for data (not full)
    input  [width-1:0]    din;
    output                dout_vld;   // fifo has valid data (not empty)
    input                 dout_rdy;   // reader ready for data
    output [width-1:0]    dout;
    output [sz_width-1:0] sd; 
    output                is_idle;

    localparam integer fifo_b  = width * fifo_sz;
    localparam integer fifo_mx = (fifo_sz > 0) ? (fifo_sz-1) : 0 ;
    localparam integer fifo_mx_over_8 = fifo_mx / 8 ;

    reg      [fifo_mx:0] stat_pre;
    wire     [fifo_mx:0] stat;
    reg      [( (fifo_b > 0) ? fifo_b : 1)-1:0] buff_pre;
    wire     [( (fifo_b > 0) ? fifo_b : 1)-1:0] buff;
    reg      [fifo_mx:0] en_l;
    reg      [fifo_mx_over_8:0] en_l_s;

    reg      [width-1:0] buff_nxt;

    reg                  stat_nxt;
    reg                  stat_behind;
    reg                  stat_ahead;
    reg                  en_l_var;

    integer              i;
    genvar               eni;

    wire [32:0]          size_t;
    reg  [31:0]          count;
    reg  [31:0]          count_t;
    reg  [32:0]          n_elem;
    // synopsys translate_off
    reg  [31:0]          peak;
    initial
    begin
      count = 32'b0;
      peak  = 32'b0;
    end
    // synopsys translate_on
  wire din_rdy_drv  ;
  wire dout_vld_drv ;
    wire                 active;
    wire                 din_vld_int;
    wire                 hs_init;

    //assign din_rdy  = din_rdy_drv;    // dout_rdy | (~stat[0] & hs_init);   // original
    assign din_rdy = (fifo_sz > 0) ? (~stat[0] | dout_rdy) && hs_init : dout_rdy ;  
    assign dout_vld = dout_vld_drv;
    assign is_idle = (~((din_vld && din_rdy) || (dout_vld && dout_rdy))) && hs_init;

    generate
    if ( fifo_sz > 0 )
    begin: FIFO_REG
    assign din_vld_int = din_vld & hs_init;
    assign active =   (din_vld_int & din_rdy_drv) | (dout_rdy & dout_vld_drv);

      assign din_rdy_drv = dout_rdy | (~stat[0] & hs_init);
      assign dout_vld_drv = din_vld_int | stat[fifo_sz-1];

      assign size_t = (count - {31'b0 , (dout_rdy & stat[fifo_sz-1])}) + { 31'b0, din_vld_int};
      assign sd = size_t[sz_width-1:0];

      assign dout = (stat[fifo_sz-1]) ? buff[fifo_b-1:width*(fifo_sz-1)] : din;

      always @(*)
      begin: FIFOPROC
        n_elem = 33'b0;
        for (i = fifo_sz-1; i >= 0; i = i - 1)
        begin
          stat_behind = (i != 0) ? stat[i-1] : 1'b0;
          stat_ahead  = (i != (fifo_sz-1)) ? stat[i+1] : 1'b1;

          // Determine if this buffer element will have data
          stat_nxt = stat_ahead &                       // valid element ahead of this one (or head)
                       (stat_behind                     // valid element behind this one
                         | (stat[i] & (~dout_rdy))      // valid element and output not ready (in use, no tx)
                         | (stat[i] & din_vld_int)      // valid element and input has data
                         | (din_vld_int  & (~dout_rdy)) // input has data and output not ready
                       );
          stat_pre[i] = stat_nxt;

          if (dout_rdy & stat_behind )
          begin
            // pop n shift
            buff_nxt[0+:width] = buff[width*(i-1)+:width];
            en_l_var = 1'b1;
          end
          else if (din_vld_int & stat_nxt & ~((~dout_rdy) & stat[i]))
          begin
            // update tail with input data
            buff_nxt = din;
            en_l_var = 1'b1;
          end
          else
          begin
            // no-op, disable register
            buff_nxt = din; // Don't care input to disabled flop
            en_l_var = 1'b0;
          end
          buff_pre[width*i+:width] = buff_nxt[0+:width];
             
          if (ph_en != 0)
            en_l[i] = en & en_l_var;
          else
            en_l[i] = en | ~en_l_var;

          if ((stat_ahead == 1'b1) & (stat[i] == 1'b0)) 
            //found tail, update the number of elements for count
            n_elem = ($unsigned(fifo_sz) - 1) - $unsigned(i);
        end //for loop

        // Enable for stat registers (partitioned into banks of eight)
        // Take care of the head first
        if (ph_en != 0)
          en_l_s[(((fifo_sz > 0) ? fifo_sz : 1)-1)/8] = en & active;
        else
          en_l_s[(((fifo_sz > 0) ? fifo_sz : 1)-1)/8] = en | ~active;

        // Now every eight
        for (i = fifo_sz-1; i >= 7; i = i - 1)
        begin
          if (($unsigned(i)%8) == 0)
          begin
            if (ph_en != 0)
              en_l_s[(i/8)-1] = en & (stat[i]) & (active);
            else
              en_l_s[(i/8)-1] = en | ~(stat[i]) | ~(active);
          end
        end
        
        // Update count and peak
        if ( stat[fifo_sz-1] == 1'b0 )
          count_t = 32'b0;
        else if ( stat[0] == 1'b1 )
          count_t = fifo_sz;
        else 
          count_t = n_elem[31:0];
        count = count_t;
        // synopsys translate_off
        if ( peak < count )
          peak = count;
        // synopsys translate_on
      end //FIFOPROC

      // Handshake valid after reset
      ccs_genreg_v1
      #(
        .width   (1),
        .ph_clk  (ph_clk),
        .ph_en   (1),
        .ph_arst (ph_arst),
        .ph_srst (ph_srst),
        .has_en  (1'b0)
      )
      HS_INIT_REG
      (
        .clk     (clk),
        .en      (1'b1),
        .arst    (arst),
        .srst    (srst),
        .d       (1'b1),
        .z       (hs_init)
      );

      // Buffer and status registers
      for (eni = fifo_sz-1; eni >= 0; eni = eni - 1)
      begin: GEN_REGS
        ccs_genreg_v1
        #(
          .width   (1),
          .ph_clk  (ph_clk),
          .ph_en   (ph_en),
          .ph_arst (ph_arst),
          .ph_srst (ph_srst),
          .has_en  (1'b1)
        )
        STATREG
        (
          .clk     (clk),
          .en      (en_l_s[eni/8]),
          .arst    (arst),
          .srst    (srst),
          .d       (stat_pre[eni]),
          .z       (stat[eni])
        );

        ccs_genreg_v1
        #(
          .width   (width),
          .ph_clk  (ph_clk),
          .ph_en   (ph_en),
          .ph_arst (ph_arst),
          .ph_srst (ph_srst),
          .has_en  (1'b1)
        )
        BUFREG
        (
          .clk     (clk),
          .en      (en_l[eni]),
          .arst    (arst),
          .srst    (srst),
          .d       (buff_pre[width*eni+:width]),
          .z       (buff[width*eni+:width])
        );
      end

    end
    else
    begin: FEED_THRU
      assign din_rdy_drv  = dout_rdy;
      assign dout_vld_drv = din_vld;
      assign dout     = din;
      // non-blocking is not II=1 when fifo_sz=0
      assign sd = {{(sz_width-1){1'b0}}, (din_vld & ~dout_rdy)};
    end
    endgenerate

`ifdef RDY_ASRT 
    generate
    if (ph_clk==1) 
    begin: POS_CLK_ASSERT

       property rdyAsrt ;
         @(posedge clk) ((srst==ph_srst) || (arst==ph_arst)) |=> (din_rdy==0);
       endproperty
       a1Pos: assert property(rdyAsrt);

    end else if (ph_clk==0) 
    begin: NEG_CLK_ASSERT

       property rdyAsrt ;
         @(negedge clk) ((srst==ph_srst) || (arst==ph_arst)) |=> (din_rdy==0);
       endproperty
       a1Neg: assert property(rdyAsrt);

    end
    endgenerate

`endif
   
endmodule



//------> /softs/mentor/cpult/10.5c/Mgc_home/pkgs/siflibs/ccs_pipe_v5.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------
/*
 *
 *            _______________________________________________
 * WRITER    |                                              |          READER
 *           |                 ccs_pipe                     |
 *           |            ______________________            |
 *        --<| din_rdy --<|  ---------------- <|---dout_rdy<|---
 *           |            |       FIFO         |            |
 *        ---|>din_vld ---|> ----------------  |>--dout_vld |>--
 *        ---|>din -------|> ----------------  |> -----dout |>--
 *           |            |____________________|            |
 *           |______________________________________________|
 *
 *    din_rdy     - can be considered as a notFULL signal
 *    dout_vld    - can be considered as a notEMPTY signal
 *    write_stall - an internal debug signal formed from din_vld & !din_rdy
 *    read_stall  - an internal debug signal formed from dout_rdy & !dout_vld
 *    is_idle     - indicates the clock can be safely gated
 */

module ccs_pipe_v5 (clk, en, arst, srst, din_rdy, din_vld, din, dout_rdy, dout_vld, dout, sz, sz_req, is_idle);

    parameter integer rscid    = 0; // resource ID
    parameter integer width    = 8; // fifo width
    parameter integer sz_width = 8; // width of size of elements in fifo
    parameter integer fifo_sz  = 8; // fifo depth
    parameter integer log2_sz  = 3; // log2(fifo_sz)
    parameter integer ph_clk   = 1; // clock polarity 1=rising edge, 0=falling edge
    parameter integer ph_en    = 1; // clock enable polarity
    parameter integer ph_arst  = 1; // async reset polarity
    parameter integer ph_srst  = 1; // sync reset polarity

    // clock 
    input              clk;
    input              en;
    input              arst;
    input              srst;

    // writer
    output             din_rdy;
    input              din_vld;
    input  [width-1:0] din;

    // reader
    input              dout_rdy;
    output             dout_vld;
    output [width-1:0] dout;

    // size
    output [sz_width-1:0] sz;
    input                 sz_req;
    output                is_idle;
   
    // synopsys translate_off
    wire   write_stall;
    wire   read_stall;
    assign write_stall = din_vld & !din_rdy;
    assign read_stall  = dout_rdy & !dout_vld;
    // synopsys translate_on

    ccs_fifo_wait_core_v5
    #(
        .rscid    (rscid),
        .width    (width),
        .sz_width (sz_width),
        .fifo_sz  (fifo_sz),
        .ph_clk   (ph_clk),
        .ph_en    (ph_en),
        .ph_arst  (ph_arst),
        .ph_srst  (ph_srst),
        .ph_log2  (log2_sz)
    )
    FIFO
    (
        .clk      (clk),
        .en       (en),
        .arst     (arst),
        .srst     (srst),
        .din_vld  (din_vld),
        .din_rdy  (din_rdy),
        .din      (din),
        .dout_vld (dout_vld),
        .dout_rdy (dout_rdy),
        .dout     (dout),
        .sd       (sz),
        .is_idle  (is_idle)
    );

endmodule


//------> ./rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.5c/896140 Production Release
//  HLS Date:       Sun Sep  6 22:45:38 PDT 2020
// 
//  Generated by:   dirren@lapsrv6.epfl.ch
//  Generated date: Wed Mar  8 16:27:44 2023
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    main_core_core_core_fsm
//  FSM Module
// ------------------------------------------------------------------


module main_core_core_core_fsm (
  clk, rst, core_wen, fsm_output, for_C_1_tr0, for_1_C_0_tr0
);
  input clk;
  input rst;
  input core_wen;
  output [4:0] fsm_output;
  reg [4:0] fsm_output;
  input for_C_1_tr0;
  input for_1_C_0_tr0;


  // FSM State Type Declaration for main_core_core_core_fsm_1
  parameter
    main_C_0 = 3'd0,
    for_C_0 = 3'd1,
    for_C_1 = 3'd2,
    for_1_C_0 = 3'd3,
    main_C_1 = 3'd4;

  reg [2:0] state_var;
  reg [2:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : main_core_core_core_fsm_1
    case (state_var)
      for_C_0 : begin
        fsm_output = 5'b00010;
        state_var_NS = for_C_1;
      end
      for_C_1 : begin
        fsm_output = 5'b00100;
        if ( for_C_1_tr0 ) begin
          state_var_NS = for_1_C_0;
        end
        else begin
          state_var_NS = for_C_0;
        end
      end
      for_1_C_0 : begin
        fsm_output = 5'b01000;
        if ( for_1_C_0_tr0 ) begin
          state_var_NS = main_C_1;
        end
        else begin
          state_var_NS = for_1_C_0;
        end
      end
      main_C_1 : begin
        fsm_output = 5'b10000;
        state_var_NS = main_C_0;
      end
      // main_C_0
      default : begin
        fsm_output = 5'b00001;
        state_var_NS = for_C_0;
      end
    endcase
  end

  always @(posedge clk) begin
    if ( rst ) begin
      state_var <= main_C_0;
    end
    else if ( core_wen ) begin
      state_var <= state_var_NS;
    end
  end

endmodule

// ------------------------------------------------------------------
//  Design Unit:    main_core_core_staller
// ------------------------------------------------------------------


module main_core_core_staller (
  clk, rst, core_wen, core_wten, feature_cnsi_wen_comp, weight_cnsi_wen_comp, hist_cnsi_wen_comp,
      out_cnsi_wen_comp
);
  input clk;
  input rst;
  output core_wen;
  output core_wten;
  reg core_wten;
  input feature_cnsi_wen_comp;
  input weight_cnsi_wen_comp;
  input hist_cnsi_wen_comp;
  input out_cnsi_wen_comp;



  // Interconnect Declarations for Component Instantiations 
  assign core_wen = feature_cnsi_wen_comp & weight_cnsi_wen_comp & hist_cnsi_wen_comp
      & out_cnsi_wen_comp;
  always @(posedge clk) begin
    if ( rst ) begin
      core_wten <= 1'b0;
    end
    else begin
      core_wten <= ~ core_wen;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    main_core_core_return_rsc_triosy_obj_return_rsc_triosy_wait_ctrl
// ------------------------------------------------------------------


module main_core_core_return_rsc_triosy_obj_return_rsc_triosy_wait_ctrl (
  core_wten, return_rsc_triosy_obj_iswt0, return_rsc_triosy_obj_ld_core_sct
);
  input core_wten;
  input return_rsc_triosy_obj_iswt0;
  output return_rsc_triosy_obj_ld_core_sct;



  // Interconnect Declarations for Component Instantiations 
  assign return_rsc_triosy_obj_ld_core_sct = return_rsc_triosy_obj_iswt0 & (~ core_wten);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    main_core_core_out_cnsi_out_wait_dp
// ------------------------------------------------------------------


module main_core_core_out_cnsi_out_wait_dp (
  clk, rst, out_cnsi_oswt, out_cnsi_wen_comp, out_cnsi_idat_mxwt, out_cnsi_biwt,
      out_cnsi_bdwt, out_cnsi_bcwt, out_cnsi_idat
);
  input clk;
  input rst;
  input out_cnsi_oswt;
  output out_cnsi_wen_comp;
  output [31:0] out_cnsi_idat_mxwt;
  input out_cnsi_biwt;
  input out_cnsi_bdwt;
  output out_cnsi_bcwt;
  reg out_cnsi_bcwt;
  input [31:0] out_cnsi_idat;


  // Interconnect Declarations
  reg [31:0] out_cnsi_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign out_cnsi_wen_comp = (~ out_cnsi_oswt) | out_cnsi_biwt | out_cnsi_bcwt;
  assign out_cnsi_idat_mxwt = MUX_v_32_2_2(out_cnsi_idat, out_cnsi_idat_bfwt, out_cnsi_bcwt);
  always @(posedge clk) begin
    if ( rst ) begin
      out_cnsi_bcwt <= 1'b0;
    end
    else begin
      out_cnsi_bcwt <= ~((~(out_cnsi_bcwt | out_cnsi_biwt)) | out_cnsi_bdwt);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      out_cnsi_idat_bfwt <= 32'b00000000000000000000000000000000;
    end
    else if ( out_cnsi_biwt ) begin
      out_cnsi_idat_bfwt <= out_cnsi_idat;
    end
  end

  function automatic [31:0] MUX_v_32_2_2;
    input [31:0] input_0;
    input [31:0] input_1;
    input [0:0] sel;
    reg [31:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_32_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    main_core_core_out_cnsi_out_wait_ctrl
// ------------------------------------------------------------------


module main_core_core_out_cnsi_out_wait_ctrl (
  core_wen, out_cnsi_oswt, out_cnsi_biwt, out_cnsi_bdwt, out_cnsi_bcwt, out_cnsi_irdy_core_sct,
      out_cnsi_ivld
);
  input core_wen;
  input out_cnsi_oswt;
  output out_cnsi_biwt;
  output out_cnsi_bdwt;
  input out_cnsi_bcwt;
  output out_cnsi_irdy_core_sct;
  input out_cnsi_ivld;


  // Interconnect Declarations
  wire out_cnsi_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign out_cnsi_bdwt = out_cnsi_oswt & core_wen;
  assign out_cnsi_biwt = out_cnsi_ogwt & out_cnsi_ivld;
  assign out_cnsi_ogwt = out_cnsi_oswt & (~ out_cnsi_bcwt);
  assign out_cnsi_irdy_core_sct = out_cnsi_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    main_core_core_hist_cnsi_hist_wait_dp
// ------------------------------------------------------------------


module main_core_core_hist_cnsi_hist_wait_dp (
  clk, rst, hist_cnsi_oswt, hist_cnsi_wen_comp, hist_cnsi_biwt, hist_cnsi_bdwt, hist_cnsi_bcwt
);
  input clk;
  input rst;
  input hist_cnsi_oswt;
  output hist_cnsi_wen_comp;
  input hist_cnsi_biwt;
  input hist_cnsi_bdwt;
  output hist_cnsi_bcwt;
  reg hist_cnsi_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign hist_cnsi_wen_comp = (~ hist_cnsi_oswt) | hist_cnsi_biwt | hist_cnsi_bcwt;
  always @(posedge clk) begin
    if ( rst ) begin
      hist_cnsi_bcwt <= 1'b0;
    end
    else begin
      hist_cnsi_bcwt <= ~((~(hist_cnsi_bcwt | hist_cnsi_biwt)) | hist_cnsi_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    main_core_core_hist_cnsi_hist_wait_ctrl
// ------------------------------------------------------------------


module main_core_core_hist_cnsi_hist_wait_ctrl (
  core_wen, hist_cnsi_oswt, hist_cnsi_irdy, hist_cnsi_biwt, hist_cnsi_bdwt, hist_cnsi_bcwt,
      hist_cnsi_ivld_core_sct
);
  input core_wen;
  input hist_cnsi_oswt;
  input hist_cnsi_irdy;
  output hist_cnsi_biwt;
  output hist_cnsi_bdwt;
  input hist_cnsi_bcwt;
  output hist_cnsi_ivld_core_sct;


  // Interconnect Declarations
  wire hist_cnsi_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign hist_cnsi_bdwt = hist_cnsi_oswt & core_wen;
  assign hist_cnsi_biwt = hist_cnsi_ogwt & hist_cnsi_irdy;
  assign hist_cnsi_ogwt = hist_cnsi_oswt & (~ hist_cnsi_bcwt);
  assign hist_cnsi_ivld_core_sct = hist_cnsi_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    main_core_core_weight_cnsi_weight_wait_dp
// ------------------------------------------------------------------


module main_core_core_weight_cnsi_weight_wait_dp (
  clk, rst, weight_cnsi_oswt, weight_cnsi_wen_comp, weight_cnsi_biwt, weight_cnsi_bdwt,
      weight_cnsi_bcwt
);
  input clk;
  input rst;
  input weight_cnsi_oswt;
  output weight_cnsi_wen_comp;
  input weight_cnsi_biwt;
  input weight_cnsi_bdwt;
  output weight_cnsi_bcwt;
  reg weight_cnsi_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign weight_cnsi_wen_comp = (~ weight_cnsi_oswt) | weight_cnsi_biwt | weight_cnsi_bcwt;
  always @(posedge clk) begin
    if ( rst ) begin
      weight_cnsi_bcwt <= 1'b0;
    end
    else begin
      weight_cnsi_bcwt <= ~((~(weight_cnsi_bcwt | weight_cnsi_biwt)) | weight_cnsi_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    main_core_core_weight_cnsi_weight_wait_ctrl
// ------------------------------------------------------------------


module main_core_core_weight_cnsi_weight_wait_ctrl (
  core_wen, weight_cnsi_oswt, weight_cnsi_irdy, weight_cnsi_biwt, weight_cnsi_bdwt,
      weight_cnsi_bcwt, weight_cnsi_ivld_core_sct
);
  input core_wen;
  input weight_cnsi_oswt;
  input weight_cnsi_irdy;
  output weight_cnsi_biwt;
  output weight_cnsi_bdwt;
  input weight_cnsi_bcwt;
  output weight_cnsi_ivld_core_sct;


  // Interconnect Declarations
  wire weight_cnsi_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign weight_cnsi_bdwt = weight_cnsi_oswt & core_wen;
  assign weight_cnsi_biwt = weight_cnsi_ogwt & weight_cnsi_irdy;
  assign weight_cnsi_ogwt = weight_cnsi_oswt & (~ weight_cnsi_bcwt);
  assign weight_cnsi_ivld_core_sct = weight_cnsi_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    main_core_core_feature_cnsi_feature_wait_dp
// ------------------------------------------------------------------


module main_core_core_feature_cnsi_feature_wait_dp (
  clk, rst, feature_cnsi_oswt, feature_cnsi_wen_comp, feature_cnsi_biwt, feature_cnsi_bdwt,
      feature_cnsi_bcwt
);
  input clk;
  input rst;
  input feature_cnsi_oswt;
  output feature_cnsi_wen_comp;
  input feature_cnsi_biwt;
  input feature_cnsi_bdwt;
  output feature_cnsi_bcwt;
  reg feature_cnsi_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign feature_cnsi_wen_comp = (~ feature_cnsi_oswt) | feature_cnsi_biwt | feature_cnsi_bcwt;
  always @(posedge clk) begin
    if ( rst ) begin
      feature_cnsi_bcwt <= 1'b0;
    end
    else begin
      feature_cnsi_bcwt <= ~((~(feature_cnsi_bcwt | feature_cnsi_biwt)) | feature_cnsi_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    main_core_core_feature_cnsi_feature_wait_ctrl
// ------------------------------------------------------------------


module main_core_core_feature_cnsi_feature_wait_ctrl (
  core_wen, feature_cnsi_oswt, feature_cnsi_irdy, feature_cnsi_biwt, feature_cnsi_bdwt,
      feature_cnsi_bcwt, feature_cnsi_ivld_core_sct
);
  input core_wen;
  input feature_cnsi_oswt;
  input feature_cnsi_irdy;
  output feature_cnsi_biwt;
  output feature_cnsi_bdwt;
  input feature_cnsi_bcwt;
  output feature_cnsi_ivld_core_sct;


  // Interconnect Declarations
  wire feature_cnsi_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign feature_cnsi_bdwt = feature_cnsi_oswt & core_wen;
  assign feature_cnsi_biwt = feature_cnsi_ogwt & feature_cnsi_irdy;
  assign feature_cnsi_ogwt = feature_cnsi_oswt & (~ feature_cnsi_bcwt);
  assign feature_cnsi_ivld_core_sct = feature_cnsi_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    histogram_core_core_fsm
//  FSM Module
// ------------------------------------------------------------------


module histogram_core_core_fsm (
  clk, rst, core_wen, fsm_output, while_C_1_tr0, main_C_1_tr0, for_C_0_tr0, main_C_2_tr0,
      for_1_C_1_tr0
);
  input clk;
  input rst;
  input core_wen;
  output [8:0] fsm_output;
  reg [8:0] fsm_output;
  input while_C_1_tr0;
  input main_C_1_tr0;
  input for_C_0_tr0;
  input main_C_2_tr0;
  input for_1_C_1_tr0;


  // FSM State Type Declaration for histogram_core_core_fsm_1
  parameter
    main_C_0 = 4'd0,
    while_C_0 = 4'd1,
    while_C_1 = 4'd2,
    main_C_1 = 4'd3,
    for_C_0 = 4'd4,
    main_C_2 = 4'd5,
    for_1_C_0 = 4'd6,
    for_1_C_1 = 4'd7,
    main_C_3 = 4'd8;

  reg [3:0] state_var;
  reg [3:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : histogram_core_core_fsm_1
    case (state_var)
      while_C_0 : begin
        fsm_output = 9'b000000010;
        state_var_NS = while_C_1;
      end
      while_C_1 : begin
        fsm_output = 9'b000000100;
        if ( while_C_1_tr0 ) begin
          state_var_NS = main_C_1;
        end
        else begin
          state_var_NS = while_C_0;
        end
      end
      main_C_1 : begin
        fsm_output = 9'b000001000;
        if ( main_C_1_tr0 ) begin
          state_var_NS = main_C_2;
        end
        else begin
          state_var_NS = for_C_0;
        end
      end
      for_C_0 : begin
        fsm_output = 9'b000010000;
        if ( for_C_0_tr0 ) begin
          state_var_NS = main_C_2;
        end
        else begin
          state_var_NS = for_C_0;
        end
      end
      main_C_2 : begin
        fsm_output = 9'b000100000;
        if ( main_C_2_tr0 ) begin
          state_var_NS = main_C_3;
        end
        else begin
          state_var_NS = for_1_C_0;
        end
      end
      for_1_C_0 : begin
        fsm_output = 9'b001000000;
        state_var_NS = for_1_C_1;
      end
      for_1_C_1 : begin
        fsm_output = 9'b010000000;
        if ( for_1_C_1_tr0 ) begin
          state_var_NS = main_C_3;
        end
        else begin
          state_var_NS = for_1_C_0;
        end
      end
      main_C_3 : begin
        fsm_output = 9'b100000000;
        state_var_NS = main_C_0;
      end
      // main_C_0
      default : begin
        fsm_output = 9'b000000001;
        state_var_NS = while_C_0;
      end
    endcase
  end

  always @(posedge clk) begin
    if ( rst ) begin
      state_var <= main_C_0;
    end
    else if ( core_wen ) begin
      state_var <= state_var_NS;
    end
  end

endmodule

// ------------------------------------------------------------------
//  Design Unit:    histogram_core_staller
// ------------------------------------------------------------------


module histogram_core_staller (
  clk, rst, core_wen, core_wten, feature_rsci_wen_comp, weight_rsci_wen_comp, out_rsci_wen_comp
);
  input clk;
  input rst;
  output core_wen;
  output core_wten;
  reg core_wten;
  input feature_rsci_wen_comp;
  input weight_rsci_wen_comp;
  input out_rsci_wen_comp;



  // Interconnect Declarations for Component Instantiations 
  assign core_wen = feature_rsci_wen_comp & weight_rsci_wen_comp & out_rsci_wen_comp;
  always @(posedge clk) begin
    if ( rst ) begin
      core_wten <= 1'b0;
    end
    else begin
      core_wten <= ~ core_wen;
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    histogram_core_n_rsc_triosy_obj_n_rsc_triosy_wait_ctrl
// ------------------------------------------------------------------


module histogram_core_n_rsc_triosy_obj_n_rsc_triosy_wait_ctrl (
  core_wten, n_rsc_triosy_obj_iswt0, n_rsc_triosy_obj_ld_core_sct
);
  input core_wten;
  input n_rsc_triosy_obj_iswt0;
  output n_rsc_triosy_obj_ld_core_sct;



  // Interconnect Declarations for Component Instantiations 
  assign n_rsc_triosy_obj_ld_core_sct = n_rsc_triosy_obj_iswt0 & (~ core_wten);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    histogram_core_out_rsci_out_wait_dp
// ------------------------------------------------------------------


module histogram_core_out_rsci_out_wait_dp (
  clk, rst, out_rsci_oswt, out_rsci_wen_comp, out_rsci_biwt, out_rsci_bdwt, out_rsci_bcwt
);
  input clk;
  input rst;
  input out_rsci_oswt;
  output out_rsci_wen_comp;
  input out_rsci_biwt;
  input out_rsci_bdwt;
  output out_rsci_bcwt;
  reg out_rsci_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign out_rsci_wen_comp = (~ out_rsci_oswt) | out_rsci_biwt | out_rsci_bcwt;
  always @(posedge clk) begin
    if ( rst ) begin
      out_rsci_bcwt <= 1'b0;
    end
    else begin
      out_rsci_bcwt <= ~((~(out_rsci_bcwt | out_rsci_biwt)) | out_rsci_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    histogram_core_out_rsci_out_wait_ctrl
// ------------------------------------------------------------------


module histogram_core_out_rsci_out_wait_ctrl (
  core_wen, out_rsci_oswt, out_rsci_irdy, out_rsci_biwt, out_rsci_bdwt, out_rsci_bcwt,
      out_rsci_ivld_core_sct
);
  input core_wen;
  input out_rsci_oswt;
  input out_rsci_irdy;
  output out_rsci_biwt;
  output out_rsci_bdwt;
  input out_rsci_bcwt;
  output out_rsci_ivld_core_sct;


  // Interconnect Declarations
  wire out_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign out_rsci_bdwt = out_rsci_oswt & core_wen;
  assign out_rsci_biwt = out_rsci_ogwt & out_rsci_irdy;
  assign out_rsci_ogwt = out_rsci_oswt & (~ out_rsci_bcwt);
  assign out_rsci_ivld_core_sct = out_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    histogram_core_hist_rsci_hist_wait_dp
// ------------------------------------------------------------------


module histogram_core_hist_rsci_hist_wait_dp (
  clk, rst, hist_rsci_ivld_mxwt, hist_rsci_idat_mxwt, hist_rsci_biwt, hist_rsci_bdwt,
      hist_rsci_ivld, hist_rsci_idat
);
  input clk;
  input rst;
  output hist_rsci_ivld_mxwt;
  output [31:0] hist_rsci_idat_mxwt;
  input hist_rsci_biwt;
  input hist_rsci_bdwt;
  input hist_rsci_ivld;
  input [31:0] hist_rsci_idat;


  // Interconnect Declarations
  reg hist_rsci_bcwt;
  reg hist_rsci_ivld_bfwt;
  wire [31:0] hist_rsci_idat_gtd;
  reg [31:0] hist_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign hist_rsci_ivld_mxwt = MUX_s_1_2_2(hist_rsci_ivld, hist_rsci_ivld_bfwt, hist_rsci_bcwt);
  assign hist_rsci_idat_gtd = MUX_v_32_2_2(32'b00000000000000000000000000000000,
      hist_rsci_idat, hist_rsci_ivld);
  assign hist_rsci_idat_mxwt = MUX_v_32_2_2(hist_rsci_idat_gtd, hist_rsci_idat_bfwt,
      hist_rsci_bcwt);
  always @(posedge clk) begin
    if ( rst ) begin
      hist_rsci_bcwt <= 1'b0;
    end
    else begin
      hist_rsci_bcwt <= ~((~(hist_rsci_bcwt | hist_rsci_biwt)) | hist_rsci_bdwt);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_rsci_ivld_bfwt <= 1'b0;
      hist_rsci_idat_bfwt <= 32'b00000000000000000000000000000000;
    end
    else if ( hist_rsci_biwt ) begin
      hist_rsci_ivld_bfwt <= hist_rsci_ivld;
      hist_rsci_idat_bfwt <= hist_rsci_idat_gtd;
    end
  end

  function automatic [0:0] MUX_s_1_2_2;
    input [0:0] input_0;
    input [0:0] input_1;
    input [0:0] sel;
    reg [0:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_s_1_2_2 = result;
  end
  endfunction


  function automatic [31:0] MUX_v_32_2_2;
    input [31:0] input_0;
    input [31:0] input_1;
    input [0:0] sel;
    reg [31:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_32_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    histogram_core_hist_rsci_hist_wait_ctrl
// ------------------------------------------------------------------


module histogram_core_hist_rsci_hist_wait_ctrl (
  core_wen, core_wten, hist_rsci_oswt, hist_rsci_biwt, hist_rsci_bdwt
);
  input core_wen;
  input core_wten;
  input hist_rsci_oswt;
  output hist_rsci_biwt;
  output hist_rsci_bdwt;



  // Interconnect Declarations for Component Instantiations 
  assign hist_rsci_bdwt = hist_rsci_oswt & core_wen;
  assign hist_rsci_biwt = (~ core_wten) & hist_rsci_oswt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    histogram_core_weight_rsci_weight_wait_dp
// ------------------------------------------------------------------


module histogram_core_weight_rsci_weight_wait_dp (
  clk, rst, weight_rsci_oswt, weight_rsci_wen_comp, weight_rsci_idat_mxwt, weight_rsci_biwt,
      weight_rsci_bdwt, weight_rsci_bcwt, weight_rsci_idat
);
  input clk;
  input rst;
  input weight_rsci_oswt;
  output weight_rsci_wen_comp;
  output [31:0] weight_rsci_idat_mxwt;
  input weight_rsci_biwt;
  input weight_rsci_bdwt;
  output weight_rsci_bcwt;
  reg weight_rsci_bcwt;
  input [31:0] weight_rsci_idat;


  // Interconnect Declarations
  reg [31:0] weight_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign weight_rsci_wen_comp = (~ weight_rsci_oswt) | weight_rsci_biwt | weight_rsci_bcwt;
  assign weight_rsci_idat_mxwt = MUX_v_32_2_2(weight_rsci_idat, weight_rsci_idat_bfwt,
      weight_rsci_bcwt);
  always @(posedge clk) begin
    if ( rst ) begin
      weight_rsci_bcwt <= 1'b0;
    end
    else begin
      weight_rsci_bcwt <= ~((~(weight_rsci_bcwt | weight_rsci_biwt)) | weight_rsci_bdwt);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      weight_rsci_idat_bfwt <= 32'b00000000000000000000000000000000;
    end
    else if ( weight_rsci_biwt ) begin
      weight_rsci_idat_bfwt <= weight_rsci_idat;
    end
  end

  function automatic [31:0] MUX_v_32_2_2;
    input [31:0] input_0;
    input [31:0] input_1;
    input [0:0] sel;
    reg [31:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_32_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    histogram_core_weight_rsci_weight_wait_ctrl
// ------------------------------------------------------------------


module histogram_core_weight_rsci_weight_wait_ctrl (
  core_wen, weight_rsci_oswt, weight_rsci_biwt, weight_rsci_bdwt, weight_rsci_bcwt,
      weight_rsci_irdy_core_sct, weight_rsci_ivld
);
  input core_wen;
  input weight_rsci_oswt;
  output weight_rsci_biwt;
  output weight_rsci_bdwt;
  input weight_rsci_bcwt;
  output weight_rsci_irdy_core_sct;
  input weight_rsci_ivld;


  // Interconnect Declarations
  wire weight_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign weight_rsci_bdwt = weight_rsci_oswt & core_wen;
  assign weight_rsci_biwt = weight_rsci_ogwt & weight_rsci_ivld;
  assign weight_rsci_ogwt = weight_rsci_oswt & (~ weight_rsci_bcwt);
  assign weight_rsci_irdy_core_sct = weight_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    histogram_core_feature_rsci_feature_wait_dp
// ------------------------------------------------------------------


module histogram_core_feature_rsci_feature_wait_dp (
  clk, rst, feature_rsci_oswt, feature_rsci_wen_comp, feature_rsci_idat_mxwt, feature_rsci_biwt,
      feature_rsci_bdwt, feature_rsci_bcwt, feature_rsci_idat
);
  input clk;
  input rst;
  input feature_rsci_oswt;
  output feature_rsci_wen_comp;
  output [6:0] feature_rsci_idat_mxwt;
  input feature_rsci_biwt;
  input feature_rsci_bdwt;
  output feature_rsci_bcwt;
  reg feature_rsci_bcwt;
  input [31:0] feature_rsci_idat;


  // Interconnect Declarations
  reg [6:0] feature_rsci_idat_bfwt_6_0;


  // Interconnect Declarations for Component Instantiations 
  assign feature_rsci_wen_comp = (~ feature_rsci_oswt) | feature_rsci_biwt | feature_rsci_bcwt;
  assign feature_rsci_idat_mxwt = MUX_v_7_2_2((feature_rsci_idat[6:0]), feature_rsci_idat_bfwt_6_0,
      feature_rsci_bcwt);
  always @(posedge clk) begin
    if ( rst ) begin
      feature_rsci_bcwt <= 1'b0;
    end
    else begin
      feature_rsci_bcwt <= ~((~(feature_rsci_bcwt | feature_rsci_biwt)) | feature_rsci_bdwt);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      feature_rsci_idat_bfwt_6_0 <= 7'b0000000;
    end
    else if ( feature_rsci_biwt ) begin
      feature_rsci_idat_bfwt_6_0 <= feature_rsci_idat[6:0];
    end
  end

  function automatic [6:0] MUX_v_7_2_2;
    input [6:0] input_0;
    input [6:0] input_1;
    input [0:0] sel;
    reg [6:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_7_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    histogram_core_feature_rsci_feature_wait_ctrl
// ------------------------------------------------------------------


module histogram_core_feature_rsci_feature_wait_ctrl (
  core_wen, feature_rsci_oswt, feature_rsci_biwt, feature_rsci_bdwt, feature_rsci_bcwt,
      feature_rsci_irdy_core_sct, feature_rsci_ivld
);
  input core_wen;
  input feature_rsci_oswt;
  output feature_rsci_biwt;
  output feature_rsci_bdwt;
  input feature_rsci_bcwt;
  output feature_rsci_irdy_core_sct;
  input feature_rsci_ivld;


  // Interconnect Declarations
  wire feature_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign feature_rsci_bdwt = feature_rsci_oswt & core_wen;
  assign feature_rsci_biwt = feature_rsci_ogwt & feature_rsci_ivld;
  assign feature_rsci_ogwt = feature_rsci_oswt & (~ feature_rsci_bcwt);
  assign feature_rsci_irdy_core_sct = feature_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    main_core_core_return_rsc_triosy_obj
// ------------------------------------------------------------------


module main_core_core_return_rsc_triosy_obj (
  return_rsc_triosy_lz, core_wten, return_rsc_triosy_obj_iswt0
);
  output return_rsc_triosy_lz;
  input core_wten;
  input return_rsc_triosy_obj_iswt0;


  // Interconnect Declarations
  wire return_rsc_triosy_obj_ld_core_sct;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) return_rsc_triosy_obj (
      .ld(return_rsc_triosy_obj_ld_core_sct),
      .lz(return_rsc_triosy_lz)
    );
  main_core_core_return_rsc_triosy_obj_return_rsc_triosy_wait_ctrl main_core_core_return_rsc_triosy_obj_return_rsc_triosy_wait_ctrl_inst
      (
      .core_wten(core_wten),
      .return_rsc_triosy_obj_iswt0(return_rsc_triosy_obj_iswt0),
      .return_rsc_triosy_obj_ld_core_sct(return_rsc_triosy_obj_ld_core_sct)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    main_core_core_out_cnsi
// ------------------------------------------------------------------


module main_core_core_out_cnsi (
  clk, rst, out_cns_dat, out_cns_vld, out_cns_rdy, core_wen, out_cnsi_oswt, out_cnsi_wen_comp,
      out_cnsi_idat_mxwt
);
  input clk;
  input rst;
  input [31:0] out_cns_dat;
  input out_cns_vld;
  output out_cns_rdy;
  input core_wen;
  input out_cnsi_oswt;
  output out_cnsi_wen_comp;
  output [31:0] out_cnsi_idat_mxwt;


  // Interconnect Declarations
  wire out_cnsi_biwt;
  wire out_cnsi_bdwt;
  wire out_cnsi_bcwt;
  wire out_cnsi_irdy_core_sct;
  wire out_cnsi_ivld;
  wire [31:0] out_cnsi_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd16),
  .width(32'sd32)) out_cnsi (
      .rdy(out_cns_rdy),
      .vld(out_cns_vld),
      .dat(out_cns_dat),
      .irdy(out_cnsi_irdy_core_sct),
      .ivld(out_cnsi_ivld),
      .idat(out_cnsi_idat)
    );
  main_core_core_out_cnsi_out_wait_ctrl main_core_core_out_cnsi_out_wait_ctrl_inst
      (
      .core_wen(core_wen),
      .out_cnsi_oswt(out_cnsi_oswt),
      .out_cnsi_biwt(out_cnsi_biwt),
      .out_cnsi_bdwt(out_cnsi_bdwt),
      .out_cnsi_bcwt(out_cnsi_bcwt),
      .out_cnsi_irdy_core_sct(out_cnsi_irdy_core_sct),
      .out_cnsi_ivld(out_cnsi_ivld)
    );
  main_core_core_out_cnsi_out_wait_dp main_core_core_out_cnsi_out_wait_dp_inst (
      .clk(clk),
      .rst(rst),
      .out_cnsi_oswt(out_cnsi_oswt),
      .out_cnsi_wen_comp(out_cnsi_wen_comp),
      .out_cnsi_idat_mxwt(out_cnsi_idat_mxwt),
      .out_cnsi_biwt(out_cnsi_biwt),
      .out_cnsi_bdwt(out_cnsi_bdwt),
      .out_cnsi_bcwt(out_cnsi_bcwt),
      .out_cnsi_idat(out_cnsi_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    main_core_core_hist_cnsi
// ------------------------------------------------------------------


module main_core_core_hist_cnsi (
  clk, rst, hist_cns_dat, hist_cns_vld, hist_cns_rdy, core_wen, hist_cnsi_oswt, hist_cnsi_wen_comp
);
  input clk;
  input rst;
  output [31:0] hist_cns_dat;
  output hist_cns_vld;
  input hist_cns_rdy;
  input core_wen;
  input hist_cnsi_oswt;
  output hist_cnsi_wen_comp;


  // Interconnect Declarations
  wire hist_cnsi_irdy;
  wire hist_cnsi_biwt;
  wire hist_cnsi_bdwt;
  wire hist_cnsi_bcwt;
  wire hist_cnsi_ivld_core_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd15),
  .width(32'sd32)) hist_cnsi (
      .irdy(hist_cnsi_irdy),
      .ivld(hist_cnsi_ivld_core_sct),
      .idat(32'b00000000000000000000000000000000),
      .rdy(hist_cns_rdy),
      .vld(hist_cns_vld),
      .dat(hist_cns_dat)
    );
  main_core_core_hist_cnsi_hist_wait_ctrl main_core_core_hist_cnsi_hist_wait_ctrl_inst
      (
      .core_wen(core_wen),
      .hist_cnsi_oswt(hist_cnsi_oswt),
      .hist_cnsi_irdy(hist_cnsi_irdy),
      .hist_cnsi_biwt(hist_cnsi_biwt),
      .hist_cnsi_bdwt(hist_cnsi_bdwt),
      .hist_cnsi_bcwt(hist_cnsi_bcwt),
      .hist_cnsi_ivld_core_sct(hist_cnsi_ivld_core_sct)
    );
  main_core_core_hist_cnsi_hist_wait_dp main_core_core_hist_cnsi_hist_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .hist_cnsi_oswt(hist_cnsi_oswt),
      .hist_cnsi_wen_comp(hist_cnsi_wen_comp),
      .hist_cnsi_biwt(hist_cnsi_biwt),
      .hist_cnsi_bdwt(hist_cnsi_bdwt),
      .hist_cnsi_bcwt(hist_cnsi_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    main_core_core_weight_cnsi
// ------------------------------------------------------------------


module main_core_core_weight_cnsi (
  clk, rst, weight_cns_dat, weight_cns_vld, weight_cns_rdy, core_wen, weight_cnsi_oswt,
      weight_cnsi_wen_comp, weight_cnsi_idat
);
  input clk;
  input rst;
  output [31:0] weight_cns_dat;
  output weight_cns_vld;
  input weight_cns_rdy;
  input core_wen;
  input weight_cnsi_oswt;
  output weight_cnsi_wen_comp;
  input [31:0] weight_cnsi_idat;


  // Interconnect Declarations
  wire weight_cnsi_irdy;
  wire weight_cnsi_biwt;
  wire weight_cnsi_bdwt;
  wire weight_cnsi_bcwt;
  wire weight_cnsi_ivld_core_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd14),
  .width(32'sd32)) weight_cnsi (
      .irdy(weight_cnsi_irdy),
      .ivld(weight_cnsi_ivld_core_sct),
      .idat(weight_cnsi_idat),
      .rdy(weight_cns_rdy),
      .vld(weight_cns_vld),
      .dat(weight_cns_dat)
    );
  main_core_core_weight_cnsi_weight_wait_ctrl main_core_core_weight_cnsi_weight_wait_ctrl_inst
      (
      .core_wen(core_wen),
      .weight_cnsi_oswt(weight_cnsi_oswt),
      .weight_cnsi_irdy(weight_cnsi_irdy),
      .weight_cnsi_biwt(weight_cnsi_biwt),
      .weight_cnsi_bdwt(weight_cnsi_bdwt),
      .weight_cnsi_bcwt(weight_cnsi_bcwt),
      .weight_cnsi_ivld_core_sct(weight_cnsi_ivld_core_sct)
    );
  main_core_core_weight_cnsi_weight_wait_dp main_core_core_weight_cnsi_weight_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .weight_cnsi_oswt(weight_cnsi_oswt),
      .weight_cnsi_wen_comp(weight_cnsi_wen_comp),
      .weight_cnsi_biwt(weight_cnsi_biwt),
      .weight_cnsi_bdwt(weight_cnsi_bdwt),
      .weight_cnsi_bcwt(weight_cnsi_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    main_core_core_feature_cnsi
// ------------------------------------------------------------------


module main_core_core_feature_cnsi (
  clk, rst, feature_cns_dat, feature_cns_vld, feature_cns_rdy, core_wen, feature_cnsi_oswt,
      feature_cnsi_wen_comp, feature_cnsi_idat
);
  input clk;
  input rst;
  output [31:0] feature_cns_dat;
  output feature_cns_vld;
  input feature_cns_rdy;
  input core_wen;
  input feature_cnsi_oswt;
  output feature_cnsi_wen_comp;
  input [31:0] feature_cnsi_idat;


  // Interconnect Declarations
  wire feature_cnsi_irdy;
  wire feature_cnsi_biwt;
  wire feature_cnsi_bdwt;
  wire feature_cnsi_bcwt;
  wire feature_cnsi_ivld_core_sct;


  // Interconnect Declarations for Component Instantiations 
  wire [31:0] nl_feature_cnsi_idat;
  assign nl_feature_cnsi_idat = {25'b0000000000000000000000000 , (feature_cnsi_idat[6:0])};
  ccs_out_wait_v1 #(.rscid(32'sd13),
  .width(32'sd32)) feature_cnsi (
      .irdy(feature_cnsi_irdy),
      .ivld(feature_cnsi_ivld_core_sct),
      .idat(nl_feature_cnsi_idat[31:0]),
      .rdy(feature_cns_rdy),
      .vld(feature_cns_vld),
      .dat(feature_cns_dat)
    );
  main_core_core_feature_cnsi_feature_wait_ctrl main_core_core_feature_cnsi_feature_wait_ctrl_inst
      (
      .core_wen(core_wen),
      .feature_cnsi_oswt(feature_cnsi_oswt),
      .feature_cnsi_irdy(feature_cnsi_irdy),
      .feature_cnsi_biwt(feature_cnsi_biwt),
      .feature_cnsi_bdwt(feature_cnsi_bdwt),
      .feature_cnsi_bcwt(feature_cnsi_bcwt),
      .feature_cnsi_ivld_core_sct(feature_cnsi_ivld_core_sct)
    );
  main_core_core_feature_cnsi_feature_wait_dp main_core_core_feature_cnsi_feature_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .feature_cnsi_oswt(feature_cnsi_oswt),
      .feature_cnsi_wen_comp(feature_cnsi_wen_comp),
      .feature_cnsi_biwt(feature_cnsi_biwt),
      .feature_cnsi_bdwt(feature_cnsi_bdwt),
      .feature_cnsi_bcwt(feature_cnsi_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    histogram_core_n_rsc_triosy_obj
// ------------------------------------------------------------------


module histogram_core_n_rsc_triosy_obj (
  n_rsc_triosy_lz, core_wten, n_rsc_triosy_obj_iswt0
);
  output n_rsc_triosy_lz;
  input core_wten;
  input n_rsc_triosy_obj_iswt0;


  // Interconnect Declarations
  wire n_rsc_triosy_obj_ld_core_sct;


  // Interconnect Declarations for Component Instantiations 
  mgc_io_sync_v2 #(.valid(32'sd0)) n_rsc_triosy_obj (
      .ld(n_rsc_triosy_obj_ld_core_sct),
      .lz(n_rsc_triosy_lz)
    );
  histogram_core_n_rsc_triosy_obj_n_rsc_triosy_wait_ctrl histogram_core_n_rsc_triosy_obj_n_rsc_triosy_wait_ctrl_inst
      (
      .core_wten(core_wten),
      .n_rsc_triosy_obj_iswt0(n_rsc_triosy_obj_iswt0),
      .n_rsc_triosy_obj_ld_core_sct(n_rsc_triosy_obj_ld_core_sct)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    histogram_core_out_rsci
// ------------------------------------------------------------------


module histogram_core_out_rsci (
  clk, rst, out_rsc_dat, out_rsc_vld, out_rsc_rdy, core_wen, out_rsci_oswt, out_rsci_wen_comp,
      out_rsci_idat
);
  input clk;
  input rst;
  output [31:0] out_rsc_dat;
  output out_rsc_vld;
  input out_rsc_rdy;
  input core_wen;
  input out_rsci_oswt;
  output out_rsci_wen_comp;
  input [31:0] out_rsci_idat;


  // Interconnect Declarations
  wire out_rsci_irdy;
  wire out_rsci_biwt;
  wire out_rsci_bdwt;
  wire out_rsci_bcwt;
  wire out_rsci_ivld_core_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd5),
  .width(32'sd32)) out_rsci (
      .irdy(out_rsci_irdy),
      .ivld(out_rsci_ivld_core_sct),
      .idat(out_rsci_idat),
      .rdy(out_rsc_rdy),
      .vld(out_rsc_vld),
      .dat(out_rsc_dat)
    );
  histogram_core_out_rsci_out_wait_ctrl histogram_core_out_rsci_out_wait_ctrl_inst
      (
      .core_wen(core_wen),
      .out_rsci_oswt(out_rsci_oswt),
      .out_rsci_irdy(out_rsci_irdy),
      .out_rsci_biwt(out_rsci_biwt),
      .out_rsci_bdwt(out_rsci_bdwt),
      .out_rsci_bcwt(out_rsci_bcwt),
      .out_rsci_ivld_core_sct(out_rsci_ivld_core_sct)
    );
  histogram_core_out_rsci_out_wait_dp histogram_core_out_rsci_out_wait_dp_inst (
      .clk(clk),
      .rst(rst),
      .out_rsci_oswt(out_rsci_oswt),
      .out_rsci_wen_comp(out_rsci_wen_comp),
      .out_rsci_biwt(out_rsci_biwt),
      .out_rsci_bdwt(out_rsci_bdwt),
      .out_rsci_bcwt(out_rsci_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    histogram_core_hist_rsci
// ------------------------------------------------------------------


module histogram_core_hist_rsci (
  clk, rst, hist_rsc_dat, hist_rsc_vld, hist_rsc_rdy, core_wen, core_wten, hist_rsci_oswt,
      hist_rsci_ivld_mxwt, hist_rsci_idat_mxwt
);
  input clk;
  input rst;
  input [31:0] hist_rsc_dat;
  input hist_rsc_vld;
  output hist_rsc_rdy;
  input core_wen;
  input core_wten;
  input hist_rsci_oswt;
  output hist_rsci_ivld_mxwt;
  output [31:0] hist_rsci_idat_mxwt;


  // Interconnect Declarations
  wire hist_rsci_biwt;
  wire hist_rsci_bdwt;
  wire hist_rsci_ivld;
  wire [31:0] hist_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd3),
  .width(32'sd32)) hist_rsci (
      .rdy(hist_rsc_rdy),
      .vld(hist_rsc_vld),
      .dat(hist_rsc_dat),
      .irdy(hist_rsci_biwt),
      .ivld(hist_rsci_ivld),
      .idat(hist_rsci_idat)
    );
  histogram_core_hist_rsci_hist_wait_ctrl histogram_core_hist_rsci_hist_wait_ctrl_inst
      (
      .core_wen(core_wen),
      .core_wten(core_wten),
      .hist_rsci_oswt(hist_rsci_oswt),
      .hist_rsci_biwt(hist_rsci_biwt),
      .hist_rsci_bdwt(hist_rsci_bdwt)
    );
  histogram_core_hist_rsci_hist_wait_dp histogram_core_hist_rsci_hist_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .hist_rsci_ivld_mxwt(hist_rsci_ivld_mxwt),
      .hist_rsci_idat_mxwt(hist_rsci_idat_mxwt),
      .hist_rsci_biwt(hist_rsci_biwt),
      .hist_rsci_bdwt(hist_rsci_bdwt),
      .hist_rsci_ivld(hist_rsci_ivld),
      .hist_rsci_idat(hist_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    histogram_core_weight_rsci
// ------------------------------------------------------------------


module histogram_core_weight_rsci (
  clk, rst, weight_rsc_dat, weight_rsc_vld, weight_rsc_rdy, core_wen, weight_rsci_oswt,
      weight_rsci_wen_comp, weight_rsci_idat_mxwt
);
  input clk;
  input rst;
  input [31:0] weight_rsc_dat;
  input weight_rsc_vld;
  output weight_rsc_rdy;
  input core_wen;
  input weight_rsci_oswt;
  output weight_rsci_wen_comp;
  output [31:0] weight_rsci_idat_mxwt;


  // Interconnect Declarations
  wire weight_rsci_biwt;
  wire weight_rsci_bdwt;
  wire weight_rsci_bcwt;
  wire weight_rsci_irdy_core_sct;
  wire weight_rsci_ivld;
  wire [31:0] weight_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd2),
  .width(32'sd32)) weight_rsci (
      .rdy(weight_rsc_rdy),
      .vld(weight_rsc_vld),
      .dat(weight_rsc_dat),
      .irdy(weight_rsci_irdy_core_sct),
      .ivld(weight_rsci_ivld),
      .idat(weight_rsci_idat)
    );
  histogram_core_weight_rsci_weight_wait_ctrl histogram_core_weight_rsci_weight_wait_ctrl_inst
      (
      .core_wen(core_wen),
      .weight_rsci_oswt(weight_rsci_oswt),
      .weight_rsci_biwt(weight_rsci_biwt),
      .weight_rsci_bdwt(weight_rsci_bdwt),
      .weight_rsci_bcwt(weight_rsci_bcwt),
      .weight_rsci_irdy_core_sct(weight_rsci_irdy_core_sct),
      .weight_rsci_ivld(weight_rsci_ivld)
    );
  histogram_core_weight_rsci_weight_wait_dp histogram_core_weight_rsci_weight_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .weight_rsci_oswt(weight_rsci_oswt),
      .weight_rsci_wen_comp(weight_rsci_wen_comp),
      .weight_rsci_idat_mxwt(weight_rsci_idat_mxwt),
      .weight_rsci_biwt(weight_rsci_biwt),
      .weight_rsci_bdwt(weight_rsci_bdwt),
      .weight_rsci_bcwt(weight_rsci_bcwt),
      .weight_rsci_idat(weight_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    histogram_core_feature_rsci
// ------------------------------------------------------------------


module histogram_core_feature_rsci (
  clk, rst, feature_rsc_dat, feature_rsc_vld, feature_rsc_rdy, core_wen, feature_rsci_oswt,
      feature_rsci_wen_comp, feature_rsci_idat_mxwt
);
  input clk;
  input rst;
  input [31:0] feature_rsc_dat;
  input feature_rsc_vld;
  output feature_rsc_rdy;
  input core_wen;
  input feature_rsci_oswt;
  output feature_rsci_wen_comp;
  output [6:0] feature_rsci_idat_mxwt;


  // Interconnect Declarations
  wire feature_rsci_biwt;
  wire feature_rsci_bdwt;
  wire feature_rsci_bcwt;
  wire feature_rsci_irdy_core_sct;
  wire feature_rsci_ivld;
  wire [31:0] feature_rsci_idat;
  wire [6:0] feature_rsci_idat_mxwt_pconst;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd1),
  .width(32'sd32)) feature_rsci (
      .rdy(feature_rsc_rdy),
      .vld(feature_rsc_vld),
      .dat(feature_rsc_dat),
      .irdy(feature_rsci_irdy_core_sct),
      .ivld(feature_rsci_ivld),
      .idat(feature_rsci_idat)
    );
  histogram_core_feature_rsci_feature_wait_ctrl histogram_core_feature_rsci_feature_wait_ctrl_inst
      (
      .core_wen(core_wen),
      .feature_rsci_oswt(feature_rsci_oswt),
      .feature_rsci_biwt(feature_rsci_biwt),
      .feature_rsci_bdwt(feature_rsci_bdwt),
      .feature_rsci_bcwt(feature_rsci_bcwt),
      .feature_rsci_irdy_core_sct(feature_rsci_irdy_core_sct),
      .feature_rsci_ivld(feature_rsci_ivld)
    );
  histogram_core_feature_rsci_feature_wait_dp histogram_core_feature_rsci_feature_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .feature_rsci_oswt(feature_rsci_oswt),
      .feature_rsci_wen_comp(feature_rsci_wen_comp),
      .feature_rsci_idat_mxwt(feature_rsci_idat_mxwt_pconst),
      .feature_rsci_biwt(feature_rsci_biwt),
      .feature_rsci_bdwt(feature_rsci_bdwt),
      .feature_rsci_bcwt(feature_rsci_bcwt),
      .feature_rsci_idat(feature_rsci_idat)
    );
  assign feature_rsci_idat_mxwt = feature_rsci_idat_mxwt_pconst;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    main_core_core
// ------------------------------------------------------------------


module main_core_core (
  clk, rst, return_rsc_triosy_lz, feature_cns_dat, feature_cns_vld, feature_cns_rdy,
      weight_cns_dat, weight_cns_vld, weight_cns_rdy, hist_cns_dat, hist_cns_vld,
      hist_cns_rdy, out_cns_dat, out_cns_vld, out_cns_rdy, return_rsci_idat
);
  input clk;
  input rst;
  output return_rsc_triosy_lz;
  output [31:0] feature_cns_dat;
  output feature_cns_vld;
  input feature_cns_rdy;
  output [31:0] weight_cns_dat;
  output weight_cns_vld;
  input weight_cns_rdy;
  output [31:0] hist_cns_dat;
  output hist_cns_vld;
  input hist_cns_rdy;
  input [31:0] out_cns_dat;
  input out_cns_vld;
  output out_cns_rdy;
  output [31:0] return_rsci_idat;


  // Interconnect Declarations
  wire core_wen;
  wire core_wten;
  wire feature_cnsi_wen_comp;
  wire weight_cnsi_wen_comp;
  wire hist_cnsi_wen_comp;
  wire out_cnsi_wen_comp;
  wire [31:0] out_cnsi_idat_mxwt;
  reg weight_cnsi_idat_31;
  reg [7:0] weight_cnsi_idat_30_23;
  reg weight_cnsi_idat_22;
  reg [21:0] weight_cnsi_idat_21_0;
  reg [6:0] feature_cnsi_idat_6_0;
  wire [4:0] fsm_output;
  wire [27:0] operator_28_26_true_AC_TRN_AC_WRAP_rshift_tmp;
  wire or_dcpl;
  wire mux_tmp_3;
  wire and_dcpl;
  wire and_23_cse;
  reg for_slc_for_acc_5_itm;
  wire return_add_generic_AC_RND_CONV_false_exception_sva_1;
  wire return_extract_m_zero_sva_1;
  wire return_add_generic_AC_RND_CONV_false_op1_nan_sva_1;
  wire [25:1] return_add_generic_AC_RND_CONV_false_r_rnd_sva_1;
  wire [25:0] nl_return_add_generic_AC_RND_CONV_false_r_rnd_sva_1;
  wire return_add_generic_AC_RND_CONV_false_rnd_ovf_land_sva_1;
  wire return_add_generic_AC_RND_CONV_false_r_sign_sva_mx0w0;
  wire [27:0] return_add_generic_AC_RND_CONV_false_add_r_1_sva_1;
  wire [25:0] return_add_generic_AC_RND_CONV_false_return_add_generic_AC_RND_CONV_false_nor_psp_sva_1;
  wire return_extract_return_extract_nor_cse_sva_1;
  reg [21:0] wt_d_21_0_sva;
  wire [9:0] return_add_generic_AC_RND_CONV_false_acc_psp_sva_1;
  wire [10:0] nl_return_add_generic_AC_RND_CONV_false_acc_psp_sva_1;
  wire [23:0] return_add_generic_AC_RND_CONV_false_r_un_qr_lpi_2_dfm_mx0;
  wire return_add_generic_AC_RND_CONV_false_shift_r_sva_1;
  reg [6:0] i_1_6_0_sva;
  reg [7:0] wt_d_30_23_sva;
  reg wt_d_31_sva;
  wire [8:0] return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1;
  wire [9:0] nl_return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1;
  wire [8:0] return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0;
  wire for_and_cse;
  reg reg_return_rsc_triosy_obj_ld_core_psct_cse;
  reg reg_out_cnsi_irdy_core_psct_cse;
  reg reg_hist_cnsi_ivld_core_psct_cse;
  reg reg_weight_cnsi_ivld_core_psct_cse;
  wire and_2_cse;
  wire and_9_cse;
  wire return_operator_2_or_2;
  reg reg_return_rsci_idat_reg;
  wire [27:0] operator_28_26_true_AC_TRN_AC_WRAP_lshift_itm;
  wire [6:0] for_acc_1_cse_6_0_sva_mx0w2;
  wire [7:0] nl_for_acc_1_cse_6_0_sva_mx0w2;
  wire [24:0] return_add_generic_AC_RND_CONV_false_op1_m_qr_sva_1;
  wire [25:0] nl_return_add_generic_AC_RND_CONV_false_op1_m_qr_sva_1;
  wire return_extract_return_extract_or_sva_1;
  wire [7:0] return_add_generic_AC_RND_CONV_false_qelse_2_qif_acc_pmx_7_0_sva_1;
  wire [8:0] nl_return_add_generic_AC_RND_CONV_false_qelse_2_qif_acc_pmx_7_0_sva_1;
  wire return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1;
  wire [1:0] return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0;
  wire return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_22_mx0;
  wire [21:0] return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_21_0_mx0;
  wire drf_op1_m_smx_24_lpi_2_dfm_1;
  wire drf_op1_m_smx_23_0_lpi_2_dfm_23_1;
  wire drf_op1_m_smx_23_0_lpi_2_dfm_22_1;
  wire [21:0] drf_op1_m_smx_23_0_lpi_2_dfm_21_0_1;
  wire return_extract_not_4;
  wire [25:0] operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2;
  wire [26:0] nl_operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2;
  wire return_add_generic_AC_RND_CONV_false_conc_89_7;
  wire [6:0] return_add_generic_AC_RND_CONV_false_conc_89_6_0;
  wire libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_2;
  wire [4:0] libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3;
  wire or_1_itm;
  wire or_itm;
  wire return_add_generic_AC_RND_CONV_false_r_inf_acc_itm_9_1;
  wire return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_itm_8_1;
  wire for_acc_2_itm_5_1;

  wire[6:0] for_1_mux_nl;
  wire[0:0] nor_8_nl;
  wire[0:0] return_add_generic_AC_RND_CONV_false_if_1_return_add_generic_AC_RND_CONV_false_if_1_nor_nl;
  wire[0:0] and_39_nl;
  wire[7:0] return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_and_nl;
  wire[0:0] return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_nor_nl;
  wire[0:0] ac_std_float_cctor_ac_std_float_mux_4_nl;
  wire[9:0] return_add_generic_AC_RND_CONV_false_qif_3_mux_nl;
  wire[9:0] return_add_generic_AC_RND_CONV_false_qelse_3_acc_nl;
  wire[10:0] nl_return_add_generic_AC_RND_CONV_false_qelse_3_acc_nl;
  wire[4:0] return_add_generic_AC_RND_CONV_false_qelse_3_acc_3_nl;
  wire[5:0] nl_return_add_generic_AC_RND_CONV_false_qelse_3_acc_3_nl;
  wire[24:1] return_add_generic_AC_RND_CONV_false_r_un_qif_acc_nl;
  wire[24:0] nl_return_add_generic_AC_RND_CONV_false_r_un_qif_acc_nl;
  wire[0:0] xnor_nl;
  wire[0:0] return_add_generic_AC_RND_CONV_false_r_rnd_and_nl;
  wire[0:0] xor_2_nl;
  wire[9:0] return_add_generic_AC_RND_CONV_false_r_inf_acc_nl;
  wire[10:0] nl_return_add_generic_AC_RND_CONV_false_r_inf_acc_nl;
  wire[8:0] return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_nl;
  wire[9:0] nl_return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_nl;
  wire[0:0] return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_and_nl;
  wire[0:0] return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_or_1_nl;
  wire[0:0] return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_and_4_nl;
  wire[21:0] return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_and_5_nl;
  wire[0:0] return_add_generic_AC_RND_CONV_false_e_dif_not_10_nl;
  wire[0:0] return_add_generic_AC_RND_CONV_false_qelse_2_mux_1_nl;
  wire[6:0] return_add_generic_AC_RND_CONV_false_qelse_2_mux_nl;
  wire[5:0] for_acc_2_nl;
  wire[6:0] nl_for_acc_2_nl;
  wire[0:0] mux_6_nl;
  wire[0:0] mux_9_nl;
  wire[0:0] mux_5_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [27:0] nl_operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_a;
  assign nl_operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_a = signext_28_27({drf_op1_m_smx_24_lpi_2_dfm_1
      , drf_op1_m_smx_23_0_lpi_2_dfm_23_1 , drf_op1_m_smx_23_0_lpi_2_dfm_22_1 , drf_op1_m_smx_23_0_lpi_2_dfm_21_0_1
      , 2'b00});
  wire [7:0] nl_operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_s;
  assign nl_operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_s = {return_add_generic_AC_RND_CONV_false_conc_89_7
      , return_add_generic_AC_RND_CONV_false_conc_89_6_0};
  wire [27:0] nl_operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_a;
  assign nl_operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_a = {operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2
      , (operator_28_26_true_AC_TRN_AC_WRAP_rshift_tmp[1:0])};
  wire[3:0] return_add_generic_AC_RND_CONV_false_shift_l_return_add_generic_AC_RND_CONV_false_shift_l_and_nl;
  wire[0:0] return_add_generic_AC_RND_CONV_false_shift_exponent_limited_not_1_nl;
  wire[4:0] return_add_generic_AC_RND_CONV_false_shift_l_mux_nl;
  wire [8:0] nl_operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_s;
  assign return_add_generic_AC_RND_CONV_false_shift_exponent_limited_not_1_nl = ~
      return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_itm_8_1;
  assign return_add_generic_AC_RND_CONV_false_shift_l_return_add_generic_AC_RND_CONV_false_shift_l_and_nl
      = MUX_v_4_2_2(4'b0000, (return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0[8:5]),
      return_add_generic_AC_RND_CONV_false_shift_exponent_limited_not_1_nl);
  assign return_add_generic_AC_RND_CONV_false_shift_l_mux_nl = MUX_v_5_2_2((return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0[4:0]),
      libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3, return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_itm_8_1);
  assign nl_operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_s = {return_add_generic_AC_RND_CONV_false_shift_l_return_add_generic_AC_RND_CONV_false_shift_l_and_nl
      , return_add_generic_AC_RND_CONV_false_shift_l_mux_nl};
  wire [7:0] nl_operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_s_1;
  assign nl_operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_s_1 = {return_add_generic_AC_RND_CONV_false_conc_89_7
      , return_add_generic_AC_RND_CONV_false_conc_89_6_0};
  wire [27:0] nl_leading_sign_28_1_1_0_rg_mantissa;
  assign nl_leading_sign_28_1_1_0_rg_mantissa = {operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2
      , (operator_28_26_true_AC_TRN_AC_WRAP_rshift_tmp[1:0])};
  wire [31:0] nl_main_core_core_feature_cnsi_inst_feature_cnsi_idat;
  assign nl_main_core_core_feature_cnsi_inst_feature_cnsi_idat = {25'b0, feature_cnsi_idat_6_0};
  wire [31:0] nl_main_core_core_weight_cnsi_inst_weight_cnsi_idat;
  assign nl_main_core_core_weight_cnsi_inst_weight_cnsi_idat = {weight_cnsi_idat_31
      , weight_cnsi_idat_30_23 , weight_cnsi_idat_22 , weight_cnsi_idat_21_0};
  wire [0:0] nl_main_core_core_core_fsm_inst_for_C_1_tr0;
  assign nl_main_core_core_core_fsm_inst_for_C_1_tr0 = ~ for_slc_for_acc_5_itm;
  mgc_shift_r_v5 #(.width_a(32'sd28),
  .signd_a(32'sd1),
  .width_s(32'sd8),
  .width_z(32'sd28)) operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg (
      .a(nl_operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_a[27:0]),
      .s(nl_operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_s[7:0]),
      .z(operator_28_26_true_AC_TRN_AC_WRAP_rshift_tmp)
    );
  mgc_shift_l_v5 #(.width_a(32'sd28),
  .signd_a(32'sd0),
  .width_s(32'sd9),
  .width_z(32'sd28)) operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg (
      .a(nl_operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_a[27:0]),
      .s(nl_operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_s[8:0]),
      .z(return_add_generic_AC_RND_CONV_false_add_r_1_sva_1)
    );
  mgc_shift_l_v5 #(.width_a(32'sd1),
  .signd_a(32'sd1),
  .width_s(32'sd8),
  .width_z(32'sd28)) operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1 (
      .a(1'b1),
      .s(nl_operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_s_1[7:0]),
      .z(operator_28_26_true_AC_TRN_AC_WRAP_lshift_itm)
    );
  leading_sign_28_1_1_0  leading_sign_28_1_1_0_rg (
      .mantissa(nl_leading_sign_28_1_1_0_rg_mantissa[27:0]),
      .all_same(libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_2),
      .rtn(libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3)
    );
  main_core_core_feature_cnsi main_core_core_feature_cnsi_inst (
      .clk(clk),
      .rst(rst),
      .feature_cns_dat(feature_cns_dat),
      .feature_cns_vld(feature_cns_vld),
      .feature_cns_rdy(feature_cns_rdy),
      .core_wen(core_wen),
      .feature_cnsi_oswt(reg_weight_cnsi_ivld_core_psct_cse),
      .feature_cnsi_wen_comp(feature_cnsi_wen_comp),
      .feature_cnsi_idat(nl_main_core_core_feature_cnsi_inst_feature_cnsi_idat[31:0])
    );
  main_core_core_weight_cnsi main_core_core_weight_cnsi_inst (
      .clk(clk),
      .rst(rst),
      .weight_cns_dat(weight_cns_dat),
      .weight_cns_vld(weight_cns_vld),
      .weight_cns_rdy(weight_cns_rdy),
      .core_wen(core_wen),
      .weight_cnsi_oswt(reg_weight_cnsi_ivld_core_psct_cse),
      .weight_cnsi_wen_comp(weight_cnsi_wen_comp),
      .weight_cnsi_idat(nl_main_core_core_weight_cnsi_inst_weight_cnsi_idat[31:0])
    );
  main_core_core_hist_cnsi main_core_core_hist_cnsi_inst (
      .clk(clk),
      .rst(rst),
      .hist_cns_dat(hist_cns_dat),
      .hist_cns_vld(hist_cns_vld),
      .hist_cns_rdy(hist_cns_rdy),
      .core_wen(core_wen),
      .hist_cnsi_oswt(reg_hist_cnsi_ivld_core_psct_cse),
      .hist_cnsi_wen_comp(hist_cnsi_wen_comp)
    );
  main_core_core_out_cnsi main_core_core_out_cnsi_inst (
      .clk(clk),
      .rst(rst),
      .out_cns_dat(out_cns_dat),
      .out_cns_vld(out_cns_vld),
      .out_cns_rdy(out_cns_rdy),
      .core_wen(core_wen),
      .out_cnsi_oswt(reg_out_cnsi_irdy_core_psct_cse),
      .out_cnsi_wen_comp(out_cnsi_wen_comp),
      .out_cnsi_idat_mxwt(out_cnsi_idat_mxwt)
    );
  main_core_core_return_rsc_triosy_obj main_core_core_return_rsc_triosy_obj_inst
      (
      .return_rsc_triosy_lz(return_rsc_triosy_lz),
      .core_wten(core_wten),
      .return_rsc_triosy_obj_iswt0(reg_return_rsc_triosy_obj_ld_core_psct_cse)
    );
  main_core_core_staller main_core_core_staller_inst (
      .clk(clk),
      .rst(rst),
      .core_wen(core_wen),
      .core_wten(core_wten),
      .feature_cnsi_wen_comp(feature_cnsi_wen_comp),
      .weight_cnsi_wen_comp(weight_cnsi_wen_comp),
      .hist_cnsi_wen_comp(hist_cnsi_wen_comp),
      .out_cnsi_wen_comp(out_cnsi_wen_comp)
    );
  main_core_core_core_fsm main_core_core_core_fsm_inst (
      .clk(clk),
      .rst(rst),
      .core_wen(core_wen),
      .fsm_output(fsm_output),
      .for_C_1_tr0(nl_main_core_core_core_fsm_inst_for_C_1_tr0[0:0]),
      .for_1_C_0_tr0(or_dcpl)
    );
  assign return_rsci_idat = {31'b0, reg_return_rsci_idat_reg};
  assign for_and_cse = core_wen & (fsm_output[1]);
  assign and_2_cse = (~ (operator_28_26_true_AC_TRN_AC_WRAP_rshift_tmp[0])) & libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_2;
  assign and_9_cse = (wt_d_30_23_sva==8'b11111111);
  assign nl_for_acc_1_cse_6_0_sva_mx0w2 = i_1_6_0_sva + 7'b0000001;
  assign for_acc_1_cse_6_0_sva_mx0w2 = nl_for_acc_1_cse_6_0_sva_mx0w2[6:0];
  assign return_add_generic_AC_RND_CONV_false_r_sign_sva_mx0w0 = (return_add_generic_AC_RND_CONV_false_r_rnd_sva_1[25])
      ^ return_add_generic_AC_RND_CONV_false_rnd_ovf_land_sva_1;
  assign nl_return_add_generic_AC_RND_CONV_false_op1_m_qr_sva_1 = ({1'b1 , (~ return_extract_return_extract_or_sva_1)
      , (~ for_slc_for_acc_5_itm) , (~ wt_d_21_0_sva)}) + 25'b0000000000000000000000001;
  assign return_add_generic_AC_RND_CONV_false_op1_m_qr_sva_1 = nl_return_add_generic_AC_RND_CONV_false_op1_m_qr_sva_1[24:0];
  assign return_extract_return_extract_or_sva_1 = (wt_d_30_23_sva!=8'b00000000);
  assign nl_return_add_generic_AC_RND_CONV_false_qelse_2_qif_acc_pmx_7_0_sva_1 =
      conv_u2s_7_8(~ (return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1[6:0]))
      + 8'b00000001;
  assign return_add_generic_AC_RND_CONV_false_qelse_2_qif_acc_pmx_7_0_sva_1 = nl_return_add_generic_AC_RND_CONV_false_qelse_2_qif_acc_pmx_7_0_sva_1[7:0];
  assign nl_return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1 = conv_u2u_8_9(wt_d_30_23_sva)
      + conv_u2u_1_9(return_extract_return_extract_nor_cse_sva_1);
  assign return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1 = nl_return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1[8:0];
  assign return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1
      = ~((return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1[7]) ^ (return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1[8]));
  assign nl_return_add_generic_AC_RND_CONV_false_qelse_3_acc_3_nl = ({1'b1 , (~ (libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3[4:1]))})
      + 5'b00001;
  assign return_add_generic_AC_RND_CONV_false_qelse_3_acc_3_nl = nl_return_add_generic_AC_RND_CONV_false_qelse_3_acc_3_nl[4:0];
  assign nl_return_add_generic_AC_RND_CONV_false_qelse_3_acc_nl = conv_s2s_6_10({return_add_generic_AC_RND_CONV_false_qelse_3_acc_3_nl
      , (~ (libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3[0]))})
      + conv_u2s_9_10(return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0);
  assign return_add_generic_AC_RND_CONV_false_qelse_3_acc_nl = nl_return_add_generic_AC_RND_CONV_false_qelse_3_acc_nl[9:0];
  assign return_add_generic_AC_RND_CONV_false_qif_3_mux_nl = MUX_v_10_2_2(10'b0000000001,
      return_add_generic_AC_RND_CONV_false_qelse_3_acc_nl, return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_itm_8_1);
  assign nl_return_add_generic_AC_RND_CONV_false_acc_psp_sva_1 = return_add_generic_AC_RND_CONV_false_qif_3_mux_nl
      + conv_u2s_1_10(return_add_generic_AC_RND_CONV_false_shift_r_sva_1);
  assign return_add_generic_AC_RND_CONV_false_acc_psp_sva_1 = nl_return_add_generic_AC_RND_CONV_false_acc_psp_sva_1[9:0];
  assign nl_return_add_generic_AC_RND_CONV_false_r_un_qif_acc_nl =  -(return_add_generic_AC_RND_CONV_false_r_rnd_sva_1[24:1]);
  assign return_add_generic_AC_RND_CONV_false_r_un_qif_acc_nl = nl_return_add_generic_AC_RND_CONV_false_r_un_qif_acc_nl[23:0];
  assign xnor_nl = ~((return_add_generic_AC_RND_CONV_false_r_rnd_sva_1[25]) ^ return_add_generic_AC_RND_CONV_false_rnd_ovf_land_sva_1);
  assign return_add_generic_AC_RND_CONV_false_r_un_qr_lpi_2_dfm_mx0 = MUX_v_24_2_2(return_add_generic_AC_RND_CONV_false_r_un_qif_acc_nl,
      (return_add_generic_AC_RND_CONV_false_r_rnd_sva_1[24:1]), xnor_nl);
  assign return_add_generic_AC_RND_CONV_false_r_rnd_and_nl = (return_add_generic_AC_RND_CONV_false_add_r_1_sva_1[2])
      & ((return_add_generic_AC_RND_CONV_false_add_r_1_sva_1[0]) | (return_add_generic_AC_RND_CONV_false_return_add_generic_AC_RND_CONV_false_nor_psp_sva_1!=26'b00000000000000000000000000)
      | (return_add_generic_AC_RND_CONV_false_add_r_1_sva_1[1]) | (return_add_generic_AC_RND_CONV_false_add_r_1_sva_1[3]));
  assign nl_return_add_generic_AC_RND_CONV_false_r_rnd_sva_1 = (return_add_generic_AC_RND_CONV_false_add_r_1_sva_1[27:3])
      + conv_u2s_1_25(return_add_generic_AC_RND_CONV_false_r_rnd_and_nl);
  assign return_add_generic_AC_RND_CONV_false_r_rnd_sva_1 = nl_return_add_generic_AC_RND_CONV_false_r_rnd_sva_1[24:0];
  assign xor_2_nl = (return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1[7]) ^
      (return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1[8]);
  assign return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0 = MUX_v_9_2_2(9'b010000000,
      return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1, xor_2_nl);
  assign return_add_generic_AC_RND_CONV_false_shift_r_sva_1 = return_add_generic_AC_RND_CONV_false_rnd_ovf_land_sva_1
      | (return_add_generic_AC_RND_CONV_false_r_sign_sva_mx0w0 & (return_add_generic_AC_RND_CONV_false_r_rnd_sva_1[24:1]==24'b000000000000000000000000));
  assign return_add_generic_AC_RND_CONV_false_op1_nan_sva_1 = and_9_cse & (~ return_extract_m_zero_sva_1);
  assign nl_return_add_generic_AC_RND_CONV_false_r_inf_acc_nl = (~ return_add_generic_AC_RND_CONV_false_acc_psp_sva_1)
      + 10'b0011111111;
  assign return_add_generic_AC_RND_CONV_false_r_inf_acc_nl = nl_return_add_generic_AC_RND_CONV_false_r_inf_acc_nl[9:0];
  assign return_add_generic_AC_RND_CONV_false_r_inf_acc_itm_9_1 = readslicef_10_1_9(return_add_generic_AC_RND_CONV_false_r_inf_acc_nl);
  assign return_add_generic_AC_RND_CONV_false_exception_sva_1 = (and_9_cse & return_extract_m_zero_sva_1)
      | return_add_generic_AC_RND_CONV_false_op1_nan_sva_1 | return_add_generic_AC_RND_CONV_false_r_inf_acc_itm_9_1;
  assign return_extract_m_zero_sva_1 = ~(for_slc_for_acc_5_itm | (wt_d_21_0_sva!=22'b0000000000000000000000));
  assign nl_return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_nl =
      conv_u2s_5_9(libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3)
      - return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0;
  assign return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_nl = nl_return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_nl[8:0];
  assign return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_itm_8_1
      = readslicef_9_1_8(return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_nl);
  assign return_add_generic_AC_RND_CONV_false_rnd_ovf_land_sva_1 = (return_add_generic_AC_RND_CONV_false_add_r_1_sva_1[26:2]==25'b1111111111111111111111111);
  assign return_add_generic_AC_RND_CONV_false_return_add_generic_AC_RND_CONV_false_nor_psp_sva_1
      = ~((signext_26_25({(~ drf_op1_m_smx_24_lpi_2_dfm_1) , (~ drf_op1_m_smx_23_0_lpi_2_dfm_23_1)
      , (~ drf_op1_m_smx_23_0_lpi_2_dfm_22_1) , (~ drf_op1_m_smx_23_0_lpi_2_dfm_21_0_1)}))
      | (operator_28_26_true_AC_TRN_AC_WRAP_lshift_itm[27:2]));
  assign return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0 = MUX_v_2_2_2(({1'b0
      , return_extract_return_extract_or_sva_1}), (return_add_generic_AC_RND_CONV_false_op1_m_qr_sva_1[24:23]),
      wt_d_31_sva);
  assign return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_22_mx0 = MUX_s_1_2_2(for_slc_for_acc_5_itm,
      (return_add_generic_AC_RND_CONV_false_op1_m_qr_sva_1[22]), wt_d_31_sva);
  assign return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_21_0_mx0 = MUX_v_22_2_2(wt_d_21_0_sva,
      (return_add_generic_AC_RND_CONV_false_op1_m_qr_sva_1[21:0]), wt_d_31_sva);
  assign drf_op1_m_smx_24_lpi_2_dfm_1 = (return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0[1])
      & return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1;
  assign drf_op1_m_smx_23_0_lpi_2_dfm_23_1 = (return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0[0])
      | (~ return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1);
  assign drf_op1_m_smx_23_0_lpi_2_dfm_22_1 = return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_22_mx0
      & return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1;
  assign drf_op1_m_smx_23_0_lpi_2_dfm_21_0_1 = MUX_v_22_2_2(22'b0000000000000000000000,
      return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_21_0_mx0, return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1);
  assign return_extract_return_extract_nor_cse_sva_1 = ~((wt_d_30_23_sva!=8'b00000000));
  assign return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_and_nl
      = (return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0[1]) &
      (~ return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1);
  assign return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_or_1_nl
      = (return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0[0]) |
      return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1;
  assign return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_and_4_nl
      = return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_22_mx0 & (~ return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1);
  assign return_add_generic_AC_RND_CONV_false_e_dif_not_10_nl = ~ return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1;
  assign return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_and_5_nl
      = MUX_v_22_2_2(22'b0000000000000000000000, return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_21_0_mx0,
      return_add_generic_AC_RND_CONV_false_e_dif_not_10_nl);
  assign nl_operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2
      = (operator_28_26_true_AC_TRN_AC_WRAP_rshift_tmp[27:2]) + conv_s2s_25_26({return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_and_nl
      , return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_or_1_nl
      , return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_and_4_nl
      , return_add_generic_AC_RND_CONV_false_op_lshift_return_add_generic_AC_RND_CONV_false_op_lshift_and_5_nl});
  assign operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2
      = nl_operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2[25:0];
  assign return_add_generic_AC_RND_CONV_false_qelse_2_mux_1_nl = MUX_s_1_2_2((~ (return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1[7])),
      (return_add_generic_AC_RND_CONV_false_qelse_2_qif_acc_pmx_7_0_sva_1[7]), return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1);
  assign return_add_generic_AC_RND_CONV_false_conc_89_7 = return_add_generic_AC_RND_CONV_false_qelse_2_mux_1_nl
      & return_extract_not_4;
  assign return_add_generic_AC_RND_CONV_false_qelse_2_mux_nl = MUX_v_7_2_2((return_add_generic_AC_RND_CONV_false_op1_e_b_8_0_sva_1[6:0]),
      (return_add_generic_AC_RND_CONV_false_qelse_2_qif_acc_pmx_7_0_sva_1[6:0]),
      return_add_generic_AC_RND_CONV_false_e_dif_return_add_generic_AC_RND_CONV_false_e_dif_xnor_psp_sva_1);
  assign return_add_generic_AC_RND_CONV_false_conc_89_6_0 = MUX_v_7_2_2(7'b0000000,
      return_add_generic_AC_RND_CONV_false_qelse_2_mux_nl, return_extract_not_4);
  assign return_extract_not_4 = ~(return_extract_return_extract_nor_cse_sva_1 & return_extract_m_zero_sva_1);
  assign return_operator_2_or_2 = (out_cnsi_idat_mxwt[30:0]!=31'b0000000000000000000000000000000);
  assign nl_for_acc_2_nl = conv_u2s_5_6(for_acc_1_cse_6_0_sva_mx0w2[6:2]) + 6'b100111;
  assign for_acc_2_nl = nl_for_acc_2_nl[5:0];
  assign for_acc_2_itm_5_1 = readslicef_6_1_5(for_acc_2_nl);
  assign or_1_itm = (out_cnsi_idat_mxwt!=32'b00111111100000000000000000000000);
  assign or_itm = (i_1_6_0_sva[6:1]!=6'b000000);
  assign mux_9_nl = MUX_s_1_2_2(return_operator_2_or_2, or_1_itm, or_itm);
  assign mux_6_nl = MUX_s_1_2_2(mux_9_nl, return_operator_2_or_2, i_1_6_0_sva[0]);
  assign or_dcpl = mux_6_nl | (~ for_acc_2_itm_5_1);
  assign mux_5_nl = MUX_s_1_2_2(return_operator_2_or_2, or_1_itm, or_itm);
  assign mux_tmp_3 = MUX_s_1_2_2((~ mux_5_nl), (~ return_operator_2_or_2), i_1_6_0_sva[0]);
  assign and_dcpl = mux_tmp_3 & for_acc_2_itm_5_1;
  assign and_23_cse = (~ for_slc_for_acc_5_itm) & (fsm_output[2]);
  always @(posedge clk) begin
    if ( rst ) begin
      wt_d_21_0_sva <= 22'b0000000000000000000000;
      i_1_6_0_sva <= 7'b0000000;
      wt_d_30_23_sva <= 8'b00000000;
      wt_d_31_sva <= 1'b0;
      reg_return_rsc_triosy_obj_ld_core_psct_cse <= 1'b0;
      reg_out_cnsi_irdy_core_psct_cse <= 1'b0;
      reg_hist_cnsi_ivld_core_psct_cse <= 1'b0;
      reg_weight_cnsi_ivld_core_psct_cse <= 1'b0;
      for_slc_for_acc_5_itm <= 1'b0;
    end
    else if ( core_wen ) begin
      wt_d_21_0_sva <= MUX_v_22_2_2(22'b0000000000000000000000, weight_cnsi_idat_21_0,
          (fsm_output[2]));
      i_1_6_0_sva <= MUX_v_7_2_2(7'b0000000, for_1_mux_nl, nor_8_nl);
      wt_d_30_23_sva <= MUX_v_8_2_2(8'b00000000, weight_cnsi_idat_30_23, (fsm_output[2]));
      wt_d_31_sva <= weight_cnsi_idat_31 & (fsm_output[2]);
      reg_return_rsc_triosy_obj_ld_core_psct_cse <= or_dcpl & (fsm_output[3]);
      reg_out_cnsi_irdy_core_psct_cse <= (and_dcpl & (fsm_output[3])) | and_23_cse;
      reg_hist_cnsi_ivld_core_psct_cse <= ~((~((fsm_output[0]) | (fsm_output[2])))
          | and_23_cse);
      reg_weight_cnsi_ivld_core_psct_cse <= fsm_output[1];
      for_slc_for_acc_5_itm <= ac_std_float_cctor_ac_std_float_mux_4_nl & ((fsm_output[2:1]!=2'b00));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_return_rsci_idat_reg <= 1'b0;
    end
    else if ( core_wen & (~(and_dcpl | (~ (fsm_output[3])))) ) begin
      reg_return_rsci_idat_reg <= ~((~ for_acc_2_itm_5_1) & mux_tmp_3);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      feature_cnsi_idat_6_0 <= 7'b0000000;
      weight_cnsi_idat_21_0 <= 22'b0000000000000000000000;
      weight_cnsi_idat_22 <= 1'b0;
      weight_cnsi_idat_30_23 <= 8'b00000000;
      weight_cnsi_idat_31 <= 1'b0;
    end
    else if ( for_and_cse ) begin
      feature_cnsi_idat_6_0 <= for_acc_1_cse_6_0_sva_mx0w2;
      weight_cnsi_idat_21_0 <= MUX_v_22_2_2(22'b0000000000000000000000, (return_add_generic_AC_RND_CONV_false_r_un_qr_lpi_2_dfm_mx0[21:0]),
          return_add_generic_AC_RND_CONV_false_if_1_return_add_generic_AC_RND_CONV_false_if_1_nor_nl);
      weight_cnsi_idat_22 <= MUX_s_1_2_2(return_add_generic_AC_RND_CONV_false_op1_nan_sva_1,
          (return_add_generic_AC_RND_CONV_false_r_un_qr_lpi_2_dfm_mx0[22]), and_39_nl);
      weight_cnsi_idat_30_23 <= MUX_v_8_2_2(return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_and_nl,
          8'b11111111, return_add_generic_AC_RND_CONV_false_exception_sva_1);
      weight_cnsi_idat_31 <= return_add_generic_AC_RND_CONV_false_r_sign_sva_mx0w0;
    end
  end
  assign for_1_mux_nl = MUX_v_7_2_2(feature_cnsi_idat_6_0, for_acc_1_cse_6_0_sva_mx0w2,
      fsm_output[3]);
  assign nor_8_nl = ~((~((fsm_output[3:2]!=2'b00))) | and_23_cse);
  assign ac_std_float_cctor_ac_std_float_mux_4_nl = MUX_s_1_2_2(for_acc_2_itm_5_1,
      weight_cnsi_idat_22, fsm_output[2]);
  assign return_add_generic_AC_RND_CONV_false_if_1_return_add_generic_AC_RND_CONV_false_if_1_nor_nl
      = ~(return_add_generic_AC_RND_CONV_false_exception_sva_1 | and_2_cse);
  assign and_39_nl = ((wt_d_30_23_sva!=8'b11111111)) & (~((~((operator_28_26_true_AC_TRN_AC_WRAP_rshift_tmp[0])
      | (~ libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_2)))
      | return_add_generic_AC_RND_CONV_false_r_inf_acc_itm_9_1)) & (fsm_output[1]);
  assign return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_nor_nl
      = ~(and_2_cse | (~((return_add_generic_AC_RND_CONV_false_r_un_qr_lpi_2_dfm_mx0[23])
      | return_add_generic_AC_RND_CONV_false_shift_r_sva_1)));
  assign return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_and_nl
      = MUX_v_8_2_2(8'b00000000, (return_add_generic_AC_RND_CONV_false_acc_psp_sva_1[7:0]),
      return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_nor_nl);

  function automatic [0:0] MUX_s_1_2_2;
    input [0:0] input_0;
    input [0:0] input_1;
    input [0:0] sel;
    reg [0:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_s_1_2_2 = result;
  end
  endfunction


  function automatic [9:0] MUX_v_10_2_2;
    input [9:0] input_0;
    input [9:0] input_1;
    input [0:0] sel;
    reg [9:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_10_2_2 = result;
  end
  endfunction


  function automatic [21:0] MUX_v_22_2_2;
    input [21:0] input_0;
    input [21:0] input_1;
    input [0:0] sel;
    reg [21:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_22_2_2 = result;
  end
  endfunction


  function automatic [23:0] MUX_v_24_2_2;
    input [23:0] input_0;
    input [23:0] input_1;
    input [0:0] sel;
    reg [23:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_24_2_2 = result;
  end
  endfunction


  function automatic [1:0] MUX_v_2_2_2;
    input [1:0] input_0;
    input [1:0] input_1;
    input [0:0] sel;
    reg [1:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_2_2_2 = result;
  end
  endfunction


  function automatic [3:0] MUX_v_4_2_2;
    input [3:0] input_0;
    input [3:0] input_1;
    input [0:0] sel;
    reg [3:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_4_2_2 = result;
  end
  endfunction


  function automatic [4:0] MUX_v_5_2_2;
    input [4:0] input_0;
    input [4:0] input_1;
    input [0:0] sel;
    reg [4:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_5_2_2 = result;
  end
  endfunction


  function automatic [6:0] MUX_v_7_2_2;
    input [6:0] input_0;
    input [6:0] input_1;
    input [0:0] sel;
    reg [6:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_7_2_2 = result;
  end
  endfunction


  function automatic [7:0] MUX_v_8_2_2;
    input [7:0] input_0;
    input [7:0] input_1;
    input [0:0] sel;
    reg [7:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_8_2_2 = result;
  end
  endfunction


  function automatic [8:0] MUX_v_9_2_2;
    input [8:0] input_0;
    input [8:0] input_1;
    input [0:0] sel;
    reg [8:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_9_2_2 = result;
  end
  endfunction


  function automatic [0:0] readslicef_10_1_9;
    input [9:0] vector;
    reg [9:0] tmp;
  begin
    tmp = vector >> 9;
    readslicef_10_1_9 = tmp[0:0];
  end
  endfunction


  function automatic [0:0] readslicef_6_1_5;
    input [5:0] vector;
    reg [5:0] tmp;
  begin
    tmp = vector >> 5;
    readslicef_6_1_5 = tmp[0:0];
  end
  endfunction


  function automatic [0:0] readslicef_9_1_8;
    input [8:0] vector;
    reg [8:0] tmp;
  begin
    tmp = vector >> 8;
    readslicef_9_1_8 = tmp[0:0];
  end
  endfunction


  function automatic [25:0] signext_26_25;
    input [24:0] vector;
  begin
    signext_26_25= {{1{vector[24]}}, vector};
  end
  endfunction


  function automatic [27:0] signext_28_27;
    input [26:0] vector;
  begin
    signext_28_27= {{1{vector[26]}}, vector};
  end
  endfunction


  function automatic [9:0] conv_s2s_6_10 ;
    input [5:0]  vector ;
  begin
    conv_s2s_6_10 = {{4{vector[5]}}, vector};
  end
  endfunction


  function automatic [25:0] conv_s2s_25_26 ;
    input [24:0]  vector ;
  begin
    conv_s2s_25_26 = {vector[24], vector};
  end
  endfunction


  function automatic [9:0] conv_u2s_1_10 ;
    input [0:0]  vector ;
  begin
    conv_u2s_1_10 = {{9{1'b0}}, vector};
  end
  endfunction


  function automatic [24:0] conv_u2s_1_25 ;
    input [0:0]  vector ;
  begin
    conv_u2s_1_25 = {{24{1'b0}}, vector};
  end
  endfunction


  function automatic [5:0] conv_u2s_5_6 ;
    input [4:0]  vector ;
  begin
    conv_u2s_5_6 =  {1'b0, vector};
  end
  endfunction


  function automatic [8:0] conv_u2s_5_9 ;
    input [4:0]  vector ;
  begin
    conv_u2s_5_9 = {{4{1'b0}}, vector};
  end
  endfunction


  function automatic [7:0] conv_u2s_7_8 ;
    input [6:0]  vector ;
  begin
    conv_u2s_7_8 =  {1'b0, vector};
  end
  endfunction


  function automatic [9:0] conv_u2s_9_10 ;
    input [8:0]  vector ;
  begin
    conv_u2s_9_10 =  {1'b0, vector};
  end
  endfunction


  function automatic [8:0] conv_u2u_1_9 ;
    input [0:0]  vector ;
  begin
    conv_u2u_1_9 = {{8{1'b0}}, vector};
  end
  endfunction


  function automatic [8:0] conv_u2u_8_9 ;
    input [7:0]  vector ;
  begin
    conv_u2u_8_9 = {1'b0, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    histogram_core
// ------------------------------------------------------------------


module histogram_core (
  clk, rst, feature_rsc_dat, feature_rsc_vld, feature_rsc_rdy, weight_rsc_dat, weight_rsc_vld,
      weight_rsc_rdy, hist_rsc_dat, hist_rsc_vld, hist_rsc_rdy, n_rsc_triosy_lz,
      out_rsc_dat, out_rsc_vld, out_rsc_rdy, n_rsci_idat
);
  input clk;
  input rst;
  input [31:0] feature_rsc_dat;
  input feature_rsc_vld;
  output feature_rsc_rdy;
  input [31:0] weight_rsc_dat;
  input weight_rsc_vld;
  output weight_rsc_rdy;
  input [31:0] hist_rsc_dat;
  input hist_rsc_vld;
  output hist_rsc_rdy;
  output n_rsc_triosy_lz;
  output [31:0] out_rsc_dat;
  output out_rsc_vld;
  input out_rsc_rdy;
  input [31:0] n_rsci_idat;


  // Interconnect Declarations
  wire core_wen;
  wire core_wten;
  wire feature_rsci_wen_comp;
  wire [6:0] feature_rsci_idat_mxwt;
  wire weight_rsci_wen_comp;
  wire [31:0] weight_rsci_idat_mxwt;
  wire hist_rsci_ivld_mxwt;
  wire [31:0] hist_rsci_idat_mxwt;
  wire out_rsci_wen_comp;
  reg out_rsci_idat_31;
  reg [7:0] out_rsci_idat_30_23;
  reg out_rsci_idat_22;
  reg [21:0] out_rsci_idat_21_0;
  wire [8:0] fsm_output;
  wire [9:0] return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp;
  wire [10:0] nl_return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp;
  wire return_extract_m_zero_return_extract_m_zero_nor_tmp;
  wire x_ac_ieee_float_base_mux_tmp;
  wire or_dcpl_6;
  wire and_dcpl_10;
  wire and_dcpl_11;
  wire and_dcpl_12;
  wire and_dcpl_13;
  wire and_dcpl_14;
  wire or_dcpl_12;
  wire or_dcpl_13;
  wire or_dcpl_14;
  wire or_dcpl_15;
  wire or_dcpl_16;
  wire or_dcpl_17;
  wire or_dcpl_19;
  wire or_dcpl_20;
  wire or_dcpl_21;
  wire or_dcpl_22;
  wire or_dcpl_23;
  wire and_dcpl_21;
  wire and_dcpl_22;
  wire or_dcpl_25;
  wire or_dcpl_26;
  wire or_dcpl_28;
  wire or_dcpl_29;
  wire and_dcpl_28;
  wire and_dcpl_29;
  wire and_dcpl_30;
  wire or_dcpl_31;
  wire or_dcpl_32;
  wire or_dcpl_33;
  wire or_dcpl_35;
  wire or_dcpl_36;
  wire or_dcpl_37;
  wire and_dcpl_35;
  wire or_dcpl_39;
  wire or_dcpl_40;
  wire or_dcpl_42;
  wire and_dcpl_41;
  wire and_dcpl_42;
  wire or_dcpl_44;
  wire or_dcpl_45;
  wire or_dcpl_46;
  wire or_dcpl_48;
  wire or_dcpl_49;
  wire and_dcpl_46;
  wire and_dcpl_47;
  wire or_dcpl_51;
  wire or_dcpl_53;
  wire or_dcpl_54;
  wire and_dcpl_50;
  wire or_dcpl_57;
  wire and_dcpl_53;
  wire or_dcpl_60;
  wire and_dcpl_58;
  wire and_dcpl_59;
  wire or_dcpl_62;
  wire or_dcpl_63;
  wire or_dcpl_65;
  wire or_dcpl_66;
  wire or_dcpl_68;
  wire or_dcpl_71;
  wire or_dcpl_74;
  wire or_dcpl_77;
  wire and_dcpl_84;
  wire and_dcpl_85;
  wire or_dcpl_88;
  wire or_dcpl_89;
  wire or_dcpl_91;
  wire or_dcpl_92;
  wire or_dcpl_94;
  wire or_dcpl_97;
  wire or_dcpl_100;
  wire or_dcpl_107;
  wire and_dcpl_110;
  wire and_dcpl_111;
  wire or_dcpl_114;
  wire or_dcpl_115;
  wire or_dcpl_117;
  wire or_dcpl_118;
  wire or_dcpl_126;
  wire and_dcpl_131;
  wire or_dcpl_138;
  wire and_dcpl_148;
  wire or_dcpl_155;
  wire and_dcpl_167;
  wire or_dcpl_174;
  wire and_dcpl_188;
  wire and_dcpl_189;
  wire or_dcpl_192;
  wire or_dcpl_193;
  wire or_dcpl_195;
  wire or_dcpl_196;
  wire or_dcpl_204;
  wire and_dcpl_209;
  wire or_dcpl_216;
  wire and_dcpl_228;
  wire or_dcpl_235;
  wire and_dcpl_245;
  wire or_dcpl_252;
  wire and_dcpl_267;
  wire or_dcpl_271;
  wire or_dcpl_274;
  wire or_tmp_416;
  wire or_tmp_419;
  wire or_tmp_422;
  wire or_tmp_425;
  wire or_tmp_428;
  wire or_tmp_431;
  wire or_tmp_434;
  wire or_tmp_437;
  wire or_tmp_440;
  wire or_tmp_443;
  wire or_tmp_446;
  wire or_tmp_449;
  wire or_tmp_452;
  wire or_tmp_455;
  wire or_tmp_458;
  wire or_tmp_461;
  wire or_tmp_464;
  wire or_tmp_467;
  wire or_tmp_470;
  wire or_tmp_473;
  wire or_tmp_476;
  wire or_tmp_479;
  wire or_tmp_482;
  wire or_tmp_485;
  wire or_tmp_488;
  wire or_tmp_491;
  wire or_tmp_494;
  wire or_tmp_497;
  wire or_tmp_500;
  wire or_tmp_503;
  wire or_tmp_506;
  wire or_tmp_509;
  wire or_tmp_512;
  wire or_tmp_515;
  wire or_tmp_518;
  wire or_tmp_521;
  wire or_tmp_524;
  wire or_tmp_527;
  wire or_tmp_530;
  wire or_tmp_533;
  wire or_tmp_536;
  wire or_tmp_539;
  wire or_tmp_542;
  wire or_tmp_545;
  wire or_tmp_548;
  wire or_tmp_551;
  wire or_tmp_554;
  wire or_tmp_557;
  wire or_tmp_560;
  wire or_tmp_563;
  wire or_tmp_566;
  wire or_tmp_569;
  wire or_tmp_572;
  wire or_tmp_575;
  wire or_tmp_578;
  wire or_tmp_581;
  wire or_tmp_584;
  wire or_tmp_587;
  wire or_tmp_590;
  wire or_tmp_593;
  wire or_tmp_596;
  wire or_tmp_599;
  wire or_tmp_602;
  wire or_tmp_605;
  wire or_tmp_608;
  wire or_tmp_611;
  wire or_tmp_614;
  wire or_tmp_617;
  wire or_tmp_620;
  wire or_tmp_623;
  wire or_tmp_626;
  wire or_tmp_629;
  wire or_tmp_632;
  wire or_tmp_635;
  wire or_tmp_638;
  wire or_tmp_641;
  wire or_tmp_644;
  wire or_tmp_647;
  wire or_tmp_650;
  wire or_tmp_653;
  wire or_tmp_656;
  wire or_tmp_659;
  wire or_tmp_662;
  wire or_tmp_665;
  wire or_tmp_668;
  wire or_tmp_671;
  wire or_tmp_674;
  wire or_tmp_677;
  wire or_tmp_680;
  wire or_tmp_683;
  wire or_tmp_686;
  wire or_tmp_689;
  wire or_tmp_692;
  wire or_tmp_695;
  wire or_tmp_698;
  wire or_tmp_701;
  wire or_tmp_704;
  wire or_tmp_707;
  wire or_tmp_710;
  wire or_tmp_713;
  wire and_1513_cse;
  reg exit_for_1_sva;
  wire exit_for_sva_mx0;
  wire return_add_generic_AC_RND_CONV_false_exception_sva_1;
  wire return_add_generic_AC_RND_CONV_false_r_zero_sva_1;
  wire [23:0] return_add_generic_AC_RND_CONV_false_r_un_qr_lpi_2_dfm_mx0;
  wire return_add_generic_AC_RND_CONV_false_op1_inf_sva_1;
  wire return_add_generic_AC_RND_CONV_false_op2_inf_sva_1;
  wire return_add_generic_AC_RND_CONV_false_op1_nan_sva_1;
  wire return_add_generic_AC_RND_CONV_false_op2_nan_sva_1;
  wire return_add_generic_AC_RND_CONV_false_rnd_ovf_land_sva_1;
  wire return_add_generic_AC_RND_CONV_false_r_sign_sva_1;
  wire [27:0] return_add_generic_AC_RND_CONV_false_add_r_1_sva_1;
  wire return_extract_1_return_extract_1_nor_cse_sva_1;
  wire return_extract_1_m_zero_sva_1;
  wire return_extract_return_extract_nor_cse_sva_1;
  reg while_slc_while_acc_5_svs;
  reg [6:0] size_6_0_sva;
  wire [27:0] return_add_generic_AC_RND_CONV_false_op_lshift_sva_1;
  wire for_1_and_cse;
  reg reg_n_rsc_triosy_obj_ld_core_psct_cse;
  reg reg_out_rsci_ivld_core_psct_cse;
  reg reg_hist_rsci_irdy_core_psct_cse;
  reg reg_weight_rsci_irdy_core_psct_cse;
  wire and_4721_cse;
  wire and_4722_cse;
  wire nor_15_cse;
  wire [22:0] return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_22_0_mx0;
  wire [27:0] operator_28_26_true_AC_TRN_AC_WRAP_lshift_itm;
  wire [7:0] z_out;
  wire [21:0] z_out_1;
  wire [32:0] z_out_2;
  wire [33:0] nl_z_out_2;
  wire [24:0] z_out_3;
  wire [25:0] nl_z_out_3;
  wire [23:0] z_out_4;
  wire [24:0] nl_z_out_4;
  wire [31:0] z_out_5;
  wire [32:0] nl_z_out_5;
  reg [31:0] n_sva;
  reg hist_local_d_49_22_lpi_3;
  reg [7:0] hist_local_d_49_30_23_lpi_3;
  reg [21:0] hist_local_d_49_21_0_lpi_3;
  reg hist_local_d_49_31_lpi_3;
  reg hist_local_d_50_22_lpi_3;
  reg [7:0] hist_local_d_50_30_23_lpi_3;
  reg [21:0] hist_local_d_50_21_0_lpi_3;
  reg hist_local_d_50_31_lpi_3;
  reg hist_local_d_48_22_lpi_3;
  reg [7:0] hist_local_d_48_30_23_lpi_3;
  reg [21:0] hist_local_d_48_21_0_lpi_3;
  reg hist_local_d_48_31_lpi_3;
  reg hist_local_d_51_22_lpi_3;
  reg [7:0] hist_local_d_51_30_23_lpi_3;
  reg [21:0] hist_local_d_51_21_0_lpi_3;
  reg hist_local_d_51_31_lpi_3;
  reg hist_local_d_47_22_lpi_3;
  reg [7:0] hist_local_d_47_30_23_lpi_3;
  reg [21:0] hist_local_d_47_21_0_lpi_3;
  reg hist_local_d_47_31_lpi_3;
  reg hist_local_d_52_22_lpi_3;
  reg [7:0] hist_local_d_52_30_23_lpi_3;
  reg [21:0] hist_local_d_52_21_0_lpi_3;
  reg hist_local_d_52_31_lpi_3;
  reg hist_local_d_46_22_lpi_3;
  reg [7:0] hist_local_d_46_30_23_lpi_3;
  reg [21:0] hist_local_d_46_21_0_lpi_3;
  reg hist_local_d_46_31_lpi_3;
  reg hist_local_d_53_22_lpi_3;
  reg [7:0] hist_local_d_53_30_23_lpi_3;
  reg [21:0] hist_local_d_53_21_0_lpi_3;
  reg hist_local_d_53_31_lpi_3;
  reg hist_local_d_45_22_lpi_3;
  reg [7:0] hist_local_d_45_30_23_lpi_3;
  reg [21:0] hist_local_d_45_21_0_lpi_3;
  reg hist_local_d_45_31_lpi_3;
  reg hist_local_d_54_22_lpi_3;
  reg [7:0] hist_local_d_54_30_23_lpi_3;
  reg [21:0] hist_local_d_54_21_0_lpi_3;
  reg hist_local_d_54_31_lpi_3;
  reg hist_local_d_44_22_lpi_3;
  reg [7:0] hist_local_d_44_30_23_lpi_3;
  reg [21:0] hist_local_d_44_21_0_lpi_3;
  reg hist_local_d_44_31_lpi_3;
  reg hist_local_d_55_22_lpi_3;
  reg [7:0] hist_local_d_55_30_23_lpi_3;
  reg [21:0] hist_local_d_55_21_0_lpi_3;
  reg hist_local_d_55_31_lpi_3;
  reg hist_local_d_43_22_lpi_3;
  reg [7:0] hist_local_d_43_30_23_lpi_3;
  reg [21:0] hist_local_d_43_21_0_lpi_3;
  reg hist_local_d_43_31_lpi_3;
  reg hist_local_d_56_22_lpi_3;
  reg [7:0] hist_local_d_56_30_23_lpi_3;
  reg [21:0] hist_local_d_56_21_0_lpi_3;
  reg hist_local_d_56_31_lpi_3;
  reg hist_local_d_42_22_lpi_3;
  reg [7:0] hist_local_d_42_30_23_lpi_3;
  reg [21:0] hist_local_d_42_21_0_lpi_3;
  reg hist_local_d_42_31_lpi_3;
  reg hist_local_d_57_22_lpi_3;
  reg [7:0] hist_local_d_57_30_23_lpi_3;
  reg [21:0] hist_local_d_57_21_0_lpi_3;
  reg hist_local_d_57_31_lpi_3;
  reg hist_local_d_41_22_lpi_3;
  reg [7:0] hist_local_d_41_30_23_lpi_3;
  reg [21:0] hist_local_d_41_21_0_lpi_3;
  reg hist_local_d_41_31_lpi_3;
  reg hist_local_d_58_22_lpi_3;
  reg [7:0] hist_local_d_58_30_23_lpi_3;
  reg [21:0] hist_local_d_58_21_0_lpi_3;
  reg hist_local_d_58_31_lpi_3;
  reg hist_local_d_40_22_lpi_3;
  reg [7:0] hist_local_d_40_30_23_lpi_3;
  reg [21:0] hist_local_d_40_21_0_lpi_3;
  reg hist_local_d_40_31_lpi_3;
  reg hist_local_d_59_22_lpi_3;
  reg [7:0] hist_local_d_59_30_23_lpi_3;
  reg [21:0] hist_local_d_59_21_0_lpi_3;
  reg hist_local_d_59_31_lpi_3;
  reg hist_local_d_39_22_lpi_3;
  reg [7:0] hist_local_d_39_30_23_lpi_3;
  reg [21:0] hist_local_d_39_21_0_lpi_3;
  reg hist_local_d_39_31_lpi_3;
  reg hist_local_d_60_22_lpi_3;
  reg [7:0] hist_local_d_60_30_23_lpi_3;
  reg [21:0] hist_local_d_60_21_0_lpi_3;
  reg hist_local_d_60_31_lpi_3;
  reg hist_local_d_38_22_lpi_3;
  reg [7:0] hist_local_d_38_30_23_lpi_3;
  reg [21:0] hist_local_d_38_21_0_lpi_3;
  reg hist_local_d_38_31_lpi_3;
  reg hist_local_d_61_22_lpi_3;
  reg [7:0] hist_local_d_61_30_23_lpi_3;
  reg [21:0] hist_local_d_61_21_0_lpi_3;
  reg hist_local_d_61_31_lpi_3;
  reg hist_local_d_37_22_lpi_3;
  reg [7:0] hist_local_d_37_30_23_lpi_3;
  reg [21:0] hist_local_d_37_21_0_lpi_3;
  reg hist_local_d_37_31_lpi_3;
  reg hist_local_d_62_22_lpi_3;
  reg [7:0] hist_local_d_62_30_23_lpi_3;
  reg [21:0] hist_local_d_62_21_0_lpi_3;
  reg hist_local_d_62_31_lpi_3;
  reg hist_local_d_36_22_lpi_3;
  reg [7:0] hist_local_d_36_30_23_lpi_3;
  reg [21:0] hist_local_d_36_21_0_lpi_3;
  reg hist_local_d_36_31_lpi_3;
  reg hist_local_d_63_22_lpi_3;
  reg [7:0] hist_local_d_63_30_23_lpi_3;
  reg [21:0] hist_local_d_63_21_0_lpi_3;
  reg hist_local_d_63_31_lpi_3;
  reg hist_local_d_35_22_lpi_3;
  reg [7:0] hist_local_d_35_30_23_lpi_3;
  reg [21:0] hist_local_d_35_21_0_lpi_3;
  reg hist_local_d_35_31_lpi_3;
  reg hist_local_d_64_22_lpi_3;
  reg [7:0] hist_local_d_64_30_23_lpi_3;
  reg [21:0] hist_local_d_64_21_0_lpi_3;
  reg hist_local_d_64_31_lpi_3;
  reg hist_local_d_34_22_lpi_3;
  reg [7:0] hist_local_d_34_30_23_lpi_3;
  reg [21:0] hist_local_d_34_21_0_lpi_3;
  reg hist_local_d_34_31_lpi_3;
  reg hist_local_d_65_22_lpi_3;
  reg [7:0] hist_local_d_65_30_23_lpi_3;
  reg [21:0] hist_local_d_65_21_0_lpi_3;
  reg hist_local_d_65_31_lpi_3;
  reg hist_local_d_33_22_lpi_3;
  reg [7:0] hist_local_d_33_30_23_lpi_3;
  reg [21:0] hist_local_d_33_21_0_lpi_3;
  reg hist_local_d_33_31_lpi_3;
  reg hist_local_d_66_22_lpi_3;
  reg [7:0] hist_local_d_66_30_23_lpi_3;
  reg [21:0] hist_local_d_66_21_0_lpi_3;
  reg hist_local_d_66_31_lpi_3;
  reg hist_local_d_32_22_lpi_3;
  reg [7:0] hist_local_d_32_30_23_lpi_3;
  reg [21:0] hist_local_d_32_21_0_lpi_3;
  reg hist_local_d_32_31_lpi_3;
  reg hist_local_d_67_22_lpi_3;
  reg [7:0] hist_local_d_67_30_23_lpi_3;
  reg [21:0] hist_local_d_67_21_0_lpi_3;
  reg hist_local_d_67_31_lpi_3;
  reg hist_local_d_31_22_lpi_3;
  reg [7:0] hist_local_d_31_30_23_lpi_3;
  reg [21:0] hist_local_d_31_21_0_lpi_3;
  reg hist_local_d_31_31_lpi_3;
  reg hist_local_d_68_22_lpi_3;
  reg [7:0] hist_local_d_68_30_23_lpi_3;
  reg [21:0] hist_local_d_68_21_0_lpi_3;
  reg hist_local_d_68_31_lpi_3;
  reg hist_local_d_30_22_lpi_3;
  reg [7:0] hist_local_d_30_30_23_lpi_3;
  reg [21:0] hist_local_d_30_21_0_lpi_3;
  reg hist_local_d_30_31_lpi_3;
  reg hist_local_d_69_22_lpi_3;
  reg [7:0] hist_local_d_69_30_23_lpi_3;
  reg [21:0] hist_local_d_69_21_0_lpi_3;
  reg hist_local_d_69_31_lpi_3;
  reg hist_local_d_29_22_lpi_3;
  reg [7:0] hist_local_d_29_30_23_lpi_3;
  reg [21:0] hist_local_d_29_21_0_lpi_3;
  reg hist_local_d_29_31_lpi_3;
  reg hist_local_d_70_22_lpi_3;
  reg [7:0] hist_local_d_70_30_23_lpi_3;
  reg [21:0] hist_local_d_70_21_0_lpi_3;
  reg hist_local_d_70_31_lpi_3;
  reg hist_local_d_28_22_lpi_3;
  reg [7:0] hist_local_d_28_30_23_lpi_3;
  reg [21:0] hist_local_d_28_21_0_lpi_3;
  reg hist_local_d_28_31_lpi_3;
  reg hist_local_d_71_22_lpi_3;
  reg [7:0] hist_local_d_71_30_23_lpi_3;
  reg [21:0] hist_local_d_71_21_0_lpi_3;
  reg hist_local_d_71_31_lpi_3;
  reg hist_local_d_27_22_lpi_3;
  reg [7:0] hist_local_d_27_30_23_lpi_3;
  reg [21:0] hist_local_d_27_21_0_lpi_3;
  reg hist_local_d_27_31_lpi_3;
  reg hist_local_d_72_22_lpi_3;
  reg [7:0] hist_local_d_72_30_23_lpi_3;
  reg [21:0] hist_local_d_72_21_0_lpi_3;
  reg hist_local_d_72_31_lpi_3;
  reg hist_local_d_26_22_lpi_3;
  reg [7:0] hist_local_d_26_30_23_lpi_3;
  reg [21:0] hist_local_d_26_21_0_lpi_3;
  reg hist_local_d_26_31_lpi_3;
  reg hist_local_d_73_22_lpi_3;
  reg [7:0] hist_local_d_73_30_23_lpi_3;
  reg [21:0] hist_local_d_73_21_0_lpi_3;
  reg hist_local_d_73_31_lpi_3;
  reg hist_local_d_25_22_lpi_3;
  reg [7:0] hist_local_d_25_30_23_lpi_3;
  reg [21:0] hist_local_d_25_21_0_lpi_3;
  reg hist_local_d_25_31_lpi_3;
  reg hist_local_d_74_22_lpi_3;
  reg [7:0] hist_local_d_74_30_23_lpi_3;
  reg [21:0] hist_local_d_74_21_0_lpi_3;
  reg hist_local_d_74_31_lpi_3;
  reg hist_local_d_24_22_lpi_3;
  reg [7:0] hist_local_d_24_30_23_lpi_3;
  reg [21:0] hist_local_d_24_21_0_lpi_3;
  reg hist_local_d_24_31_lpi_3;
  reg hist_local_d_75_22_lpi_3;
  reg [7:0] hist_local_d_75_30_23_lpi_3;
  reg [21:0] hist_local_d_75_21_0_lpi_3;
  reg hist_local_d_75_31_lpi_3;
  reg hist_local_d_23_22_lpi_3;
  reg [7:0] hist_local_d_23_30_23_lpi_3;
  reg [21:0] hist_local_d_23_21_0_lpi_3;
  reg hist_local_d_23_31_lpi_3;
  reg hist_local_d_76_22_lpi_3;
  reg [7:0] hist_local_d_76_30_23_lpi_3;
  reg [21:0] hist_local_d_76_21_0_lpi_3;
  reg hist_local_d_76_31_lpi_3;
  reg hist_local_d_22_22_lpi_3;
  reg [7:0] hist_local_d_22_30_23_lpi_3;
  reg [21:0] hist_local_d_22_21_0_lpi_3;
  reg hist_local_d_22_31_lpi_3;
  reg hist_local_d_77_22_lpi_3;
  reg [7:0] hist_local_d_77_30_23_lpi_3;
  reg [21:0] hist_local_d_77_21_0_lpi_3;
  reg hist_local_d_77_31_lpi_3;
  reg hist_local_d_21_22_lpi_3;
  reg [7:0] hist_local_d_21_30_23_lpi_3;
  reg [21:0] hist_local_d_21_21_0_lpi_3;
  reg hist_local_d_21_31_lpi_3;
  reg hist_local_d_78_22_lpi_3;
  reg [7:0] hist_local_d_78_30_23_lpi_3;
  reg [21:0] hist_local_d_78_21_0_lpi_3;
  reg hist_local_d_78_31_lpi_3;
  reg hist_local_d_20_22_lpi_3;
  reg [7:0] hist_local_d_20_30_23_lpi_3;
  reg [21:0] hist_local_d_20_21_0_lpi_3;
  reg hist_local_d_20_31_lpi_3;
  reg hist_local_d_79_22_lpi_3;
  reg [7:0] hist_local_d_79_30_23_lpi_3;
  reg [21:0] hist_local_d_79_21_0_lpi_3;
  reg hist_local_d_79_31_lpi_3;
  reg hist_local_d_19_22_lpi_3;
  reg [7:0] hist_local_d_19_30_23_lpi_3;
  reg [21:0] hist_local_d_19_21_0_lpi_3;
  reg hist_local_d_19_31_lpi_3;
  reg hist_local_d_80_22_lpi_3;
  reg [7:0] hist_local_d_80_30_23_lpi_3;
  reg [21:0] hist_local_d_80_21_0_lpi_3;
  reg hist_local_d_80_31_lpi_3;
  reg hist_local_d_18_22_lpi_3;
  reg [7:0] hist_local_d_18_30_23_lpi_3;
  reg [21:0] hist_local_d_18_21_0_lpi_3;
  reg hist_local_d_18_31_lpi_3;
  reg hist_local_d_81_22_lpi_3;
  reg [7:0] hist_local_d_81_30_23_lpi_3;
  reg [21:0] hist_local_d_81_21_0_lpi_3;
  reg hist_local_d_81_31_lpi_3;
  reg hist_local_d_17_22_lpi_3;
  reg [7:0] hist_local_d_17_30_23_lpi_3;
  reg [21:0] hist_local_d_17_21_0_lpi_3;
  reg hist_local_d_17_31_lpi_3;
  reg hist_local_d_82_22_lpi_3;
  reg [7:0] hist_local_d_82_30_23_lpi_3;
  reg [21:0] hist_local_d_82_21_0_lpi_3;
  reg hist_local_d_82_31_lpi_3;
  reg hist_local_d_16_22_lpi_3;
  reg [7:0] hist_local_d_16_30_23_lpi_3;
  reg [21:0] hist_local_d_16_21_0_lpi_3;
  reg hist_local_d_16_31_lpi_3;
  reg hist_local_d_83_22_lpi_3;
  reg [7:0] hist_local_d_83_30_23_lpi_3;
  reg [21:0] hist_local_d_83_21_0_lpi_3;
  reg hist_local_d_83_31_lpi_3;
  reg hist_local_d_15_22_lpi_3;
  reg [7:0] hist_local_d_15_30_23_lpi_3;
  reg [21:0] hist_local_d_15_21_0_lpi_3;
  reg hist_local_d_15_31_lpi_3;
  reg hist_local_d_84_22_lpi_3;
  reg [7:0] hist_local_d_84_30_23_lpi_3;
  reg [21:0] hist_local_d_84_21_0_lpi_3;
  reg hist_local_d_84_31_lpi_3;
  reg hist_local_d_14_22_lpi_3;
  reg [7:0] hist_local_d_14_30_23_lpi_3;
  reg [21:0] hist_local_d_14_21_0_lpi_3;
  reg hist_local_d_14_31_lpi_3;
  reg hist_local_d_85_22_lpi_3;
  reg [7:0] hist_local_d_85_30_23_lpi_3;
  reg [21:0] hist_local_d_85_21_0_lpi_3;
  reg hist_local_d_85_31_lpi_3;
  reg hist_local_d_13_22_lpi_3;
  reg [7:0] hist_local_d_13_30_23_lpi_3;
  reg [21:0] hist_local_d_13_21_0_lpi_3;
  reg hist_local_d_13_31_lpi_3;
  reg hist_local_d_86_22_lpi_3;
  reg [7:0] hist_local_d_86_30_23_lpi_3;
  reg [21:0] hist_local_d_86_21_0_lpi_3;
  reg hist_local_d_86_31_lpi_3;
  reg hist_local_d_12_22_lpi_3;
  reg [7:0] hist_local_d_12_30_23_lpi_3;
  reg [21:0] hist_local_d_12_21_0_lpi_3;
  reg hist_local_d_12_31_lpi_3;
  reg hist_local_d_87_22_lpi_3;
  reg [7:0] hist_local_d_87_30_23_lpi_3;
  reg [21:0] hist_local_d_87_21_0_lpi_3;
  reg hist_local_d_87_31_lpi_3;
  reg hist_local_d_11_22_lpi_3;
  reg [7:0] hist_local_d_11_30_23_lpi_3;
  reg [21:0] hist_local_d_11_21_0_lpi_3;
  reg hist_local_d_11_31_lpi_3;
  reg hist_local_d_88_22_lpi_3;
  reg [7:0] hist_local_d_88_30_23_lpi_3;
  reg [21:0] hist_local_d_88_21_0_lpi_3;
  reg hist_local_d_88_31_lpi_3;
  reg hist_local_d_10_22_lpi_3;
  reg [7:0] hist_local_d_10_30_23_lpi_3;
  reg [21:0] hist_local_d_10_21_0_lpi_3;
  reg hist_local_d_10_31_lpi_3;
  reg hist_local_d_89_22_lpi_3;
  reg [7:0] hist_local_d_89_30_23_lpi_3;
  reg [21:0] hist_local_d_89_21_0_lpi_3;
  reg hist_local_d_89_31_lpi_3;
  reg hist_local_d_9_22_lpi_3;
  reg [7:0] hist_local_d_9_30_23_lpi_3;
  reg [21:0] hist_local_d_9_21_0_lpi_3;
  reg hist_local_d_9_31_lpi_3;
  reg hist_local_d_90_22_lpi_3;
  reg [7:0] hist_local_d_90_30_23_lpi_3;
  reg [21:0] hist_local_d_90_21_0_lpi_3;
  reg hist_local_d_90_31_lpi_3;
  reg hist_local_d_8_22_lpi_3;
  reg [7:0] hist_local_d_8_30_23_lpi_3;
  reg [21:0] hist_local_d_8_21_0_lpi_3;
  reg hist_local_d_8_31_lpi_3;
  reg hist_local_d_91_22_lpi_3;
  reg [7:0] hist_local_d_91_30_23_lpi_3;
  reg [21:0] hist_local_d_91_21_0_lpi_3;
  reg hist_local_d_91_31_lpi_3;
  reg hist_local_d_7_22_lpi_3;
  reg [7:0] hist_local_d_7_30_23_lpi_3;
  reg [21:0] hist_local_d_7_21_0_lpi_3;
  reg hist_local_d_7_31_lpi_3;
  reg hist_local_d_92_22_lpi_3;
  reg [7:0] hist_local_d_92_30_23_lpi_3;
  reg [21:0] hist_local_d_92_21_0_lpi_3;
  reg hist_local_d_92_31_lpi_3;
  reg hist_local_d_6_22_lpi_3;
  reg [7:0] hist_local_d_6_30_23_lpi_3;
  reg [21:0] hist_local_d_6_21_0_lpi_3;
  reg hist_local_d_6_31_lpi_3;
  reg hist_local_d_93_22_lpi_3;
  reg [7:0] hist_local_d_93_30_23_lpi_3;
  reg [21:0] hist_local_d_93_21_0_lpi_3;
  reg hist_local_d_93_31_lpi_3;
  reg hist_local_d_5_22_lpi_3;
  reg [7:0] hist_local_d_5_30_23_lpi_3;
  reg [21:0] hist_local_d_5_21_0_lpi_3;
  reg hist_local_d_5_31_lpi_3;
  reg hist_local_d_94_22_lpi_3;
  reg [7:0] hist_local_d_94_30_23_lpi_3;
  reg [21:0] hist_local_d_94_21_0_lpi_3;
  reg hist_local_d_94_31_lpi_3;
  reg hist_local_d_4_22_lpi_3;
  reg [7:0] hist_local_d_4_30_23_lpi_3;
  reg [21:0] hist_local_d_4_21_0_lpi_3;
  reg hist_local_d_4_31_lpi_3;
  reg hist_local_d_95_22_lpi_3;
  reg [7:0] hist_local_d_95_30_23_lpi_3;
  reg [21:0] hist_local_d_95_21_0_lpi_3;
  reg hist_local_d_95_31_lpi_3;
  reg hist_local_d_3_22_lpi_3;
  reg [7:0] hist_local_d_3_30_23_lpi_3;
  reg [21:0] hist_local_d_3_21_0_lpi_3;
  reg hist_local_d_3_31_lpi_3;
  reg hist_local_d_96_22_lpi_3;
  reg [7:0] hist_local_d_96_30_23_lpi_3;
  reg [21:0] hist_local_d_96_21_0_lpi_3;
  reg hist_local_d_96_31_lpi_3;
  reg hist_local_d_2_22_lpi_3;
  reg [7:0] hist_local_d_2_30_23_lpi_3;
  reg [21:0] hist_local_d_2_21_0_lpi_3;
  reg hist_local_d_2_31_lpi_3;
  reg hist_local_d_97_22_lpi_3;
  reg [7:0] hist_local_d_97_30_23_lpi_3;
  reg [21:0] hist_local_d_97_21_0_lpi_3;
  reg hist_local_d_97_31_lpi_3;
  reg hist_local_d_1_22_lpi_3;
  reg [7:0] hist_local_d_1_30_23_lpi_3;
  reg [21:0] hist_local_d_1_21_0_lpi_3;
  reg hist_local_d_1_31_lpi_3;
  reg hist_local_d_98_22_lpi_3;
  reg [7:0] hist_local_d_98_30_23_lpi_3;
  reg [21:0] hist_local_d_98_21_0_lpi_3;
  reg hist_local_d_98_31_lpi_3;
  reg hist_local_d_0_22_lpi_3;
  reg [7:0] hist_local_d_0_30_23_lpi_3;
  reg [21:0] hist_local_d_0_21_0_lpi_3;
  reg hist_local_d_0_31_lpi_3;
  reg hist_local_d_99_22_lpi_3;
  reg [7:0] hist_local_d_99_30_23_lpi_3;
  reg [21:0] hist_local_d_99_21_0_lpi_3;
  reg hist_local_d_99_31_lpi_3;
  reg [31:0] i_1_sva;
  reg [6:0] i_7_0_sva_6_0;
  wire [7:0] for_asn_811_mx0w1;
  wire return_extract_return_extract_or_sva_1;
  wire x_to_helper_t_return_d_sva_22_1;
  wire [1:0] return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_24_23_mx0;
  wire [24:0] return_add_generic_AC_RND_CONV_false_op2_m_qr_sva_1;
  wire [25:0] nl_return_add_generic_AC_RND_CONV_false_op2_m_qr_sva_1;
  wire return_extract_1_return_extract_1_or_sva_1;
  wire [8:0] return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0;
  wire [9:0] return_add_generic_AC_RND_CONV_false_acc_psp_sva_1;
  wire [10:0] nl_return_add_generic_AC_RND_CONV_false_acc_psp_sva_1;
  wire return_add_generic_AC_RND_CONV_false_shift_r_sva_1;
  wire [21:0] return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1;
  wire return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0;
  wire [25:0] return_add_generic_AC_RND_CONV_false_return_add_generic_AC_RND_CONV_false_nor_psp_sva_1;
  wire [8:0] operator_8_false_return_sva_1;
  wire [9:0] nl_operator_8_false_return_sva_1;
  wire [8:0] return_add_generic_AC_RND_CONV_false_op2_e_b_8_0_sva_1;
  wire [9:0] nl_return_add_generic_AC_RND_CONV_false_op2_e_b_8_0_sva_1;
  wire [1:0] return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0;
  wire return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_22_mx0;
  wire [21:0] return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_21_0_mx0;
  wire drf_op1_m_smx_24_lpi_2_dfm_mx0;
  wire drf_op1_m_smx_23_0_lpi_2_dfm_23_mx0;
  wire drf_op1_m_smx_23_0_lpi_2_dfm_22_mx0;
  wire [21:0] drf_op1_m_smx_23_0_lpi_2_dfm_21_0_mx0;
  wire [8:0] return_add_generic_AC_RND_CONV_false_asn_6;
  wire [25:0] operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2;
  wire [26:0] nl_operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2;
  wire libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_2;
  wire [4:0] libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3;
  wire hist_local_d_and_cse;
  wire hist_local_d_and_1_cse;
  wire hist_local_d_and_2_cse;
  wire hist_local_d_and_3_cse;
  wire hist_local_d_and_4_cse;
  wire hist_local_d_and_5_cse;
  wire hist_local_d_and_6_cse;
  wire hist_local_d_and_7_cse;
  wire hist_local_d_and_8_cse;
  wire hist_local_d_and_9_cse;
  wire hist_local_d_and_10_cse;
  wire hist_local_d_and_11_cse;
  wire hist_local_d_and_12_cse;
  wire hist_local_d_and_13_cse;
  wire hist_local_d_and_14_cse;
  wire hist_local_d_and_15_cse;
  wire hist_local_d_and_16_cse;
  wire hist_local_d_and_17_cse;
  wire hist_local_d_and_18_cse;
  wire hist_local_d_and_19_cse;
  wire hist_local_d_and_20_cse;
  wire hist_local_d_and_21_cse;
  wire hist_local_d_and_22_cse;
  wire hist_local_d_and_23_cse;
  wire hist_local_d_and_24_cse;
  wire hist_local_d_and_25_cse;
  wire hist_local_d_and_26_cse;
  wire hist_local_d_and_27_cse;
  wire hist_local_d_and_28_cse;
  wire hist_local_d_and_29_cse;
  wire hist_local_d_and_30_cse;
  wire hist_local_d_and_31_cse;
  wire hist_local_d_and_32_cse;
  wire hist_local_d_and_33_cse;
  wire hist_local_d_and_34_cse;
  wire hist_local_d_and_35_cse;
  wire hist_local_d_and_36_cse;
  wire hist_local_d_and_37_cse;
  wire hist_local_d_and_38_cse;
  wire hist_local_d_and_39_cse;
  wire hist_local_d_and_40_cse;
  wire hist_local_d_and_41_cse;
  wire hist_local_d_and_42_cse;
  wire hist_local_d_and_43_cse;
  wire hist_local_d_and_44_cse;
  wire hist_local_d_and_45_cse;
  wire hist_local_d_and_46_cse;
  wire hist_local_d_and_47_cse;
  wire hist_local_d_and_48_cse;
  wire hist_local_d_and_49_cse;
  wire hist_local_d_and_50_cse;
  wire hist_local_d_and_51_cse;
  wire hist_local_d_and_52_cse;
  wire hist_local_d_and_53_cse;
  wire hist_local_d_and_54_cse;
  wire hist_local_d_and_55_cse;
  wire hist_local_d_and_56_cse;
  wire hist_local_d_and_57_cse;
  wire hist_local_d_and_58_cse;
  wire hist_local_d_and_59_cse;
  wire hist_local_d_and_60_cse;
  wire hist_local_d_and_61_cse;
  wire hist_local_d_and_62_cse;
  wire hist_local_d_and_63_cse;
  wire hist_local_d_and_64_cse;
  wire hist_local_d_and_65_cse;
  wire hist_local_d_and_66_cse;
  wire hist_local_d_and_67_cse;
  wire hist_local_d_and_68_cse;
  wire hist_local_d_and_69_cse;
  wire hist_local_d_and_70_cse;
  wire hist_local_d_and_71_cse;
  wire hist_local_d_and_72_cse;
  wire hist_local_d_and_73_cse;
  wire hist_local_d_and_74_cse;
  wire hist_local_d_and_75_cse;
  wire hist_local_d_and_76_cse;
  wire hist_local_d_and_77_cse;
  wire hist_local_d_and_78_cse;
  wire hist_local_d_and_79_cse;
  wire hist_local_d_and_80_cse;
  wire hist_local_d_and_81_cse;
  wire hist_local_d_and_82_cse;
  wire hist_local_d_and_83_cse;
  wire hist_local_d_and_84_cse;
  wire hist_local_d_and_85_cse;
  wire hist_local_d_and_86_cse;
  wire hist_local_d_and_87_cse;
  wire hist_local_d_and_88_cse;
  wire hist_local_d_and_89_cse;
  wire hist_local_d_and_90_cse;
  wire hist_local_d_and_91_cse;
  wire hist_local_d_and_92_cse;
  wire hist_local_d_and_93_cse;
  wire hist_local_d_and_94_cse;
  wire hist_local_d_and_95_cse;
  wire hist_local_d_and_96_cse;
  wire hist_local_d_and_97_cse;
  wire hist_local_d_and_98_cse;
  wire hist_local_d_and_99_cse;
  wire return_add_generic_AC_RND_CONV_false_r_inf_acc_itm_9_1;
  wire return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_itm_8_1;
  wire [6:0] for_1_mux_9_cse;

  wire[0:0] not_nl;
  wire[8:0] for_1_acc_nl;
  wire[9:0] nl_for_1_acc_nl;
  wire[7:0] return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_and_nl;
  wire[0:0] return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_nor_nl;
  wire[32:0] operator_32_true_acc_nl;
  wire[33:0] nl_operator_32_true_acc_nl;
  wire[0:0] xnor_nl;
  wire[0:0] nor_7_nl;
  wire[9:0] return_add_generic_AC_RND_CONV_false_qif_3_mux_nl;
  wire[9:0] return_add_generic_AC_RND_CONV_false_qelse_3_acc_nl;
  wire[10:0] nl_return_add_generic_AC_RND_CONV_false_qelse_3_acc_nl;
  wire[4:0] return_add_generic_AC_RND_CONV_false_qelse_3_acc_3_nl;
  wire[5:0] nl_return_add_generic_AC_RND_CONV_false_qelse_3_acc_3_nl;
  wire[0:0] return_add_generic_AC_RND_CONV_false_if_1_return_add_generic_AC_RND_CONV_false_if_1_nor_nl;
  wire[0:0] return_add_generic_AC_RND_CONV_false_r_nan_or_1_nl;
  wire[0:0] and_1482_nl;
  wire[9:0] return_add_generic_AC_RND_CONV_false_r_inf_acc_nl;
  wire[10:0] nl_return_add_generic_AC_RND_CONV_false_r_inf_acc_nl;
  wire[0:0] return_add_generic_AC_RND_CONV_false_op_lshift_mux_nl;
  wire[0:0] return_add_generic_AC_RND_CONV_false_op_lshift_mux_1_nl;
  wire[0:0] return_add_generic_AC_RND_CONV_false_op_lshift_mux_6_nl;
  wire[21:0] return_add_generic_AC_RND_CONV_false_op_lshift_mux_7_nl;
  wire[8:0] return_add_generic_AC_RND_CONV_false_qelse_2_mux_nl;
  wire[8:0] return_add_generic_AC_RND_CONV_false_qelse_2_qif_acc_nl;
  wire[9:0] nl_return_add_generic_AC_RND_CONV_false_qelse_2_qif_acc_nl;
  wire[0:0] return_add_generic_AC_RND_CONV_false_return_add_generic_AC_RND_CONV_false_nor_1_nl;
  wire[8:0] return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_nl;
  wire[9:0] nl_return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_nl;
  wire[31:0] operator_32_true_mux_1_nl;
  wire[0:0] operator_32_true_or_1_nl;
  wire[0:0] while_while_while_nand_2_nl;
  wire[0:0] while_while_while_nand_3_nl;
  wire[21:0] while_mux_2_nl;
  wire[4:0] while_mux_3_nl;
  wire[23:0] return_add_generic_AC_RND_CONV_false_r_un_qif_mux_1_nl;
  wire[31:0] while_mux1h_401_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [27:0] nl_operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_a;
  assign nl_operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_a = signext_28_27({drf_op1_m_smx_24_lpi_2_dfm_mx0
      , drf_op1_m_smx_23_0_lpi_2_dfm_23_mx0 , drf_op1_m_smx_23_0_lpi_2_dfm_22_mx0
      , drf_op1_m_smx_23_0_lpi_2_dfm_21_0_mx0 , 2'b00});
  wire [27:0] nl_operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_a;
  assign nl_operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_a = {operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2
      , (return_add_generic_AC_RND_CONV_false_op_lshift_sva_1[1:0])};
  wire[3:0] return_add_generic_AC_RND_CONV_false_shift_l_return_add_generic_AC_RND_CONV_false_shift_l_and_nl;
  wire[0:0] return_add_generic_AC_RND_CONV_false_shift_exponent_limited_not_1_nl;
  wire[4:0] return_add_generic_AC_RND_CONV_false_shift_l_mux_nl;
  wire [8:0] nl_operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_s;
  assign return_add_generic_AC_RND_CONV_false_shift_exponent_limited_not_1_nl = ~
      return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_itm_8_1;
  assign return_add_generic_AC_RND_CONV_false_shift_l_return_add_generic_AC_RND_CONV_false_shift_l_and_nl
      = MUX_v_4_2_2(4'b0000, (return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0[8:5]),
      return_add_generic_AC_RND_CONV_false_shift_exponent_limited_not_1_nl);
  assign return_add_generic_AC_RND_CONV_false_shift_l_mux_nl = MUX_v_5_2_2((return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0[4:0]),
      libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3, return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_itm_8_1);
  assign nl_operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_s = {return_add_generic_AC_RND_CONV_false_shift_l_return_add_generic_AC_RND_CONV_false_shift_l_and_nl
      , return_add_generic_AC_RND_CONV_false_shift_l_mux_nl};
  wire [27:0] nl_leading_sign_28_1_1_0_rg_mantissa;
  assign nl_leading_sign_28_1_1_0_rg_mantissa = {operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2
      , (return_add_generic_AC_RND_CONV_false_op_lshift_sva_1[1:0])};
  wire [31:0] nl_histogram_core_out_rsci_inst_out_rsci_idat;
  assign nl_histogram_core_out_rsci_inst_out_rsci_idat = {out_rsci_idat_31 , out_rsci_idat_30_23
      , out_rsci_idat_22 , out_rsci_idat_21_0};
  wire [0:0] nl_histogram_core_core_fsm_inst_while_C_1_tr0;
  assign nl_histogram_core_core_fsm_inst_while_C_1_tr0 = or_dcpl_6;
  wire [0:0] nl_histogram_core_core_fsm_inst_main_C_2_tr0;
  assign nl_histogram_core_core_fsm_inst_main_C_2_tr0 = ~ (z_out_4[7]);
  mgc_shift_r_v5 #(.width_a(32'sd28),
  .signd_a(32'sd1),
  .width_s(32'sd9),
  .width_z(32'sd28)) operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg (
      .a(nl_operator_28_26_true_AC_TRN_AC_WRAP_rshift_rg_a[27:0]),
      .s(return_add_generic_AC_RND_CONV_false_asn_6),
      .z(return_add_generic_AC_RND_CONV_false_op_lshift_sva_1)
    );
  mgc_shift_l_v5 #(.width_a(32'sd28),
  .signd_a(32'sd0),
  .width_s(32'sd9),
  .width_z(32'sd28)) operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg (
      .a(nl_operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_a[27:0]),
      .s(nl_operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_s[8:0]),
      .z(return_add_generic_AC_RND_CONV_false_add_r_1_sva_1)
    );
  mgc_shift_l_v5 #(.width_a(32'sd1),
  .signd_a(32'sd1),
  .width_s(32'sd9),
  .width_z(32'sd28)) operator_28_26_true_AC_TRN_AC_WRAP_lshift_rg_1 (
      .a(1'b1),
      .s(return_add_generic_AC_RND_CONV_false_asn_6),
      .z(operator_28_26_true_AC_TRN_AC_WRAP_lshift_itm)
    );
  leading_sign_28_1_1_0  leading_sign_28_1_1_0_rg (
      .mantissa(nl_leading_sign_28_1_1_0_rg_mantissa[27:0]),
      .all_same(libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_2),
      .rtn(libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3)
    );
  histogram_core_feature_rsci histogram_core_feature_rsci_inst (
      .clk(clk),
      .rst(rst),
      .feature_rsc_dat(feature_rsc_dat),
      .feature_rsc_vld(feature_rsc_vld),
      .feature_rsc_rdy(feature_rsc_rdy),
      .core_wen(core_wen),
      .feature_rsci_oswt(reg_weight_rsci_irdy_core_psct_cse),
      .feature_rsci_wen_comp(feature_rsci_wen_comp),
      .feature_rsci_idat_mxwt(feature_rsci_idat_mxwt)
    );
  histogram_core_weight_rsci histogram_core_weight_rsci_inst (
      .clk(clk),
      .rst(rst),
      .weight_rsc_dat(weight_rsc_dat),
      .weight_rsc_vld(weight_rsc_vld),
      .weight_rsc_rdy(weight_rsc_rdy),
      .core_wen(core_wen),
      .weight_rsci_oswt(reg_weight_rsci_irdy_core_psct_cse),
      .weight_rsci_wen_comp(weight_rsci_wen_comp),
      .weight_rsci_idat_mxwt(weight_rsci_idat_mxwt)
    );
  histogram_core_hist_rsci histogram_core_hist_rsci_inst (
      .clk(clk),
      .rst(rst),
      .hist_rsc_dat(hist_rsc_dat),
      .hist_rsc_vld(hist_rsc_vld),
      .hist_rsc_rdy(hist_rsc_rdy),
      .core_wen(core_wen),
      .core_wten(core_wten),
      .hist_rsci_oswt(reg_hist_rsci_irdy_core_psct_cse),
      .hist_rsci_ivld_mxwt(hist_rsci_ivld_mxwt),
      .hist_rsci_idat_mxwt(hist_rsci_idat_mxwt)
    );
  histogram_core_out_rsci histogram_core_out_rsci_inst (
      .clk(clk),
      .rst(rst),
      .out_rsc_dat(out_rsc_dat),
      .out_rsc_vld(out_rsc_vld),
      .out_rsc_rdy(out_rsc_rdy),
      .core_wen(core_wen),
      .out_rsci_oswt(reg_out_rsci_ivld_core_psct_cse),
      .out_rsci_wen_comp(out_rsci_wen_comp),
      .out_rsci_idat(nl_histogram_core_out_rsci_inst_out_rsci_idat[31:0])
    );
  histogram_core_n_rsc_triosy_obj histogram_core_n_rsc_triosy_obj_inst (
      .n_rsc_triosy_lz(n_rsc_triosy_lz),
      .core_wten(core_wten),
      .n_rsc_triosy_obj_iswt0(reg_n_rsc_triosy_obj_ld_core_psct_cse)
    );
  histogram_core_staller histogram_core_staller_inst (
      .clk(clk),
      .rst(rst),
      .core_wen(core_wen),
      .core_wten(core_wten),
      .feature_rsci_wen_comp(feature_rsci_wen_comp),
      .weight_rsci_wen_comp(weight_rsci_wen_comp),
      .out_rsci_wen_comp(out_rsci_wen_comp)
    );
  histogram_core_core_fsm histogram_core_core_fsm_inst (
      .clk(clk),
      .rst(rst),
      .core_wen(core_wen),
      .fsm_output(fsm_output),
      .while_C_1_tr0(nl_histogram_core_core_fsm_inst_while_C_1_tr0[0:0]),
      .main_C_1_tr0(exit_for_sva_mx0),
      .for_C_0_tr0(exit_for_sva_mx0),
      .main_C_2_tr0(nl_histogram_core_core_fsm_inst_main_C_2_tr0[0:0]),
      .for_1_C_1_tr0(exit_for_1_sva)
    );
  assign for_1_and_cse = core_wen & (fsm_output[6]);
  assign nor_15_cse = ~((fsm_output[8]) | (fsm_output[0]));
  assign hist_local_d_and_cse = core_wen & (~(and_1513_cse | ((or_dcpl_17 | or_dcpl_14)
      & (fsm_output[2])) | ((or_dcpl_23 | or_dcpl_20) & (fsm_output[4]))));
  assign hist_local_d_and_1_cse = core_wen & (~(and_1513_cse | ((or_dcpl_17 | or_dcpl_26)
      & (fsm_output[2])) | ((or_dcpl_23 | or_dcpl_29) & (fsm_output[4]))));
  assign hist_local_d_and_2_cse = core_wen & (~(and_1513_cse | ((or_dcpl_17 | or_dcpl_33)
      & (fsm_output[2])) | ((or_dcpl_37 | or_dcpl_35) & (fsm_output[4]))));
  assign hist_local_d_and_3_cse = core_wen & (~(and_1513_cse | ((or_dcpl_17 | or_dcpl_40)
      & (fsm_output[2])) | ((or_dcpl_37 | or_dcpl_42) & (fsm_output[4]))));
  assign hist_local_d_and_4_cse = core_wen & (~(and_1513_cse | ((or_dcpl_46 | or_dcpl_44)
      & (fsm_output[2])) | ((or_dcpl_37 | or_dcpl_49) & (fsm_output[4]))));
  assign hist_local_d_and_5_cse = core_wen & (~(and_1513_cse | ((or_dcpl_46 | or_dcpl_51)
      & (fsm_output[2])) | ((or_dcpl_37 | or_dcpl_54) & (fsm_output[4]))));
  assign hist_local_d_and_6_cse = core_wen & (~(and_1513_cse | ((or_dcpl_46 | or_dcpl_33)
      & (fsm_output[2])) | ((or_dcpl_37 | or_dcpl_57) & (fsm_output[4]))));
  assign hist_local_d_and_7_cse = core_wen & (~(and_1513_cse | ((or_dcpl_46 | or_dcpl_40)
      & (fsm_output[2])) | ((or_dcpl_37 | or_dcpl_60) & (fsm_output[4]))));
  assign hist_local_d_and_8_cse = core_wen & (~(and_1513_cse | ((or_dcpl_17 | or_dcpl_63)
      & (fsm_output[2])) | ((or_dcpl_66 | or_dcpl_20) & (fsm_output[4]))));
  assign hist_local_d_and_9_cse = core_wen & (~(and_1513_cse | ((or_dcpl_17 | or_dcpl_68)
      & (fsm_output[2])) | ((or_dcpl_66 | or_dcpl_29) & (fsm_output[4]))));
  assign hist_local_d_and_10_cse = core_wen & (~(and_1513_cse | ((or_dcpl_17 | or_dcpl_71)
      & (fsm_output[2])) | ((or_dcpl_66 | or_dcpl_35) & (fsm_output[4]))));
  assign hist_local_d_and_11_cse = core_wen & (~(and_1513_cse | ((or_dcpl_17 | or_dcpl_74)
      & (fsm_output[2])) | ((or_dcpl_66 | or_dcpl_42) & (fsm_output[4]))));
  assign hist_local_d_and_12_cse = core_wen & (~(and_1513_cse | ((or_dcpl_17 | or_dcpl_77)
      & (fsm_output[2])) | ((or_dcpl_23 | or_dcpl_35) & (fsm_output[4]))));
  assign hist_local_d_and_13_cse = core_wen & (~(and_1513_cse | ((or_dcpl_46 | or_dcpl_63)
      & (fsm_output[2])) | ((or_dcpl_66 | or_dcpl_49) & (fsm_output[4]))));
  assign hist_local_d_and_14_cse = core_wen & (~(and_1513_cse | ((or_dcpl_46 | or_dcpl_68)
      & (fsm_output[2])) | ((or_dcpl_66 | or_dcpl_54) & (fsm_output[4]))));
  assign hist_local_d_and_15_cse = core_wen & (~(and_1513_cse | ((or_dcpl_46 | or_dcpl_71)
      & (fsm_output[2])) | ((or_dcpl_66 | or_dcpl_57) & (fsm_output[4]))));
  assign hist_local_d_and_16_cse = core_wen & (~(and_1513_cse | ((or_dcpl_46 | or_dcpl_74)
      & (fsm_output[2])) | ((or_dcpl_66 | or_dcpl_60) & (fsm_output[4]))));
  assign hist_local_d_and_17_cse = core_wen & (~(and_1513_cse | ((or_dcpl_17 | or_dcpl_89)
      & (fsm_output[2])) | ((or_dcpl_92 | or_dcpl_20) & (fsm_output[4]))));
  assign hist_local_d_and_18_cse = core_wen & (~(and_1513_cse | ((or_dcpl_17 | or_dcpl_94)
      & (fsm_output[2])) | ((or_dcpl_92 | or_dcpl_29) & (fsm_output[4]))));
  assign hist_local_d_and_19_cse = core_wen & (~(and_1513_cse | ((or_dcpl_17 | or_dcpl_97)
      & (fsm_output[2])) | ((or_dcpl_92 | or_dcpl_35) & (fsm_output[4]))));
  assign hist_local_d_and_20_cse = core_wen & (~(and_1513_cse | ((or_dcpl_17 | or_dcpl_100)
      & (fsm_output[2])) | ((or_dcpl_92 | or_dcpl_42) & (fsm_output[4]))));
  assign hist_local_d_and_21_cse = core_wen & (~(and_1513_cse | ((or_dcpl_46 | or_dcpl_89)
      & (fsm_output[2])) | ((or_dcpl_92 | or_dcpl_49) & (fsm_output[4]))));
  assign hist_local_d_and_22_cse = core_wen & (~(and_1513_cse | ((or_dcpl_46 | or_dcpl_94)
      & (fsm_output[2])) | ((or_dcpl_92 | or_dcpl_54) & (fsm_output[4]))));
  assign hist_local_d_and_23_cse = core_wen & (~(and_1513_cse | ((or_dcpl_17 | or_dcpl_107)
      & (fsm_output[2])) | ((or_dcpl_23 | or_dcpl_42) & (fsm_output[4]))));
  assign hist_local_d_and_24_cse = core_wen & (~(and_1513_cse | ((or_dcpl_46 | or_dcpl_97)
      & (fsm_output[2])) | ((or_dcpl_92 | or_dcpl_57) & (fsm_output[4]))));
  assign hist_local_d_and_25_cse = core_wen & (~(and_1513_cse | ((or_dcpl_46 | or_dcpl_100)
      & (fsm_output[2])) | ((or_dcpl_92 | or_dcpl_60) & (fsm_output[4]))));
  assign hist_local_d_and_26_cse = core_wen & (~(and_1513_cse | ((or_dcpl_115 | or_dcpl_14)
      & (fsm_output[2])) | ((or_dcpl_118 | or_dcpl_20) & (fsm_output[4]))));
  assign hist_local_d_and_27_cse = core_wen & (~(and_1513_cse | ((or_dcpl_115 | or_dcpl_26)
      & (fsm_output[2])) | ((or_dcpl_118 | or_dcpl_29) & (fsm_output[4]))));
  assign hist_local_d_and_28_cse = core_wen & (~(and_1513_cse | ((or_dcpl_115 | or_dcpl_77)
      & (fsm_output[2])) | ((or_dcpl_118 | or_dcpl_35) & (fsm_output[4]))));
  assign hist_local_d_and_29_cse = core_wen & (~(and_1513_cse | ((or_dcpl_115 | or_dcpl_107)
      & (fsm_output[2])) | ((or_dcpl_118 | or_dcpl_42) & (fsm_output[4]))));
  assign hist_local_d_and_30_cse = core_wen & (~(and_1513_cse | ((or_dcpl_126 | or_dcpl_14)
      & (fsm_output[2])) | ((or_dcpl_118 | or_dcpl_49) & (fsm_output[4]))));
  assign hist_local_d_and_31_cse = core_wen & (~(and_1513_cse | ((or_dcpl_126 | or_dcpl_26)
      & (fsm_output[2])) | ((or_dcpl_118 | or_dcpl_54) & (fsm_output[4]))));
  assign hist_local_d_and_32_cse = core_wen & (~(and_1513_cse | ((or_dcpl_126 | or_dcpl_77)
      & (fsm_output[2])) | ((or_dcpl_118 | or_dcpl_57) & (fsm_output[4]))));
  assign hist_local_d_and_33_cse = core_wen & (~(and_1513_cse | ((or_dcpl_126 | or_dcpl_107)
      & (fsm_output[2])) | ((or_dcpl_118 | or_dcpl_60) & (fsm_output[4]))));
  assign hist_local_d_and_34_cse = core_wen & (~(and_1513_cse | ((or_dcpl_46 | or_dcpl_14)
      & (fsm_output[2])) | ((or_dcpl_23 | or_dcpl_49) & (fsm_output[4]))));
  assign hist_local_d_and_35_cse = core_wen & (~(and_1513_cse | ((or_dcpl_115 | or_dcpl_44)
      & (fsm_output[2])) | ((or_dcpl_138 | or_dcpl_20) & (fsm_output[4]))));
  assign hist_local_d_and_36_cse = core_wen & (~(and_1513_cse | ((or_dcpl_115 | or_dcpl_51)
      & (fsm_output[2])) | ((or_dcpl_138 | or_dcpl_29) & (fsm_output[4]))));
  assign hist_local_d_and_37_cse = core_wen & (~(and_1513_cse | ((or_dcpl_115 | or_dcpl_33)
      & (fsm_output[2])) | ((or_dcpl_138 | or_dcpl_35) & (fsm_output[4]))));
  assign hist_local_d_and_38_cse = core_wen & (~(and_1513_cse | ((or_dcpl_115 | or_dcpl_40)
      & (fsm_output[2])) | ((or_dcpl_138 | or_dcpl_42) & (fsm_output[4]))));
  assign hist_local_d_and_39_cse = core_wen & (~(and_1513_cse | ((or_dcpl_126 | or_dcpl_44)
      & (fsm_output[2])) | ((or_dcpl_138 | or_dcpl_49) & (fsm_output[4]))));
  assign hist_local_d_and_40_cse = core_wen & (~(and_1513_cse | ((or_dcpl_126 | or_dcpl_51)
      & (fsm_output[2])) | ((or_dcpl_138 | or_dcpl_54) & (fsm_output[4]))));
  assign hist_local_d_and_41_cse = core_wen & (~(and_1513_cse | ((or_dcpl_126 | or_dcpl_33)
      & (fsm_output[2])) | ((or_dcpl_138 | or_dcpl_57) & (fsm_output[4]))));
  assign hist_local_d_and_42_cse = core_wen & (~(and_1513_cse | ((or_dcpl_126 | or_dcpl_40)
      & (fsm_output[2])) | ((or_dcpl_138 | or_dcpl_60) & (fsm_output[4]))));
  assign hist_local_d_and_43_cse = core_wen & (~(and_1513_cse | ((or_dcpl_115 | or_dcpl_63)
      & (fsm_output[2])) | ((or_dcpl_155 | or_dcpl_20) & (fsm_output[4]))));
  assign hist_local_d_and_44_cse = core_wen & (~(and_1513_cse | ((or_dcpl_115 | or_dcpl_68)
      & (fsm_output[2])) | ((or_dcpl_155 | or_dcpl_29) & (fsm_output[4]))));
  assign hist_local_d_and_45_cse = core_wen & (~(and_1513_cse | ((or_dcpl_46 | or_dcpl_26)
      & (fsm_output[2])) | ((or_dcpl_23 | or_dcpl_54) & (fsm_output[4]))));
  assign hist_local_d_and_46_cse = core_wen & (~(and_1513_cse | ((or_dcpl_115 | or_dcpl_71)
      & (fsm_output[2])) | ((or_dcpl_155 | or_dcpl_35) & (fsm_output[4]))));
  assign hist_local_d_and_47_cse = core_wen & (~(and_1513_cse | ((or_dcpl_115 | or_dcpl_74)
      & (fsm_output[2])) | ((or_dcpl_155 | or_dcpl_42) & (fsm_output[4]))));
  assign hist_local_d_and_48_cse = core_wen & (~(and_1513_cse | ((or_dcpl_126 | or_dcpl_63)
      & (fsm_output[2])) | ((or_dcpl_155 | or_dcpl_49) & (fsm_output[4]))));
  assign hist_local_d_and_49_cse = core_wen & (~(and_1513_cse | ((or_dcpl_126 | or_dcpl_68)
      & (fsm_output[2])) | ((or_dcpl_155 | or_dcpl_54) & (fsm_output[4]))));
  assign hist_local_d_and_50_cse = core_wen & (~(and_1513_cse | ((or_dcpl_126 | or_dcpl_71)
      & (fsm_output[2])) | ((or_dcpl_155 | or_dcpl_57) & (fsm_output[4]))));
  assign hist_local_d_and_51_cse = core_wen & (~(and_1513_cse | ((or_dcpl_126 | or_dcpl_74)
      & (fsm_output[2])) | ((or_dcpl_155 | or_dcpl_60) & (fsm_output[4]))));
  assign hist_local_d_and_52_cse = core_wen & (~(and_1513_cse | ((or_dcpl_115 | or_dcpl_89)
      & (fsm_output[2])) | ((or_dcpl_174 | or_dcpl_20) & (fsm_output[4]))));
  assign hist_local_d_and_53_cse = core_wen & (~(and_1513_cse | ((or_dcpl_115 | or_dcpl_94)
      & (fsm_output[2])) | ((or_dcpl_174 | or_dcpl_29) & (fsm_output[4]))));
  assign hist_local_d_and_54_cse = core_wen & (~(and_1513_cse | ((or_dcpl_115 | or_dcpl_97)
      & (fsm_output[2])) | ((or_dcpl_174 | or_dcpl_35) & (fsm_output[4]))));
  assign hist_local_d_and_55_cse = core_wen & (~(and_1513_cse | ((or_dcpl_115 | or_dcpl_100)
      & (fsm_output[2])) | ((or_dcpl_174 | or_dcpl_42) & (fsm_output[4]))));
  assign hist_local_d_and_56_cse = core_wen & (~(and_1513_cse | ((or_dcpl_46 | or_dcpl_77)
      & (fsm_output[2])) | ((or_dcpl_23 | or_dcpl_57) & (fsm_output[4]))));
  assign hist_local_d_and_57_cse = core_wen & (~(and_1513_cse | ((or_dcpl_126 | or_dcpl_89)
      & (fsm_output[2])) | ((or_dcpl_174 | or_dcpl_49) & (fsm_output[4]))));
  assign hist_local_d_and_58_cse = core_wen & (~(and_1513_cse | ((or_dcpl_126 | or_dcpl_94)
      & (fsm_output[2])) | ((or_dcpl_174 | or_dcpl_54) & (fsm_output[4]))));
  assign hist_local_d_and_59_cse = core_wen & (~(and_1513_cse | ((or_dcpl_126 | or_dcpl_97)
      & (fsm_output[2])) | ((or_dcpl_174 | or_dcpl_57) & (fsm_output[4]))));
  assign hist_local_d_and_60_cse = core_wen & (~(and_1513_cse | ((or_dcpl_126 | or_dcpl_100)
      & (fsm_output[2])) | ((or_dcpl_174 | or_dcpl_60) & (fsm_output[4]))));
  assign hist_local_d_and_61_cse = core_wen & (~(and_1513_cse | ((or_dcpl_193 | or_dcpl_14)
      & (fsm_output[2])) | ((or_dcpl_196 | or_dcpl_20) & (fsm_output[4]))));
  assign hist_local_d_and_62_cse = core_wen & (~(and_1513_cse | ((or_dcpl_193 | or_dcpl_26)
      & (fsm_output[2])) | ((or_dcpl_196 | or_dcpl_29) & (fsm_output[4]))));
  assign hist_local_d_and_63_cse = core_wen & (~(and_1513_cse | ((or_dcpl_193 | or_dcpl_77)
      & (fsm_output[2])) | ((or_dcpl_196 | or_dcpl_35) & (fsm_output[4]))));
  assign hist_local_d_and_64_cse = core_wen & (~(and_1513_cse | ((or_dcpl_193 | or_dcpl_107)
      & (fsm_output[2])) | ((or_dcpl_196 | or_dcpl_42) & (fsm_output[4]))));
  assign hist_local_d_and_65_cse = core_wen & (~(and_1513_cse | ((or_dcpl_204 | or_dcpl_14)
      & (fsm_output[2])) | ((or_dcpl_196 | or_dcpl_49) & (fsm_output[4]))));
  assign hist_local_d_and_66_cse = core_wen & (~(and_1513_cse | ((or_dcpl_204 | or_dcpl_26)
      & (fsm_output[2])) | ((or_dcpl_196 | or_dcpl_54) & (fsm_output[4]))));
  assign hist_local_d_and_67_cse = core_wen & (~(and_1513_cse | ((or_dcpl_46 | or_dcpl_107)
      & (fsm_output[2])) | ((or_dcpl_23 | or_dcpl_60) & (fsm_output[4]))));
  assign hist_local_d_and_68_cse = core_wen & (~(and_1513_cse | ((or_dcpl_204 | or_dcpl_77)
      & (fsm_output[2])) | ((or_dcpl_196 | or_dcpl_57) & (fsm_output[4]))));
  assign hist_local_d_and_69_cse = core_wen & (~(and_1513_cse | ((or_dcpl_204 | or_dcpl_107)
      & (fsm_output[2])) | ((or_dcpl_196 | or_dcpl_60) & (fsm_output[4]))));
  assign hist_local_d_and_70_cse = core_wen & (~(and_1513_cse | ((or_dcpl_193 | or_dcpl_44)
      & (fsm_output[2])) | ((or_dcpl_216 | or_dcpl_20) & (fsm_output[4]))));
  assign hist_local_d_and_71_cse = core_wen & (~(and_1513_cse | ((or_dcpl_193 | or_dcpl_51)
      & (fsm_output[2])) | ((or_dcpl_216 | or_dcpl_29) & (fsm_output[4]))));
  assign hist_local_d_and_72_cse = core_wen & (~(and_1513_cse | ((or_dcpl_193 | or_dcpl_33)
      & (fsm_output[2])) | ((or_dcpl_216 | or_dcpl_35) & (fsm_output[4]))));
  assign hist_local_d_and_73_cse = core_wen & (~(and_1513_cse | ((or_dcpl_193 | or_dcpl_40)
      & (fsm_output[2])) | ((or_dcpl_216 | or_dcpl_42) & (fsm_output[4]))));
  assign hist_local_d_and_74_cse = core_wen & (~(and_1513_cse | ((or_dcpl_204 | or_dcpl_44)
      & (fsm_output[2])) | ((or_dcpl_216 | or_dcpl_49) & (fsm_output[4]))));
  assign hist_local_d_and_75_cse = core_wen & (~(and_1513_cse | ((or_dcpl_204 | or_dcpl_51)
      & (fsm_output[2])) | ((or_dcpl_216 | or_dcpl_54) & (fsm_output[4]))));
  assign hist_local_d_and_76_cse = core_wen & (~(and_1513_cse | ((or_dcpl_204 | or_dcpl_33)
      & (fsm_output[2])) | ((or_dcpl_216 | or_dcpl_57) & (fsm_output[4]))));
  assign hist_local_d_and_77_cse = core_wen & (~(and_1513_cse | ((or_dcpl_204 | or_dcpl_40)
      & (fsm_output[2])) | ((or_dcpl_216 | or_dcpl_60) & (fsm_output[4]))));
  assign hist_local_d_and_78_cse = core_wen & (~(and_1513_cse | ((or_dcpl_17 | or_dcpl_44)
      & (fsm_output[2])) | ((or_dcpl_37 | or_dcpl_20) & (fsm_output[4]))));
  assign hist_local_d_and_79_cse = core_wen & (~(and_1513_cse | ((or_dcpl_193 | or_dcpl_63)
      & (fsm_output[2])) | ((or_dcpl_235 | or_dcpl_20) & (fsm_output[4]))));
  assign hist_local_d_and_80_cse = core_wen & (~(and_1513_cse | ((or_dcpl_193 | or_dcpl_68)
      & (fsm_output[2])) | ((or_dcpl_235 | or_dcpl_29) & (fsm_output[4]))));
  assign hist_local_d_and_81_cse = core_wen & (~(and_1513_cse | ((or_dcpl_193 | or_dcpl_71)
      & (fsm_output[2])) | ((or_dcpl_235 | or_dcpl_35) & (fsm_output[4]))));
  assign hist_local_d_and_82_cse = core_wen & (~(and_1513_cse | ((or_dcpl_193 | or_dcpl_74)
      & (fsm_output[2])) | ((or_dcpl_235 | or_dcpl_42) & (fsm_output[4]))));
  assign hist_local_d_and_83_cse = core_wen & (~(and_1513_cse | ((or_dcpl_204 | or_dcpl_63)
      & (fsm_output[2])) | ((or_dcpl_235 | or_dcpl_49) & (fsm_output[4]))));
  assign hist_local_d_and_84_cse = core_wen & (~(and_1513_cse | ((or_dcpl_204 | or_dcpl_68)
      & (fsm_output[2])) | ((or_dcpl_235 | or_dcpl_54) & (fsm_output[4]))));
  assign hist_local_d_and_85_cse = core_wen & (~(and_1513_cse | ((or_dcpl_204 | or_dcpl_71)
      & (fsm_output[2])) | ((or_dcpl_235 | or_dcpl_57) & (fsm_output[4]))));
  assign hist_local_d_and_86_cse = core_wen & (~(and_1513_cse | ((or_dcpl_204 | or_dcpl_74)
      & (fsm_output[2])) | ((or_dcpl_235 | or_dcpl_60) & (fsm_output[4]))));
  assign hist_local_d_and_87_cse = core_wen & (~(and_1513_cse | ((or_dcpl_193 | or_dcpl_89)
      & (fsm_output[2])) | ((or_dcpl_252 | or_dcpl_20) & (fsm_output[4]))));
  assign hist_local_d_and_88_cse = core_wen & (~(and_1513_cse | ((or_dcpl_193 | or_dcpl_94)
      & (fsm_output[2])) | ((or_dcpl_252 | or_dcpl_29) & (fsm_output[4]))));
  assign hist_local_d_and_89_cse = core_wen & (~(and_1513_cse | ((or_dcpl_17 | or_dcpl_51)
      & (fsm_output[2])) | ((or_dcpl_37 | or_dcpl_29) & (fsm_output[4]))));
  assign hist_local_d_and_90_cse = core_wen & (~(and_1513_cse | ((or_dcpl_193 | or_dcpl_97)
      & (fsm_output[2])) | ((or_dcpl_252 | or_dcpl_35) & (fsm_output[4]))));
  assign hist_local_d_and_91_cse = core_wen & (~(and_1513_cse | ((or_dcpl_193 | or_dcpl_100)
      & (fsm_output[2])) | ((or_dcpl_252 | or_dcpl_42) & (fsm_output[4]))));
  assign hist_local_d_and_92_cse = core_wen & (~(and_1513_cse | ((or_dcpl_204 | or_dcpl_89)
      & (fsm_output[2])) | ((or_dcpl_252 | or_dcpl_49) & (fsm_output[4]))));
  assign hist_local_d_and_93_cse = core_wen & (~(and_1513_cse | ((or_dcpl_204 | or_dcpl_94)
      & (fsm_output[2])) | ((or_dcpl_252 | or_dcpl_54) & (fsm_output[4]))));
  assign hist_local_d_and_94_cse = core_wen & (~(and_1513_cse | ((or_dcpl_204 | or_dcpl_97)
      & (fsm_output[2])) | ((or_dcpl_252 | or_dcpl_57) & (fsm_output[4]))));
  assign hist_local_d_and_95_cse = core_wen & (~(and_1513_cse | ((or_dcpl_204 | or_dcpl_100)
      & (fsm_output[2])) | ((or_dcpl_252 | or_dcpl_60) & (fsm_output[4]))));
  assign hist_local_d_and_96_cse = core_wen & (~(and_1513_cse | ((or_dcpl_271 | or_dcpl_14)
      & (fsm_output[2])) | ((or_dcpl_274 | or_dcpl_20) & (fsm_output[4]))));
  assign hist_local_d_and_97_cse = core_wen & (~(and_1513_cse | ((or_dcpl_271 | or_dcpl_26)
      & (fsm_output[2])) | ((or_dcpl_274 | or_dcpl_29) & (fsm_output[4]))));
  assign hist_local_d_and_98_cse = core_wen & (~(and_1513_cse | ((or_dcpl_271 | or_dcpl_77)
      & (fsm_output[2])) | ((or_dcpl_274 | or_dcpl_35) & (fsm_output[4]))));
  assign hist_local_d_and_99_cse = core_wen & (~(and_1513_cse | ((or_dcpl_271 | or_dcpl_107)
      & (fsm_output[2])) | ((or_dcpl_274 | or_dcpl_42) & (fsm_output[4]))));
  assign return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_nor_nl
      = ~(return_add_generic_AC_RND_CONV_false_r_zero_sva_1 | (~((return_add_generic_AC_RND_CONV_false_r_un_qr_lpi_2_dfm_mx0[23])
      | return_add_generic_AC_RND_CONV_false_shift_r_sva_1)));
  assign return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_and_nl
      = MUX_v_8_2_2(8'b00000000, (return_add_generic_AC_RND_CONV_false_acc_psp_sva_1[7:0]),
      return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_nor_nl);
  assign for_asn_811_mx0w1 = MUX_v_8_2_2(return_add_generic_AC_RND_CONV_false_e_r_qelse_return_add_generic_AC_RND_CONV_false_e_r_qelse_and_nl,
      8'b11111111, return_add_generic_AC_RND_CONV_false_exception_sva_1);
  assign nl_operator_32_true_acc_nl = conv_s2u_32_33(z_out_5) - conv_s2u_32_33(n_sva);
  assign operator_32_true_acc_nl = nl_operator_32_true_acc_nl[32:0];
  assign exit_for_sva_mx0 = MUX_s_1_2_2((~ (z_out_2[32])), (~ (readslicef_33_1_32(operator_32_true_acc_nl))),
      fsm_output[4]);
  assign return_extract_return_extract_or_sva_1 = (z_out!=8'b00000000);
  assign x_to_helper_t_return_d_sva_22_1 = MUX_s_1_100_2(hist_local_d_0_22_lpi_3,
      hist_local_d_1_22_lpi_3, hist_local_d_2_22_lpi_3, hist_local_d_3_22_lpi_3,
      hist_local_d_4_22_lpi_3, hist_local_d_5_22_lpi_3, hist_local_d_6_22_lpi_3,
      hist_local_d_7_22_lpi_3, hist_local_d_8_22_lpi_3, hist_local_d_9_22_lpi_3,
      hist_local_d_10_22_lpi_3, hist_local_d_11_22_lpi_3, hist_local_d_12_22_lpi_3,
      hist_local_d_13_22_lpi_3, hist_local_d_14_22_lpi_3, hist_local_d_15_22_lpi_3,
      hist_local_d_16_22_lpi_3, hist_local_d_17_22_lpi_3, hist_local_d_18_22_lpi_3,
      hist_local_d_19_22_lpi_3, hist_local_d_20_22_lpi_3, hist_local_d_21_22_lpi_3,
      hist_local_d_22_22_lpi_3, hist_local_d_23_22_lpi_3, hist_local_d_24_22_lpi_3,
      hist_local_d_25_22_lpi_3, hist_local_d_26_22_lpi_3, hist_local_d_27_22_lpi_3,
      hist_local_d_28_22_lpi_3, hist_local_d_29_22_lpi_3, hist_local_d_30_22_lpi_3,
      hist_local_d_31_22_lpi_3, hist_local_d_32_22_lpi_3, hist_local_d_33_22_lpi_3,
      hist_local_d_34_22_lpi_3, hist_local_d_35_22_lpi_3, hist_local_d_36_22_lpi_3,
      hist_local_d_37_22_lpi_3, hist_local_d_38_22_lpi_3, hist_local_d_39_22_lpi_3,
      hist_local_d_40_22_lpi_3, hist_local_d_41_22_lpi_3, hist_local_d_42_22_lpi_3,
      hist_local_d_43_22_lpi_3, hist_local_d_44_22_lpi_3, hist_local_d_45_22_lpi_3,
      hist_local_d_46_22_lpi_3, hist_local_d_47_22_lpi_3, hist_local_d_48_22_lpi_3,
      hist_local_d_49_22_lpi_3, hist_local_d_50_22_lpi_3, hist_local_d_51_22_lpi_3,
      hist_local_d_52_22_lpi_3, hist_local_d_53_22_lpi_3, hist_local_d_54_22_lpi_3,
      hist_local_d_55_22_lpi_3, hist_local_d_56_22_lpi_3, hist_local_d_57_22_lpi_3,
      hist_local_d_58_22_lpi_3, hist_local_d_59_22_lpi_3, hist_local_d_60_22_lpi_3,
      hist_local_d_61_22_lpi_3, hist_local_d_62_22_lpi_3, hist_local_d_63_22_lpi_3,
      hist_local_d_64_22_lpi_3, hist_local_d_65_22_lpi_3, hist_local_d_66_22_lpi_3,
      hist_local_d_67_22_lpi_3, hist_local_d_68_22_lpi_3, hist_local_d_69_22_lpi_3,
      hist_local_d_70_22_lpi_3, hist_local_d_71_22_lpi_3, hist_local_d_72_22_lpi_3,
      hist_local_d_73_22_lpi_3, hist_local_d_74_22_lpi_3, hist_local_d_75_22_lpi_3,
      hist_local_d_76_22_lpi_3, hist_local_d_77_22_lpi_3, hist_local_d_78_22_lpi_3,
      hist_local_d_79_22_lpi_3, hist_local_d_80_22_lpi_3, hist_local_d_81_22_lpi_3,
      hist_local_d_82_22_lpi_3, hist_local_d_83_22_lpi_3, hist_local_d_84_22_lpi_3,
      hist_local_d_85_22_lpi_3, hist_local_d_86_22_lpi_3, hist_local_d_87_22_lpi_3,
      hist_local_d_88_22_lpi_3, hist_local_d_89_22_lpi_3, hist_local_d_90_22_lpi_3,
      hist_local_d_91_22_lpi_3, hist_local_d_92_22_lpi_3, hist_local_d_93_22_lpi_3,
      hist_local_d_94_22_lpi_3, hist_local_d_95_22_lpi_3, hist_local_d_96_22_lpi_3,
      hist_local_d_97_22_lpi_3, hist_local_d_98_22_lpi_3, hist_local_d_99_22_lpi_3,
      feature_rsci_idat_mxwt);
  assign return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_24_23_mx0 = MUX_v_2_2_2(({1'b0
      , return_extract_1_return_extract_1_or_sva_1}), (return_add_generic_AC_RND_CONV_false_op2_m_qr_sva_1[24:23]),
      weight_rsci_idat_mxwt[31]);
  assign return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_22_0_mx0 = MUX_v_23_2_2((weight_rsci_idat_mxwt[22:0]),
      (return_add_generic_AC_RND_CONV_false_op2_m_qr_sva_1[22:0]), weight_rsci_idat_mxwt[31]);
  assign nl_return_add_generic_AC_RND_CONV_false_op2_m_qr_sva_1 = ({1'b1 , (~ return_extract_1_return_extract_1_or_sva_1)
      , (~ (weight_rsci_idat_mxwt[22:0]))}) + 25'b0000000000000000000000001;
  assign return_add_generic_AC_RND_CONV_false_op2_m_qr_sva_1 = nl_return_add_generic_AC_RND_CONV_false_op2_m_qr_sva_1[24:0];
  assign return_extract_1_return_extract_1_or_sva_1 = (weight_rsci_idat_mxwt[30:23]!=8'b00000000);
  assign nl_return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp = ({1'b1 , (~ return_add_generic_AC_RND_CONV_false_op2_e_b_8_0_sva_1)})
      + conv_u2s_9_10(operator_8_false_return_sva_1) + 10'b0000000001;
  assign return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp = nl_return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp[9:0];
  assign xnor_nl = ~((z_out_2[24]) ^ return_add_generic_AC_RND_CONV_false_rnd_ovf_land_sva_1);
  assign return_add_generic_AC_RND_CONV_false_r_un_qr_lpi_2_dfm_mx0 = MUX_v_24_2_2(z_out_4,
      (z_out_2[23:0]), xnor_nl);
  assign nor_7_nl = ~((~((~ return_extract_m_zero_return_extract_m_zero_nor_tmp)
      | (z_out!=8'b00000000))) | (return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp[9]));
  assign return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0 = MUX_v_9_2_2(return_add_generic_AC_RND_CONV_false_op2_e_b_8_0_sva_1,
      operator_8_false_return_sva_1, nor_7_nl);
  assign nl_return_add_generic_AC_RND_CONV_false_qelse_3_acc_3_nl = ({1'b1 , (~ (libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3[4:1]))})
      + 5'b00001;
  assign return_add_generic_AC_RND_CONV_false_qelse_3_acc_3_nl = nl_return_add_generic_AC_RND_CONV_false_qelse_3_acc_3_nl[4:0];
  assign nl_return_add_generic_AC_RND_CONV_false_qelse_3_acc_nl = conv_s2s_6_10({return_add_generic_AC_RND_CONV_false_qelse_3_acc_3_nl
      , (~ (libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3[0]))})
      + conv_u2s_9_10(return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0);
  assign return_add_generic_AC_RND_CONV_false_qelse_3_acc_nl = nl_return_add_generic_AC_RND_CONV_false_qelse_3_acc_nl[9:0];
  assign return_add_generic_AC_RND_CONV_false_qif_3_mux_nl = MUX_v_10_2_2(10'b0000000001,
      return_add_generic_AC_RND_CONV_false_qelse_3_acc_nl, return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_itm_8_1);
  assign nl_return_add_generic_AC_RND_CONV_false_acc_psp_sva_1 = return_add_generic_AC_RND_CONV_false_qif_3_mux_nl
      + conv_u2s_1_10(return_add_generic_AC_RND_CONV_false_shift_r_sva_1);
  assign return_add_generic_AC_RND_CONV_false_acc_psp_sva_1 = nl_return_add_generic_AC_RND_CONV_false_acc_psp_sva_1[9:0];
  assign return_add_generic_AC_RND_CONV_false_r_zero_sva_1 = (~ (return_add_generic_AC_RND_CONV_false_op_lshift_sva_1[0]))
      & libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_2;
  assign return_add_generic_AC_RND_CONV_false_shift_r_sva_1 = return_add_generic_AC_RND_CONV_false_rnd_ovf_land_sva_1
      | (return_add_generic_AC_RND_CONV_false_r_sign_sva_1 & (z_out_2[23:0]==24'b000000000000000000000000));
  assign return_add_generic_AC_RND_CONV_false_if_1_return_add_generic_AC_RND_CONV_false_if_1_nor_nl
      = ~(return_add_generic_AC_RND_CONV_false_exception_sva_1 | return_add_generic_AC_RND_CONV_false_r_zero_sva_1);
  assign return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1 = MUX_v_22_2_2(22'b0000000000000000000000,
      (return_add_generic_AC_RND_CONV_false_r_un_qr_lpi_2_dfm_mx0[21:0]), return_add_generic_AC_RND_CONV_false_if_1_return_add_generic_AC_RND_CONV_false_if_1_nor_nl);
  assign and_4721_cse = (weight_rsci_idat_mxwt[30:23]==8'b11111111);
  assign and_4722_cse = (z_out==8'b11111111);
  assign return_add_generic_AC_RND_CONV_false_r_nan_or_1_nl = return_add_generic_AC_RND_CONV_false_op1_nan_sva_1
      | return_add_generic_AC_RND_CONV_false_op2_nan_sva_1 | (return_add_generic_AC_RND_CONV_false_op1_inf_sva_1
      & return_add_generic_AC_RND_CONV_false_op2_inf_sva_1 & (x_ac_ieee_float_base_mux_tmp
      ^ (weight_rsci_idat_mxwt[31])));
  assign and_1482_nl = (~(and_4721_cse | and_4722_cse)) & (~((~((return_add_generic_AC_RND_CONV_false_op_lshift_sva_1[0])
      | (~ libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_2)))
      | return_add_generic_AC_RND_CONV_false_r_inf_acc_itm_9_1));
  assign return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0 = MUX_s_1_2_2(return_add_generic_AC_RND_CONV_false_r_nan_or_1_nl,
      (return_add_generic_AC_RND_CONV_false_r_un_qr_lpi_2_dfm_mx0[22]), and_1482_nl);
  assign return_add_generic_AC_RND_CONV_false_r_sign_sva_1 = (z_out_2[24]) ^ return_add_generic_AC_RND_CONV_false_rnd_ovf_land_sva_1;
  assign return_add_generic_AC_RND_CONV_false_op1_nan_sva_1 = and_4722_cse & (~ return_extract_m_zero_return_extract_m_zero_nor_tmp);
  assign return_add_generic_AC_RND_CONV_false_op2_nan_sva_1 = and_4721_cse & (~ return_extract_1_m_zero_sva_1);
  assign return_add_generic_AC_RND_CONV_false_op1_inf_sva_1 = and_4722_cse & return_extract_m_zero_return_extract_m_zero_nor_tmp;
  assign return_add_generic_AC_RND_CONV_false_op2_inf_sva_1 = and_4721_cse & return_extract_1_m_zero_sva_1;
  assign x_ac_ieee_float_base_mux_tmp = MUX_s_1_100_2(hist_local_d_0_31_lpi_3, hist_local_d_1_31_lpi_3,
      hist_local_d_2_31_lpi_3, hist_local_d_3_31_lpi_3, hist_local_d_4_31_lpi_3,
      hist_local_d_5_31_lpi_3, hist_local_d_6_31_lpi_3, hist_local_d_7_31_lpi_3,
      hist_local_d_8_31_lpi_3, hist_local_d_9_31_lpi_3, hist_local_d_10_31_lpi_3,
      hist_local_d_11_31_lpi_3, hist_local_d_12_31_lpi_3, hist_local_d_13_31_lpi_3,
      hist_local_d_14_31_lpi_3, hist_local_d_15_31_lpi_3, hist_local_d_16_31_lpi_3,
      hist_local_d_17_31_lpi_3, hist_local_d_18_31_lpi_3, hist_local_d_19_31_lpi_3,
      hist_local_d_20_31_lpi_3, hist_local_d_21_31_lpi_3, hist_local_d_22_31_lpi_3,
      hist_local_d_23_31_lpi_3, hist_local_d_24_31_lpi_3, hist_local_d_25_31_lpi_3,
      hist_local_d_26_31_lpi_3, hist_local_d_27_31_lpi_3, hist_local_d_28_31_lpi_3,
      hist_local_d_29_31_lpi_3, hist_local_d_30_31_lpi_3, hist_local_d_31_31_lpi_3,
      hist_local_d_32_31_lpi_3, hist_local_d_33_31_lpi_3, hist_local_d_34_31_lpi_3,
      hist_local_d_35_31_lpi_3, hist_local_d_36_31_lpi_3, hist_local_d_37_31_lpi_3,
      hist_local_d_38_31_lpi_3, hist_local_d_39_31_lpi_3, hist_local_d_40_31_lpi_3,
      hist_local_d_41_31_lpi_3, hist_local_d_42_31_lpi_3, hist_local_d_43_31_lpi_3,
      hist_local_d_44_31_lpi_3, hist_local_d_45_31_lpi_3, hist_local_d_46_31_lpi_3,
      hist_local_d_47_31_lpi_3, hist_local_d_48_31_lpi_3, hist_local_d_49_31_lpi_3,
      hist_local_d_50_31_lpi_3, hist_local_d_51_31_lpi_3, hist_local_d_52_31_lpi_3,
      hist_local_d_53_31_lpi_3, hist_local_d_54_31_lpi_3, hist_local_d_55_31_lpi_3,
      hist_local_d_56_31_lpi_3, hist_local_d_57_31_lpi_3, hist_local_d_58_31_lpi_3,
      hist_local_d_59_31_lpi_3, hist_local_d_60_31_lpi_3, hist_local_d_61_31_lpi_3,
      hist_local_d_62_31_lpi_3, hist_local_d_63_31_lpi_3, hist_local_d_64_31_lpi_3,
      hist_local_d_65_31_lpi_3, hist_local_d_66_31_lpi_3, hist_local_d_67_31_lpi_3,
      hist_local_d_68_31_lpi_3, hist_local_d_69_31_lpi_3, hist_local_d_70_31_lpi_3,
      hist_local_d_71_31_lpi_3, hist_local_d_72_31_lpi_3, hist_local_d_73_31_lpi_3,
      hist_local_d_74_31_lpi_3, hist_local_d_75_31_lpi_3, hist_local_d_76_31_lpi_3,
      hist_local_d_77_31_lpi_3, hist_local_d_78_31_lpi_3, hist_local_d_79_31_lpi_3,
      hist_local_d_80_31_lpi_3, hist_local_d_81_31_lpi_3, hist_local_d_82_31_lpi_3,
      hist_local_d_83_31_lpi_3, hist_local_d_84_31_lpi_3, hist_local_d_85_31_lpi_3,
      hist_local_d_86_31_lpi_3, hist_local_d_87_31_lpi_3, hist_local_d_88_31_lpi_3,
      hist_local_d_89_31_lpi_3, hist_local_d_90_31_lpi_3, hist_local_d_91_31_lpi_3,
      hist_local_d_92_31_lpi_3, hist_local_d_93_31_lpi_3, hist_local_d_94_31_lpi_3,
      hist_local_d_95_31_lpi_3, hist_local_d_96_31_lpi_3, hist_local_d_97_31_lpi_3,
      hist_local_d_98_31_lpi_3, hist_local_d_99_31_lpi_3, feature_rsci_idat_mxwt);
  assign nl_return_add_generic_AC_RND_CONV_false_r_inf_acc_nl = (~ return_add_generic_AC_RND_CONV_false_acc_psp_sva_1)
      + 10'b0011111111;
  assign return_add_generic_AC_RND_CONV_false_r_inf_acc_nl = nl_return_add_generic_AC_RND_CONV_false_r_inf_acc_nl[9:0];
  assign return_add_generic_AC_RND_CONV_false_r_inf_acc_itm_9_1 = readslicef_10_1_9(return_add_generic_AC_RND_CONV_false_r_inf_acc_nl);
  assign return_add_generic_AC_RND_CONV_false_exception_sva_1 = return_add_generic_AC_RND_CONV_false_op1_inf_sva_1
      | return_add_generic_AC_RND_CONV_false_op2_inf_sva_1 | return_add_generic_AC_RND_CONV_false_op1_nan_sva_1
      | return_add_generic_AC_RND_CONV_false_op2_nan_sva_1 | return_add_generic_AC_RND_CONV_false_r_inf_acc_itm_9_1;
  assign return_add_generic_AC_RND_CONV_false_rnd_ovf_land_sva_1 = (return_add_generic_AC_RND_CONV_false_add_r_1_sva_1[26:2]==25'b1111111111111111111111111);
  assign return_add_generic_AC_RND_CONV_false_return_add_generic_AC_RND_CONV_false_nor_psp_sva_1
      = ~((signext_26_25({(~ drf_op1_m_smx_24_lpi_2_dfm_mx0) , (~ drf_op1_m_smx_23_0_lpi_2_dfm_23_mx0)
      , (~ drf_op1_m_smx_23_0_lpi_2_dfm_22_mx0) , (~ drf_op1_m_smx_23_0_lpi_2_dfm_21_0_mx0)}))
      | (operator_28_26_true_AC_TRN_AC_WRAP_lshift_itm[27:2]));
  assign nl_operator_8_false_return_sva_1 = conv_u2u_8_9(z_out) + conv_u2u_1_9(return_extract_return_extract_nor_cse_sva_1);
  assign operator_8_false_return_sva_1 = nl_operator_8_false_return_sva_1[8:0];
  assign nl_return_add_generic_AC_RND_CONV_false_op2_e_b_8_0_sva_1 = conv_u2u_8_9(weight_rsci_idat_mxwt[30:23])
      + conv_u2u_1_9(return_extract_1_return_extract_1_nor_cse_sva_1);
  assign return_add_generic_AC_RND_CONV_false_op2_e_b_8_0_sva_1 = nl_return_add_generic_AC_RND_CONV_false_op2_e_b_8_0_sva_1[8:0];
  assign return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0 = MUX_v_2_2_2(({1'b0
      , return_extract_return_extract_or_sva_1}), (z_out_3[24:23]), x_ac_ieee_float_base_mux_tmp);
  assign return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_22_mx0 = MUX_s_1_2_2(x_to_helper_t_return_d_sva_22_1,
      (z_out_3[22]), x_ac_ieee_float_base_mux_tmp);
  assign return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_21_0_mx0 = MUX_v_22_2_2(z_out_1,
      (z_out_3[21:0]), x_ac_ieee_float_base_mux_tmp);
  assign drf_op1_m_smx_24_lpi_2_dfm_mx0 = MUX_s_1_2_2((return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_24_23_mx0[1]),
      (return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0[1]), return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp[9]);
  assign drf_op1_m_smx_23_0_lpi_2_dfm_23_mx0 = MUX_s_1_2_2((return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_24_23_mx0[0]),
      (return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0[0]), return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp[9]);
  assign drf_op1_m_smx_23_0_lpi_2_dfm_22_mx0 = MUX_s_1_2_2((return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_22_0_mx0[22]),
      return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_22_mx0, return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp[9]);
  assign drf_op1_m_smx_23_0_lpi_2_dfm_21_0_mx0 = MUX_v_22_2_2((return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_22_0_mx0[21:0]),
      return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_21_0_mx0, return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp[9]);
  assign return_extract_1_return_extract_1_nor_cse_sva_1 = ~((weight_rsci_idat_mxwt[30:23]!=8'b00000000));
  assign return_extract_1_m_zero_sva_1 = ~((weight_rsci_idat_mxwt[22:0]!=23'b00000000000000000000000));
  assign return_extract_return_extract_nor_cse_sva_1 = ~((z_out!=8'b00000000));
  assign return_extract_m_zero_return_extract_m_zero_nor_tmp = ~(x_to_helper_t_return_d_sva_22_1
      | (z_out_1!=22'b0000000000000000000000));
  assign return_add_generic_AC_RND_CONV_false_op_lshift_mux_nl = MUX_s_1_2_2((return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0[1]),
      (return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_24_23_mx0[1]), return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp[9]);
  assign return_add_generic_AC_RND_CONV_false_op_lshift_mux_1_nl = MUX_s_1_2_2((return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_24_23_mx0[0]),
      (return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_24_23_mx0[0]), return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp[9]);
  assign return_add_generic_AC_RND_CONV_false_op_lshift_mux_6_nl = MUX_s_1_2_2(return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_22_mx0,
      (return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_22_0_mx0[22]), return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp[9]);
  assign return_add_generic_AC_RND_CONV_false_op_lshift_mux_7_nl = MUX_v_22_2_2(return_add_generic_AC_RND_CONV_false_op1_m_qr_lpi_2_dfm_21_0_mx0,
      (return_add_generic_AC_RND_CONV_false_op2_m_qr_lpi_2_dfm_22_0_mx0[21:0]), return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp[9]);
  assign nl_operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2
      = (return_add_generic_AC_RND_CONV_false_op_lshift_sva_1[27:2]) + conv_s2s_25_26({return_add_generic_AC_RND_CONV_false_op_lshift_mux_nl
      , return_add_generic_AC_RND_CONV_false_op_lshift_mux_1_nl , return_add_generic_AC_RND_CONV_false_op_lshift_mux_6_nl
      , return_add_generic_AC_RND_CONV_false_op_lshift_mux_7_nl});
  assign operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2
      = nl_operator_28_26_true_AC_TRN_AC_WRAP_25_true_operator_28_26_true_AC_TRN_AC_WRAP_25_true_conc_4_27_2[25:0];
  assign nl_return_add_generic_AC_RND_CONV_false_qelse_2_qif_acc_nl = conv_u2s_8_9(~
      (return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp[7:0])) + 9'b000000001;
  assign return_add_generic_AC_RND_CONV_false_qelse_2_qif_acc_nl = nl_return_add_generic_AC_RND_CONV_false_qelse_2_qif_acc_nl[8:0];
  assign return_add_generic_AC_RND_CONV_false_qelse_2_mux_nl = MUX_v_9_2_2((return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp[8:0]),
      return_add_generic_AC_RND_CONV_false_qelse_2_qif_acc_nl, return_add_generic_AC_RND_CONV_false_e_dif_acc_tmp[9]);
  assign return_add_generic_AC_RND_CONV_false_return_add_generic_AC_RND_CONV_false_nor_1_nl
      = ~((return_extract_return_extract_nor_cse_sva_1 & return_extract_m_zero_return_extract_m_zero_nor_tmp)
      | (return_extract_1_return_extract_1_nor_cse_sva_1 & return_extract_1_m_zero_sva_1));
  assign return_add_generic_AC_RND_CONV_false_asn_6 = MUX_v_9_2_2(9'b000000000, return_add_generic_AC_RND_CONV_false_qelse_2_mux_nl,
      return_add_generic_AC_RND_CONV_false_return_add_generic_AC_RND_CONV_false_nor_1_nl);
  assign or_dcpl_6 = ~(while_slc_while_acc_5_svs & hist_rsci_ivld_mxwt);
  assign and_dcpl_10 = ~((feature_rsci_idat_mxwt[2]) | (feature_rsci_idat_mxwt[0]));
  assign and_dcpl_11 = and_dcpl_10 & (~ (feature_rsci_idat_mxwt[1]));
  assign and_dcpl_12 = ~((feature_rsci_idat_mxwt[4:3]!=2'b00));
  assign and_dcpl_13 = ~((feature_rsci_idat_mxwt[6:5]!=2'b00));
  assign and_dcpl_14 = and_dcpl_13 & and_dcpl_12;
  assign or_dcpl_12 = (size_6_0_sva[1:0]!=2'b00);
  assign or_dcpl_13 = (size_6_0_sva[4:3]!=2'b00);
  assign or_dcpl_14 = or_dcpl_13 | or_dcpl_12;
  assign or_dcpl_15 = (size_6_0_sva[6:5]!=2'b00);
  assign or_dcpl_16 = or_dcpl_6 | (size_6_0_sva[2]);
  assign or_dcpl_17 = or_dcpl_16 | or_dcpl_15;
  assign or_dcpl_19 = (feature_rsci_idat_mxwt[2]) | (feature_rsci_idat_mxwt[0]);
  assign or_dcpl_20 = or_dcpl_19 | (feature_rsci_idat_mxwt[1]);
  assign or_dcpl_21 = (feature_rsci_idat_mxwt[4:3]!=2'b00);
  assign or_dcpl_22 = (feature_rsci_idat_mxwt[6:5]!=2'b00);
  assign or_dcpl_23 = or_dcpl_22 | or_dcpl_21;
  assign and_dcpl_21 = (~ (feature_rsci_idat_mxwt[2])) & (feature_rsci_idat_mxwt[0]);
  assign and_dcpl_22 = and_dcpl_21 & (~ (feature_rsci_idat_mxwt[1]));
  assign or_dcpl_25 = (size_6_0_sva[1:0]!=2'b01);
  assign or_dcpl_26 = or_dcpl_13 | or_dcpl_25;
  assign or_dcpl_28 = (feature_rsci_idat_mxwt[2]) | (~ (feature_rsci_idat_mxwt[0]));
  assign or_dcpl_29 = or_dcpl_28 | (feature_rsci_idat_mxwt[1]);
  assign and_dcpl_28 = and_dcpl_10 & (feature_rsci_idat_mxwt[1]);
  assign and_dcpl_29 = (feature_rsci_idat_mxwt[4:3]==2'b01);
  assign and_dcpl_30 = and_dcpl_13 & and_dcpl_29;
  assign or_dcpl_31 = (size_6_0_sva[1:0]!=2'b10);
  assign or_dcpl_32 = (size_6_0_sva[4:3]!=2'b01);
  assign or_dcpl_33 = or_dcpl_32 | or_dcpl_31;
  assign or_dcpl_35 = or_dcpl_19 | (~ (feature_rsci_idat_mxwt[1]));
  assign or_dcpl_36 = (feature_rsci_idat_mxwt[4:3]!=2'b01);
  assign or_dcpl_37 = or_dcpl_22 | or_dcpl_36;
  assign and_dcpl_35 = and_dcpl_21 & (feature_rsci_idat_mxwt[1]);
  assign or_dcpl_39 = ~((size_6_0_sva[1:0]==2'b11));
  assign or_dcpl_40 = or_dcpl_32 | or_dcpl_39;
  assign or_dcpl_42 = or_dcpl_28 | (~ (feature_rsci_idat_mxwt[1]));
  assign and_dcpl_41 = (feature_rsci_idat_mxwt[2]) & (~ (feature_rsci_idat_mxwt[0]));
  assign and_dcpl_42 = and_dcpl_41 & (~ (feature_rsci_idat_mxwt[1]));
  assign or_dcpl_44 = or_dcpl_32 | or_dcpl_12;
  assign or_dcpl_45 = or_dcpl_6 | (~ (size_6_0_sva[2]));
  assign or_dcpl_46 = or_dcpl_45 | or_dcpl_15;
  assign or_dcpl_48 = (~ (feature_rsci_idat_mxwt[2])) | (feature_rsci_idat_mxwt[0]);
  assign or_dcpl_49 = or_dcpl_48 | (feature_rsci_idat_mxwt[1]);
  assign and_dcpl_46 = (feature_rsci_idat_mxwt[2]) & (feature_rsci_idat_mxwt[0]);
  assign and_dcpl_47 = and_dcpl_46 & (~ (feature_rsci_idat_mxwt[1]));
  assign or_dcpl_51 = or_dcpl_32 | or_dcpl_25;
  assign or_dcpl_53 = ~((feature_rsci_idat_mxwt[2]) & (feature_rsci_idat_mxwt[0]));
  assign or_dcpl_54 = or_dcpl_53 | (feature_rsci_idat_mxwt[1]);
  assign and_dcpl_50 = and_dcpl_41 & (feature_rsci_idat_mxwt[1]);
  assign or_dcpl_57 = or_dcpl_48 | (~ (feature_rsci_idat_mxwt[1]));
  assign and_dcpl_53 = and_dcpl_46 & (feature_rsci_idat_mxwt[1]);
  assign or_dcpl_60 = or_dcpl_53 | (~ (feature_rsci_idat_mxwt[1]));
  assign and_dcpl_58 = (feature_rsci_idat_mxwt[4:3]==2'b10);
  assign and_dcpl_59 = and_dcpl_13 & and_dcpl_58;
  assign or_dcpl_62 = (size_6_0_sva[4:3]!=2'b10);
  assign or_dcpl_63 = or_dcpl_62 | or_dcpl_12;
  assign or_dcpl_65 = (feature_rsci_idat_mxwt[4:3]!=2'b10);
  assign or_dcpl_66 = or_dcpl_22 | or_dcpl_65;
  assign or_dcpl_68 = or_dcpl_62 | or_dcpl_25;
  assign or_dcpl_71 = or_dcpl_62 | or_dcpl_31;
  assign or_dcpl_74 = or_dcpl_62 | or_dcpl_39;
  assign or_dcpl_77 = or_dcpl_13 | or_dcpl_31;
  assign and_dcpl_84 = (feature_rsci_idat_mxwt[4:3]==2'b11);
  assign and_dcpl_85 = and_dcpl_13 & and_dcpl_84;
  assign or_dcpl_88 = ~((size_6_0_sva[4:3]==2'b11));
  assign or_dcpl_89 = or_dcpl_88 | or_dcpl_12;
  assign or_dcpl_91 = ~((feature_rsci_idat_mxwt[4:3]==2'b11));
  assign or_dcpl_92 = or_dcpl_22 | or_dcpl_91;
  assign or_dcpl_94 = or_dcpl_88 | or_dcpl_25;
  assign or_dcpl_97 = or_dcpl_88 | or_dcpl_31;
  assign or_dcpl_100 = or_dcpl_88 | or_dcpl_39;
  assign or_dcpl_107 = or_dcpl_13 | or_dcpl_39;
  assign and_dcpl_110 = (feature_rsci_idat_mxwt[6:5]==2'b01);
  assign and_dcpl_111 = and_dcpl_110 & and_dcpl_12;
  assign or_dcpl_114 = (size_6_0_sva[6:5]!=2'b01);
  assign or_dcpl_115 = or_dcpl_16 | or_dcpl_114;
  assign or_dcpl_117 = (feature_rsci_idat_mxwt[6:5]!=2'b01);
  assign or_dcpl_118 = or_dcpl_117 | or_dcpl_21;
  assign or_dcpl_126 = or_dcpl_45 | or_dcpl_114;
  assign and_dcpl_131 = and_dcpl_110 & and_dcpl_29;
  assign or_dcpl_138 = or_dcpl_117 | or_dcpl_36;
  assign and_dcpl_148 = and_dcpl_110 & and_dcpl_58;
  assign or_dcpl_155 = or_dcpl_117 | or_dcpl_65;
  assign and_dcpl_167 = and_dcpl_110 & and_dcpl_84;
  assign or_dcpl_174 = or_dcpl_117 | or_dcpl_91;
  assign and_dcpl_188 = (feature_rsci_idat_mxwt[6:5]==2'b10);
  assign and_dcpl_189 = and_dcpl_188 & and_dcpl_12;
  assign or_dcpl_192 = (size_6_0_sva[6:5]!=2'b10);
  assign or_dcpl_193 = or_dcpl_16 | or_dcpl_192;
  assign or_dcpl_195 = (feature_rsci_idat_mxwt[6:5]!=2'b10);
  assign or_dcpl_196 = or_dcpl_195 | or_dcpl_21;
  assign or_dcpl_204 = or_dcpl_45 | or_dcpl_192;
  assign and_dcpl_209 = and_dcpl_188 & and_dcpl_29;
  assign or_dcpl_216 = or_dcpl_195 | or_dcpl_36;
  assign and_dcpl_228 = and_dcpl_188 & and_dcpl_58;
  assign or_dcpl_235 = or_dcpl_195 | or_dcpl_65;
  assign and_dcpl_245 = and_dcpl_188 & and_dcpl_84;
  assign or_dcpl_252 = or_dcpl_195 | or_dcpl_91;
  assign and_dcpl_267 = (feature_rsci_idat_mxwt[6:5]==2'b11) & and_dcpl_12;
  assign or_dcpl_271 = or_dcpl_16 | (size_6_0_sva[6:5]!=2'b11);
  assign or_dcpl_274 = (feature_rsci_idat_mxwt[6:5]!=2'b11) | or_dcpl_21;
  assign or_tmp_416 = and_dcpl_14 & and_dcpl_11 & (fsm_output[4]);
  assign and_1513_cse = nor_15_cse & (~ (fsm_output[4])) & (~ (fsm_output[2]));
  assign or_tmp_419 = and_dcpl_14 & and_dcpl_22 & (fsm_output[4]);
  assign or_tmp_422 = and_dcpl_30 & and_dcpl_28 & (fsm_output[4]);
  assign or_tmp_425 = and_dcpl_30 & and_dcpl_35 & (fsm_output[4]);
  assign or_tmp_428 = and_dcpl_30 & and_dcpl_42 & (fsm_output[4]);
  assign or_tmp_431 = and_dcpl_30 & and_dcpl_47 & (fsm_output[4]);
  assign or_tmp_434 = and_dcpl_30 & and_dcpl_50 & (fsm_output[4]);
  assign or_tmp_437 = and_dcpl_30 & and_dcpl_53 & (fsm_output[4]);
  assign or_tmp_440 = and_dcpl_59 & and_dcpl_11 & (fsm_output[4]);
  assign or_tmp_443 = and_dcpl_59 & and_dcpl_22 & (fsm_output[4]);
  assign or_tmp_446 = and_dcpl_59 & and_dcpl_28 & (fsm_output[4]);
  assign or_tmp_449 = and_dcpl_59 & and_dcpl_35 & (fsm_output[4]);
  assign or_tmp_452 = and_dcpl_14 & and_dcpl_28 & (fsm_output[4]);
  assign or_tmp_455 = and_dcpl_59 & and_dcpl_42 & (fsm_output[4]);
  assign or_tmp_458 = and_dcpl_59 & and_dcpl_47 & (fsm_output[4]);
  assign or_tmp_461 = and_dcpl_59 & and_dcpl_50 & (fsm_output[4]);
  assign or_tmp_464 = and_dcpl_59 & and_dcpl_53 & (fsm_output[4]);
  assign or_tmp_467 = and_dcpl_85 & and_dcpl_11 & (fsm_output[4]);
  assign or_tmp_470 = and_dcpl_85 & and_dcpl_22 & (fsm_output[4]);
  assign or_tmp_473 = and_dcpl_85 & and_dcpl_28 & (fsm_output[4]);
  assign or_tmp_476 = and_dcpl_85 & and_dcpl_35 & (fsm_output[4]);
  assign or_tmp_479 = and_dcpl_85 & and_dcpl_42 & (fsm_output[4]);
  assign or_tmp_482 = and_dcpl_85 & and_dcpl_47 & (fsm_output[4]);
  assign or_tmp_485 = and_dcpl_14 & and_dcpl_35 & (fsm_output[4]);
  assign or_tmp_488 = and_dcpl_85 & and_dcpl_50 & (fsm_output[4]);
  assign or_tmp_491 = and_dcpl_85 & and_dcpl_53 & (fsm_output[4]);
  assign or_tmp_494 = and_dcpl_111 & and_dcpl_11 & (fsm_output[4]);
  assign or_tmp_497 = and_dcpl_111 & and_dcpl_22 & (fsm_output[4]);
  assign or_tmp_500 = and_dcpl_111 & and_dcpl_28 & (fsm_output[4]);
  assign or_tmp_503 = and_dcpl_111 & and_dcpl_35 & (fsm_output[4]);
  assign or_tmp_506 = and_dcpl_111 & and_dcpl_42 & (fsm_output[4]);
  assign or_tmp_509 = and_dcpl_111 & and_dcpl_47 & (fsm_output[4]);
  assign or_tmp_512 = and_dcpl_111 & and_dcpl_50 & (fsm_output[4]);
  assign or_tmp_515 = and_dcpl_111 & and_dcpl_53 & (fsm_output[4]);
  assign or_tmp_518 = and_dcpl_14 & and_dcpl_42 & (fsm_output[4]);
  assign or_tmp_521 = and_dcpl_131 & and_dcpl_11 & (fsm_output[4]);
  assign or_tmp_524 = and_dcpl_131 & and_dcpl_22 & (fsm_output[4]);
  assign or_tmp_527 = and_dcpl_131 & and_dcpl_28 & (fsm_output[4]);
  assign or_tmp_530 = and_dcpl_131 & and_dcpl_35 & (fsm_output[4]);
  assign or_tmp_533 = and_dcpl_131 & and_dcpl_42 & (fsm_output[4]);
  assign or_tmp_536 = and_dcpl_131 & and_dcpl_47 & (fsm_output[4]);
  assign or_tmp_539 = and_dcpl_131 & and_dcpl_50 & (fsm_output[4]);
  assign or_tmp_542 = and_dcpl_131 & and_dcpl_53 & (fsm_output[4]);
  assign or_tmp_545 = and_dcpl_148 & and_dcpl_11 & (fsm_output[4]);
  assign or_tmp_548 = and_dcpl_148 & and_dcpl_22 & (fsm_output[4]);
  assign or_tmp_551 = and_dcpl_14 & and_dcpl_47 & (fsm_output[4]);
  assign or_tmp_554 = and_dcpl_148 & and_dcpl_28 & (fsm_output[4]);
  assign or_tmp_557 = and_dcpl_148 & and_dcpl_35 & (fsm_output[4]);
  assign or_tmp_560 = and_dcpl_148 & and_dcpl_42 & (fsm_output[4]);
  assign or_tmp_563 = and_dcpl_148 & and_dcpl_47 & (fsm_output[4]);
  assign or_tmp_566 = and_dcpl_148 & and_dcpl_50 & (fsm_output[4]);
  assign or_tmp_569 = and_dcpl_148 & and_dcpl_53 & (fsm_output[4]);
  assign or_tmp_572 = and_dcpl_167 & and_dcpl_11 & (fsm_output[4]);
  assign or_tmp_575 = and_dcpl_167 & and_dcpl_22 & (fsm_output[4]);
  assign or_tmp_578 = and_dcpl_167 & and_dcpl_28 & (fsm_output[4]);
  assign or_tmp_581 = and_dcpl_167 & and_dcpl_35 & (fsm_output[4]);
  assign or_tmp_584 = and_dcpl_14 & and_dcpl_50 & (fsm_output[4]);
  assign or_tmp_587 = and_dcpl_167 & and_dcpl_42 & (fsm_output[4]);
  assign or_tmp_590 = and_dcpl_167 & and_dcpl_47 & (fsm_output[4]);
  assign or_tmp_593 = and_dcpl_167 & and_dcpl_50 & (fsm_output[4]);
  assign or_tmp_596 = and_dcpl_167 & and_dcpl_53 & (fsm_output[4]);
  assign or_tmp_599 = and_dcpl_189 & and_dcpl_11 & (fsm_output[4]);
  assign or_tmp_602 = and_dcpl_189 & and_dcpl_22 & (fsm_output[4]);
  assign or_tmp_605 = and_dcpl_189 & and_dcpl_28 & (fsm_output[4]);
  assign or_tmp_608 = and_dcpl_189 & and_dcpl_35 & (fsm_output[4]);
  assign or_tmp_611 = and_dcpl_189 & and_dcpl_42 & (fsm_output[4]);
  assign or_tmp_614 = and_dcpl_189 & and_dcpl_47 & (fsm_output[4]);
  assign or_tmp_617 = and_dcpl_14 & and_dcpl_53 & (fsm_output[4]);
  assign or_tmp_620 = and_dcpl_189 & and_dcpl_50 & (fsm_output[4]);
  assign or_tmp_623 = and_dcpl_189 & and_dcpl_53 & (fsm_output[4]);
  assign or_tmp_626 = and_dcpl_209 & and_dcpl_11 & (fsm_output[4]);
  assign or_tmp_629 = and_dcpl_209 & and_dcpl_22 & (fsm_output[4]);
  assign or_tmp_632 = and_dcpl_209 & and_dcpl_28 & (fsm_output[4]);
  assign or_tmp_635 = and_dcpl_209 & and_dcpl_35 & (fsm_output[4]);
  assign or_tmp_638 = and_dcpl_209 & and_dcpl_42 & (fsm_output[4]);
  assign or_tmp_641 = and_dcpl_209 & and_dcpl_47 & (fsm_output[4]);
  assign or_tmp_644 = and_dcpl_209 & and_dcpl_50 & (fsm_output[4]);
  assign or_tmp_647 = and_dcpl_209 & and_dcpl_53 & (fsm_output[4]);
  assign or_tmp_650 = and_dcpl_30 & and_dcpl_11 & (fsm_output[4]);
  assign or_tmp_653 = and_dcpl_228 & and_dcpl_11 & (fsm_output[4]);
  assign or_tmp_656 = and_dcpl_228 & and_dcpl_22 & (fsm_output[4]);
  assign or_tmp_659 = and_dcpl_228 & and_dcpl_28 & (fsm_output[4]);
  assign or_tmp_662 = and_dcpl_228 & and_dcpl_35 & (fsm_output[4]);
  assign or_tmp_665 = and_dcpl_228 & and_dcpl_42 & (fsm_output[4]);
  assign or_tmp_668 = and_dcpl_228 & and_dcpl_47 & (fsm_output[4]);
  assign or_tmp_671 = and_dcpl_228 & and_dcpl_50 & (fsm_output[4]);
  assign or_tmp_674 = and_dcpl_228 & and_dcpl_53 & (fsm_output[4]);
  assign or_tmp_677 = and_dcpl_245 & and_dcpl_11 & (fsm_output[4]);
  assign or_tmp_680 = and_dcpl_245 & and_dcpl_22 & (fsm_output[4]);
  assign or_tmp_683 = and_dcpl_30 & and_dcpl_22 & (fsm_output[4]);
  assign or_tmp_686 = and_dcpl_245 & and_dcpl_28 & (fsm_output[4]);
  assign or_tmp_689 = and_dcpl_245 & and_dcpl_35 & (fsm_output[4]);
  assign or_tmp_692 = and_dcpl_245 & and_dcpl_42 & (fsm_output[4]);
  assign or_tmp_695 = and_dcpl_245 & and_dcpl_47 & (fsm_output[4]);
  assign or_tmp_698 = and_dcpl_245 & and_dcpl_50 & (fsm_output[4]);
  assign or_tmp_701 = and_dcpl_245 & and_dcpl_53 & (fsm_output[4]);
  assign or_tmp_704 = and_dcpl_267 & and_dcpl_11 & (fsm_output[4]);
  assign or_tmp_707 = and_dcpl_267 & and_dcpl_22 & (fsm_output[4]);
  assign or_tmp_710 = and_dcpl_267 & and_dcpl_28 & (fsm_output[4]);
  assign or_tmp_713 = and_dcpl_267 & and_dcpl_35 & (fsm_output[4]);
  assign nl_return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_nl =
      conv_u2s_5_9(libraries_leading_sign_28_1_1_0_6cad40f6cc34a80d5a7a77ebac07d1f06f60_3)
      - return_add_generic_AC_RND_CONV_false_exp_qr_8_0_lpi_2_dfm_mx0;
  assign return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_nl = nl_return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_nl[8:0];
  assign return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_itm_8_1
      = readslicef_9_1_8(return_add_generic_AC_RND_CONV_false_shift_exponent_limited_acc_nl);
  always @(posedge clk) begin
    if ( rst ) begin
      out_rsci_idat_21_0 <= 22'b0000000000000000000000;
      out_rsci_idat_22 <= 1'b0;
      out_rsci_idat_30_23 <= 8'b00000000;
      out_rsci_idat_31 <= 1'b0;
    end
    else if ( for_1_and_cse ) begin
      out_rsci_idat_21_0 <= z_out_1;
      out_rsci_idat_22 <= MUX_s_1_100_2(hist_local_d_0_22_lpi_3, hist_local_d_1_22_lpi_3,
          hist_local_d_2_22_lpi_3, hist_local_d_3_22_lpi_3, hist_local_d_4_22_lpi_3,
          hist_local_d_5_22_lpi_3, hist_local_d_6_22_lpi_3, hist_local_d_7_22_lpi_3,
          hist_local_d_8_22_lpi_3, hist_local_d_9_22_lpi_3, hist_local_d_10_22_lpi_3,
          hist_local_d_11_22_lpi_3, hist_local_d_12_22_lpi_3, hist_local_d_13_22_lpi_3,
          hist_local_d_14_22_lpi_3, hist_local_d_15_22_lpi_3, hist_local_d_16_22_lpi_3,
          hist_local_d_17_22_lpi_3, hist_local_d_18_22_lpi_3, hist_local_d_19_22_lpi_3,
          hist_local_d_20_22_lpi_3, hist_local_d_21_22_lpi_3, hist_local_d_22_22_lpi_3,
          hist_local_d_23_22_lpi_3, hist_local_d_24_22_lpi_3, hist_local_d_25_22_lpi_3,
          hist_local_d_26_22_lpi_3, hist_local_d_27_22_lpi_3, hist_local_d_28_22_lpi_3,
          hist_local_d_29_22_lpi_3, hist_local_d_30_22_lpi_3, hist_local_d_31_22_lpi_3,
          hist_local_d_32_22_lpi_3, hist_local_d_33_22_lpi_3, hist_local_d_34_22_lpi_3,
          hist_local_d_35_22_lpi_3, hist_local_d_36_22_lpi_3, hist_local_d_37_22_lpi_3,
          hist_local_d_38_22_lpi_3, hist_local_d_39_22_lpi_3, hist_local_d_40_22_lpi_3,
          hist_local_d_41_22_lpi_3, hist_local_d_42_22_lpi_3, hist_local_d_43_22_lpi_3,
          hist_local_d_44_22_lpi_3, hist_local_d_45_22_lpi_3, hist_local_d_46_22_lpi_3,
          hist_local_d_47_22_lpi_3, hist_local_d_48_22_lpi_3, hist_local_d_49_22_lpi_3,
          hist_local_d_50_22_lpi_3, hist_local_d_51_22_lpi_3, hist_local_d_52_22_lpi_3,
          hist_local_d_53_22_lpi_3, hist_local_d_54_22_lpi_3, hist_local_d_55_22_lpi_3,
          hist_local_d_56_22_lpi_3, hist_local_d_57_22_lpi_3, hist_local_d_58_22_lpi_3,
          hist_local_d_59_22_lpi_3, hist_local_d_60_22_lpi_3, hist_local_d_61_22_lpi_3,
          hist_local_d_62_22_lpi_3, hist_local_d_63_22_lpi_3, hist_local_d_64_22_lpi_3,
          hist_local_d_65_22_lpi_3, hist_local_d_66_22_lpi_3, hist_local_d_67_22_lpi_3,
          hist_local_d_68_22_lpi_3, hist_local_d_69_22_lpi_3, hist_local_d_70_22_lpi_3,
          hist_local_d_71_22_lpi_3, hist_local_d_72_22_lpi_3, hist_local_d_73_22_lpi_3,
          hist_local_d_74_22_lpi_3, hist_local_d_75_22_lpi_3, hist_local_d_76_22_lpi_3,
          hist_local_d_77_22_lpi_3, hist_local_d_78_22_lpi_3, hist_local_d_79_22_lpi_3,
          hist_local_d_80_22_lpi_3, hist_local_d_81_22_lpi_3, hist_local_d_82_22_lpi_3,
          hist_local_d_83_22_lpi_3, hist_local_d_84_22_lpi_3, hist_local_d_85_22_lpi_3,
          hist_local_d_86_22_lpi_3, hist_local_d_87_22_lpi_3, hist_local_d_88_22_lpi_3,
          hist_local_d_89_22_lpi_3, hist_local_d_90_22_lpi_3, hist_local_d_91_22_lpi_3,
          hist_local_d_92_22_lpi_3, hist_local_d_93_22_lpi_3, hist_local_d_94_22_lpi_3,
          hist_local_d_95_22_lpi_3, hist_local_d_96_22_lpi_3, hist_local_d_97_22_lpi_3,
          hist_local_d_98_22_lpi_3, hist_local_d_99_22_lpi_3, i_7_0_sva_6_0);
      out_rsci_idat_30_23 <= z_out;
      out_rsci_idat_31 <= MUX_s_1_100_2(hist_local_d_0_31_lpi_3, hist_local_d_1_31_lpi_3,
          hist_local_d_2_31_lpi_3, hist_local_d_3_31_lpi_3, hist_local_d_4_31_lpi_3,
          hist_local_d_5_31_lpi_3, hist_local_d_6_31_lpi_3, hist_local_d_7_31_lpi_3,
          hist_local_d_8_31_lpi_3, hist_local_d_9_31_lpi_3, hist_local_d_10_31_lpi_3,
          hist_local_d_11_31_lpi_3, hist_local_d_12_31_lpi_3, hist_local_d_13_31_lpi_3,
          hist_local_d_14_31_lpi_3, hist_local_d_15_31_lpi_3, hist_local_d_16_31_lpi_3,
          hist_local_d_17_31_lpi_3, hist_local_d_18_31_lpi_3, hist_local_d_19_31_lpi_3,
          hist_local_d_20_31_lpi_3, hist_local_d_21_31_lpi_3, hist_local_d_22_31_lpi_3,
          hist_local_d_23_31_lpi_3, hist_local_d_24_31_lpi_3, hist_local_d_25_31_lpi_3,
          hist_local_d_26_31_lpi_3, hist_local_d_27_31_lpi_3, hist_local_d_28_31_lpi_3,
          hist_local_d_29_31_lpi_3, hist_local_d_30_31_lpi_3, hist_local_d_31_31_lpi_3,
          hist_local_d_32_31_lpi_3, hist_local_d_33_31_lpi_3, hist_local_d_34_31_lpi_3,
          hist_local_d_35_31_lpi_3, hist_local_d_36_31_lpi_3, hist_local_d_37_31_lpi_3,
          hist_local_d_38_31_lpi_3, hist_local_d_39_31_lpi_3, hist_local_d_40_31_lpi_3,
          hist_local_d_41_31_lpi_3, hist_local_d_42_31_lpi_3, hist_local_d_43_31_lpi_3,
          hist_local_d_44_31_lpi_3, hist_local_d_45_31_lpi_3, hist_local_d_46_31_lpi_3,
          hist_local_d_47_31_lpi_3, hist_local_d_48_31_lpi_3, hist_local_d_49_31_lpi_3,
          hist_local_d_50_31_lpi_3, hist_local_d_51_31_lpi_3, hist_local_d_52_31_lpi_3,
          hist_local_d_53_31_lpi_3, hist_local_d_54_31_lpi_3, hist_local_d_55_31_lpi_3,
          hist_local_d_56_31_lpi_3, hist_local_d_57_31_lpi_3, hist_local_d_58_31_lpi_3,
          hist_local_d_59_31_lpi_3, hist_local_d_60_31_lpi_3, hist_local_d_61_31_lpi_3,
          hist_local_d_62_31_lpi_3, hist_local_d_63_31_lpi_3, hist_local_d_64_31_lpi_3,
          hist_local_d_65_31_lpi_3, hist_local_d_66_31_lpi_3, hist_local_d_67_31_lpi_3,
          hist_local_d_68_31_lpi_3, hist_local_d_69_31_lpi_3, hist_local_d_70_31_lpi_3,
          hist_local_d_71_31_lpi_3, hist_local_d_72_31_lpi_3, hist_local_d_73_31_lpi_3,
          hist_local_d_74_31_lpi_3, hist_local_d_75_31_lpi_3, hist_local_d_76_31_lpi_3,
          hist_local_d_77_31_lpi_3, hist_local_d_78_31_lpi_3, hist_local_d_79_31_lpi_3,
          hist_local_d_80_31_lpi_3, hist_local_d_81_31_lpi_3, hist_local_d_82_31_lpi_3,
          hist_local_d_83_31_lpi_3, hist_local_d_84_31_lpi_3, hist_local_d_85_31_lpi_3,
          hist_local_d_86_31_lpi_3, hist_local_d_87_31_lpi_3, hist_local_d_88_31_lpi_3,
          hist_local_d_89_31_lpi_3, hist_local_d_90_31_lpi_3, hist_local_d_91_31_lpi_3,
          hist_local_d_92_31_lpi_3, hist_local_d_93_31_lpi_3, hist_local_d_94_31_lpi_3,
          hist_local_d_95_31_lpi_3, hist_local_d_96_31_lpi_3, hist_local_d_97_31_lpi_3,
          hist_local_d_98_31_lpi_3, hist_local_d_99_31_lpi_3, i_7_0_sva_6_0);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      size_6_0_sva <= 7'b0000000;
    end
    else if ( ((while_slc_while_acc_5_svs & hist_rsci_ivld_mxwt & (fsm_output[2]))
        | (fsm_output[0]) | (fsm_output[8])) & core_wen ) begin
      size_6_0_sva <= MUX_v_7_2_2(7'b0000000, i_7_0_sva_6_0, nor_15_cse);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      n_sva <= 32'b00000000000000000000000000000000;
    end
    else if ( core_wen & (fsm_output[4:1]==4'b0000) ) begin
      n_sva <= n_rsci_idat;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_n_rsc_triosy_obj_ld_core_psct_cse <= 1'b0;
      reg_out_rsci_ivld_core_psct_cse <= 1'b0;
      reg_hist_rsci_irdy_core_psct_cse <= 1'b0;
      reg_weight_rsci_irdy_core_psct_cse <= 1'b0;
      while_slc_while_acc_5_svs <= 1'b0;
      i_1_sva <= 32'b00000000000000000000000000000000;
      exit_for_1_sva <= 1'b0;
    end
    else if ( core_wen ) begin
      reg_n_rsc_triosy_obj_ld_core_psct_cse <= (exit_for_1_sva & (fsm_output[7]))
          | ((~ (z_out_4[7])) & (fsm_output[5]));
      reg_out_rsci_ivld_core_psct_cse <= fsm_output[6];
      reg_hist_rsci_irdy_core_psct_cse <= (z_out_3[5]) & (fsm_output[1]);
      reg_weight_rsci_irdy_core_psct_cse <= ~(exit_for_sva_mx0 | (~((fsm_output[4:3]!=2'b00))));
      while_slc_while_acc_5_svs <= z_out_3[5];
      i_1_sva <= MUX_v_32_2_2(32'b00000000000000000000000000000000, z_out_5, (fsm_output[4]));
      exit_for_1_sva <= ~ (readslicef_9_1_8(for_1_acc_nl));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_0_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_0_22_lpi_3 <= 1'b0;
      hist_local_d_0_31_lpi_3 <= 1'b0;
      hist_local_d_0_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_cse ) begin
      hist_local_d_0_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_416);
      hist_local_d_0_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_416);
      hist_local_d_0_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_416);
      hist_local_d_0_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_416);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_1_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_1_22_lpi_3 <= 1'b0;
      hist_local_d_1_31_lpi_3 <= 1'b0;
      hist_local_d_1_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_1_cse ) begin
      hist_local_d_1_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_419);
      hist_local_d_1_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_419);
      hist_local_d_1_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_419);
      hist_local_d_1_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_419);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_10_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_10_22_lpi_3 <= 1'b0;
      hist_local_d_10_31_lpi_3 <= 1'b0;
      hist_local_d_10_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_2_cse ) begin
      hist_local_d_10_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_422);
      hist_local_d_10_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_422);
      hist_local_d_10_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_422);
      hist_local_d_10_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_422);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_11_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_11_22_lpi_3 <= 1'b0;
      hist_local_d_11_31_lpi_3 <= 1'b0;
      hist_local_d_11_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_3_cse ) begin
      hist_local_d_11_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_425);
      hist_local_d_11_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_425);
      hist_local_d_11_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_425);
      hist_local_d_11_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_425);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_12_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_12_22_lpi_3 <= 1'b0;
      hist_local_d_12_31_lpi_3 <= 1'b0;
      hist_local_d_12_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_4_cse ) begin
      hist_local_d_12_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_428);
      hist_local_d_12_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_428);
      hist_local_d_12_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_428);
      hist_local_d_12_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_428);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_13_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_13_22_lpi_3 <= 1'b0;
      hist_local_d_13_31_lpi_3 <= 1'b0;
      hist_local_d_13_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_5_cse ) begin
      hist_local_d_13_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_431);
      hist_local_d_13_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_431);
      hist_local_d_13_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_431);
      hist_local_d_13_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_431);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_14_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_14_22_lpi_3 <= 1'b0;
      hist_local_d_14_31_lpi_3 <= 1'b0;
      hist_local_d_14_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_6_cse ) begin
      hist_local_d_14_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_434);
      hist_local_d_14_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_434);
      hist_local_d_14_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_434);
      hist_local_d_14_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_434);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_15_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_15_22_lpi_3 <= 1'b0;
      hist_local_d_15_31_lpi_3 <= 1'b0;
      hist_local_d_15_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_7_cse ) begin
      hist_local_d_15_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_437);
      hist_local_d_15_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_437);
      hist_local_d_15_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_437);
      hist_local_d_15_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_437);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_16_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_16_22_lpi_3 <= 1'b0;
      hist_local_d_16_31_lpi_3 <= 1'b0;
      hist_local_d_16_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_8_cse ) begin
      hist_local_d_16_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_440);
      hist_local_d_16_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_440);
      hist_local_d_16_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_440);
      hist_local_d_16_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_440);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_17_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_17_22_lpi_3 <= 1'b0;
      hist_local_d_17_31_lpi_3 <= 1'b0;
      hist_local_d_17_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_9_cse ) begin
      hist_local_d_17_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_443);
      hist_local_d_17_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_443);
      hist_local_d_17_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_443);
      hist_local_d_17_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_443);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_18_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_18_22_lpi_3 <= 1'b0;
      hist_local_d_18_31_lpi_3 <= 1'b0;
      hist_local_d_18_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_10_cse ) begin
      hist_local_d_18_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_446);
      hist_local_d_18_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_446);
      hist_local_d_18_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_446);
      hist_local_d_18_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_446);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_19_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_19_22_lpi_3 <= 1'b0;
      hist_local_d_19_31_lpi_3 <= 1'b0;
      hist_local_d_19_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_11_cse ) begin
      hist_local_d_19_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_449);
      hist_local_d_19_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_449);
      hist_local_d_19_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_449);
      hist_local_d_19_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_449);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_2_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_2_22_lpi_3 <= 1'b0;
      hist_local_d_2_31_lpi_3 <= 1'b0;
      hist_local_d_2_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_12_cse ) begin
      hist_local_d_2_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_452);
      hist_local_d_2_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_452);
      hist_local_d_2_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_452);
      hist_local_d_2_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_452);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_20_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_20_22_lpi_3 <= 1'b0;
      hist_local_d_20_31_lpi_3 <= 1'b0;
      hist_local_d_20_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_13_cse ) begin
      hist_local_d_20_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_455);
      hist_local_d_20_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_455);
      hist_local_d_20_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_455);
      hist_local_d_20_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_455);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_21_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_21_22_lpi_3 <= 1'b0;
      hist_local_d_21_31_lpi_3 <= 1'b0;
      hist_local_d_21_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_14_cse ) begin
      hist_local_d_21_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_458);
      hist_local_d_21_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_458);
      hist_local_d_21_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_458);
      hist_local_d_21_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_458);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_22_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_22_22_lpi_3 <= 1'b0;
      hist_local_d_22_31_lpi_3 <= 1'b0;
      hist_local_d_22_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_15_cse ) begin
      hist_local_d_22_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_461);
      hist_local_d_22_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_461);
      hist_local_d_22_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_461);
      hist_local_d_22_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_461);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_23_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_23_22_lpi_3 <= 1'b0;
      hist_local_d_23_31_lpi_3 <= 1'b0;
      hist_local_d_23_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_16_cse ) begin
      hist_local_d_23_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_464);
      hist_local_d_23_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_464);
      hist_local_d_23_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_464);
      hist_local_d_23_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_464);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_24_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_24_22_lpi_3 <= 1'b0;
      hist_local_d_24_31_lpi_3 <= 1'b0;
      hist_local_d_24_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_17_cse ) begin
      hist_local_d_24_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_467);
      hist_local_d_24_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_467);
      hist_local_d_24_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_467);
      hist_local_d_24_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_467);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_25_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_25_22_lpi_3 <= 1'b0;
      hist_local_d_25_31_lpi_3 <= 1'b0;
      hist_local_d_25_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_18_cse ) begin
      hist_local_d_25_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_470);
      hist_local_d_25_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_470);
      hist_local_d_25_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_470);
      hist_local_d_25_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_470);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_26_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_26_22_lpi_3 <= 1'b0;
      hist_local_d_26_31_lpi_3 <= 1'b0;
      hist_local_d_26_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_19_cse ) begin
      hist_local_d_26_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_473);
      hist_local_d_26_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_473);
      hist_local_d_26_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_473);
      hist_local_d_26_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_473);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_27_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_27_22_lpi_3 <= 1'b0;
      hist_local_d_27_31_lpi_3 <= 1'b0;
      hist_local_d_27_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_20_cse ) begin
      hist_local_d_27_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_476);
      hist_local_d_27_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_476);
      hist_local_d_27_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_476);
      hist_local_d_27_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_476);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_28_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_28_22_lpi_3 <= 1'b0;
      hist_local_d_28_31_lpi_3 <= 1'b0;
      hist_local_d_28_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_21_cse ) begin
      hist_local_d_28_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_479);
      hist_local_d_28_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_479);
      hist_local_d_28_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_479);
      hist_local_d_28_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_479);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_29_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_29_22_lpi_3 <= 1'b0;
      hist_local_d_29_31_lpi_3 <= 1'b0;
      hist_local_d_29_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_22_cse ) begin
      hist_local_d_29_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_482);
      hist_local_d_29_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_482);
      hist_local_d_29_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_482);
      hist_local_d_29_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_482);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_3_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_3_22_lpi_3 <= 1'b0;
      hist_local_d_3_31_lpi_3 <= 1'b0;
      hist_local_d_3_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_23_cse ) begin
      hist_local_d_3_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_485);
      hist_local_d_3_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_485);
      hist_local_d_3_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_485);
      hist_local_d_3_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_485);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_30_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_30_22_lpi_3 <= 1'b0;
      hist_local_d_30_31_lpi_3 <= 1'b0;
      hist_local_d_30_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_24_cse ) begin
      hist_local_d_30_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_488);
      hist_local_d_30_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_488);
      hist_local_d_30_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_488);
      hist_local_d_30_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_488);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_31_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_31_22_lpi_3 <= 1'b0;
      hist_local_d_31_31_lpi_3 <= 1'b0;
      hist_local_d_31_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_25_cse ) begin
      hist_local_d_31_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_491);
      hist_local_d_31_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_491);
      hist_local_d_31_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_491);
      hist_local_d_31_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_491);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_32_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_32_22_lpi_3 <= 1'b0;
      hist_local_d_32_31_lpi_3 <= 1'b0;
      hist_local_d_32_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_26_cse ) begin
      hist_local_d_32_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_494);
      hist_local_d_32_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_494);
      hist_local_d_32_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_494);
      hist_local_d_32_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_494);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_33_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_33_22_lpi_3 <= 1'b0;
      hist_local_d_33_31_lpi_3 <= 1'b0;
      hist_local_d_33_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_27_cse ) begin
      hist_local_d_33_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_497);
      hist_local_d_33_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_497);
      hist_local_d_33_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_497);
      hist_local_d_33_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_497);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_34_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_34_22_lpi_3 <= 1'b0;
      hist_local_d_34_31_lpi_3 <= 1'b0;
      hist_local_d_34_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_28_cse ) begin
      hist_local_d_34_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_500);
      hist_local_d_34_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_500);
      hist_local_d_34_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_500);
      hist_local_d_34_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_500);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_35_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_35_22_lpi_3 <= 1'b0;
      hist_local_d_35_31_lpi_3 <= 1'b0;
      hist_local_d_35_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_29_cse ) begin
      hist_local_d_35_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_503);
      hist_local_d_35_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_503);
      hist_local_d_35_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_503);
      hist_local_d_35_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_503);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_36_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_36_22_lpi_3 <= 1'b0;
      hist_local_d_36_31_lpi_3 <= 1'b0;
      hist_local_d_36_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_30_cse ) begin
      hist_local_d_36_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_506);
      hist_local_d_36_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_506);
      hist_local_d_36_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_506);
      hist_local_d_36_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_506);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_37_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_37_22_lpi_3 <= 1'b0;
      hist_local_d_37_31_lpi_3 <= 1'b0;
      hist_local_d_37_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_31_cse ) begin
      hist_local_d_37_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_509);
      hist_local_d_37_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_509);
      hist_local_d_37_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_509);
      hist_local_d_37_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_509);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_38_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_38_22_lpi_3 <= 1'b0;
      hist_local_d_38_31_lpi_3 <= 1'b0;
      hist_local_d_38_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_32_cse ) begin
      hist_local_d_38_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_512);
      hist_local_d_38_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_512);
      hist_local_d_38_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_512);
      hist_local_d_38_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_512);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_39_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_39_22_lpi_3 <= 1'b0;
      hist_local_d_39_31_lpi_3 <= 1'b0;
      hist_local_d_39_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_33_cse ) begin
      hist_local_d_39_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_515);
      hist_local_d_39_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_515);
      hist_local_d_39_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_515);
      hist_local_d_39_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_515);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_4_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_4_22_lpi_3 <= 1'b0;
      hist_local_d_4_31_lpi_3 <= 1'b0;
      hist_local_d_4_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_34_cse ) begin
      hist_local_d_4_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_518);
      hist_local_d_4_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_518);
      hist_local_d_4_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_518);
      hist_local_d_4_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_518);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_40_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_40_22_lpi_3 <= 1'b0;
      hist_local_d_40_31_lpi_3 <= 1'b0;
      hist_local_d_40_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_35_cse ) begin
      hist_local_d_40_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_521);
      hist_local_d_40_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_521);
      hist_local_d_40_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_521);
      hist_local_d_40_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_521);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_41_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_41_22_lpi_3 <= 1'b0;
      hist_local_d_41_31_lpi_3 <= 1'b0;
      hist_local_d_41_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_36_cse ) begin
      hist_local_d_41_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_524);
      hist_local_d_41_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_524);
      hist_local_d_41_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_524);
      hist_local_d_41_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_524);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_42_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_42_22_lpi_3 <= 1'b0;
      hist_local_d_42_31_lpi_3 <= 1'b0;
      hist_local_d_42_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_37_cse ) begin
      hist_local_d_42_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_527);
      hist_local_d_42_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_527);
      hist_local_d_42_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_527);
      hist_local_d_42_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_527);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_43_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_43_22_lpi_3 <= 1'b0;
      hist_local_d_43_31_lpi_3 <= 1'b0;
      hist_local_d_43_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_38_cse ) begin
      hist_local_d_43_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_530);
      hist_local_d_43_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_530);
      hist_local_d_43_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_530);
      hist_local_d_43_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_530);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_44_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_44_22_lpi_3 <= 1'b0;
      hist_local_d_44_31_lpi_3 <= 1'b0;
      hist_local_d_44_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_39_cse ) begin
      hist_local_d_44_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_533);
      hist_local_d_44_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_533);
      hist_local_d_44_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_533);
      hist_local_d_44_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_533);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_45_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_45_22_lpi_3 <= 1'b0;
      hist_local_d_45_31_lpi_3 <= 1'b0;
      hist_local_d_45_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_40_cse ) begin
      hist_local_d_45_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_536);
      hist_local_d_45_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_536);
      hist_local_d_45_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_536);
      hist_local_d_45_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_536);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_46_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_46_22_lpi_3 <= 1'b0;
      hist_local_d_46_31_lpi_3 <= 1'b0;
      hist_local_d_46_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_41_cse ) begin
      hist_local_d_46_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_539);
      hist_local_d_46_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_539);
      hist_local_d_46_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_539);
      hist_local_d_46_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_539);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_47_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_47_22_lpi_3 <= 1'b0;
      hist_local_d_47_31_lpi_3 <= 1'b0;
      hist_local_d_47_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_42_cse ) begin
      hist_local_d_47_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_542);
      hist_local_d_47_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_542);
      hist_local_d_47_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_542);
      hist_local_d_47_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_542);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_48_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_48_22_lpi_3 <= 1'b0;
      hist_local_d_48_31_lpi_3 <= 1'b0;
      hist_local_d_48_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_43_cse ) begin
      hist_local_d_48_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_545);
      hist_local_d_48_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_545);
      hist_local_d_48_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_545);
      hist_local_d_48_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_545);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_49_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_49_22_lpi_3 <= 1'b0;
      hist_local_d_49_31_lpi_3 <= 1'b0;
      hist_local_d_49_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_44_cse ) begin
      hist_local_d_49_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_548);
      hist_local_d_49_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_548);
      hist_local_d_49_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_548);
      hist_local_d_49_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_548);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_5_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_5_22_lpi_3 <= 1'b0;
      hist_local_d_5_31_lpi_3 <= 1'b0;
      hist_local_d_5_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_45_cse ) begin
      hist_local_d_5_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_551);
      hist_local_d_5_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_551);
      hist_local_d_5_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_551);
      hist_local_d_5_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_551);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_50_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_50_22_lpi_3 <= 1'b0;
      hist_local_d_50_31_lpi_3 <= 1'b0;
      hist_local_d_50_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_46_cse ) begin
      hist_local_d_50_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_554);
      hist_local_d_50_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_554);
      hist_local_d_50_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_554);
      hist_local_d_50_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_554);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_51_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_51_22_lpi_3 <= 1'b0;
      hist_local_d_51_31_lpi_3 <= 1'b0;
      hist_local_d_51_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_47_cse ) begin
      hist_local_d_51_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_557);
      hist_local_d_51_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_557);
      hist_local_d_51_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_557);
      hist_local_d_51_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_557);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_52_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_52_22_lpi_3 <= 1'b0;
      hist_local_d_52_31_lpi_3 <= 1'b0;
      hist_local_d_52_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_48_cse ) begin
      hist_local_d_52_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_560);
      hist_local_d_52_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_560);
      hist_local_d_52_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_560);
      hist_local_d_52_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_560);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_53_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_53_22_lpi_3 <= 1'b0;
      hist_local_d_53_31_lpi_3 <= 1'b0;
      hist_local_d_53_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_49_cse ) begin
      hist_local_d_53_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_563);
      hist_local_d_53_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_563);
      hist_local_d_53_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_563);
      hist_local_d_53_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_563);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_54_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_54_22_lpi_3 <= 1'b0;
      hist_local_d_54_31_lpi_3 <= 1'b0;
      hist_local_d_54_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_50_cse ) begin
      hist_local_d_54_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_566);
      hist_local_d_54_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_566);
      hist_local_d_54_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_566);
      hist_local_d_54_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_566);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_55_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_55_22_lpi_3 <= 1'b0;
      hist_local_d_55_31_lpi_3 <= 1'b0;
      hist_local_d_55_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_51_cse ) begin
      hist_local_d_55_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_569);
      hist_local_d_55_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_569);
      hist_local_d_55_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_569);
      hist_local_d_55_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_569);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_56_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_56_22_lpi_3 <= 1'b0;
      hist_local_d_56_31_lpi_3 <= 1'b0;
      hist_local_d_56_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_52_cse ) begin
      hist_local_d_56_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_572);
      hist_local_d_56_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_572);
      hist_local_d_56_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_572);
      hist_local_d_56_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_572);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_57_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_57_22_lpi_3 <= 1'b0;
      hist_local_d_57_31_lpi_3 <= 1'b0;
      hist_local_d_57_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_53_cse ) begin
      hist_local_d_57_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_575);
      hist_local_d_57_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_575);
      hist_local_d_57_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_575);
      hist_local_d_57_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_575);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_58_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_58_22_lpi_3 <= 1'b0;
      hist_local_d_58_31_lpi_3 <= 1'b0;
      hist_local_d_58_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_54_cse ) begin
      hist_local_d_58_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_578);
      hist_local_d_58_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_578);
      hist_local_d_58_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_578);
      hist_local_d_58_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_578);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_59_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_59_22_lpi_3 <= 1'b0;
      hist_local_d_59_31_lpi_3 <= 1'b0;
      hist_local_d_59_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_55_cse ) begin
      hist_local_d_59_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_581);
      hist_local_d_59_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_581);
      hist_local_d_59_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_581);
      hist_local_d_59_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_581);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_6_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_6_22_lpi_3 <= 1'b0;
      hist_local_d_6_31_lpi_3 <= 1'b0;
      hist_local_d_6_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_56_cse ) begin
      hist_local_d_6_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_584);
      hist_local_d_6_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_584);
      hist_local_d_6_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_584);
      hist_local_d_6_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_584);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_60_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_60_22_lpi_3 <= 1'b0;
      hist_local_d_60_31_lpi_3 <= 1'b0;
      hist_local_d_60_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_57_cse ) begin
      hist_local_d_60_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_587);
      hist_local_d_60_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_587);
      hist_local_d_60_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_587);
      hist_local_d_60_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_587);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_61_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_61_22_lpi_3 <= 1'b0;
      hist_local_d_61_31_lpi_3 <= 1'b0;
      hist_local_d_61_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_58_cse ) begin
      hist_local_d_61_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_590);
      hist_local_d_61_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_590);
      hist_local_d_61_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_590);
      hist_local_d_61_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_590);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_62_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_62_22_lpi_3 <= 1'b0;
      hist_local_d_62_31_lpi_3 <= 1'b0;
      hist_local_d_62_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_59_cse ) begin
      hist_local_d_62_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_593);
      hist_local_d_62_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_593);
      hist_local_d_62_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_593);
      hist_local_d_62_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_593);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_63_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_63_22_lpi_3 <= 1'b0;
      hist_local_d_63_31_lpi_3 <= 1'b0;
      hist_local_d_63_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_60_cse ) begin
      hist_local_d_63_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_596);
      hist_local_d_63_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_596);
      hist_local_d_63_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_596);
      hist_local_d_63_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_596);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_64_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_64_22_lpi_3 <= 1'b0;
      hist_local_d_64_31_lpi_3 <= 1'b0;
      hist_local_d_64_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_61_cse ) begin
      hist_local_d_64_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_599);
      hist_local_d_64_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_599);
      hist_local_d_64_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_599);
      hist_local_d_64_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_599);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_65_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_65_22_lpi_3 <= 1'b0;
      hist_local_d_65_31_lpi_3 <= 1'b0;
      hist_local_d_65_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_62_cse ) begin
      hist_local_d_65_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_602);
      hist_local_d_65_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_602);
      hist_local_d_65_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_602);
      hist_local_d_65_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_602);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_66_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_66_22_lpi_3 <= 1'b0;
      hist_local_d_66_31_lpi_3 <= 1'b0;
      hist_local_d_66_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_63_cse ) begin
      hist_local_d_66_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_605);
      hist_local_d_66_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_605);
      hist_local_d_66_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_605);
      hist_local_d_66_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_605);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_67_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_67_22_lpi_3 <= 1'b0;
      hist_local_d_67_31_lpi_3 <= 1'b0;
      hist_local_d_67_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_64_cse ) begin
      hist_local_d_67_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_608);
      hist_local_d_67_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_608);
      hist_local_d_67_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_608);
      hist_local_d_67_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_608);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_68_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_68_22_lpi_3 <= 1'b0;
      hist_local_d_68_31_lpi_3 <= 1'b0;
      hist_local_d_68_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_65_cse ) begin
      hist_local_d_68_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_611);
      hist_local_d_68_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_611);
      hist_local_d_68_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_611);
      hist_local_d_68_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_611);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_69_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_69_22_lpi_3 <= 1'b0;
      hist_local_d_69_31_lpi_3 <= 1'b0;
      hist_local_d_69_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_66_cse ) begin
      hist_local_d_69_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_614);
      hist_local_d_69_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_614);
      hist_local_d_69_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_614);
      hist_local_d_69_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_614);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_7_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_7_22_lpi_3 <= 1'b0;
      hist_local_d_7_31_lpi_3 <= 1'b0;
      hist_local_d_7_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_67_cse ) begin
      hist_local_d_7_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_617);
      hist_local_d_7_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_617);
      hist_local_d_7_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_617);
      hist_local_d_7_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_617);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_70_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_70_22_lpi_3 <= 1'b0;
      hist_local_d_70_31_lpi_3 <= 1'b0;
      hist_local_d_70_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_68_cse ) begin
      hist_local_d_70_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_620);
      hist_local_d_70_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_620);
      hist_local_d_70_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_620);
      hist_local_d_70_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_620);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_71_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_71_22_lpi_3 <= 1'b0;
      hist_local_d_71_31_lpi_3 <= 1'b0;
      hist_local_d_71_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_69_cse ) begin
      hist_local_d_71_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_623);
      hist_local_d_71_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_623);
      hist_local_d_71_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_623);
      hist_local_d_71_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_623);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_72_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_72_22_lpi_3 <= 1'b0;
      hist_local_d_72_31_lpi_3 <= 1'b0;
      hist_local_d_72_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_70_cse ) begin
      hist_local_d_72_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_626);
      hist_local_d_72_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_626);
      hist_local_d_72_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_626);
      hist_local_d_72_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_626);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_73_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_73_22_lpi_3 <= 1'b0;
      hist_local_d_73_31_lpi_3 <= 1'b0;
      hist_local_d_73_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_71_cse ) begin
      hist_local_d_73_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_629);
      hist_local_d_73_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_629);
      hist_local_d_73_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_629);
      hist_local_d_73_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_629);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_74_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_74_22_lpi_3 <= 1'b0;
      hist_local_d_74_31_lpi_3 <= 1'b0;
      hist_local_d_74_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_72_cse ) begin
      hist_local_d_74_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_632);
      hist_local_d_74_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_632);
      hist_local_d_74_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_632);
      hist_local_d_74_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_632);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_75_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_75_22_lpi_3 <= 1'b0;
      hist_local_d_75_31_lpi_3 <= 1'b0;
      hist_local_d_75_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_73_cse ) begin
      hist_local_d_75_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_635);
      hist_local_d_75_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_635);
      hist_local_d_75_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_635);
      hist_local_d_75_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_635);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_76_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_76_22_lpi_3 <= 1'b0;
      hist_local_d_76_31_lpi_3 <= 1'b0;
      hist_local_d_76_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_74_cse ) begin
      hist_local_d_76_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_638);
      hist_local_d_76_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_638);
      hist_local_d_76_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_638);
      hist_local_d_76_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_638);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_77_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_77_22_lpi_3 <= 1'b0;
      hist_local_d_77_31_lpi_3 <= 1'b0;
      hist_local_d_77_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_75_cse ) begin
      hist_local_d_77_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_641);
      hist_local_d_77_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_641);
      hist_local_d_77_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_641);
      hist_local_d_77_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_641);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_78_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_78_22_lpi_3 <= 1'b0;
      hist_local_d_78_31_lpi_3 <= 1'b0;
      hist_local_d_78_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_76_cse ) begin
      hist_local_d_78_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_644);
      hist_local_d_78_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_644);
      hist_local_d_78_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_644);
      hist_local_d_78_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_644);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_79_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_79_22_lpi_3 <= 1'b0;
      hist_local_d_79_31_lpi_3 <= 1'b0;
      hist_local_d_79_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_77_cse ) begin
      hist_local_d_79_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_647);
      hist_local_d_79_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_647);
      hist_local_d_79_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_647);
      hist_local_d_79_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_647);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_8_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_8_22_lpi_3 <= 1'b0;
      hist_local_d_8_31_lpi_3 <= 1'b0;
      hist_local_d_8_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_78_cse ) begin
      hist_local_d_8_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_650);
      hist_local_d_8_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_650);
      hist_local_d_8_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_650);
      hist_local_d_8_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_650);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_80_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_80_22_lpi_3 <= 1'b0;
      hist_local_d_80_31_lpi_3 <= 1'b0;
      hist_local_d_80_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_79_cse ) begin
      hist_local_d_80_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_653);
      hist_local_d_80_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_653);
      hist_local_d_80_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_653);
      hist_local_d_80_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_653);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_81_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_81_22_lpi_3 <= 1'b0;
      hist_local_d_81_31_lpi_3 <= 1'b0;
      hist_local_d_81_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_80_cse ) begin
      hist_local_d_81_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_656);
      hist_local_d_81_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_656);
      hist_local_d_81_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_656);
      hist_local_d_81_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_656);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_82_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_82_22_lpi_3 <= 1'b0;
      hist_local_d_82_31_lpi_3 <= 1'b0;
      hist_local_d_82_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_81_cse ) begin
      hist_local_d_82_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_659);
      hist_local_d_82_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_659);
      hist_local_d_82_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_659);
      hist_local_d_82_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_659);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_83_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_83_22_lpi_3 <= 1'b0;
      hist_local_d_83_31_lpi_3 <= 1'b0;
      hist_local_d_83_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_82_cse ) begin
      hist_local_d_83_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_662);
      hist_local_d_83_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_662);
      hist_local_d_83_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_662);
      hist_local_d_83_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_662);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_84_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_84_22_lpi_3 <= 1'b0;
      hist_local_d_84_31_lpi_3 <= 1'b0;
      hist_local_d_84_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_83_cse ) begin
      hist_local_d_84_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_665);
      hist_local_d_84_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_665);
      hist_local_d_84_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_665);
      hist_local_d_84_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_665);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_85_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_85_22_lpi_3 <= 1'b0;
      hist_local_d_85_31_lpi_3 <= 1'b0;
      hist_local_d_85_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_84_cse ) begin
      hist_local_d_85_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_668);
      hist_local_d_85_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_668);
      hist_local_d_85_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_668);
      hist_local_d_85_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_668);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_86_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_86_22_lpi_3 <= 1'b0;
      hist_local_d_86_31_lpi_3 <= 1'b0;
      hist_local_d_86_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_85_cse ) begin
      hist_local_d_86_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_671);
      hist_local_d_86_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_671);
      hist_local_d_86_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_671);
      hist_local_d_86_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_671);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_87_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_87_22_lpi_3 <= 1'b0;
      hist_local_d_87_31_lpi_3 <= 1'b0;
      hist_local_d_87_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_86_cse ) begin
      hist_local_d_87_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_674);
      hist_local_d_87_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_674);
      hist_local_d_87_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_674);
      hist_local_d_87_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_674);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_88_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_88_22_lpi_3 <= 1'b0;
      hist_local_d_88_31_lpi_3 <= 1'b0;
      hist_local_d_88_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_87_cse ) begin
      hist_local_d_88_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_677);
      hist_local_d_88_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_677);
      hist_local_d_88_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_677);
      hist_local_d_88_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_677);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_89_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_89_22_lpi_3 <= 1'b0;
      hist_local_d_89_31_lpi_3 <= 1'b0;
      hist_local_d_89_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_88_cse ) begin
      hist_local_d_89_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_680);
      hist_local_d_89_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_680);
      hist_local_d_89_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_680);
      hist_local_d_89_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_680);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_9_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_9_22_lpi_3 <= 1'b0;
      hist_local_d_9_31_lpi_3 <= 1'b0;
      hist_local_d_9_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_89_cse ) begin
      hist_local_d_9_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_683);
      hist_local_d_9_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_683);
      hist_local_d_9_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_683);
      hist_local_d_9_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_683);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_90_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_90_22_lpi_3 <= 1'b0;
      hist_local_d_90_31_lpi_3 <= 1'b0;
      hist_local_d_90_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_90_cse ) begin
      hist_local_d_90_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_686);
      hist_local_d_90_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_686);
      hist_local_d_90_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_686);
      hist_local_d_90_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_686);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_91_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_91_22_lpi_3 <= 1'b0;
      hist_local_d_91_31_lpi_3 <= 1'b0;
      hist_local_d_91_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_91_cse ) begin
      hist_local_d_91_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_689);
      hist_local_d_91_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_689);
      hist_local_d_91_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_689);
      hist_local_d_91_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_689);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_92_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_92_22_lpi_3 <= 1'b0;
      hist_local_d_92_31_lpi_3 <= 1'b0;
      hist_local_d_92_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_92_cse ) begin
      hist_local_d_92_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_692);
      hist_local_d_92_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_692);
      hist_local_d_92_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_692);
      hist_local_d_92_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_692);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_93_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_93_22_lpi_3 <= 1'b0;
      hist_local_d_93_31_lpi_3 <= 1'b0;
      hist_local_d_93_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_93_cse ) begin
      hist_local_d_93_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_695);
      hist_local_d_93_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_695);
      hist_local_d_93_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_695);
      hist_local_d_93_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_695);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_94_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_94_22_lpi_3 <= 1'b0;
      hist_local_d_94_31_lpi_3 <= 1'b0;
      hist_local_d_94_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_94_cse ) begin
      hist_local_d_94_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_698);
      hist_local_d_94_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_698);
      hist_local_d_94_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_698);
      hist_local_d_94_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_698);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_95_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_95_22_lpi_3 <= 1'b0;
      hist_local_d_95_31_lpi_3 <= 1'b0;
      hist_local_d_95_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_95_cse ) begin
      hist_local_d_95_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_701);
      hist_local_d_95_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_701);
      hist_local_d_95_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_701);
      hist_local_d_95_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_701);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_96_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_96_22_lpi_3 <= 1'b0;
      hist_local_d_96_31_lpi_3 <= 1'b0;
      hist_local_d_96_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_96_cse ) begin
      hist_local_d_96_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_704);
      hist_local_d_96_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_704);
      hist_local_d_96_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_704);
      hist_local_d_96_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_704);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_97_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_97_22_lpi_3 <= 1'b0;
      hist_local_d_97_31_lpi_3 <= 1'b0;
      hist_local_d_97_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_97_cse ) begin
      hist_local_d_97_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_707);
      hist_local_d_97_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_707);
      hist_local_d_97_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_707);
      hist_local_d_97_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_707);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_98_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_98_22_lpi_3 <= 1'b0;
      hist_local_d_98_31_lpi_3 <= 1'b0;
      hist_local_d_98_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_98_cse ) begin
      hist_local_d_98_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_710);
      hist_local_d_98_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_710);
      hist_local_d_98_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_710);
      hist_local_d_98_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_710);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      hist_local_d_99_21_0_lpi_3 <= 22'b0000000000000000000000;
      hist_local_d_99_22_lpi_3 <= 1'b0;
      hist_local_d_99_31_lpi_3 <= 1'b0;
      hist_local_d_99_30_23_lpi_3 <= 8'b00000000;
    end
    else if ( hist_local_d_and_99_cse ) begin
      hist_local_d_99_21_0_lpi_3 <= MUX_v_22_2_2((hist_rsci_idat_mxwt[21:0]), return_add_generic_AC_RND_CONV_false_m_r_21_0_lpi_2_dfm_1,
          or_tmp_713);
      hist_local_d_99_22_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[22]), return_add_generic_AC_RND_CONV_false_m_r_22_lpi_2_dfm_mx0,
          or_tmp_713);
      hist_local_d_99_31_lpi_3 <= MUX_s_1_2_2((hist_rsci_idat_mxwt[31]), return_add_generic_AC_RND_CONV_false_r_sign_sva_1,
          or_tmp_713);
      hist_local_d_99_30_23_lpi_3 <= MUX_v_8_2_2((hist_rsci_idat_mxwt[30:23]), for_asn_811_mx0w1,
          or_tmp_713);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      i_7_0_sva_6_0 <= 7'b0000000;
    end
    else if ( (~ (fsm_output[7])) & core_wen ) begin
      i_7_0_sva_6_0 <= MUX_v_7_2_2(7'b0000000, (z_out_5[6:0]), not_nl);
    end
  end
  assign nl_for_1_acc_nl = conv_u2s_8_9(z_out_5[7:0]) + conv_s2s_8_9({1'b1 , (~ size_6_0_sva)})
      + 9'b000000001;
  assign for_1_acc_nl = nl_for_1_acc_nl[8:0];
  assign not_nl = ~ (fsm_output[5]);
  assign operator_32_true_mux_1_nl = MUX_v_32_2_2((~ n_sva), (signext_32_25(return_add_generic_AC_RND_CONV_false_add_r_1_sva_1[27:3])),
      fsm_output[4]);
  assign operator_32_true_or_1_nl = ((return_add_generic_AC_RND_CONV_false_add_r_1_sva_1[2])
      & ((return_add_generic_AC_RND_CONV_false_add_r_1_sva_1[0]) | (return_add_generic_AC_RND_CONV_false_return_add_generic_AC_RND_CONV_false_nor_psp_sva_1!=26'b00000000000000000000000000)
      | (return_add_generic_AC_RND_CONV_false_add_r_1_sva_1[1]) | (return_add_generic_AC_RND_CONV_false_add_r_1_sva_1[3])))
      | (fsm_output[3]);
  assign nl_z_out_2 = conv_s2u_32_33(operator_32_true_mux_1_nl) + conv_u2u_1_33(operator_32_true_or_1_nl);
  assign z_out_2 = nl_z_out_2[32:0];
  assign while_while_while_nand_2_nl = ~(return_extract_return_extract_or_sva_1 &
      (fsm_output[4]));
  assign while_while_while_nand_3_nl = ~(x_to_helper_t_return_d_sva_22_1 & (fsm_output[4]));
  assign while_mux_2_nl = MUX_v_22_2_2(22'b1111111111111111100111, (~ z_out_1), fsm_output[4]);
  assign while_mux_3_nl = MUX_v_5_2_2((size_6_0_sva[6:2]), 5'b00001, fsm_output[4]);
  assign nl_z_out_3 = ({1'b1 , while_while_while_nand_2_nl , while_while_while_nand_3_nl
      , while_mux_2_nl}) + conv_u2u_5_25(while_mux_3_nl);
  assign z_out_3 = nl_z_out_3[24:0];
  assign return_add_generic_AC_RND_CONV_false_r_un_qif_mux_1_nl = MUX_v_24_2_2((~
      (z_out_2[23:0])), ({17'b11111111111111111 , (~ size_6_0_sva)}), fsm_output[5]);
  assign nl_z_out_4 = return_add_generic_AC_RND_CONV_false_r_un_qif_mux_1_nl + 24'b000000000000000000000001;
  assign z_out_4 = nl_z_out_4[23:0];
  assign while_mux1h_401_nl = MUX1HOT_v_32_3_2(({{25{size_6_0_sva[6]}}, size_6_0_sva}),
      i_1_sva, ({25'b0000000000000000000000000 , i_7_0_sva_6_0}), {(fsm_output[1])
      , (fsm_output[4]) , (fsm_output[6])});
  assign nl_z_out_5 = while_mux1h_401_nl + 32'b00000000000000000000000000000001;
  assign z_out_5 = nl_z_out_5[31:0];
  assign for_1_mux_9_cse = MUX_v_7_2_2(i_7_0_sva_6_0, feature_rsci_idat_mxwt, fsm_output[4]);
  assign z_out = MUX_v_8_100_2(hist_local_d_0_30_23_lpi_3, hist_local_d_1_30_23_lpi_3,
      hist_local_d_2_30_23_lpi_3, hist_local_d_3_30_23_lpi_3, hist_local_d_4_30_23_lpi_3,
      hist_local_d_5_30_23_lpi_3, hist_local_d_6_30_23_lpi_3, hist_local_d_7_30_23_lpi_3,
      hist_local_d_8_30_23_lpi_3, hist_local_d_9_30_23_lpi_3, hist_local_d_10_30_23_lpi_3,
      hist_local_d_11_30_23_lpi_3, hist_local_d_12_30_23_lpi_3, hist_local_d_13_30_23_lpi_3,
      hist_local_d_14_30_23_lpi_3, hist_local_d_15_30_23_lpi_3, hist_local_d_16_30_23_lpi_3,
      hist_local_d_17_30_23_lpi_3, hist_local_d_18_30_23_lpi_3, hist_local_d_19_30_23_lpi_3,
      hist_local_d_20_30_23_lpi_3, hist_local_d_21_30_23_lpi_3, hist_local_d_22_30_23_lpi_3,
      hist_local_d_23_30_23_lpi_3, hist_local_d_24_30_23_lpi_3, hist_local_d_25_30_23_lpi_3,
      hist_local_d_26_30_23_lpi_3, hist_local_d_27_30_23_lpi_3, hist_local_d_28_30_23_lpi_3,
      hist_local_d_29_30_23_lpi_3, hist_local_d_30_30_23_lpi_3, hist_local_d_31_30_23_lpi_3,
      hist_local_d_32_30_23_lpi_3, hist_local_d_33_30_23_lpi_3, hist_local_d_34_30_23_lpi_3,
      hist_local_d_35_30_23_lpi_3, hist_local_d_36_30_23_lpi_3, hist_local_d_37_30_23_lpi_3,
      hist_local_d_38_30_23_lpi_3, hist_local_d_39_30_23_lpi_3, hist_local_d_40_30_23_lpi_3,
      hist_local_d_41_30_23_lpi_3, hist_local_d_42_30_23_lpi_3, hist_local_d_43_30_23_lpi_3,
      hist_local_d_44_30_23_lpi_3, hist_local_d_45_30_23_lpi_3, hist_local_d_46_30_23_lpi_3,
      hist_local_d_47_30_23_lpi_3, hist_local_d_48_30_23_lpi_3, hist_local_d_49_30_23_lpi_3,
      hist_local_d_50_30_23_lpi_3, hist_local_d_51_30_23_lpi_3, hist_local_d_52_30_23_lpi_3,
      hist_local_d_53_30_23_lpi_3, hist_local_d_54_30_23_lpi_3, hist_local_d_55_30_23_lpi_3,
      hist_local_d_56_30_23_lpi_3, hist_local_d_57_30_23_lpi_3, hist_local_d_58_30_23_lpi_3,
      hist_local_d_59_30_23_lpi_3, hist_local_d_60_30_23_lpi_3, hist_local_d_61_30_23_lpi_3,
      hist_local_d_62_30_23_lpi_3, hist_local_d_63_30_23_lpi_3, hist_local_d_64_30_23_lpi_3,
      hist_local_d_65_30_23_lpi_3, hist_local_d_66_30_23_lpi_3, hist_local_d_67_30_23_lpi_3,
      hist_local_d_68_30_23_lpi_3, hist_local_d_69_30_23_lpi_3, hist_local_d_70_30_23_lpi_3,
      hist_local_d_71_30_23_lpi_3, hist_local_d_72_30_23_lpi_3, hist_local_d_73_30_23_lpi_3,
      hist_local_d_74_30_23_lpi_3, hist_local_d_75_30_23_lpi_3, hist_local_d_76_30_23_lpi_3,
      hist_local_d_77_30_23_lpi_3, hist_local_d_78_30_23_lpi_3, hist_local_d_79_30_23_lpi_3,
      hist_local_d_80_30_23_lpi_3, hist_local_d_81_30_23_lpi_3, hist_local_d_82_30_23_lpi_3,
      hist_local_d_83_30_23_lpi_3, hist_local_d_84_30_23_lpi_3, hist_local_d_85_30_23_lpi_3,
      hist_local_d_86_30_23_lpi_3, hist_local_d_87_30_23_lpi_3, hist_local_d_88_30_23_lpi_3,
      hist_local_d_89_30_23_lpi_3, hist_local_d_90_30_23_lpi_3, hist_local_d_91_30_23_lpi_3,
      hist_local_d_92_30_23_lpi_3, hist_local_d_93_30_23_lpi_3, hist_local_d_94_30_23_lpi_3,
      hist_local_d_95_30_23_lpi_3, hist_local_d_96_30_23_lpi_3, hist_local_d_97_30_23_lpi_3,
      hist_local_d_98_30_23_lpi_3, hist_local_d_99_30_23_lpi_3, for_1_mux_9_cse);
  assign z_out_1 = MUX_v_22_100_2(hist_local_d_0_21_0_lpi_3, hist_local_d_1_21_0_lpi_3,
      hist_local_d_2_21_0_lpi_3, hist_local_d_3_21_0_lpi_3, hist_local_d_4_21_0_lpi_3,
      hist_local_d_5_21_0_lpi_3, hist_local_d_6_21_0_lpi_3, hist_local_d_7_21_0_lpi_3,
      hist_local_d_8_21_0_lpi_3, hist_local_d_9_21_0_lpi_3, hist_local_d_10_21_0_lpi_3,
      hist_local_d_11_21_0_lpi_3, hist_local_d_12_21_0_lpi_3, hist_local_d_13_21_0_lpi_3,
      hist_local_d_14_21_0_lpi_3, hist_local_d_15_21_0_lpi_3, hist_local_d_16_21_0_lpi_3,
      hist_local_d_17_21_0_lpi_3, hist_local_d_18_21_0_lpi_3, hist_local_d_19_21_0_lpi_3,
      hist_local_d_20_21_0_lpi_3, hist_local_d_21_21_0_lpi_3, hist_local_d_22_21_0_lpi_3,
      hist_local_d_23_21_0_lpi_3, hist_local_d_24_21_0_lpi_3, hist_local_d_25_21_0_lpi_3,
      hist_local_d_26_21_0_lpi_3, hist_local_d_27_21_0_lpi_3, hist_local_d_28_21_0_lpi_3,
      hist_local_d_29_21_0_lpi_3, hist_local_d_30_21_0_lpi_3, hist_local_d_31_21_0_lpi_3,
      hist_local_d_32_21_0_lpi_3, hist_local_d_33_21_0_lpi_3, hist_local_d_34_21_0_lpi_3,
      hist_local_d_35_21_0_lpi_3, hist_local_d_36_21_0_lpi_3, hist_local_d_37_21_0_lpi_3,
      hist_local_d_38_21_0_lpi_3, hist_local_d_39_21_0_lpi_3, hist_local_d_40_21_0_lpi_3,
      hist_local_d_41_21_0_lpi_3, hist_local_d_42_21_0_lpi_3, hist_local_d_43_21_0_lpi_3,
      hist_local_d_44_21_0_lpi_3, hist_local_d_45_21_0_lpi_3, hist_local_d_46_21_0_lpi_3,
      hist_local_d_47_21_0_lpi_3, hist_local_d_48_21_0_lpi_3, hist_local_d_49_21_0_lpi_3,
      hist_local_d_50_21_0_lpi_3, hist_local_d_51_21_0_lpi_3, hist_local_d_52_21_0_lpi_3,
      hist_local_d_53_21_0_lpi_3, hist_local_d_54_21_0_lpi_3, hist_local_d_55_21_0_lpi_3,
      hist_local_d_56_21_0_lpi_3, hist_local_d_57_21_0_lpi_3, hist_local_d_58_21_0_lpi_3,
      hist_local_d_59_21_0_lpi_3, hist_local_d_60_21_0_lpi_3, hist_local_d_61_21_0_lpi_3,
      hist_local_d_62_21_0_lpi_3, hist_local_d_63_21_0_lpi_3, hist_local_d_64_21_0_lpi_3,
      hist_local_d_65_21_0_lpi_3, hist_local_d_66_21_0_lpi_3, hist_local_d_67_21_0_lpi_3,
      hist_local_d_68_21_0_lpi_3, hist_local_d_69_21_0_lpi_3, hist_local_d_70_21_0_lpi_3,
      hist_local_d_71_21_0_lpi_3, hist_local_d_72_21_0_lpi_3, hist_local_d_73_21_0_lpi_3,
      hist_local_d_74_21_0_lpi_3, hist_local_d_75_21_0_lpi_3, hist_local_d_76_21_0_lpi_3,
      hist_local_d_77_21_0_lpi_3, hist_local_d_78_21_0_lpi_3, hist_local_d_79_21_0_lpi_3,
      hist_local_d_80_21_0_lpi_3, hist_local_d_81_21_0_lpi_3, hist_local_d_82_21_0_lpi_3,
      hist_local_d_83_21_0_lpi_3, hist_local_d_84_21_0_lpi_3, hist_local_d_85_21_0_lpi_3,
      hist_local_d_86_21_0_lpi_3, hist_local_d_87_21_0_lpi_3, hist_local_d_88_21_0_lpi_3,
      hist_local_d_89_21_0_lpi_3, hist_local_d_90_21_0_lpi_3, hist_local_d_91_21_0_lpi_3,
      hist_local_d_92_21_0_lpi_3, hist_local_d_93_21_0_lpi_3, hist_local_d_94_21_0_lpi_3,
      hist_local_d_95_21_0_lpi_3, hist_local_d_96_21_0_lpi_3, hist_local_d_97_21_0_lpi_3,
      hist_local_d_98_21_0_lpi_3, hist_local_d_99_21_0_lpi_3, for_1_mux_9_cse);

  function automatic [31:0] MUX1HOT_v_32_3_2;
    input [31:0] input_2;
    input [31:0] input_1;
    input [31:0] input_0;
    input [2:0] sel;
    reg [31:0] result;
  begin
    result = input_0 & {32{sel[0]}};
    result = result | ( input_1 & {32{sel[1]}});
    result = result | ( input_2 & {32{sel[2]}});
    MUX1HOT_v_32_3_2 = result;
  end
  endfunction


  function automatic [0:0] MUX_s_1_100_2;
    input [0:0] input_0;
    input [0:0] input_1;
    input [0:0] input_2;
    input [0:0] input_3;
    input [0:0] input_4;
    input [0:0] input_5;
    input [0:0] input_6;
    input [0:0] input_7;
    input [0:0] input_8;
    input [0:0] input_9;
    input [0:0] input_10;
    input [0:0] input_11;
    input [0:0] input_12;
    input [0:0] input_13;
    input [0:0] input_14;
    input [0:0] input_15;
    input [0:0] input_16;
    input [0:0] input_17;
    input [0:0] input_18;
    input [0:0] input_19;
    input [0:0] input_20;
    input [0:0] input_21;
    input [0:0] input_22;
    input [0:0] input_23;
    input [0:0] input_24;
    input [0:0] input_25;
    input [0:0] input_26;
    input [0:0] input_27;
    input [0:0] input_28;
    input [0:0] input_29;
    input [0:0] input_30;
    input [0:0] input_31;
    input [0:0] input_32;
    input [0:0] input_33;
    input [0:0] input_34;
    input [0:0] input_35;
    input [0:0] input_36;
    input [0:0] input_37;
    input [0:0] input_38;
    input [0:0] input_39;
    input [0:0] input_40;
    input [0:0] input_41;
    input [0:0] input_42;
    input [0:0] input_43;
    input [0:0] input_44;
    input [0:0] input_45;
    input [0:0] input_46;
    input [0:0] input_47;
    input [0:0] input_48;
    input [0:0] input_49;
    input [0:0] input_50;
    input [0:0] input_51;
    input [0:0] input_52;
    input [0:0] input_53;
    input [0:0] input_54;
    input [0:0] input_55;
    input [0:0] input_56;
    input [0:0] input_57;
    input [0:0] input_58;
    input [0:0] input_59;
    input [0:0] input_60;
    input [0:0] input_61;
    input [0:0] input_62;
    input [0:0] input_63;
    input [0:0] input_64;
    input [0:0] input_65;
    input [0:0] input_66;
    input [0:0] input_67;
    input [0:0] input_68;
    input [0:0] input_69;
    input [0:0] input_70;
    input [0:0] input_71;
    input [0:0] input_72;
    input [0:0] input_73;
    input [0:0] input_74;
    input [0:0] input_75;
    input [0:0] input_76;
    input [0:0] input_77;
    input [0:0] input_78;
    input [0:0] input_79;
    input [0:0] input_80;
    input [0:0] input_81;
    input [0:0] input_82;
    input [0:0] input_83;
    input [0:0] input_84;
    input [0:0] input_85;
    input [0:0] input_86;
    input [0:0] input_87;
    input [0:0] input_88;
    input [0:0] input_89;
    input [0:0] input_90;
    input [0:0] input_91;
    input [0:0] input_92;
    input [0:0] input_93;
    input [0:0] input_94;
    input [0:0] input_95;
    input [0:0] input_96;
    input [0:0] input_97;
    input [0:0] input_98;
    input [0:0] input_99;
    input [6:0] sel;
    reg [0:0] result;
  begin
    case (sel)
      7'b0000000 : begin
        result = input_0;
      end
      7'b0000001 : begin
        result = input_1;
      end
      7'b0000010 : begin
        result = input_2;
      end
      7'b0000011 : begin
        result = input_3;
      end
      7'b0000100 : begin
        result = input_4;
      end
      7'b0000101 : begin
        result = input_5;
      end
      7'b0000110 : begin
        result = input_6;
      end
      7'b0000111 : begin
        result = input_7;
      end
      7'b0001000 : begin
        result = input_8;
      end
      7'b0001001 : begin
        result = input_9;
      end
      7'b0001010 : begin
        result = input_10;
      end
      7'b0001011 : begin
        result = input_11;
      end
      7'b0001100 : begin
        result = input_12;
      end
      7'b0001101 : begin
        result = input_13;
      end
      7'b0001110 : begin
        result = input_14;
      end
      7'b0001111 : begin
        result = input_15;
      end
      7'b0010000 : begin
        result = input_16;
      end
      7'b0010001 : begin
        result = input_17;
      end
      7'b0010010 : begin
        result = input_18;
      end
      7'b0010011 : begin
        result = input_19;
      end
      7'b0010100 : begin
        result = input_20;
      end
      7'b0010101 : begin
        result = input_21;
      end
      7'b0010110 : begin
        result = input_22;
      end
      7'b0010111 : begin
        result = input_23;
      end
      7'b0011000 : begin
        result = input_24;
      end
      7'b0011001 : begin
        result = input_25;
      end
      7'b0011010 : begin
        result = input_26;
      end
      7'b0011011 : begin
        result = input_27;
      end
      7'b0011100 : begin
        result = input_28;
      end
      7'b0011101 : begin
        result = input_29;
      end
      7'b0011110 : begin
        result = input_30;
      end
      7'b0011111 : begin
        result = input_31;
      end
      7'b0100000 : begin
        result = input_32;
      end
      7'b0100001 : begin
        result = input_33;
      end
      7'b0100010 : begin
        result = input_34;
      end
      7'b0100011 : begin
        result = input_35;
      end
      7'b0100100 : begin
        result = input_36;
      end
      7'b0100101 : begin
        result = input_37;
      end
      7'b0100110 : begin
        result = input_38;
      end
      7'b0100111 : begin
        result = input_39;
      end
      7'b0101000 : begin
        result = input_40;
      end
      7'b0101001 : begin
        result = input_41;
      end
      7'b0101010 : begin
        result = input_42;
      end
      7'b0101011 : begin
        result = input_43;
      end
      7'b0101100 : begin
        result = input_44;
      end
      7'b0101101 : begin
        result = input_45;
      end
      7'b0101110 : begin
        result = input_46;
      end
      7'b0101111 : begin
        result = input_47;
      end
      7'b0110000 : begin
        result = input_48;
      end
      7'b0110001 : begin
        result = input_49;
      end
      7'b0110010 : begin
        result = input_50;
      end
      7'b0110011 : begin
        result = input_51;
      end
      7'b0110100 : begin
        result = input_52;
      end
      7'b0110101 : begin
        result = input_53;
      end
      7'b0110110 : begin
        result = input_54;
      end
      7'b0110111 : begin
        result = input_55;
      end
      7'b0111000 : begin
        result = input_56;
      end
      7'b0111001 : begin
        result = input_57;
      end
      7'b0111010 : begin
        result = input_58;
      end
      7'b0111011 : begin
        result = input_59;
      end
      7'b0111100 : begin
        result = input_60;
      end
      7'b0111101 : begin
        result = input_61;
      end
      7'b0111110 : begin
        result = input_62;
      end
      7'b0111111 : begin
        result = input_63;
      end
      7'b1000000 : begin
        result = input_64;
      end
      7'b1000001 : begin
        result = input_65;
      end
      7'b1000010 : begin
        result = input_66;
      end
      7'b1000011 : begin
        result = input_67;
      end
      7'b1000100 : begin
        result = input_68;
      end
      7'b1000101 : begin
        result = input_69;
      end
      7'b1000110 : begin
        result = input_70;
      end
      7'b1000111 : begin
        result = input_71;
      end
      7'b1001000 : begin
        result = input_72;
      end
      7'b1001001 : begin
        result = input_73;
      end
      7'b1001010 : begin
        result = input_74;
      end
      7'b1001011 : begin
        result = input_75;
      end
      7'b1001100 : begin
        result = input_76;
      end
      7'b1001101 : begin
        result = input_77;
      end
      7'b1001110 : begin
        result = input_78;
      end
      7'b1001111 : begin
        result = input_79;
      end
      7'b1010000 : begin
        result = input_80;
      end
      7'b1010001 : begin
        result = input_81;
      end
      7'b1010010 : begin
        result = input_82;
      end
      7'b1010011 : begin
        result = input_83;
      end
      7'b1010100 : begin
        result = input_84;
      end
      7'b1010101 : begin
        result = input_85;
      end
      7'b1010110 : begin
        result = input_86;
      end
      7'b1010111 : begin
        result = input_87;
      end
      7'b1011000 : begin
        result = input_88;
      end
      7'b1011001 : begin
        result = input_89;
      end
      7'b1011010 : begin
        result = input_90;
      end
      7'b1011011 : begin
        result = input_91;
      end
      7'b1011100 : begin
        result = input_92;
      end
      7'b1011101 : begin
        result = input_93;
      end
      7'b1011110 : begin
        result = input_94;
      end
      7'b1011111 : begin
        result = input_95;
      end
      7'b1100000 : begin
        result = input_96;
      end
      7'b1100001 : begin
        result = input_97;
      end
      7'b1100010 : begin
        result = input_98;
      end
      default : begin
        result = input_99;
      end
    endcase
    MUX_s_1_100_2 = result;
  end
  endfunction


  function automatic [0:0] MUX_s_1_2_2;
    input [0:0] input_0;
    input [0:0] input_1;
    input [0:0] sel;
    reg [0:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_s_1_2_2 = result;
  end
  endfunction


  function automatic [9:0] MUX_v_10_2_2;
    input [9:0] input_0;
    input [9:0] input_1;
    input [0:0] sel;
    reg [9:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_10_2_2 = result;
  end
  endfunction


  function automatic [21:0] MUX_v_22_100_2;
    input [21:0] input_0;
    input [21:0] input_1;
    input [21:0] input_2;
    input [21:0] input_3;
    input [21:0] input_4;
    input [21:0] input_5;
    input [21:0] input_6;
    input [21:0] input_7;
    input [21:0] input_8;
    input [21:0] input_9;
    input [21:0] input_10;
    input [21:0] input_11;
    input [21:0] input_12;
    input [21:0] input_13;
    input [21:0] input_14;
    input [21:0] input_15;
    input [21:0] input_16;
    input [21:0] input_17;
    input [21:0] input_18;
    input [21:0] input_19;
    input [21:0] input_20;
    input [21:0] input_21;
    input [21:0] input_22;
    input [21:0] input_23;
    input [21:0] input_24;
    input [21:0] input_25;
    input [21:0] input_26;
    input [21:0] input_27;
    input [21:0] input_28;
    input [21:0] input_29;
    input [21:0] input_30;
    input [21:0] input_31;
    input [21:0] input_32;
    input [21:0] input_33;
    input [21:0] input_34;
    input [21:0] input_35;
    input [21:0] input_36;
    input [21:0] input_37;
    input [21:0] input_38;
    input [21:0] input_39;
    input [21:0] input_40;
    input [21:0] input_41;
    input [21:0] input_42;
    input [21:0] input_43;
    input [21:0] input_44;
    input [21:0] input_45;
    input [21:0] input_46;
    input [21:0] input_47;
    input [21:0] input_48;
    input [21:0] input_49;
    input [21:0] input_50;
    input [21:0] input_51;
    input [21:0] input_52;
    input [21:0] input_53;
    input [21:0] input_54;
    input [21:0] input_55;
    input [21:0] input_56;
    input [21:0] input_57;
    input [21:0] input_58;
    input [21:0] input_59;
    input [21:0] input_60;
    input [21:0] input_61;
    input [21:0] input_62;
    input [21:0] input_63;
    input [21:0] input_64;
    input [21:0] input_65;
    input [21:0] input_66;
    input [21:0] input_67;
    input [21:0] input_68;
    input [21:0] input_69;
    input [21:0] input_70;
    input [21:0] input_71;
    input [21:0] input_72;
    input [21:0] input_73;
    input [21:0] input_74;
    input [21:0] input_75;
    input [21:0] input_76;
    input [21:0] input_77;
    input [21:0] input_78;
    input [21:0] input_79;
    input [21:0] input_80;
    input [21:0] input_81;
    input [21:0] input_82;
    input [21:0] input_83;
    input [21:0] input_84;
    input [21:0] input_85;
    input [21:0] input_86;
    input [21:0] input_87;
    input [21:0] input_88;
    input [21:0] input_89;
    input [21:0] input_90;
    input [21:0] input_91;
    input [21:0] input_92;
    input [21:0] input_93;
    input [21:0] input_94;
    input [21:0] input_95;
    input [21:0] input_96;
    input [21:0] input_97;
    input [21:0] input_98;
    input [21:0] input_99;
    input [6:0] sel;
    reg [21:0] result;
  begin
    case (sel)
      7'b0000000 : begin
        result = input_0;
      end
      7'b0000001 : begin
        result = input_1;
      end
      7'b0000010 : begin
        result = input_2;
      end
      7'b0000011 : begin
        result = input_3;
      end
      7'b0000100 : begin
        result = input_4;
      end
      7'b0000101 : begin
        result = input_5;
      end
      7'b0000110 : begin
        result = input_6;
      end
      7'b0000111 : begin
        result = input_7;
      end
      7'b0001000 : begin
        result = input_8;
      end
      7'b0001001 : begin
        result = input_9;
      end
      7'b0001010 : begin
        result = input_10;
      end
      7'b0001011 : begin
        result = input_11;
      end
      7'b0001100 : begin
        result = input_12;
      end
      7'b0001101 : begin
        result = input_13;
      end
      7'b0001110 : begin
        result = input_14;
      end
      7'b0001111 : begin
        result = input_15;
      end
      7'b0010000 : begin
        result = input_16;
      end
      7'b0010001 : begin
        result = input_17;
      end
      7'b0010010 : begin
        result = input_18;
      end
      7'b0010011 : begin
        result = input_19;
      end
      7'b0010100 : begin
        result = input_20;
      end
      7'b0010101 : begin
        result = input_21;
      end
      7'b0010110 : begin
        result = input_22;
      end
      7'b0010111 : begin
        result = input_23;
      end
      7'b0011000 : begin
        result = input_24;
      end
      7'b0011001 : begin
        result = input_25;
      end
      7'b0011010 : begin
        result = input_26;
      end
      7'b0011011 : begin
        result = input_27;
      end
      7'b0011100 : begin
        result = input_28;
      end
      7'b0011101 : begin
        result = input_29;
      end
      7'b0011110 : begin
        result = input_30;
      end
      7'b0011111 : begin
        result = input_31;
      end
      7'b0100000 : begin
        result = input_32;
      end
      7'b0100001 : begin
        result = input_33;
      end
      7'b0100010 : begin
        result = input_34;
      end
      7'b0100011 : begin
        result = input_35;
      end
      7'b0100100 : begin
        result = input_36;
      end
      7'b0100101 : begin
        result = input_37;
      end
      7'b0100110 : begin
        result = input_38;
      end
      7'b0100111 : begin
        result = input_39;
      end
      7'b0101000 : begin
        result = input_40;
      end
      7'b0101001 : begin
        result = input_41;
      end
      7'b0101010 : begin
        result = input_42;
      end
      7'b0101011 : begin
        result = input_43;
      end
      7'b0101100 : begin
        result = input_44;
      end
      7'b0101101 : begin
        result = input_45;
      end
      7'b0101110 : begin
        result = input_46;
      end
      7'b0101111 : begin
        result = input_47;
      end
      7'b0110000 : begin
        result = input_48;
      end
      7'b0110001 : begin
        result = input_49;
      end
      7'b0110010 : begin
        result = input_50;
      end
      7'b0110011 : begin
        result = input_51;
      end
      7'b0110100 : begin
        result = input_52;
      end
      7'b0110101 : begin
        result = input_53;
      end
      7'b0110110 : begin
        result = input_54;
      end
      7'b0110111 : begin
        result = input_55;
      end
      7'b0111000 : begin
        result = input_56;
      end
      7'b0111001 : begin
        result = input_57;
      end
      7'b0111010 : begin
        result = input_58;
      end
      7'b0111011 : begin
        result = input_59;
      end
      7'b0111100 : begin
        result = input_60;
      end
      7'b0111101 : begin
        result = input_61;
      end
      7'b0111110 : begin
        result = input_62;
      end
      7'b0111111 : begin
        result = input_63;
      end
      7'b1000000 : begin
        result = input_64;
      end
      7'b1000001 : begin
        result = input_65;
      end
      7'b1000010 : begin
        result = input_66;
      end
      7'b1000011 : begin
        result = input_67;
      end
      7'b1000100 : begin
        result = input_68;
      end
      7'b1000101 : begin
        result = input_69;
      end
      7'b1000110 : begin
        result = input_70;
      end
      7'b1000111 : begin
        result = input_71;
      end
      7'b1001000 : begin
        result = input_72;
      end
      7'b1001001 : begin
        result = input_73;
      end
      7'b1001010 : begin
        result = input_74;
      end
      7'b1001011 : begin
        result = input_75;
      end
      7'b1001100 : begin
        result = input_76;
      end
      7'b1001101 : begin
        result = input_77;
      end
      7'b1001110 : begin
        result = input_78;
      end
      7'b1001111 : begin
        result = input_79;
      end
      7'b1010000 : begin
        result = input_80;
      end
      7'b1010001 : begin
        result = input_81;
      end
      7'b1010010 : begin
        result = input_82;
      end
      7'b1010011 : begin
        result = input_83;
      end
      7'b1010100 : begin
        result = input_84;
      end
      7'b1010101 : begin
        result = input_85;
      end
      7'b1010110 : begin
        result = input_86;
      end
      7'b1010111 : begin
        result = input_87;
      end
      7'b1011000 : begin
        result = input_88;
      end
      7'b1011001 : begin
        result = input_89;
      end
      7'b1011010 : begin
        result = input_90;
      end
      7'b1011011 : begin
        result = input_91;
      end
      7'b1011100 : begin
        result = input_92;
      end
      7'b1011101 : begin
        result = input_93;
      end
      7'b1011110 : begin
        result = input_94;
      end
      7'b1011111 : begin
        result = input_95;
      end
      7'b1100000 : begin
        result = input_96;
      end
      7'b1100001 : begin
        result = input_97;
      end
      7'b1100010 : begin
        result = input_98;
      end
      default : begin
        result = input_99;
      end
    endcase
    MUX_v_22_100_2 = result;
  end
  endfunction


  function automatic [21:0] MUX_v_22_2_2;
    input [21:0] input_0;
    input [21:0] input_1;
    input [0:0] sel;
    reg [21:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_22_2_2 = result;
  end
  endfunction


  function automatic [22:0] MUX_v_23_2_2;
    input [22:0] input_0;
    input [22:0] input_1;
    input [0:0] sel;
    reg [22:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_23_2_2 = result;
  end
  endfunction


  function automatic [23:0] MUX_v_24_2_2;
    input [23:0] input_0;
    input [23:0] input_1;
    input [0:0] sel;
    reg [23:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_24_2_2 = result;
  end
  endfunction


  function automatic [1:0] MUX_v_2_2_2;
    input [1:0] input_0;
    input [1:0] input_1;
    input [0:0] sel;
    reg [1:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_2_2_2 = result;
  end
  endfunction


  function automatic [31:0] MUX_v_32_2_2;
    input [31:0] input_0;
    input [31:0] input_1;
    input [0:0] sel;
    reg [31:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_32_2_2 = result;
  end
  endfunction


  function automatic [3:0] MUX_v_4_2_2;
    input [3:0] input_0;
    input [3:0] input_1;
    input [0:0] sel;
    reg [3:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_4_2_2 = result;
  end
  endfunction


  function automatic [4:0] MUX_v_5_2_2;
    input [4:0] input_0;
    input [4:0] input_1;
    input [0:0] sel;
    reg [4:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_5_2_2 = result;
  end
  endfunction


  function automatic [6:0] MUX_v_7_2_2;
    input [6:0] input_0;
    input [6:0] input_1;
    input [0:0] sel;
    reg [6:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_7_2_2 = result;
  end
  endfunction


  function automatic [7:0] MUX_v_8_100_2;
    input [7:0] input_0;
    input [7:0] input_1;
    input [7:0] input_2;
    input [7:0] input_3;
    input [7:0] input_4;
    input [7:0] input_5;
    input [7:0] input_6;
    input [7:0] input_7;
    input [7:0] input_8;
    input [7:0] input_9;
    input [7:0] input_10;
    input [7:0] input_11;
    input [7:0] input_12;
    input [7:0] input_13;
    input [7:0] input_14;
    input [7:0] input_15;
    input [7:0] input_16;
    input [7:0] input_17;
    input [7:0] input_18;
    input [7:0] input_19;
    input [7:0] input_20;
    input [7:0] input_21;
    input [7:0] input_22;
    input [7:0] input_23;
    input [7:0] input_24;
    input [7:0] input_25;
    input [7:0] input_26;
    input [7:0] input_27;
    input [7:0] input_28;
    input [7:0] input_29;
    input [7:0] input_30;
    input [7:0] input_31;
    input [7:0] input_32;
    input [7:0] input_33;
    input [7:0] input_34;
    input [7:0] input_35;
    input [7:0] input_36;
    input [7:0] input_37;
    input [7:0] input_38;
    input [7:0] input_39;
    input [7:0] input_40;
    input [7:0] input_41;
    input [7:0] input_42;
    input [7:0] input_43;
    input [7:0] input_44;
    input [7:0] input_45;
    input [7:0] input_46;
    input [7:0] input_47;
    input [7:0] input_48;
    input [7:0] input_49;
    input [7:0] input_50;
    input [7:0] input_51;
    input [7:0] input_52;
    input [7:0] input_53;
    input [7:0] input_54;
    input [7:0] input_55;
    input [7:0] input_56;
    input [7:0] input_57;
    input [7:0] input_58;
    input [7:0] input_59;
    input [7:0] input_60;
    input [7:0] input_61;
    input [7:0] input_62;
    input [7:0] input_63;
    input [7:0] input_64;
    input [7:0] input_65;
    input [7:0] input_66;
    input [7:0] input_67;
    input [7:0] input_68;
    input [7:0] input_69;
    input [7:0] input_70;
    input [7:0] input_71;
    input [7:0] input_72;
    input [7:0] input_73;
    input [7:0] input_74;
    input [7:0] input_75;
    input [7:0] input_76;
    input [7:0] input_77;
    input [7:0] input_78;
    input [7:0] input_79;
    input [7:0] input_80;
    input [7:0] input_81;
    input [7:0] input_82;
    input [7:0] input_83;
    input [7:0] input_84;
    input [7:0] input_85;
    input [7:0] input_86;
    input [7:0] input_87;
    input [7:0] input_88;
    input [7:0] input_89;
    input [7:0] input_90;
    input [7:0] input_91;
    input [7:0] input_92;
    input [7:0] input_93;
    input [7:0] input_94;
    input [7:0] input_95;
    input [7:0] input_96;
    input [7:0] input_97;
    input [7:0] input_98;
    input [7:0] input_99;
    input [6:0] sel;
    reg [7:0] result;
  begin
    case (sel)
      7'b0000000 : begin
        result = input_0;
      end
      7'b0000001 : begin
        result = input_1;
      end
      7'b0000010 : begin
        result = input_2;
      end
      7'b0000011 : begin
        result = input_3;
      end
      7'b0000100 : begin
        result = input_4;
      end
      7'b0000101 : begin
        result = input_5;
      end
      7'b0000110 : begin
        result = input_6;
      end
      7'b0000111 : begin
        result = input_7;
      end
      7'b0001000 : begin
        result = input_8;
      end
      7'b0001001 : begin
        result = input_9;
      end
      7'b0001010 : begin
        result = input_10;
      end
      7'b0001011 : begin
        result = input_11;
      end
      7'b0001100 : begin
        result = input_12;
      end
      7'b0001101 : begin
        result = input_13;
      end
      7'b0001110 : begin
        result = input_14;
      end
      7'b0001111 : begin
        result = input_15;
      end
      7'b0010000 : begin
        result = input_16;
      end
      7'b0010001 : begin
        result = input_17;
      end
      7'b0010010 : begin
        result = input_18;
      end
      7'b0010011 : begin
        result = input_19;
      end
      7'b0010100 : begin
        result = input_20;
      end
      7'b0010101 : begin
        result = input_21;
      end
      7'b0010110 : begin
        result = input_22;
      end
      7'b0010111 : begin
        result = input_23;
      end
      7'b0011000 : begin
        result = input_24;
      end
      7'b0011001 : begin
        result = input_25;
      end
      7'b0011010 : begin
        result = input_26;
      end
      7'b0011011 : begin
        result = input_27;
      end
      7'b0011100 : begin
        result = input_28;
      end
      7'b0011101 : begin
        result = input_29;
      end
      7'b0011110 : begin
        result = input_30;
      end
      7'b0011111 : begin
        result = input_31;
      end
      7'b0100000 : begin
        result = input_32;
      end
      7'b0100001 : begin
        result = input_33;
      end
      7'b0100010 : begin
        result = input_34;
      end
      7'b0100011 : begin
        result = input_35;
      end
      7'b0100100 : begin
        result = input_36;
      end
      7'b0100101 : begin
        result = input_37;
      end
      7'b0100110 : begin
        result = input_38;
      end
      7'b0100111 : begin
        result = input_39;
      end
      7'b0101000 : begin
        result = input_40;
      end
      7'b0101001 : begin
        result = input_41;
      end
      7'b0101010 : begin
        result = input_42;
      end
      7'b0101011 : begin
        result = input_43;
      end
      7'b0101100 : begin
        result = input_44;
      end
      7'b0101101 : begin
        result = input_45;
      end
      7'b0101110 : begin
        result = input_46;
      end
      7'b0101111 : begin
        result = input_47;
      end
      7'b0110000 : begin
        result = input_48;
      end
      7'b0110001 : begin
        result = input_49;
      end
      7'b0110010 : begin
        result = input_50;
      end
      7'b0110011 : begin
        result = input_51;
      end
      7'b0110100 : begin
        result = input_52;
      end
      7'b0110101 : begin
        result = input_53;
      end
      7'b0110110 : begin
        result = input_54;
      end
      7'b0110111 : begin
        result = input_55;
      end
      7'b0111000 : begin
        result = input_56;
      end
      7'b0111001 : begin
        result = input_57;
      end
      7'b0111010 : begin
        result = input_58;
      end
      7'b0111011 : begin
        result = input_59;
      end
      7'b0111100 : begin
        result = input_60;
      end
      7'b0111101 : begin
        result = input_61;
      end
      7'b0111110 : begin
        result = input_62;
      end
      7'b0111111 : begin
        result = input_63;
      end
      7'b1000000 : begin
        result = input_64;
      end
      7'b1000001 : begin
        result = input_65;
      end
      7'b1000010 : begin
        result = input_66;
      end
      7'b1000011 : begin
        result = input_67;
      end
      7'b1000100 : begin
        result = input_68;
      end
      7'b1000101 : begin
        result = input_69;
      end
      7'b1000110 : begin
        result = input_70;
      end
      7'b1000111 : begin
        result = input_71;
      end
      7'b1001000 : begin
        result = input_72;
      end
      7'b1001001 : begin
        result = input_73;
      end
      7'b1001010 : begin
        result = input_74;
      end
      7'b1001011 : begin
        result = input_75;
      end
      7'b1001100 : begin
        result = input_76;
      end
      7'b1001101 : begin
        result = input_77;
      end
      7'b1001110 : begin
        result = input_78;
      end
      7'b1001111 : begin
        result = input_79;
      end
      7'b1010000 : begin
        result = input_80;
      end
      7'b1010001 : begin
        result = input_81;
      end
      7'b1010010 : begin
        result = input_82;
      end
      7'b1010011 : begin
        result = input_83;
      end
      7'b1010100 : begin
        result = input_84;
      end
      7'b1010101 : begin
        result = input_85;
      end
      7'b1010110 : begin
        result = input_86;
      end
      7'b1010111 : begin
        result = input_87;
      end
      7'b1011000 : begin
        result = input_88;
      end
      7'b1011001 : begin
        result = input_89;
      end
      7'b1011010 : begin
        result = input_90;
      end
      7'b1011011 : begin
        result = input_91;
      end
      7'b1011100 : begin
        result = input_92;
      end
      7'b1011101 : begin
        result = input_93;
      end
      7'b1011110 : begin
        result = input_94;
      end
      7'b1011111 : begin
        result = input_95;
      end
      7'b1100000 : begin
        result = input_96;
      end
      7'b1100001 : begin
        result = input_97;
      end
      7'b1100010 : begin
        result = input_98;
      end
      default : begin
        result = input_99;
      end
    endcase
    MUX_v_8_100_2 = result;
  end
  endfunction


  function automatic [7:0] MUX_v_8_2_2;
    input [7:0] input_0;
    input [7:0] input_1;
    input [0:0] sel;
    reg [7:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_8_2_2 = result;
  end
  endfunction


  function automatic [8:0] MUX_v_9_2_2;
    input [8:0] input_0;
    input [8:0] input_1;
    input [0:0] sel;
    reg [8:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_9_2_2 = result;
  end
  endfunction


  function automatic [0:0] readslicef_10_1_9;
    input [9:0] vector;
    reg [9:0] tmp;
  begin
    tmp = vector >> 9;
    readslicef_10_1_9 = tmp[0:0];
  end
  endfunction


  function automatic [0:0] readslicef_33_1_32;
    input [32:0] vector;
    reg [32:0] tmp;
  begin
    tmp = vector >> 32;
    readslicef_33_1_32 = tmp[0:0];
  end
  endfunction


  function automatic [0:0] readslicef_9_1_8;
    input [8:0] vector;
    reg [8:0] tmp;
  begin
    tmp = vector >> 8;
    readslicef_9_1_8 = tmp[0:0];
  end
  endfunction


  function automatic [25:0] signext_26_25;
    input [24:0] vector;
  begin
    signext_26_25= {{1{vector[24]}}, vector};
  end
  endfunction


  function automatic [27:0] signext_28_27;
    input [26:0] vector;
  begin
    signext_28_27= {{1{vector[26]}}, vector};
  end
  endfunction


  function automatic [31:0] signext_32_25;
    input [24:0] vector;
  begin
    signext_32_25= {{7{vector[24]}}, vector};
  end
  endfunction


  function automatic [9:0] conv_s2s_6_10 ;
    input [5:0]  vector ;
  begin
    conv_s2s_6_10 = {{4{vector[5]}}, vector};
  end
  endfunction


  function automatic [8:0] conv_s2s_8_9 ;
    input [7:0]  vector ;
  begin
    conv_s2s_8_9 = {vector[7], vector};
  end
  endfunction


  function automatic [25:0] conv_s2s_25_26 ;
    input [24:0]  vector ;
  begin
    conv_s2s_25_26 = {vector[24], vector};
  end
  endfunction


  function automatic [32:0] conv_s2u_32_33 ;
    input [31:0]  vector ;
  begin
    conv_s2u_32_33 = {vector[31], vector};
  end
  endfunction


  function automatic [9:0] conv_u2s_1_10 ;
    input [0:0]  vector ;
  begin
    conv_u2s_1_10 = {{9{1'b0}}, vector};
  end
  endfunction


  function automatic [8:0] conv_u2s_5_9 ;
    input [4:0]  vector ;
  begin
    conv_u2s_5_9 = {{4{1'b0}}, vector};
  end
  endfunction


  function automatic [8:0] conv_u2s_8_9 ;
    input [7:0]  vector ;
  begin
    conv_u2s_8_9 =  {1'b0, vector};
  end
  endfunction


  function automatic [9:0] conv_u2s_9_10 ;
    input [8:0]  vector ;
  begin
    conv_u2s_9_10 =  {1'b0, vector};
  end
  endfunction


  function automatic [8:0] conv_u2u_1_9 ;
    input [0:0]  vector ;
  begin
    conv_u2u_1_9 = {{8{1'b0}}, vector};
  end
  endfunction


  function automatic [32:0] conv_u2u_1_33 ;
    input [0:0]  vector ;
  begin
    conv_u2u_1_33 = {{32{1'b0}}, vector};
  end
  endfunction


  function automatic [24:0] conv_u2u_5_25 ;
    input [4:0]  vector ;
  begin
    conv_u2u_5_25 = {{20{1'b0}}, vector};
  end
  endfunction


  function automatic [8:0] conv_u2u_8_9 ;
    input [7:0]  vector ;
  begin
    conv_u2u_8_9 = {1'b0, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    main_core
// ------------------------------------------------------------------


module main_core (
  clk, rst, return_rsc_dat, return_rsc_triosy_lz, feature_cns_dat, feature_cns_vld,
      feature_cns_rdy, weight_cns_dat, weight_cns_vld, weight_cns_rdy, hist_cns_dat,
      hist_cns_vld, hist_cns_rdy, out_cns_dat, out_cns_vld, out_cns_rdy
);
  input clk;
  input rst;
  output [31:0] return_rsc_dat;
  output return_rsc_triosy_lz;
  output [31:0] feature_cns_dat;
  output feature_cns_vld;
  input feature_cns_rdy;
  output [31:0] weight_cns_dat;
  output weight_cns_vld;
  input weight_cns_rdy;
  output [31:0] hist_cns_dat;
  output hist_cns_vld;
  input hist_cns_rdy;
  input [31:0] out_cns_dat;
  input out_cns_vld;
  output out_cns_rdy;


  // Interconnect Declarations
  wire [31:0] return_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_v1 #(.rscid(32'sd12),
  .width(32'sd32)) return_rsci (
      .idat(return_rsci_idat),
      .dat(return_rsc_dat)
    );
  main_core_core main_core_core_inst (
      .clk(clk),
      .rst(rst),
      .return_rsc_triosy_lz(return_rsc_triosy_lz),
      .feature_cns_dat(feature_cns_dat),
      .feature_cns_vld(feature_cns_vld),
      .feature_cns_rdy(feature_cns_rdy),
      .weight_cns_dat(weight_cns_dat),
      .weight_cns_vld(weight_cns_vld),
      .weight_cns_rdy(weight_cns_rdy),
      .hist_cns_dat(hist_cns_dat),
      .hist_cns_vld(hist_cns_vld),
      .hist_cns_rdy(hist_cns_rdy),
      .out_cns_dat(out_cns_dat),
      .out_cns_vld(out_cns_vld),
      .out_cns_rdy(out_cns_rdy),
      .return_rsci_idat(return_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    histogram
// ------------------------------------------------------------------


module histogram (
  clk, rst, feature_rsc_dat, feature_rsc_vld, feature_rsc_rdy, weight_rsc_dat, weight_rsc_vld,
      weight_rsc_rdy, hist_rsc_dat, hist_rsc_vld, hist_rsc_rdy, n_rsc_dat, n_rsc_triosy_lz,
      out_rsc_dat, out_rsc_vld, out_rsc_rdy
);
  input clk;
  input rst;
  input [31:0] feature_rsc_dat;
  input feature_rsc_vld;
  output feature_rsc_rdy;
  input [31:0] weight_rsc_dat;
  input weight_rsc_vld;
  output weight_rsc_rdy;
  input [31:0] hist_rsc_dat;
  input hist_rsc_vld;
  output hist_rsc_rdy;
  input [31:0] n_rsc_dat;
  output n_rsc_triosy_lz;
  output [31:0] out_rsc_dat;
  output out_rsc_vld;
  input out_rsc_rdy;


  // Interconnect Declarations
  wire [31:0] n_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd4),
  .width(32'sd32)) n_rsci (
      .dat(n_rsc_dat),
      .idat(n_rsci_idat)
    );
  histogram_core histogram_core_inst (
      .clk(clk),
      .rst(rst),
      .feature_rsc_dat(feature_rsc_dat),
      .feature_rsc_vld(feature_rsc_vld),
      .feature_rsc_rdy(feature_rsc_rdy),
      .weight_rsc_dat(weight_rsc_dat),
      .weight_rsc_vld(weight_rsc_vld),
      .weight_rsc_rdy(weight_rsc_rdy),
      .hist_rsc_dat(hist_rsc_dat),
      .hist_rsc_vld(hist_rsc_vld),
      .hist_rsc_rdy(hist_rsc_rdy),
      .n_rsc_triosy_lz(n_rsc_triosy_lz),
      .out_rsc_dat(out_rsc_dat),
      .out_rsc_vld(out_rsc_vld),
      .out_rsc_rdy(out_rsc_rdy),
      .n_rsci_idat(n_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    main
// ------------------------------------------------------------------


module main (
  clk, rst, return_rsc_dat, return_rsc_triosy_lz
);
  input clk;
  input rst;
  output [31:0] return_rsc_dat;
  output return_rsc_triosy_lz;


  // Interconnect Declarations
  wire [31:0] feature_rsc_dat_nhistogram_inst;
  wire feature_rsc_vld_nhistogram_inst;
  wire [31:0] weight_rsc_dat_nhistogram_inst;
  wire weight_rsc_vld_nhistogram_inst;
  wire [31:0] hist_rsc_dat_nhistogram_inst;
  wire hist_rsc_vld_nhistogram_inst;
  wire [31:0] out_rsc_dat_nhistogram_inst;
  wire out_rsc_rdy_nhistogram_inst;
  wire [31:0] return_rsc_dat_nmain_core_inst;
  wire [31:0] feature_cns_dat_nmain_core_inst;
  wire feature_cns_rdy_nmain_core_inst;
  wire [31:0] weight_cns_dat_nmain_core_inst;
  wire weight_cns_rdy_nmain_core_inst;
  wire [31:0] hist_cns_dat_nmain_core_inst;
  wire hist_cns_rdy_nmain_core_inst;
  wire [31:0] out_cns_dat_nmain_core_inst;
  wire out_cns_vld_nmain_core_inst;
  wire feature_rsc_rdy_nhistogram_inst_bud;
  wire feature_cns_vld_nmain_core_inst_bud;
  wire weight_rsc_rdy_nhistogram_inst_bud;
  wire weight_cns_vld_nmain_core_inst_bud;
  wire hist_rsc_rdy_nhistogram_inst_bud;
  wire hist_cns_vld_nmain_core_inst_bud;
  wire n_rsc_triosy_lz_nhistogram_inst_bud;
  wire out_rsc_vld_nhistogram_inst_bud;
  wire out_cns_rdy_nmain_core_inst_bud;
  wire return_rsc_triosy_lz_nmain_core_inst_bud;
  wire feature_unc_2;
  wire feature_idle;
  wire weight_unc_2;
  wire weight_idle;
  wire hist_unc_2;
  wire hist_idle;
  wire out_unc_2;
  wire out_idle;


  // Interconnect Declarations for Component Instantiations 
  ccs_pipe_v5 #(.rscid(32'sd8),
  .width(32'sd32),
  .sz_width(32'sd1),
  .fifo_sz(32'sd100),
  .log2_sz(32'sd7),
  .ph_clk(32'sd1),
  .ph_en(32'sd0),
  .ph_arst(32'sd0),
  .ph_srst(32'sd1)) feature_cns_pipe (
      .clk(clk),
      .en(1'b0),
      .arst(1'b1),
      .srst(rst),
      .din_rdy(feature_cns_rdy_nmain_core_inst),
      .din_vld(feature_cns_vld_nmain_core_inst_bud),
      .din(feature_cns_dat_nmain_core_inst),
      .dout_rdy(feature_rsc_rdy_nhistogram_inst_bud),
      .dout_vld(feature_rsc_vld_nhistogram_inst),
      .dout(feature_rsc_dat_nhistogram_inst),
      .sz(feature_unc_2),
      .sz_req(1'b0),
      .is_idle(feature_idle)
    );
  ccs_pipe_v5 #(.rscid(32'sd9),
  .width(32'sd32),
  .sz_width(32'sd1),
  .fifo_sz(32'sd100),
  .log2_sz(32'sd7),
  .ph_clk(32'sd1),
  .ph_en(32'sd0),
  .ph_arst(32'sd0),
  .ph_srst(32'sd1)) weight_cns_pipe (
      .clk(clk),
      .en(1'b0),
      .arst(1'b1),
      .srst(rst),
      .din_rdy(weight_cns_rdy_nmain_core_inst),
      .din_vld(weight_cns_vld_nmain_core_inst_bud),
      .din(weight_cns_dat_nmain_core_inst),
      .dout_rdy(weight_rsc_rdy_nhistogram_inst_bud),
      .dout_vld(weight_rsc_vld_nhistogram_inst),
      .dout(weight_rsc_dat_nhistogram_inst),
      .sz(weight_unc_2),
      .sz_req(1'b0),
      .is_idle(weight_idle)
    );
  ccs_pipe_v5 #(.rscid(32'sd10),
  .width(32'sd32),
  .sz_width(32'sd1),
  .fifo_sz(32'sd1),
  .log2_sz(32'sd0),
  .ph_clk(32'sd1),
  .ph_en(32'sd0),
  .ph_arst(32'sd0),
  .ph_srst(32'sd1)) hist_cns_pipe (
      .clk(clk),
      .en(1'b0),
      .arst(1'b1),
      .srst(rst),
      .din_rdy(hist_cns_rdy_nmain_core_inst),
      .din_vld(hist_cns_vld_nmain_core_inst_bud),
      .din(hist_cns_dat_nmain_core_inst),
      .dout_rdy(hist_rsc_rdy_nhistogram_inst_bud),
      .dout_vld(hist_rsc_vld_nhistogram_inst),
      .dout(hist_rsc_dat_nhistogram_inst),
      .sz(hist_unc_2),
      .sz_req(1'b0),
      .is_idle(hist_idle)
    );
  ccs_pipe_v5 #(.rscid(32'sd11),
  .width(32'sd32),
  .sz_width(32'sd1),
  .fifo_sz(32'sd1),
  .log2_sz(32'sd0),
  .ph_clk(32'sd1),
  .ph_en(32'sd0),
  .ph_arst(32'sd0),
  .ph_srst(32'sd1)) out_cns_pipe (
      .clk(clk),
      .en(1'b0),
      .arst(1'b1),
      .srst(rst),
      .din_rdy(out_rsc_rdy_nhistogram_inst),
      .din_vld(out_rsc_vld_nhistogram_inst_bud),
      .din(out_rsc_dat_nhistogram_inst),
      .dout_rdy(out_cns_rdy_nmain_core_inst_bud),
      .dout_vld(out_cns_vld_nmain_core_inst),
      .dout(out_cns_dat_nmain_core_inst),
      .sz(out_unc_2),
      .sz_req(1'b0),
      .is_idle(out_idle)
    );
  histogram histogram_inst (
      .clk(clk),
      .rst(rst),
      .feature_rsc_dat(feature_rsc_dat_nhistogram_inst),
      .feature_rsc_vld(feature_rsc_vld_nhistogram_inst),
      .feature_rsc_rdy(feature_rsc_rdy_nhistogram_inst_bud),
      .weight_rsc_dat(weight_rsc_dat_nhistogram_inst),
      .weight_rsc_vld(weight_rsc_vld_nhistogram_inst),
      .weight_rsc_rdy(weight_rsc_rdy_nhistogram_inst_bud),
      .hist_rsc_dat(hist_rsc_dat_nhistogram_inst),
      .hist_rsc_vld(hist_rsc_vld_nhistogram_inst),
      .hist_rsc_rdy(hist_rsc_rdy_nhistogram_inst_bud),
      .n_rsc_dat(32'b00000000000000000000000001100100),
      .n_rsc_triosy_lz(n_rsc_triosy_lz_nhistogram_inst_bud),
      .out_rsc_dat(out_rsc_dat_nhistogram_inst),
      .out_rsc_vld(out_rsc_vld_nhistogram_inst_bud),
      .out_rsc_rdy(out_rsc_rdy_nhistogram_inst)
    );
  main_core main_core_inst (
      .clk(clk),
      .rst(rst),
      .return_rsc_dat(return_rsc_dat_nmain_core_inst),
      .return_rsc_triosy_lz(return_rsc_triosy_lz_nmain_core_inst_bud),
      .feature_cns_dat(feature_cns_dat_nmain_core_inst),
      .feature_cns_vld(feature_cns_vld_nmain_core_inst_bud),
      .feature_cns_rdy(feature_cns_rdy_nmain_core_inst),
      .weight_cns_dat(weight_cns_dat_nmain_core_inst),
      .weight_cns_vld(weight_cns_vld_nmain_core_inst_bud),
      .weight_cns_rdy(weight_cns_rdy_nmain_core_inst),
      .hist_cns_dat(hist_cns_dat_nmain_core_inst),
      .hist_cns_vld(hist_cns_vld_nmain_core_inst_bud),
      .hist_cns_rdy(hist_cns_rdy_nmain_core_inst),
      .out_cns_dat(out_cns_dat_nmain_core_inst),
      .out_cns_vld(out_cns_vld_nmain_core_inst),
      .out_cns_rdy(out_cns_rdy_nmain_core_inst_bud)
    );
  assign return_rsc_dat = return_rsc_dat_nmain_core_inst;
  assign return_rsc_triosy_lz = return_rsc_triosy_lz_nmain_core_inst_bud;
endmodule



