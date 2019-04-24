// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Apr  3 23:40:48 2019
// Host        : LAPTOP-IJ2NHTNA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/84546/Desktop/18-19-3/CPU/CPU.srcs/sources_1/bd/Multiply/ip/Multiply_mult_gen_0_0/Multiply_mult_gen_0_0_sim_netlist.v
// Design      : Multiply_mult_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Multiply_mult_gen_0_0,mult_gen_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_13,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module Multiply_mult_gen_0_0
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN Multiply_CLK_0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 16}" *) output [15:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [15:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Multiply_mult_gen_0_0_mult_gen_v12_0_13 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "15" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_13" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module Multiply_mult_gen_0_0_mult_gen_v12_0_13
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [15:0]A;
  input [15:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [15:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [15:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Multiply_mult_gen_0_0_mult_gen_v12_0_13_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
CvmaYyJzAT4gGJRlCkE1yXt5Lv9gJbr2gC0wBzixkhI3TupXRLTg9s4Z9WVWp43QDkUuM3VRZjAj
RVnqESt3JA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hHyS2uxRkJ6sHR79RwG8dxYfMwySDoNzo0ZpVSoiAp/93R212I5J1LxM+7EujDw/cO/x9djlyxbz
erzC6/tIqQ2nS2hUZANmmER9YkiA1RlXlIqDOWo8pOFHNj1c4jf7Zdq7OJMDPvKF+fLgmk5Lu9Y0
15oIyfQw7L+gXpW1qEU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Cfhh7YIOGyVJiZpd5j8xa2ugbHZdDDpkNcw6vvVCCgnGCfzlen3wlGk0omzzJqyVapnfg0aPFCVf
eH/noQVGu1bQkowx0JKcNE5x1v5DKH//UNI+lq09SNF0WKlMcTAGlNSUzO8kgVv9uNbKUHDXodcD
5iGh6bHMhVPSu1QKpTfJlIMd2CMz0JfDQiVbfTaAGKvrQhaqVte7pYpnqiXM7povPwt/ntWHBH4s
XSF4J4eDVLMuQmQNy3vrqFdEUqmQFtLWgNRpG2fwo19Y2lRzT3ux5SiA0Iv55uR6x7AG21x8BZlD
JC102ufirdrREfWUzlClY8zmr+TUHpTF/SgPMw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UWceDgHVHZAg17Yudaw03bncVn75AJ6y0RYlYeqdZU3kMG9E1W6q5REaQAI7sMZSrC2g0zavsx4w
utskoq80P2avoebtdvBfjr/nBCQqUN3AvM3GSk85froboZgk4fCQ8UtEj2Qk7ob+ox/md7d9P9dw
2YULi+eG04dUc1g45wwF0ZoZdARk7Ml+fXMnm7zxmvqVieAEsVq6ETZN/P0pwvIpAakLTayKriGC
qcrb1S28bOuV+Na/FX9rxN6hM5aK7vSdFqja5GGs32r9UVRIkX6i7uqS9pWQDR0Qa31W3z6wrRrT
+2wzEwNMDKYuWVIM1FQo/Tp0NKa1Y+kyjahSGA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tLsJPLnIUk5FSxPTGLkNhAFldHrP7oFH8h39nfqyEmnC/AmGzR3fePfCEcee3I4TYySABpWhyXIf
m1jGiCuHfIpFkF2EJqjWmBev0bD33cbw1av2xtJRFa5gaQjxChO9URfjedFvCQWWwjlxejc9nD0N
O0V2XUDQxd573YmSBuByzshlxt3bujEd6Xeeb8N8NI8c2ZsfY4693LGdb3k6gtY9ZEoo4XuYVt6n
S2tNFVJTfQjyBEXbuCPqpwGf6bPdy2SKvTE/s4rSIVTO08J6bXDaEOBUGg13XVoJJqrayiJRVuQL
LhoiPzgOqS6ude1uUaMHE/SN9X/vt/6uOsOl2w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jgk19ieS+ZYiySHKvgAHMus0OAx0HPJ59p64LMaYK8CyW0wSM8LIn++sFz9tsOBdLj2gb8IKpSVr
SOX9XXXM2pQFSME7x8q0m+EPg9m1+ghIpW4bU/w4zVq4NBjYydZCI0Hpy+X3op0a3+eENVEw5SoK
4R/zOL7aV/2nZ//wkaw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L/BPRr/PHH5da1O06dKRr5ST8eskM6lzR1UPuTvZQ6RCsFEjTD1HgyqjW7/ypnIq7V5TYDC553+Y
rJnEENzDc6RSpzenrYxw7NrURpUedIWlCc/PEf5Zq9gu1ESkpND7t98rc+uiAz7zsn/pHD/K50NR
q9l/gcWkOCgArmADo1Lw9usrfZ8ECIPKY2kLxeTYbh4fsrCpPQsQUk4NxX3N1Q0h3RRUCdHSFc0O
lvGip/vd24OK8zXDMaQv4fPmgToFQMUvLrJXErEUeRlkpxkcX6g6Zu4RMWwwmkNIfZHpc5K8Q3RL
MMc5rARUSXbNbpf28H3iyAMZ0y+EgI0CrKwooA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mtXewiaPYQdgrr+lDQuOdvkkrNV1AKX9DD7kw6OLqLOKBQkYTty5YE2dRa3+qLTrqjtctHU+vovz
4uplwyT4CIX/VoNvGiTF5sCQw1aPENDwqjqw9eg7HKUlkhY1kTYochmAnzasC6tsIOqY1A3Z2ks8
8FT5caEYW+Dhjhu+Lxdmo/+bEk5S59heuE4jFJwvS4RAHHMdujpyj5hZySA+JIrhxaaqse6tILSF
Odpuqv2Ckqz5hI/Jxj9ffbD3DYjvf7nBeLMqbJ47hqyauy2v4wJ+gu1zexFFT/nCi1LYDwyUB50r
JBx34ecFjCbPjS39TMilMgAHJ9PVp0Yf0Kom5A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YUj8b1tf9CFqvrzaJb9bwsGdVdn68Lsdvs7GpD7KrNzlNVz/2m0+E579kNsECsDY10sWeIPP/Nu3
vODTWKWYvjJblHba03K7bt3rbupP69dFSbr1BLZkpaiyDhAg5KDcuJWXMxtEacieNmAkTnd3Wc3V
cDyYMiCJ1XstzIZUv00318tFGMuTL7I/jdbA5KQXSruogenn67sLvG5WTA9Fee/R1OtSYBtEF70J
ZjgTeXS+Zy2Rd9Z2STTJ5Vm3QwJ7irb8zH7lP9P4nq+y/YoOfztZSWjSrL7w1zReKg+IKAlgXaJ1
vHgQ1w0rq3M4l6tstYAXfpEDs+3IhUpnm/LKpw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8640)
`pragma protect data_block
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
`pragma protect end_protected
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
