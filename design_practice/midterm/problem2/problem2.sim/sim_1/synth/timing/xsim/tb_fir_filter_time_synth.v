// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Apr 30 02:05:28 2025
// Host        : DESKTOP-ED72SOS running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               E:/Dev/dev-git/digital-system-design-verilog/design_practice/midterm/problem2/problem2.sim/sim_1/synth/timing/xsim/tb_fir_filter_time_synth.v
// Design      : fir_filter
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module d_ff
   (S,
    Q,
    \data_out_reg[3] ,
    O,
    D,
    CLK,
    AR);
  output [0:0]S;
  output [3:0]Q;
  input [1:0]\data_out_reg[3] ;
  input [0:0]O;
  input [3:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]D;
  wire [0:0]O;
  wire [3:0]Q;
  wire [0:0]S;
  wire [1:0]\data_out_reg[3] ;

  FDCE #(
    .INIT(1'b0)) 
    \data_delayed_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_delayed_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_delayed_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_delayed_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  LUT5 #(
    .INIT(32'h69999666)) 
    \data_out[3]_i_5 
       (.I0(Q[1]),
        .I1(\data_out_reg[3] [1]),
        .I2(\data_out_reg[3] [0]),
        .I3(Q[0]),
        .I4(O),
        .O(S));
endmodule

(* ORIG_REF_NAME = "d_ff" *) 
module d_ff_0
   (O,
    \data_delayed_reg[3]_0 ,
    CO,
    \data_delayed_reg[2]_0 ,
    \data_delayed_reg[2]_1 ,
    Q,
    \data_out_reg[3]_i_7_0 ,
    S,
    \data_out_reg[3] ,
    D,
    CLK,
    AR);
  output [1:0]O;
  output [3:0]\data_delayed_reg[3]_0 ;
  output [0:0]CO;
  output [0:0]\data_delayed_reg[2]_0 ;
  output [3:0]\data_delayed_reg[2]_1 ;
  input [0:0]Q;
  input [2:0]\data_out_reg[3]_i_7_0 ;
  input [0:0]S;
  input [1:0]\data_out_reg[3] ;
  input [3:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire [3:0]D;
  wire [1:0]O;
  wire [0:0]Q;
  wire [0:0]S;
  wire [0:0]\data_delayed_reg[2]_0 ;
  wire [3:0]\data_delayed_reg[2]_1 ;
  wire [3:0]\data_delayed_reg[3]_0 ;
  wire \data_out[3]_i_10_n_0 ;
  wire \data_out[3]_i_15_n_0 ;
  wire \data_out[3]_i_16_n_0 ;
  wire \data_out[3]_i_17_n_0 ;
  wire [1:0]\data_out_reg[3] ;
  wire \data_out_reg[3]_i_2_n_1 ;
  wire \data_out_reg[3]_i_2_n_2 ;
  wire \data_out_reg[3]_i_2_n_3 ;
  wire [2:0]\data_out_reg[3]_i_7_0 ;
  wire \data_out_reg[3]_i_7_n_1 ;
  wire \data_out_reg[3]_i_7_n_2 ;
  wire \data_out_reg[3]_i_7_n_3 ;
  wire [1:0]mul1_ext;
  wire [1:0]sum1;

  FDCE #(
    .INIT(1'b0)) 
    \data_delayed_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(\data_delayed_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_delayed_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(\data_delayed_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_delayed_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(\data_delayed_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_delayed_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(\data_delayed_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \data_out[3]_i_10 
       (.I0(mul1_ext[1]),
        .I1(Q),
        .O(\data_out[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \data_out[3]_i_12 
       (.I0(\data_delayed_reg[3]_0 [0]),
        .I1(\data_out_reg[3]_i_7_0 [0]),
        .I2(\data_out_reg[3]_i_7_0 [1]),
        .I3(\data_delayed_reg[3]_0 [1]),
        .O(sum1[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \data_out[3]_i_13 
       (.I0(\data_delayed_reg[3]_0 [0]),
        .I1(\data_out_reg[3]_i_7_0 [0]),
        .O(sum1[0]));
  LUT6 #(
    .INIT(64'h6669966696666999)) 
    \data_out[3]_i_15 
       (.I0(\data_delayed_reg[3]_0 [2]),
        .I1(\data_out_reg[3]_i_7_0 [2]),
        .I2(\data_out_reg[3]_i_7_0 [1]),
        .I3(\data_delayed_reg[3]_0 [1]),
        .I4(\data_delayed_reg[3]_0 [0]),
        .I5(\data_out_reg[3]_i_7_0 [0]),
        .O(\data_out[3]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h6999)) 
    \data_out[3]_i_16 
       (.I0(\data_delayed_reg[3]_0 [1]),
        .I1(\data_out_reg[3]_i_7_0 [1]),
        .I2(\data_out_reg[3]_i_7_0 [0]),
        .I3(\data_delayed_reg[3]_0 [0]),
        .O(\data_out[3]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_out[3]_i_17 
       (.I0(\data_delayed_reg[3]_0 [0]),
        .I1(\data_out_reg[3]_i_7_0 [0]),
        .O(\data_out[3]_i_17_n_0 ));
  CARRY4 \data_out_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\data_delayed_reg[2]_0 ,\data_out_reg[3]_i_2_n_1 ,\data_out_reg[3]_i_2_n_2 ,\data_out_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({O,mul1_ext[1],1'b0}),
        .O(\data_delayed_reg[2]_1 ),
        .S({\data_out_reg[3] ,\data_out[3]_i_10_n_0 ,mul1_ext[0]}));
  CARRY4 \data_out_reg[3]_i_7 
       (.CI(1'b0),
        .CO({CO,\data_out_reg[3]_i_7_n_1 ,\data_out_reg[3]_i_7_n_2 ,\data_out_reg[3]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({sum1,1'b0,1'b1}),
        .O({O,mul1_ext}),
        .S({S,\data_out[3]_i_15_n_0 ,\data_out[3]_i_16_n_0 ,\data_out[3]_i_17_n_0 }));
endmodule

(* ORIG_REF_NAME = "d_ff" *) 
module d_ff_1
   (S,
    Q,
    \data_delayed_reg[2]_0 ,
    mul1_ext,
    \data_delayed_reg[3]_0 ,
    CLK,
    AR);
  output [2:0]S;
  output [3:0]Q;
  output [1:0]\data_delayed_reg[2]_0 ;
  input [4:0]mul1_ext;
  input [3:0]\data_delayed_reg[3]_0 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]Q;
  wire [2:0]S;
  wire [1:0]\data_delayed_reg[2]_0 ;
  wire [3:0]\data_delayed_reg[3]_0 ;
  wire [4:0]mul1_ext;

  FDCE #(
    .INIT(1'b0)) 
    \data_delayed_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\data_delayed_reg[3]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_delayed_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\data_delayed_reg[3]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_delayed_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\data_delayed_reg[3]_0 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_delayed_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\data_delayed_reg[3]_0 [3]),
        .Q(Q[3]));
  LUT4 #(
    .INIT(16'h6966)) 
    \data_out[3]_i_8 
       (.I0(mul1_ext[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\data_delayed_reg[2]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[3]_i_9 
       (.I0(mul1_ext[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\data_delayed_reg[2]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \data_out[9]_i_6 
       (.I0(mul1_ext[4]),
        .I1(Q[3]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h565A5AAA)) 
    \data_out[9]_i_7 
       (.I0(mul1_ext[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h5AA5956A)) 
    \data_out[9]_i_8 
       (.I0(mul1_ext[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "d_ff" *) 
module d_ff_2
   (Q,
    mul1_ext,
    O,
    \data_out_reg[9]_i_2_0 ,
    \data_delayed_reg[1]_0 ,
    D,
    \data_out_reg[9]_i_4_0 ,
    CO,
    \data_out_reg[9] ,
    S,
    CLK,
    AR);
  output [3:0]Q;
  output [2:0]mul1_ext;
  output [3:0]O;
  output [0:0]\data_out_reg[9]_i_2_0 ;
  output [0:0]\data_delayed_reg[1]_0 ;
  input [3:0]D;
  input [3:0]\data_out_reg[9]_i_4_0 ;
  input [0:0]CO;
  input [0:0]\data_out_reg[9] ;
  input [2:0]S;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire [3:0]D;
  wire [3:0]O;
  wire [3:0]Q;
  wire [2:0]S;
  wire [0:0]\data_delayed_reg[1]_0 ;
  wire \data_out[9]_i_10_n_0 ;
  wire \data_out[9]_i_12_n_0 ;
  wire \data_out[9]_i_13_n_0 ;
  wire \data_out[9]_i_14_n_0 ;
  wire \data_out[9]_i_15_n_0 ;
  wire \data_out[9]_i_16_n_0 ;
  wire \data_out[9]_i_17_n_0 ;
  wire \data_out[9]_i_5_n_0 ;
  wire [0:0]\data_out_reg[9] ;
  wire [0:0]\data_out_reg[9]_i_2_0 ;
  wire \data_out_reg[9]_i_2_n_0 ;
  wire \data_out_reg[9]_i_2_n_1 ;
  wire \data_out_reg[9]_i_2_n_2 ;
  wire \data_out_reg[9]_i_2_n_3 ;
  wire [3:0]\data_out_reg[9]_i_4_0 ;
  wire \data_out_reg[9]_i_4_n_0 ;
  wire \data_out_reg[9]_i_4_n_2 ;
  wire \data_out_reg[9]_i_4_n_3 ;
  wire [2:0]mul1_ext;
  wire [4:3]sum1;
  wire [2:2]\NLW_data_out_reg[9]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_data_out_reg[9]_i_4_O_UNCONNECTED ;
  wire [3:1]\NLW_data_out_reg[9]_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_data_out_reg[9]_i_9_O_UNCONNECTED ;

  FDCE #(
    .INIT(1'b0)) 
    \data_delayed_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_delayed_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_delayed_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_delayed_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  LUT5 #(
    .INIT(32'h96666999)) 
    \data_out[3]_i_14 
       (.I0(\data_out_reg[9]_i_4_0 [1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\data_out_reg[9]_i_4_0 [0]),
        .I4(sum1[3]),
        .O(\data_delayed_reg[1]_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[3]_i_18 
       (.I0(\data_out[9]_i_16_n_0 ),
        .I1(Q[3]),
        .I2(\data_out_reg[9]_i_4_0 [3]),
        .O(sum1[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[9]_i_10 
       (.I0(\data_out[9]_i_16_n_0 ),
        .I1(Q[3]),
        .I2(\data_out_reg[9]_i_4_0 [3]),
        .O(\data_out[9]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[9]_i_11 
       (.I0(\data_out[9]_i_12_n_0 ),
        .O(sum1[4]));
  LUT3 #(
    .INIT(8'h71)) 
    \data_out[9]_i_12 
       (.I0(Q[3]),
        .I1(\data_out_reg[9]_i_4_0 [3]),
        .I2(\data_out[9]_i_16_n_0 ),
        .O(\data_out[9]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \data_out[9]_i_13 
       (.I0(\data_out_reg[9]_i_4_0 [3]),
        .I1(Q[3]),
        .I2(\data_out[9]_i_16_n_0 ),
        .I3(\data_out[9]_i_12_n_0 ),
        .O(\data_out[9]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \data_out[9]_i_14 
       (.I0(\data_out[9]_i_12_n_0 ),
        .I1(\data_out_reg[9]_i_4_0 [3]),
        .I2(Q[3]),
        .I3(\data_out[9]_i_16_n_0 ),
        .O(\data_out[9]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \data_out[9]_i_15 
       (.I0(\data_out[9]_i_12_n_0 ),
        .I1(\data_out_reg[9]_i_4_0 [2]),
        .I2(Q[2]),
        .I3(\data_out[9]_i_17_n_0 ),
        .O(\data_out[9]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \data_out[9]_i_16 
       (.I0(Q[2]),
        .I1(\data_out_reg[9]_i_4_0 [2]),
        .I2(Q[0]),
        .I3(\data_out_reg[9]_i_4_0 [0]),
        .I4(\data_out_reg[9]_i_4_0 [1]),
        .I5(Q[1]),
        .O(\data_out[9]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hE888)) 
    \data_out[9]_i_17 
       (.I0(Q[1]),
        .I1(\data_out_reg[9]_i_4_0 [1]),
        .I2(\data_out_reg[9]_i_4_0 [0]),
        .I3(Q[0]),
        .O(\data_out[9]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data_out[9]_i_5 
       (.I0(\data_out_reg[9]_i_4_n_0 ),
        .I1(D[3]),
        .O(\data_out[9]_i_5_n_0 ));
  CARRY4 \data_out_reg[9]_i_2 
       (.CI(\data_out_reg[9] ),
        .CO({\data_out_reg[9]_i_2_n_0 ,\data_out_reg[9]_i_2_n_1 ,\data_out_reg[9]_i_2_n_2 ,\data_out_reg[9]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\data_out_reg[9]_i_4_n_0 ,mul1_ext}),
        .O(O),
        .S({\data_out[9]_i_5_n_0 ,S}));
  CARRY4 \data_out_reg[9]_i_4 
       (.CI(CO),
        .CO({\data_out_reg[9]_i_4_n_0 ,\NLW_data_out_reg[9]_i_4_CO_UNCONNECTED [2],\data_out_reg[9]_i_4_n_2 ,\data_out_reg[9]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\data_out[9]_i_10_n_0 ,sum1[4],\data_out[9]_i_12_n_0 }),
        .O({\NLW_data_out_reg[9]_i_4_O_UNCONNECTED [3],mul1_ext}),
        .S({1'b1,\data_out[9]_i_13_n_0 ,\data_out[9]_i_14_n_0 ,\data_out[9]_i_15_n_0 }));
  CARRY4 \data_out_reg[9]_i_9 
       (.CI(\data_out_reg[9]_i_2_n_0 ),
        .CO({\NLW_data_out_reg[9]_i_9_CO_UNCONNECTED [3:1],\data_out_reg[9]_i_2_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_data_out_reg[9]_i_9_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

(* ORIG_REF_NAME = "d_ff" *) 
module d_ff_3
   (\data_delayed_reg[1]_0 ,
    D,
    Q,
    PCIN,
    S,
    DI,
    \data_out_reg[7] ,
    \data_out_reg[9] ,
    \data_delayed_reg[3]_0 ,
    CLK,
    AR);
  output [1:0]\data_delayed_reg[1]_0 ;
  output [9:0]D;
  input [3:0]Q;
  input [7:0]PCIN;
  input [0:0]S;
  input [0:0]DI;
  input [2:0]\data_out_reg[7] ;
  input [0:0]\data_out_reg[9] ;
  input [3:0]\data_delayed_reg[3]_0 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [9:0]D;
  wire [0:0]DI;
  wire [7:0]PCIN;
  wire [3:0]Q;
  wire [0:0]S;
  wire [1:0]\data_delayed_reg[1]_0 ;
  wire [3:0]\data_delayed_reg[3]_0 ;
  wire \data_delayed_reg_n_0_[2] ;
  wire \data_delayed_reg_n_0_[3] ;
  wire \data_out[3]_i_11_n_0 ;
  wire \data_out[3]_i_3_n_0 ;
  wire \data_out[3]_i_4_n_0 ;
  wire \data_out[3]_i_6_n_0 ;
  wire \data_out[7]_i_6_n_0 ;
  wire \data_out[7]_i_7_n_0 ;
  wire \data_out_reg[3]_i_1_n_0 ;
  wire \data_out_reg[3]_i_1_n_1 ;
  wire \data_out_reg[3]_i_1_n_2 ;
  wire \data_out_reg[3]_i_1_n_3 ;
  wire [2:0]\data_out_reg[7] ;
  wire \data_out_reg[7]_i_1_n_0 ;
  wire \data_out_reg[7]_i_1_n_1 ;
  wire \data_out_reg[7]_i_1_n_2 ;
  wire \data_out_reg[7]_i_1_n_3 ;
  wire [0:0]\data_out_reg[9] ;
  wire \data_out_reg[9]_i_1_n_3 ;
  wire [3:1]\NLW_data_out_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_data_out_reg[9]_i_1_O_UNCONNECTED ;

  FDCE #(
    .INIT(1'b0)) 
    \data_delayed_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\data_delayed_reg[3]_0 [0]),
        .Q(\data_delayed_reg[1]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_delayed_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\data_delayed_reg[3]_0 [1]),
        .Q(\data_delayed_reg[1]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_delayed_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\data_delayed_reg[3]_0 [2]),
        .Q(\data_delayed_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \data_delayed_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\data_delayed_reg[3]_0 [3]),
        .Q(\data_delayed_reg_n_0_[3] ));
  LUT4 #(
    .INIT(16'hE888)) 
    \data_out[3]_i_11 
       (.I0(\data_delayed_reg[1]_0 [1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\data_delayed_reg[1]_0 [0]),
        .O(\data_out[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \data_out[3]_i_3 
       (.I0(Q[3]),
        .I1(\data_delayed_reg_n_0_[3] ),
        .I2(\data_out[7]_i_7_n_0 ),
        .I3(PCIN[3]),
        .O(\data_out[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \data_out[3]_i_4 
       (.I0(Q[2]),
        .I1(\data_delayed_reg_n_0_[2] ),
        .I2(\data_out[3]_i_11_n_0 ),
        .I3(PCIN[2]),
        .O(\data_out[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \data_out[3]_i_6 
       (.I0(\data_delayed_reg[1]_0 [0]),
        .I1(Q[0]),
        .I2(PCIN[0]),
        .O(\data_out[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h599A)) 
    \data_out[7]_i_6 
       (.I0(PCIN[4]),
        .I1(\data_out[7]_i_7_n_0 ),
        .I2(Q[3]),
        .I3(\data_delayed_reg_n_0_[3] ),
        .O(\data_out[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \data_out[7]_i_7 
       (.I0(\data_delayed_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(\data_delayed_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\data_delayed_reg[1]_0 [1]),
        .O(\data_out[7]_i_7_n_0 ));
  CARRY4 \data_out_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\data_out_reg[3]_i_1_n_0 ,\data_out_reg[3]_i_1_n_1 ,\data_out_reg[3]_i_1_n_2 ,\data_out_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(PCIN[3:0]),
        .O(D[3:0]),
        .S({\data_out[3]_i_3_n_0 ,\data_out[3]_i_4_n_0 ,S,\data_out[3]_i_6_n_0 }));
  CARRY4 \data_out_reg[7]_i_1 
       (.CI(\data_out_reg[3]_i_1_n_0 ),
        .CO({\data_out_reg[7]_i_1_n_0 ,\data_out_reg[7]_i_1_n_1 ,\data_out_reg[7]_i_1_n_2 ,\data_out_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({PCIN[6:4],DI}),
        .O(D[7:4]),
        .S({\data_out_reg[7] ,\data_out[7]_i_6_n_0 }));
  CARRY4 \data_out_reg[9]_i_1 
       (.CI(\data_out_reg[7]_i_1_n_0 ),
        .CO({\NLW_data_out_reg[9]_i_1_CO_UNCONNECTED [3:1],\data_out_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,PCIN[7]}),
        .O({\NLW_data_out_reg[9]_i_1_O_UNCONNECTED [3:2],D[9:8]}),
        .S({1'b0,1'b0,1'b1,\data_out_reg[9] }));
endmodule

(* N = "4" *) 
(* NotValidForBitStream *)
module fir_filter
   (clk,
    reset,
    data_in,
    data_out);
  input clk;
  input reset;
  input [3:0]data_in;
  output [9:0]data_out;

  wire [7:0]PCIN;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]data_delayed;
  wire [3:0]data_in;
  wire [3:0]data_in_IBUF;
  wire [9:0]data_out;
  wire \data_out[7]_i_2_n_0 ;
  wire \data_out[7]_i_3_n_0 ;
  wire \data_out[7]_i_4_n_0 ;
  wire \data_out[7]_i_5_n_0 ;
  wire \data_out[9]_i_3_n_0 ;
  wire [9:0]data_out_OBUF;
  wire dff0_n_0;
  wire dff1_n_2;
  wire dff1_n_3;
  wire dff1_n_4;
  wire dff1_n_5;
  wire dff1_n_6;
  wire dff1_n_7;
  wire dff2_n_0;
  wire dff2_n_1;
  wire dff2_n_2;
  wire dff2_n_3;
  wire dff2_n_4;
  wire dff2_n_5;
  wire dff2_n_6;
  wire dff2_n_7;
  wire dff2_n_8;
  wire dff3_n_0;
  wire dff3_n_1;
  wire dff3_n_11;
  wire dff3_n_12;
  wire dff3_n_2;
  wire dff3_n_3;
  wire dff4_n_0;
  wire dff4_n_1;
  wire [6:2]mul1_ext;
  wire reset;
  wire reset_IBUF;
  wire [9:0]total;

initial begin
 $sdf_annotate("tb_fir_filter_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \data_in_IBUF[0]_inst 
       (.I(data_in[0]),
        .O(data_in_IBUF[0]));
  IBUF \data_in_IBUF[1]_inst 
       (.I(data_in[1]),
        .O(data_in_IBUF[1]));
  IBUF \data_in_IBUF[2]_inst 
       (.I(data_in[2]),
        .O(data_in_IBUF[2]));
  IBUF \data_in_IBUF[3]_inst 
       (.I(data_in[3]),
        .O(data_in_IBUF[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[7]_i_2 
       (.I0(PCIN[4]),
        .O(\data_out[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data_out[7]_i_3 
       (.I0(PCIN[6]),
        .I1(PCIN[7]),
        .O(\data_out[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data_out[7]_i_4 
       (.I0(PCIN[5]),
        .I1(PCIN[6]),
        .O(\data_out[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data_out[7]_i_5 
       (.I0(PCIN[4]),
        .I1(PCIN[5]),
        .O(\data_out[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_out[9]_i_3 
       (.I0(PCIN[7]),
        .I1(dff3_n_11),
        .O(\data_out[9]_i_3_n_0 ));
  OBUF \data_out_OBUF[0]_inst 
       (.I(data_out_OBUF[0]),
        .O(data_out[0]));
  OBUF \data_out_OBUF[1]_inst 
       (.I(data_out_OBUF[1]),
        .O(data_out[1]));
  OBUF \data_out_OBUF[2]_inst 
       (.I(data_out_OBUF[2]),
        .O(data_out[2]));
  OBUF \data_out_OBUF[3]_inst 
       (.I(data_out_OBUF[3]),
        .O(data_out[3]));
  OBUF \data_out_OBUF[4]_inst 
       (.I(data_out_OBUF[4]),
        .O(data_out[4]));
  OBUF \data_out_OBUF[5]_inst 
       (.I(data_out_OBUF[5]),
        .O(data_out[5]));
  OBUF \data_out_OBUF[6]_inst 
       (.I(data_out_OBUF[6]),
        .O(data_out[6]));
  OBUF \data_out_OBUF[7]_inst 
       (.I(data_out_OBUF[7]),
        .O(data_out[7]));
  OBUF \data_out_OBUF[8]_inst 
       (.I(data_out_OBUF[8]),
        .O(data_out[8]));
  OBUF \data_out_OBUF[9]_inst 
       (.I(data_out_OBUF[9]),
        .O(data_out[9]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(total[0]),
        .Q(data_out_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(total[1]),
        .Q(data_out_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(total[2]),
        .Q(data_out_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(total[3]),
        .Q(data_out_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(total[4]),
        .Q(data_out_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(total[5]),
        .Q(data_out_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(total[6]),
        .Q(data_out_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(total[7]),
        .Q(data_out_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(total[8]),
        .Q(data_out_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(total[9]),
        .Q(data_out_OBUF[9]));
  d_ff dff0
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(data_in_IBUF),
        .O(PCIN[1]),
        .Q(data_delayed),
        .S(dff0_n_0),
        .\data_out_reg[3] ({dff4_n_0,dff4_n_1}));
  d_ff_0 dff1
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .CO(dff1_n_6),
        .D(data_delayed),
        .O(mul1_ext[3:2]),
        .Q(dff2_n_6),
        .S(dff3_n_12),
        .\data_delayed_reg[2]_0 (dff1_n_7),
        .\data_delayed_reg[2]_1 (PCIN[3:0]),
        .\data_delayed_reg[3]_0 ({dff1_n_2,dff1_n_3,dff1_n_4,dff1_n_5}),
        .\data_out_reg[3] ({dff2_n_7,dff2_n_8}),
        .\data_out_reg[3]_i_7_0 ({dff3_n_1,dff3_n_2,dff3_n_3}));
  d_ff_1 dff2
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .Q({dff2_n_3,dff2_n_4,dff2_n_5,dff2_n_6}),
        .S({dff2_n_0,dff2_n_1,dff2_n_2}),
        .\data_delayed_reg[2]_0 ({dff2_n_7,dff2_n_8}),
        .\data_delayed_reg[3]_0 ({dff1_n_2,dff1_n_3,dff1_n_4,dff1_n_5}),
        .mul1_ext(mul1_ext));
  d_ff_2 dff3
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .CO(dff1_n_6),
        .D({dff2_n_3,dff2_n_4,dff2_n_5,dff2_n_6}),
        .O(PCIN[7:4]),
        .Q({dff3_n_0,dff3_n_1,dff3_n_2,dff3_n_3}),
        .S({dff2_n_0,dff2_n_1,dff2_n_2}),
        .\data_delayed_reg[1]_0 (dff3_n_12),
        .\data_out_reg[9] (dff1_n_7),
        .\data_out_reg[9]_i_2_0 (dff3_n_11),
        .\data_out_reg[9]_i_4_0 ({dff1_n_2,dff1_n_3,dff1_n_4,dff1_n_5}),
        .mul1_ext(mul1_ext[6:4]));
  d_ff_3 dff4
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(total),
        .DI(\data_out[7]_i_2_n_0 ),
        .PCIN(PCIN),
        .Q(data_delayed),
        .S(dff0_n_0),
        .\data_delayed_reg[1]_0 ({dff4_n_0,dff4_n_1}),
        .\data_delayed_reg[3]_0 ({dff3_n_0,dff3_n_1,dff3_n_2,dff3_n_3}),
        .\data_out_reg[7] ({\data_out[7]_i_3_n_0 ,\data_out[7]_i_4_n_0 ,\data_out[7]_i_5_n_0 }),
        .\data_out_reg[9] (\data_out[9]_i_3_n_0 ));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
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
