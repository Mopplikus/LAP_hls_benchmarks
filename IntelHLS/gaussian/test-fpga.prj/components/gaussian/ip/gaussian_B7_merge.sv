// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 21.4 (Release Build #53.1)
// 
// Legal Notice: Copyright 2021 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from gaussian_B7_merge
// Created for function/kernel gaussian
// SystemVerilog created on Fri Apr  7 17:25:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_B7_merge (
    input wire [31:0] in_add36_pop1569_0,
    input wire [31:0] in_add36_pop1569_1,
    input wire [31:0] in_add57_0,
    input wire [31:0] in_add57_1,
    input wire [0:0] in_cmp41638_pop1661_0,
    input wire [0:0] in_cmp41638_pop1661_1,
    input wire [0:0] in_cmp41660_0,
    input wire [0:0] in_cmp41660_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_fpga_indvars_iv732_pop1367_0,
    input wire [31:0] in_fpga_indvars_iv732_pop1367_1,
    input wire [31:0] in_fpga_indvars_iv748_0,
    input wire [31:0] in_fpga_indvars_iv748_1,
    input wire [31:0] in_fpga_indvars_iv930_pop1266_0,
    input wire [31:0] in_fpga_indvars_iv930_pop1266_1,
    input wire [31:0] in_fpga_indvars_iv945_0,
    input wire [31:0] in_fpga_indvars_iv945_1,
    input wire [31:0] in_i_017_pop963_0,
    input wire [31:0] in_i_017_pop963_1,
    input wire [31:0] in_j_01834_pop1468_0,
    input wire [31:0] in_j_01834_pop1468_1,
    input wire [31:0] in_j_01851_0,
    input wire [31:0] in_j_01851_1,
    input wire [0:0] in_memdep_phi4_pop727_pop1165_0,
    input wire [0:0] in_memdep_phi4_pop727_pop1165_1,
    input wire [0:0] in_memdep_phi4_pop72954_0,
    input wire [0:0] in_memdep_phi4_pop72954_1,
    input wire [0:0] in_memdep_phi_pop1064_0,
    input wire [0:0] in_memdep_phi_pop1064_1,
    input wire [0:0] in_notcmp1762_0,
    input wire [0:0] in_notcmp1762_1,
    input wire [0:0] in_stall_in,
    input wire [32:0] in_unnamed_gaussian5_0,
    input wire [32:0] in_unnamed_gaussian5_1,
    input wire [0:0] in_unnamed_gaussian6_0,
    input wire [0:0] in_unnamed_gaussian6_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add36_pop1569,
    output wire [31:0] out_add57,
    output wire [0:0] out_cmp41638_pop1661,
    output wire [0:0] out_cmp41660,
    output wire [0:0] out_forked,
    output wire [31:0] out_fpga_indvars_iv732_pop1367,
    output wire [31:0] out_fpga_indvars_iv748,
    output wire [31:0] out_fpga_indvars_iv930_pop1266,
    output wire [31:0] out_fpga_indvars_iv945,
    output wire [31:0] out_i_017_pop963,
    output wire [31:0] out_j_01834_pop1468,
    output wire [31:0] out_j_01851,
    output wire [0:0] out_memdep_phi4_pop727_pop1165,
    output wire [0:0] out_memdep_phi4_pop72954,
    output wire [0:0] out_memdep_phi_pop1064,
    output wire [0:0] out_notcmp1762,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [32:0] out_unnamed_gaussian5,
    output wire [0:0] out_unnamed_gaussian6,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add36_pop1569_mux_s;
    reg [31:0] add36_pop1569_mux_q;
    wire [0:0] add57_mux_s;
    reg [31:0] add57_mux_q;
    wire [0:0] cmp41638_pop1661_mux_s;
    reg [0:0] cmp41638_pop1661_mux_q;
    wire [0:0] cmp41660_mux_s;
    reg [0:0] cmp41660_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] fpga_indvars_iv732_pop1367_mux_s;
    reg [31:0] fpga_indvars_iv732_pop1367_mux_q;
    wire [0:0] fpga_indvars_iv748_mux_s;
    reg [31:0] fpga_indvars_iv748_mux_q;
    wire [0:0] fpga_indvars_iv930_pop1266_mux_s;
    reg [31:0] fpga_indvars_iv930_pop1266_mux_q;
    wire [0:0] fpga_indvars_iv945_mux_s;
    reg [31:0] fpga_indvars_iv945_mux_q;
    wire [0:0] i_017_pop963_mux_s;
    reg [31:0] i_017_pop963_mux_q;
    wire [0:0] j_01834_pop1468_mux_s;
    reg [31:0] j_01834_pop1468_mux_q;
    wire [0:0] j_01851_mux_s;
    reg [31:0] j_01851_mux_q;
    wire [0:0] memdep_phi4_pop727_pop1165_mux_s;
    reg [0:0] memdep_phi4_pop727_pop1165_mux_q;
    wire [0:0] memdep_phi4_pop72954_mux_s;
    reg [0:0] memdep_phi4_pop72954_mux_q;
    wire [0:0] memdep_phi_pop1064_mux_s;
    reg [0:0] memdep_phi_pop1064_mux_q;
    wire [0:0] notcmp1762_mux_s;
    reg [0:0] notcmp1762_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_gaussian5_mux_s;
    reg [32:0] unnamed_gaussian5_mux_q;
    wire [0:0] unnamed_gaussian6_mux_s;
    reg [0:0] unnamed_gaussian6_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add36_pop1569_mux(MUX,2)
    assign add36_pop1569_mux_s = in_valid_in_0;
    always @(add36_pop1569_mux_s or in_add36_pop1569_1 or in_add36_pop1569_0)
    begin
        unique case (add36_pop1569_mux_s)
            1'b0 : add36_pop1569_mux_q = in_add36_pop1569_1;
            1'b1 : add36_pop1569_mux_q = in_add36_pop1569_0;
            default : add36_pop1569_mux_q = 32'b0;
        endcase
    end

    // out_add36_pop1569(GPOUT,57)
    assign out_add36_pop1569 = add36_pop1569_mux_q;

    // add57_mux(MUX,3)
    assign add57_mux_s = in_valid_in_0;
    always @(add57_mux_s or in_add57_1 or in_add57_0)
    begin
        unique case (add57_mux_s)
            1'b0 : add57_mux_q = in_add57_1;
            1'b1 : add57_mux_q = in_add57_0;
            default : add57_mux_q = 32'b0;
        endcase
    end

    // out_add57(GPOUT,58)
    assign out_add57 = add57_mux_q;

    // cmp41638_pop1661_mux(MUX,4)
    assign cmp41638_pop1661_mux_s = in_valid_in_0;
    always @(cmp41638_pop1661_mux_s or in_cmp41638_pop1661_1 or in_cmp41638_pop1661_0)
    begin
        unique case (cmp41638_pop1661_mux_s)
            1'b0 : cmp41638_pop1661_mux_q = in_cmp41638_pop1661_1;
            1'b1 : cmp41638_pop1661_mux_q = in_cmp41638_pop1661_0;
            default : cmp41638_pop1661_mux_q = 1'b0;
        endcase
    end

    // out_cmp41638_pop1661(GPOUT,59)
    assign out_cmp41638_pop1661 = cmp41638_pop1661_mux_q;

    // cmp41660_mux(MUX,5)
    assign cmp41660_mux_s = in_valid_in_0;
    always @(cmp41660_mux_s or in_cmp41660_1 or in_cmp41660_0)
    begin
        unique case (cmp41660_mux_s)
            1'b0 : cmp41660_mux_q = in_cmp41660_1;
            1'b1 : cmp41660_mux_q = in_cmp41660_0;
            default : cmp41660_mux_q = 1'b0;
        endcase
    end

    // out_cmp41660(GPOUT,60)
    assign out_cmp41660 = cmp41660_mux_q;

    // forked_mux(MUX,6)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,61)
    assign out_forked = forked_mux_q;

    // fpga_indvars_iv732_pop1367_mux(MUX,7)
    assign fpga_indvars_iv732_pop1367_mux_s = in_valid_in_0;
    always @(fpga_indvars_iv732_pop1367_mux_s or in_fpga_indvars_iv732_pop1367_1 or in_fpga_indvars_iv732_pop1367_0)
    begin
        unique case (fpga_indvars_iv732_pop1367_mux_s)
            1'b0 : fpga_indvars_iv732_pop1367_mux_q = in_fpga_indvars_iv732_pop1367_1;
            1'b1 : fpga_indvars_iv732_pop1367_mux_q = in_fpga_indvars_iv732_pop1367_0;
            default : fpga_indvars_iv732_pop1367_mux_q = 32'b0;
        endcase
    end

    // out_fpga_indvars_iv732_pop1367(GPOUT,62)
    assign out_fpga_indvars_iv732_pop1367 = fpga_indvars_iv732_pop1367_mux_q;

    // fpga_indvars_iv748_mux(MUX,8)
    assign fpga_indvars_iv748_mux_s = in_valid_in_0;
    always @(fpga_indvars_iv748_mux_s or in_fpga_indvars_iv748_1 or in_fpga_indvars_iv748_0)
    begin
        unique case (fpga_indvars_iv748_mux_s)
            1'b0 : fpga_indvars_iv748_mux_q = in_fpga_indvars_iv748_1;
            1'b1 : fpga_indvars_iv748_mux_q = in_fpga_indvars_iv748_0;
            default : fpga_indvars_iv748_mux_q = 32'b0;
        endcase
    end

    // out_fpga_indvars_iv748(GPOUT,63)
    assign out_fpga_indvars_iv748 = fpga_indvars_iv748_mux_q;

    // fpga_indvars_iv930_pop1266_mux(MUX,9)
    assign fpga_indvars_iv930_pop1266_mux_s = in_valid_in_0;
    always @(fpga_indvars_iv930_pop1266_mux_s or in_fpga_indvars_iv930_pop1266_1 or in_fpga_indvars_iv930_pop1266_0)
    begin
        unique case (fpga_indvars_iv930_pop1266_mux_s)
            1'b0 : fpga_indvars_iv930_pop1266_mux_q = in_fpga_indvars_iv930_pop1266_1;
            1'b1 : fpga_indvars_iv930_pop1266_mux_q = in_fpga_indvars_iv930_pop1266_0;
            default : fpga_indvars_iv930_pop1266_mux_q = 32'b0;
        endcase
    end

    // out_fpga_indvars_iv930_pop1266(GPOUT,64)
    assign out_fpga_indvars_iv930_pop1266 = fpga_indvars_iv930_pop1266_mux_q;

    // fpga_indvars_iv945_mux(MUX,10)
    assign fpga_indvars_iv945_mux_s = in_valid_in_0;
    always @(fpga_indvars_iv945_mux_s or in_fpga_indvars_iv945_1 or in_fpga_indvars_iv945_0)
    begin
        unique case (fpga_indvars_iv945_mux_s)
            1'b0 : fpga_indvars_iv945_mux_q = in_fpga_indvars_iv945_1;
            1'b1 : fpga_indvars_iv945_mux_q = in_fpga_indvars_iv945_0;
            default : fpga_indvars_iv945_mux_q = 32'b0;
        endcase
    end

    // out_fpga_indvars_iv945(GPOUT,65)
    assign out_fpga_indvars_iv945 = fpga_indvars_iv945_mux_q;

    // i_017_pop963_mux(MUX,11)
    assign i_017_pop963_mux_s = in_valid_in_0;
    always @(i_017_pop963_mux_s or in_i_017_pop963_1 or in_i_017_pop963_0)
    begin
        unique case (i_017_pop963_mux_s)
            1'b0 : i_017_pop963_mux_q = in_i_017_pop963_1;
            1'b1 : i_017_pop963_mux_q = in_i_017_pop963_0;
            default : i_017_pop963_mux_q = 32'b0;
        endcase
    end

    // out_i_017_pop963(GPOUT,66)
    assign out_i_017_pop963 = i_017_pop963_mux_q;

    // j_01834_pop1468_mux(MUX,51)
    assign j_01834_pop1468_mux_s = in_valid_in_0;
    always @(j_01834_pop1468_mux_s or in_j_01834_pop1468_1 or in_j_01834_pop1468_0)
    begin
        unique case (j_01834_pop1468_mux_s)
            1'b0 : j_01834_pop1468_mux_q = in_j_01834_pop1468_1;
            1'b1 : j_01834_pop1468_mux_q = in_j_01834_pop1468_0;
            default : j_01834_pop1468_mux_q = 32'b0;
        endcase
    end

    // out_j_01834_pop1468(GPOUT,67)
    assign out_j_01834_pop1468 = j_01834_pop1468_mux_q;

    // j_01851_mux(MUX,52)
    assign j_01851_mux_s = in_valid_in_0;
    always @(j_01851_mux_s or in_j_01851_1 or in_j_01851_0)
    begin
        unique case (j_01851_mux_s)
            1'b0 : j_01851_mux_q = in_j_01851_1;
            1'b1 : j_01851_mux_q = in_j_01851_0;
            default : j_01851_mux_q = 32'b0;
        endcase
    end

    // out_j_01851(GPOUT,68)
    assign out_j_01851 = j_01851_mux_q;

    // memdep_phi4_pop727_pop1165_mux(MUX,53)
    assign memdep_phi4_pop727_pop1165_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop727_pop1165_mux_s or in_memdep_phi4_pop727_pop1165_1 or in_memdep_phi4_pop727_pop1165_0)
    begin
        unique case (memdep_phi4_pop727_pop1165_mux_s)
            1'b0 : memdep_phi4_pop727_pop1165_mux_q = in_memdep_phi4_pop727_pop1165_1;
            1'b1 : memdep_phi4_pop727_pop1165_mux_q = in_memdep_phi4_pop727_pop1165_0;
            default : memdep_phi4_pop727_pop1165_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop727_pop1165(GPOUT,69)
    assign out_memdep_phi4_pop727_pop1165 = memdep_phi4_pop727_pop1165_mux_q;

    // memdep_phi4_pop72954_mux(MUX,54)
    assign memdep_phi4_pop72954_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop72954_mux_s or in_memdep_phi4_pop72954_1 or in_memdep_phi4_pop72954_0)
    begin
        unique case (memdep_phi4_pop72954_mux_s)
            1'b0 : memdep_phi4_pop72954_mux_q = in_memdep_phi4_pop72954_1;
            1'b1 : memdep_phi4_pop72954_mux_q = in_memdep_phi4_pop72954_0;
            default : memdep_phi4_pop72954_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop72954(GPOUT,70)
    assign out_memdep_phi4_pop72954 = memdep_phi4_pop72954_mux_q;

    // memdep_phi_pop1064_mux(MUX,55)
    assign memdep_phi_pop1064_mux_s = in_valid_in_0;
    always @(memdep_phi_pop1064_mux_s or in_memdep_phi_pop1064_1 or in_memdep_phi_pop1064_0)
    begin
        unique case (memdep_phi_pop1064_mux_s)
            1'b0 : memdep_phi_pop1064_mux_q = in_memdep_phi_pop1064_1;
            1'b1 : memdep_phi_pop1064_mux_q = in_memdep_phi_pop1064_0;
            default : memdep_phi_pop1064_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop1064(GPOUT,71)
    assign out_memdep_phi_pop1064 = memdep_phi_pop1064_mux_q;

    // notcmp1762_mux(MUX,56)
    assign notcmp1762_mux_s = in_valid_in_0;
    always @(notcmp1762_mux_s or in_notcmp1762_1 or in_notcmp1762_0)
    begin
        unique case (notcmp1762_mux_s)
            1'b0 : notcmp1762_mux_q = in_notcmp1762_1;
            1'b1 : notcmp1762_mux_q = in_notcmp1762_0;
            default : notcmp1762_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1762(GPOUT,72)
    assign out_notcmp1762 = notcmp1762_mux_q;

    // valid_or(LOGICAL,82)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,78)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,73)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,79)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,74)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_gaussian5_mux(MUX,80)
    assign unnamed_gaussian5_mux_s = in_valid_in_0;
    always @(unnamed_gaussian5_mux_s or in_unnamed_gaussian5_1 or in_unnamed_gaussian5_0)
    begin
        unique case (unnamed_gaussian5_mux_s)
            1'b0 : unnamed_gaussian5_mux_q = in_unnamed_gaussian5_1;
            1'b1 : unnamed_gaussian5_mux_q = in_unnamed_gaussian5_0;
            default : unnamed_gaussian5_mux_q = 33'b0;
        endcase
    end

    // out_unnamed_gaussian5(GPOUT,75)
    assign out_unnamed_gaussian5 = unnamed_gaussian5_mux_q;

    // unnamed_gaussian6_mux(MUX,81)
    assign unnamed_gaussian6_mux_s = in_valid_in_0;
    always @(unnamed_gaussian6_mux_s or in_unnamed_gaussian6_1 or in_unnamed_gaussian6_0)
    begin
        unique case (unnamed_gaussian6_mux_s)
            1'b0 : unnamed_gaussian6_mux_q = in_unnamed_gaussian6_1;
            1'b1 : unnamed_gaussian6_mux_q = in_unnamed_gaussian6_0;
            default : unnamed_gaussian6_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_gaussian6(GPOUT,76)
    assign out_unnamed_gaussian6 = unnamed_gaussian6_mux_q;

    // out_valid_out(GPOUT,77)
    assign out_valid_out = valid_or_q;

endmodule
