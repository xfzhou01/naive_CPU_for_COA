// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Apr 24 21:44:01 2019
// Host        : Hobo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Multiply_mult_gen_0_0_sim_netlist.v
// Design      : Multiply_mult_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Multiply_mult_gen_0_0,mult_gen_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_13,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_13 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_13
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_13_viv i_mult
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
UQNBxqjP13nEuaoC7K/Uztoi+0VKvbUyEPj9Eq/y08UU7jQdTNCvZc12LbOezw7tN6Kx/FzIHQ1X
VIInUYAyC+XoPcrDfqKL+BS1lNZdulaD6kOGYFI6kkFg7vJlUQAjfkZX1h+JeD4mMfwHjm8bz3Vd
9MCmDtL3p0WTw5qNOdu0hTiDkb9Bw77Pv50wWNaJRJnZdXs6fdIOjWAyHEbb5EZP0xtaWWBA8suT
5SuuLT5F+kZ4j1DfckcMCQZHMdZo0UN5s33d9kz9JI3isttWKM3yxuSVDPFcMuzXzdw4sRQJN40k
UWCO6Us0esOlDeg9U9R6P7JD+YWIX+ctIgwO/Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0RFgF7CMChskuxvIspkgZR7rqZB4CiKazQq3BtYu0e4+4HA5N5nW9yjYducMoTJG5J3YdAnYCXUW
a0NgitGitkNNt/9nsH4UOuhZDcjWdJAaK0yzPlgoYef07Ciw5qoJ2oLYaXyWKB0L+IcR9L/havmF
FhJEL28cEuQRp2QcHFkyZwXPixbBTZLiePBFDjddl5swbqF5eofPgYtgmwJPO8/yg0WjyHaR8ZId
26XIkz8fcjACPVWN2vHW6vo51vZ/Y0j0Q9pwempET8SC2s8QUOreZLYKnkYNBhfK3QbhaVecAYUs
bwUAa5Q6PT8doBnEj8TenXr8a23e+S5Vif921g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8624)
`pragma protect data_block
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
VApbPeO6O/2oea/zQGB4wjY=
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
