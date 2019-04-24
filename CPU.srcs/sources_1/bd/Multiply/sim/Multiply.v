//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Thu Apr 25 00:42:40 2019
//Host        : LAPTOP-IJ2NHTNA running 64-bit major release  (build 9200)
//Command     : generate_target Multiply.bd
//Design      : Multiply
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Multiply,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Multiply,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Multiply.hwdef" *) 
module Multiply
   (A_0,
    B_0,
    CLK_0,
    P_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A_0, LAYERED_METADATA undef" *) input [15:0]A_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B_0, LAYERED_METADATA undef" *) input [15:0]B_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN Multiply_CLK_0, FREQ_HZ 10000000, PHASE 0.000" *) input CLK_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.P_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.P_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 32}" *) output [31:0]P_0;

  wire [15:0]A_0_1;
  wire [15:0]B_0_1;
  wire CLK_0_1;
  wire [31:0]mult_gen_1_P;

  assign A_0_1 = A_0[15:0];
  assign B_0_1 = B_0[15:0];
  assign CLK_0_1 = CLK_0;
  assign P_0[31:0] = mult_gen_1_P;
  Multiply_mult_gen_1_0 mult_gen_1
       (.A(A_0_1),
        .B(B_0_1),
        .CLK(CLK_0_1),
        .P(mult_gen_1_P));
endmodule
