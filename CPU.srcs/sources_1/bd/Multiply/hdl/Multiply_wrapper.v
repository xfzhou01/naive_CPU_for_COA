//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Thu Apr 25 00:42:40 2019
//Host        : LAPTOP-IJ2NHTNA running 64-bit major release  (build 9200)
//Command     : generate_target Multiply_wrapper.bd
//Design      : Multiply_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Multiply_wrapper
   (A_0,
    B_0,
    CLK_0,
    P_0);
  input [15:0]A_0;
  input [15:0]B_0;
  input CLK_0;
  output [31:0]P_0;

  wire [15:0]A_0;
  wire [15:0]B_0;
  wire CLK_0;
  wire [31:0]P_0;

  Multiply Multiply_i
       (.A_0(A_0),
        .B_0(B_0),
        .CLK_0(CLK_0),
        .P_0(P_0));
endmodule
