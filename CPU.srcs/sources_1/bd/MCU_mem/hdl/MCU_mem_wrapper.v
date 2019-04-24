//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Wed Apr 24 22:05:12 2019
//Host        : Hobo running 64-bit major release  (build 9200)
//Command     : generate_target MCU_mem_wrapper.bd
//Design      : MCU_mem_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MCU_mem_wrapper
   (a_0,
    spo_0);
  input [6:0]a_0;
  output [27:0]spo_0;

  wire [6:0]a_0;
  wire [27:0]spo_0;

  MCU_mem MCU_mem_i
       (.a_0(a_0),
        .spo_0(spo_0));
endmodule
