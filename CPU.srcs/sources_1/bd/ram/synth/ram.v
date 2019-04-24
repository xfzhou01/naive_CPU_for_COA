//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Wed Apr 24 22:05:14 2019
//Host        : Hobo running 64-bit major release  (build 9200)
//Command     : generate_target ram.bd
//Design      : ram
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ram,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ram,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ram.hwdef" *) 
module ram
   (a_0,
    clk_0,
    d_0,
    spo_0,
    we_0);
  input [7:0]a_0;
  input clk_0;
  input [15:0]d_0;
  output [15:0]spo_0;
  input we_0;

  wire [7:0]a_0_1;
  wire clk_0_1;
  wire [15:0]d_0_1;
  wire [15:0]dist_mem_gen_1_spo;
  wire we_0_1;

  assign a_0_1 = a_0[7:0];
  assign clk_0_1 = clk_0;
  assign d_0_1 = d_0[15:0];
  assign spo_0[15:0] = dist_mem_gen_1_spo;
  assign we_0_1 = we_0;
  ram_dist_mem_gen_1_0 dist_mem_gen_1
       (.a(a_0_1),
        .clk(clk_0_1),
        .d(d_0_1),
        .spo(dist_mem_gen_1_spo),
        .we(we_0_1));
endmodule
