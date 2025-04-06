// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Mar 26 01:44:03 2025
// Host        : DESKTOP-ED72SOS running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               E:/Dev/dev-git/digital-system-design-verilog/design_practice/3week/3week_lab/3week_lab.sim/sim_1/synth/func/xsim/tb_rca_16_func_synth.v
// Design      : rca_16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module rca_16
   (x,
    y,
    cin,
    cout,
    sum);
  input [15:0]x;
  input [15:0]y;
  input cin;
  output cout;
  output [15:0]sum;

  wire cin;
  wire cin_IBUF;
  wire cout;
  wire cout_OBUF;
  wire cout_OBUF_inst_i_2_n_0;
  wire [15:0]sum;
  wire [15:0]sum_OBUF;
  wire \sum_OBUF[11]_inst_i_2_n_0 ;
  wire \sum_OBUF[11]_inst_i_3_n_0 ;
  wire \sum_OBUF[13]_inst_i_2_n_0 ;
  wire \sum_OBUF[13]_inst_i_3_n_0 ;
  wire \sum_OBUF[15]_inst_i_2_n_0 ;
  wire \sum_OBUF[3]_inst_i_2_n_0 ;
  wire \sum_OBUF[3]_inst_i_3_n_0 ;
  wire \sum_OBUF[5]_inst_i_2_n_0 ;
  wire \sum_OBUF[5]_inst_i_3_n_0 ;
  wire \sum_OBUF[7]_inst_i_2_n_0 ;
  wire \sum_OBUF[7]_inst_i_3_n_0 ;
  wire \sum_OBUF[9]_inst_i_2_n_0 ;
  wire \sum_OBUF[9]_inst_i_3_n_0 ;
  wire [15:0]x;
  wire [15:0]x_IBUF;
  wire [15:0]y;
  wire [15:0]y_IBUF;

  IBUF cin_IBUF_inst
       (.I(cin),
        .O(cin_IBUF));
  OBUF cout_OBUF_inst
       (.I(cout_OBUF),
        .O(cout));
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    cout_OBUF_inst_i_1
       (.I0(x_IBUF[15]),
        .I1(x_IBUF[14]),
        .I2(cout_OBUF_inst_i_2_n_0),
        .I3(y_IBUF[14]),
        .I4(y_IBUF[15]),
        .O(cout_OBUF));
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    cout_OBUF_inst_i_2
       (.I0(y_IBUF[13]),
        .I1(x_IBUF[12]),
        .I2(\sum_OBUF[13]_inst_i_3_n_0 ),
        .I3(y_IBUF[12]),
        .I4(x_IBUF[13]),
        .O(cout_OBUF_inst_i_2_n_0));
  OBUF \sum_OBUF[0]_inst 
       (.I(sum_OBUF[0]),
        .O(sum[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \sum_OBUF[0]_inst_i_1 
       (.I0(x_IBUF[0]),
        .I1(y_IBUF[0]),
        .I2(cin_IBUF),
        .O(sum_OBUF[0]));
  OBUF \sum_OBUF[10]_inst 
       (.I(sum_OBUF[10]),
        .O(sum[10]));
  LUT4 #(
    .INIT(16'hED48)) 
    \sum_OBUF[10]_inst_i_1 
       (.I0(y_IBUF[10]),
        .I1(\sum_OBUF[11]_inst_i_2_n_0 ),
        .I2(x_IBUF[10]),
        .I3(\sum_OBUF[11]_inst_i_3_n_0 ),
        .O(sum_OBUF[10]));
  OBUF \sum_OBUF[11]_inst 
       (.I(sum_OBUF[11]),
        .O(sum[11]));
  LUT6 #(
    .INIT(64'hA5EDA548ED5A485A)) 
    \sum_OBUF[11]_inst_i_1 
       (.I0(y_IBUF[11]),
        .I1(\sum_OBUF[11]_inst_i_2_n_0 ),
        .I2(x_IBUF[11]),
        .I3(y_IBUF[10]),
        .I4(\sum_OBUF[11]_inst_i_3_n_0 ),
        .I5(x_IBUF[10]),
        .O(sum_OBUF[11]));
  LUT5 #(
    .INIT(32'h105175F7)) 
    \sum_OBUF[11]_inst_i_2 
       (.I0(y_IBUF[9]),
        .I1(x_IBUF[8]),
        .I2(\sum_OBUF[9]_inst_i_2_n_0 ),
        .I3(y_IBUF[8]),
        .I4(x_IBUF[9]),
        .O(\sum_OBUF[11]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \sum_OBUF[11]_inst_i_3 
       (.I0(y_IBUF[9]),
        .I1(x_IBUF[8]),
        .I2(\sum_OBUF[9]_inst_i_3_n_0 ),
        .I3(y_IBUF[8]),
        .I4(x_IBUF[9]),
        .O(\sum_OBUF[11]_inst_i_3_n_0 ));
  OBUF \sum_OBUF[12]_inst 
       (.I(sum_OBUF[12]),
        .O(sum[12]));
  LUT4 #(
    .INIT(16'hED48)) 
    \sum_OBUF[12]_inst_i_1 
       (.I0(y_IBUF[12]),
        .I1(\sum_OBUF[13]_inst_i_2_n_0 ),
        .I2(x_IBUF[12]),
        .I3(\sum_OBUF[13]_inst_i_3_n_0 ),
        .O(sum_OBUF[12]));
  OBUF \sum_OBUF[13]_inst 
       (.I(sum_OBUF[13]),
        .O(sum[13]));
  LUT6 #(
    .INIT(64'hA5EDA548ED5A485A)) 
    \sum_OBUF[13]_inst_i_1 
       (.I0(y_IBUF[13]),
        .I1(\sum_OBUF[13]_inst_i_2_n_0 ),
        .I2(x_IBUF[13]),
        .I3(y_IBUF[12]),
        .I4(\sum_OBUF[13]_inst_i_3_n_0 ),
        .I5(x_IBUF[12]),
        .O(sum_OBUF[13]));
  LUT5 #(
    .INIT(32'h105175F7)) 
    \sum_OBUF[13]_inst_i_2 
       (.I0(y_IBUF[11]),
        .I1(x_IBUF[10]),
        .I2(\sum_OBUF[11]_inst_i_2_n_0 ),
        .I3(y_IBUF[10]),
        .I4(x_IBUF[11]),
        .O(\sum_OBUF[13]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \sum_OBUF[13]_inst_i_3 
       (.I0(y_IBUF[11]),
        .I1(x_IBUF[10]),
        .I2(\sum_OBUF[11]_inst_i_3_n_0 ),
        .I3(y_IBUF[10]),
        .I4(x_IBUF[11]),
        .O(\sum_OBUF[13]_inst_i_3_n_0 ));
  OBUF \sum_OBUF[14]_inst 
       (.I(sum_OBUF[14]),
        .O(sum[14]));
  LUT4 #(
    .INIT(16'hED48)) 
    \sum_OBUF[14]_inst_i_1 
       (.I0(y_IBUF[14]),
        .I1(\sum_OBUF[15]_inst_i_2_n_0 ),
        .I2(x_IBUF[14]),
        .I3(cout_OBUF_inst_i_2_n_0),
        .O(sum_OBUF[14]));
  OBUF \sum_OBUF[15]_inst 
       (.I(sum_OBUF[15]),
        .O(sum[15]));
  LUT6 #(
    .INIT(64'hA5EDA548ED5A485A)) 
    \sum_OBUF[15]_inst_i_1 
       (.I0(x_IBUF[15]),
        .I1(\sum_OBUF[15]_inst_i_2_n_0 ),
        .I2(y_IBUF[15]),
        .I3(y_IBUF[14]),
        .I4(cout_OBUF_inst_i_2_n_0),
        .I5(x_IBUF[14]),
        .O(sum_OBUF[15]));
  LUT5 #(
    .INIT(32'h105175F7)) 
    \sum_OBUF[15]_inst_i_2 
       (.I0(y_IBUF[13]),
        .I1(x_IBUF[12]),
        .I2(\sum_OBUF[13]_inst_i_2_n_0 ),
        .I3(y_IBUF[12]),
        .I4(x_IBUF[13]),
        .O(\sum_OBUF[15]_inst_i_2_n_0 ));
  OBUF \sum_OBUF[1]_inst 
       (.I(sum_OBUF[1]),
        .O(sum[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \sum_OBUF[1]_inst_i_1 
       (.I0(x_IBUF[1]),
        .I1(y_IBUF[1]),
        .I2(cin_IBUF),
        .I3(y_IBUF[0]),
        .I4(x_IBUF[0]),
        .O(sum_OBUF[1]));
  OBUF \sum_OBUF[2]_inst 
       (.I(sum_OBUF[2]),
        .O(sum[2]));
  LUT4 #(
    .INIT(16'hED48)) 
    \sum_OBUF[2]_inst_i_1 
       (.I0(x_IBUF[2]),
        .I1(\sum_OBUF[3]_inst_i_2_n_0 ),
        .I2(y_IBUF[2]),
        .I3(\sum_OBUF[3]_inst_i_3_n_0 ),
        .O(sum_OBUF[2]));
  OBUF \sum_OBUF[3]_inst 
       (.I(sum_OBUF[3]),
        .O(sum[3]));
  LUT6 #(
    .INIT(64'hA5EDA548ED5A485A)) 
    \sum_OBUF[3]_inst_i_1 
       (.I0(x_IBUF[3]),
        .I1(\sum_OBUF[3]_inst_i_2_n_0 ),
        .I2(y_IBUF[3]),
        .I3(x_IBUF[2]),
        .I4(\sum_OBUF[3]_inst_i_3_n_0 ),
        .I5(y_IBUF[2]),
        .O(sum_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0115577F)) 
    \sum_OBUF[3]_inst_i_2 
       (.I0(x_IBUF[1]),
        .I1(y_IBUF[0]),
        .I2(x_IBUF[0]),
        .I3(cin_IBUF),
        .I4(y_IBUF[1]),
        .O(\sum_OBUF[3]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \sum_OBUF[3]_inst_i_3 
       (.I0(x_IBUF[1]),
        .I1(x_IBUF[0]),
        .I2(y_IBUF[0]),
        .I3(cin_IBUF),
        .I4(y_IBUF[1]),
        .O(\sum_OBUF[3]_inst_i_3_n_0 ));
  OBUF \sum_OBUF[4]_inst 
       (.I(sum_OBUF[4]),
        .O(sum[4]));
  LUT4 #(
    .INIT(16'hED48)) 
    \sum_OBUF[4]_inst_i_1 
       (.I0(x_IBUF[4]),
        .I1(\sum_OBUF[5]_inst_i_2_n_0 ),
        .I2(y_IBUF[4]),
        .I3(\sum_OBUF[5]_inst_i_3_n_0 ),
        .O(sum_OBUF[4]));
  OBUF \sum_OBUF[5]_inst 
       (.I(sum_OBUF[5]),
        .O(sum[5]));
  LUT6 #(
    .INIT(64'hA5EDA548ED5A485A)) 
    \sum_OBUF[5]_inst_i_1 
       (.I0(x_IBUF[5]),
        .I1(\sum_OBUF[5]_inst_i_2_n_0 ),
        .I2(y_IBUF[5]),
        .I3(x_IBUF[4]),
        .I4(\sum_OBUF[5]_inst_i_3_n_0 ),
        .I5(y_IBUF[4]),
        .O(sum_OBUF[5]));
  LUT5 #(
    .INIT(32'h105175F7)) 
    \sum_OBUF[5]_inst_i_2 
       (.I0(x_IBUF[3]),
        .I1(y_IBUF[2]),
        .I2(\sum_OBUF[3]_inst_i_2_n_0 ),
        .I3(x_IBUF[2]),
        .I4(y_IBUF[3]),
        .O(\sum_OBUF[5]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \sum_OBUF[5]_inst_i_3 
       (.I0(x_IBUF[3]),
        .I1(y_IBUF[2]),
        .I2(\sum_OBUF[3]_inst_i_3_n_0 ),
        .I3(x_IBUF[2]),
        .I4(y_IBUF[3]),
        .O(\sum_OBUF[5]_inst_i_3_n_0 ));
  OBUF \sum_OBUF[6]_inst 
       (.I(sum_OBUF[6]),
        .O(sum[6]));
  LUT4 #(
    .INIT(16'hED48)) 
    \sum_OBUF[6]_inst_i_1 
       (.I0(x_IBUF[6]),
        .I1(\sum_OBUF[7]_inst_i_2_n_0 ),
        .I2(y_IBUF[6]),
        .I3(\sum_OBUF[7]_inst_i_3_n_0 ),
        .O(sum_OBUF[6]));
  OBUF \sum_OBUF[7]_inst 
       (.I(sum_OBUF[7]),
        .O(sum[7]));
  LUT6 #(
    .INIT(64'hA5EDA548ED5A485A)) 
    \sum_OBUF[7]_inst_i_1 
       (.I0(y_IBUF[7]),
        .I1(\sum_OBUF[7]_inst_i_2_n_0 ),
        .I2(x_IBUF[7]),
        .I3(x_IBUF[6]),
        .I4(\sum_OBUF[7]_inst_i_3_n_0 ),
        .I5(y_IBUF[6]),
        .O(sum_OBUF[7]));
  LUT5 #(
    .INIT(32'h105175F7)) 
    \sum_OBUF[7]_inst_i_2 
       (.I0(x_IBUF[5]),
        .I1(y_IBUF[4]),
        .I2(\sum_OBUF[5]_inst_i_2_n_0 ),
        .I3(x_IBUF[4]),
        .I4(y_IBUF[5]),
        .O(\sum_OBUF[7]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \sum_OBUF[7]_inst_i_3 
       (.I0(x_IBUF[5]),
        .I1(y_IBUF[4]),
        .I2(\sum_OBUF[5]_inst_i_3_n_0 ),
        .I3(x_IBUF[4]),
        .I4(y_IBUF[5]),
        .O(\sum_OBUF[7]_inst_i_3_n_0 ));
  OBUF \sum_OBUF[8]_inst 
       (.I(sum_OBUF[8]),
        .O(sum[8]));
  LUT4 #(
    .INIT(16'hED48)) 
    \sum_OBUF[8]_inst_i_1 
       (.I0(y_IBUF[8]),
        .I1(\sum_OBUF[9]_inst_i_2_n_0 ),
        .I2(x_IBUF[8]),
        .I3(\sum_OBUF[9]_inst_i_3_n_0 ),
        .O(sum_OBUF[8]));
  OBUF \sum_OBUF[9]_inst 
       (.I(sum_OBUF[9]),
        .O(sum[9]));
  LUT6 #(
    .INIT(64'hA5EDA548ED5A485A)) 
    \sum_OBUF[9]_inst_i_1 
       (.I0(y_IBUF[9]),
        .I1(\sum_OBUF[9]_inst_i_2_n_0 ),
        .I2(x_IBUF[9]),
        .I3(y_IBUF[8]),
        .I4(\sum_OBUF[9]_inst_i_3_n_0 ),
        .I5(x_IBUF[8]),
        .O(sum_OBUF[9]));
  LUT5 #(
    .INIT(32'h105175F7)) 
    \sum_OBUF[9]_inst_i_2 
       (.I0(y_IBUF[7]),
        .I1(y_IBUF[6]),
        .I2(\sum_OBUF[7]_inst_i_2_n_0 ),
        .I3(x_IBUF[6]),
        .I4(x_IBUF[7]),
        .O(\sum_OBUF[9]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \sum_OBUF[9]_inst_i_3 
       (.I0(y_IBUF[7]),
        .I1(y_IBUF[6]),
        .I2(\sum_OBUF[7]_inst_i_3_n_0 ),
        .I3(x_IBUF[6]),
        .I4(x_IBUF[7]),
        .O(\sum_OBUF[9]_inst_i_3_n_0 ));
  IBUF \x_IBUF[0]_inst 
       (.I(x[0]),
        .O(x_IBUF[0]));
  IBUF \x_IBUF[10]_inst 
       (.I(x[10]),
        .O(x_IBUF[10]));
  IBUF \x_IBUF[11]_inst 
       (.I(x[11]),
        .O(x_IBUF[11]));
  IBUF \x_IBUF[12]_inst 
       (.I(x[12]),
        .O(x_IBUF[12]));
  IBUF \x_IBUF[13]_inst 
       (.I(x[13]),
        .O(x_IBUF[13]));
  IBUF \x_IBUF[14]_inst 
       (.I(x[14]),
        .O(x_IBUF[14]));
  IBUF \x_IBUF[15]_inst 
       (.I(x[15]),
        .O(x_IBUF[15]));
  IBUF \x_IBUF[1]_inst 
       (.I(x[1]),
        .O(x_IBUF[1]));
  IBUF \x_IBUF[2]_inst 
       (.I(x[2]),
        .O(x_IBUF[2]));
  IBUF \x_IBUF[3]_inst 
       (.I(x[3]),
        .O(x_IBUF[3]));
  IBUF \x_IBUF[4]_inst 
       (.I(x[4]),
        .O(x_IBUF[4]));
  IBUF \x_IBUF[5]_inst 
       (.I(x[5]),
        .O(x_IBUF[5]));
  IBUF \x_IBUF[6]_inst 
       (.I(x[6]),
        .O(x_IBUF[6]));
  IBUF \x_IBUF[7]_inst 
       (.I(x[7]),
        .O(x_IBUF[7]));
  IBUF \x_IBUF[8]_inst 
       (.I(x[8]),
        .O(x_IBUF[8]));
  IBUF \x_IBUF[9]_inst 
       (.I(x[9]),
        .O(x_IBUF[9]));
  IBUF \y_IBUF[0]_inst 
       (.I(y[0]),
        .O(y_IBUF[0]));
  IBUF \y_IBUF[10]_inst 
       (.I(y[10]),
        .O(y_IBUF[10]));
  IBUF \y_IBUF[11]_inst 
       (.I(y[11]),
        .O(y_IBUF[11]));
  IBUF \y_IBUF[12]_inst 
       (.I(y[12]),
        .O(y_IBUF[12]));
  IBUF \y_IBUF[13]_inst 
       (.I(y[13]),
        .O(y_IBUF[13]));
  IBUF \y_IBUF[14]_inst 
       (.I(y[14]),
        .O(y_IBUF[14]));
  IBUF \y_IBUF[15]_inst 
       (.I(y[15]),
        .O(y_IBUF[15]));
  IBUF \y_IBUF[1]_inst 
       (.I(y[1]),
        .O(y_IBUF[1]));
  IBUF \y_IBUF[2]_inst 
       (.I(y[2]),
        .O(y_IBUF[2]));
  IBUF \y_IBUF[3]_inst 
       (.I(y[3]),
        .O(y_IBUF[3]));
  IBUF \y_IBUF[4]_inst 
       (.I(y[4]),
        .O(y_IBUF[4]));
  IBUF \y_IBUF[5]_inst 
       (.I(y[5]),
        .O(y_IBUF[5]));
  IBUF \y_IBUF[6]_inst 
       (.I(y[6]),
        .O(y_IBUF[6]));
  IBUF \y_IBUF[7]_inst 
       (.I(y[7]),
        .O(y_IBUF[7]));
  IBUF \y_IBUF[8]_inst 
       (.I(y[8]),
        .O(y_IBUF[8]));
  IBUF \y_IBUF[9]_inst 
       (.I(y[9]),
        .O(y_IBUF[9]));
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
