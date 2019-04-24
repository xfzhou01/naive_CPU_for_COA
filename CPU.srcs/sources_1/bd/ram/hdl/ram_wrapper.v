//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Wed Apr 24 22:05:14 2019
//Host        : Hobo running 64-bit major release  (build 9200)
//Command     : generate_target ram_wrapper.bd
//Design      : ram_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ram_wrapper
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

  wire [7:0]a_0;
  wire clk_0;
  wire [15:0]d_0;
  wire [15:0]spo_0;
  wire we_0;

  ram ram_i
       (.a_0(a_0),
        .clk_0(clk_0),
        .d_0(d_0),
        .spo_0(spo_0),
        .we_0(we_0));
endmodule
