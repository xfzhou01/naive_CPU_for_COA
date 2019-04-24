// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Apr 24 23:34:42 2019
// Host        : LAPTOP-IJ2NHTNA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/84546/Desktop/CPU/CPU.sim/sim_1/impl/timing/xsim/Test_top_time_impl.v
// Design      : top_design
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module clk_wiz_1
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;

  clk_wiz_1_clk_wiz_1_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1));
endmodule

(* ORIG_REF_NAME = "clk_wiz_1_clk_wiz" *) 
module clk_wiz_1_clk_wiz_1_clk_wiz
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_clk_wiz_1;
  wire clk_out1;
  wire clk_out1_clk_wiz_1;
  wire clkfbout_buf_clk_wiz_1;
  wire clkfbout_clk_wiz_1;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_1),
        .O(clkfbout_buf_clk_wiz_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_wiz_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_1),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(32.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(128.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(5),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_1),
        .CLKFBOUT(clkfbout_clk_wiz_1),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_1),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_1),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(1'b0));
endmodule

(* ECO_CHECKSUM = "d1185216" *) 
(* NotValidForBitStream *)
module top_design
   (clk,
    rst,
    select_out,
    num_out);
  input clk;
  input rst;
  output [3:0]select_out;
  output [7:0]num_out;

  wire \Select_out[0]_i_1_n_0 ;
  wire \Select_out[1]_i_1_n_0 ;
  wire \Select_out[2]_i_1_n_0 ;
  wire \Select_out[3]_i_1_n_0 ;
  (* IBUF_LOW_PWR *) wire clk;
  wire [7:0]num_out;
  wire [1:0]scan_cnt;
  wire \scan_cnt[0]_i_1_n_0 ;
  wire \scan_cnt[1]_i_1_n_0 ;
  wire [3:0]select_out;
  wire [3:0]select_out_OBUF;
  wire sys_clk;

initial begin
 $sdf_annotate("Test_top_time_impl.sdf",,,,"tool_control");
end
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Select_out[0]_i_1 
       (.I0(scan_cnt[1]),
        .I1(scan_cnt[0]),
        .O(\Select_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \Select_out[1]_i_1 
       (.I0(scan_cnt[0]),
        .I1(scan_cnt[1]),
        .O(\Select_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \Select_out[2]_i_1 
       (.I0(scan_cnt[1]),
        .I1(scan_cnt[0]),
        .O(\Select_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Select_out[3]_i_1 
       (.I0(scan_cnt[1]),
        .I1(scan_cnt[0]),
        .O(\Select_out[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Select_out_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\Select_out[0]_i_1_n_0 ),
        .Q(select_out_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Select_out_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\Select_out[1]_i_1_n_0 ),
        .Q(select_out_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Select_out_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\Select_out[2]_i_1_n_0 ),
        .Q(select_out_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Select_out_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\Select_out[3]_i_1_n_0 ),
        .Q(select_out_OBUF[3]),
        .R(1'b0));
  clk_wiz_1 clk_wiz
       (.clk_in1(clk),
        .clk_out1(sys_clk));
  OBUF \num_out_OBUF[0]_inst 
       (.I(1'b1),
        .O(num_out[0]));
  OBUF \num_out_OBUF[1]_inst 
       (.I(1'b1),
        .O(num_out[1]));
  OBUF \num_out_OBUF[2]_inst 
       (.I(1'b0),
        .O(num_out[2]));
  OBUF \num_out_OBUF[3]_inst 
       (.I(1'b0),
        .O(num_out[3]));
  OBUF \num_out_OBUF[4]_inst 
       (.I(1'b0),
        .O(num_out[4]));
  OBUF \num_out_OBUF[5]_inst 
       (.I(1'b0),
        .O(num_out[5]));
  OBUF \num_out_OBUF[6]_inst 
       (.I(1'b0),
        .O(num_out[6]));
  OBUF \num_out_OBUF[7]_inst 
       (.I(1'b0),
        .O(num_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \scan_cnt[0]_i_1 
       (.I0(scan_cnt[0]),
        .O(\scan_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \scan_cnt[1]_i_1 
       (.I0(scan_cnt[0]),
        .I1(scan_cnt[1]),
        .O(\scan_cnt[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\scan_cnt[0]_i_1_n_0 ),
        .Q(scan_cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\scan_cnt[1]_i_1_n_0 ),
        .Q(scan_cnt[1]),
        .R(1'b0));
  OBUF \select_out_OBUF[0]_inst 
       (.I(select_out_OBUF[0]),
        .O(select_out[0]));
  OBUF \select_out_OBUF[1]_inst 
       (.I(select_out_OBUF[1]),
        .O(select_out[1]));
  OBUF \select_out_OBUF[2]_inst 
       (.I(select_out_OBUF[2]),
        .O(select_out[2]));
  OBUF \select_out_OBUF[3]_inst 
       (.I(select_out_OBUF[3]),
        .O(select_out[3]));
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
