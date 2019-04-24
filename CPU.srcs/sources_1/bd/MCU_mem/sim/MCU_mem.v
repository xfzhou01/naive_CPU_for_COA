//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Wed Apr 24 22:05:12 2019
//Host        : Hobo running 64-bit major release  (build 9200)
//Command     : generate_target MCU_mem.bd
//Design      : MCU_mem
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "MCU_mem,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=MCU_mem,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "MCU_mem.hwdef" *) 
module MCU_mem
   (a_0,
    spo_0);
  input [6:0]a_0;
  output [27:0]spo_0;

  wire [6:0]a_0_1;
  wire [27:0]dist_mem_gen_0_spo;

  assign a_0_1 = a_0[6:0];
  assign spo_0[27:0] = dist_mem_gen_0_spo;
  MCU_mem_dist_mem_gen_0_1 dist_mem_gen_0
       (.a(a_0_1),
        .spo(dist_mem_gen_0_spo));
endmodule
