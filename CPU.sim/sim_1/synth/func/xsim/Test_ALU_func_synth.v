// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Mar 30 23:09:20 2019
// Host        : Hobo running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               G:/Vivado/CPU/CPU.sim/sim_1/synth/func/xsim/Test_ALU_func_synth.v
// Design      : ALU
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module ALU
   (CLK,
    ACC_IN,
    BR,
    CU,
    ACC_OUT,
    TAG_MUX);
  input CLK;
  input [15:0]ACC_IN;
  input [15:0]BR;
  input [31:0]CU;
  output [15:0]ACC_OUT;
  output TAG_MUX;

  wire [15:0]ACC_OUT;
  wire TAG_MUX;

  OBUFT \ACC_OUT_OBUF[0]_inst 
       (.I(1'b0),
        .O(ACC_OUT[0]),
        .T(1'b1));
  OBUFT \ACC_OUT_OBUF[10]_inst 
       (.I(1'b0),
        .O(ACC_OUT[10]),
        .T(1'b1));
  OBUFT \ACC_OUT_OBUF[11]_inst 
       (.I(1'b0),
        .O(ACC_OUT[11]),
        .T(1'b1));
  OBUFT \ACC_OUT_OBUF[12]_inst 
       (.I(1'b0),
        .O(ACC_OUT[12]),
        .T(1'b1));
  OBUFT \ACC_OUT_OBUF[13]_inst 
       (.I(1'b0),
        .O(ACC_OUT[13]),
        .T(1'b1));
  OBUFT \ACC_OUT_OBUF[14]_inst 
       (.I(1'b0),
        .O(ACC_OUT[14]),
        .T(1'b1));
  OBUFT \ACC_OUT_OBUF[15]_inst 
       (.I(1'b0),
        .O(ACC_OUT[15]),
        .T(1'b1));
  OBUFT \ACC_OUT_OBUF[1]_inst 
       (.I(1'b0),
        .O(ACC_OUT[1]),
        .T(1'b1));
  OBUFT \ACC_OUT_OBUF[2]_inst 
       (.I(1'b0),
        .O(ACC_OUT[2]),
        .T(1'b1));
  OBUFT \ACC_OUT_OBUF[3]_inst 
       (.I(1'b0),
        .O(ACC_OUT[3]),
        .T(1'b1));
  OBUFT \ACC_OUT_OBUF[4]_inst 
       (.I(1'b0),
        .O(ACC_OUT[4]),
        .T(1'b1));
  OBUFT \ACC_OUT_OBUF[5]_inst 
       (.I(1'b0),
        .O(ACC_OUT[5]),
        .T(1'b1));
  OBUFT \ACC_OUT_OBUF[6]_inst 
       (.I(1'b0),
        .O(ACC_OUT[6]),
        .T(1'b1));
  OBUFT \ACC_OUT_OBUF[7]_inst 
       (.I(1'b0),
        .O(ACC_OUT[7]),
        .T(1'b1));
  OBUFT \ACC_OUT_OBUF[8]_inst 
       (.I(1'b0),
        .O(ACC_OUT[8]),
        .T(1'b1));
  OBUFT \ACC_OUT_OBUF[9]_inst 
       (.I(1'b0),
        .O(ACC_OUT[9]),
        .T(1'b1));
  OBUFT TAG_MUX_OBUF_inst
       (.I(1'b0),
        .O(TAG_MUX),
        .T(1'b1));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
