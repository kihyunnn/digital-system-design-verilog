// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Apr 29 22:22:56 2025
// Host        : DESKTOP-ED72SOS running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               E:/Dev/dev-git/digital-system-design-verilog/design_practice/midterm/midterm/midterm.sim/sim_1/synth/func/xsim/tb_problem1_func_synth.v
// Design      : problem1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module problem1
   (X_1,
    Y_1,
    X_2,
    Y_2,
    A,
    B,
    C,
    D);
  input [7:0]X_1;
  input [7:0]Y_1;
  input [7:0]X_2;
  input [7:0]Y_2;
  output [15:0]A;
  output [15:0]B;
  output [15:0]C;
  output [19:0]D;

  wire [15:0]A;
  wire [15:0]A_OBUF;
  wire \A_OBUF[10]_inst_i_10_n_0 ;
  wire \A_OBUF[10]_inst_i_2_n_0 ;
  wire \A_OBUF[10]_inst_i_3_n_0 ;
  wire \A_OBUF[10]_inst_i_4_n_0 ;
  wire \A_OBUF[10]_inst_i_5_n_0 ;
  wire \A_OBUF[10]_inst_i_8_n_0 ;
  wire \A_OBUF[10]_inst_i_9_n_0 ;
  wire \A_OBUF[11]_inst_i_10_n_0 ;
  wire \A_OBUF[11]_inst_i_11_n_0 ;
  wire \A_OBUF[11]_inst_i_12_n_0 ;
  wire \A_OBUF[11]_inst_i_13_n_0 ;
  wire \A_OBUF[11]_inst_i_14_n_0 ;
  wire \A_OBUF[11]_inst_i_15_n_0 ;
  wire \A_OBUF[11]_inst_i_16_n_0 ;
  wire \A_OBUF[11]_inst_i_17_n_0 ;
  wire \A_OBUF[11]_inst_i_20_n_0 ;
  wire \A_OBUF[11]_inst_i_2_n_0 ;
  wire \A_OBUF[11]_inst_i_6_n_0 ;
  wire \A_OBUF[11]_inst_i_7_n_0 ;
  wire \A_OBUF[11]_inst_i_8_n_0 ;
  wire \A_OBUF[11]_inst_i_9_n_0 ;
  wire \A_OBUF[12]_inst_i_10_n_0 ;
  wire \A_OBUF[12]_inst_i_12_n_0 ;
  wire \A_OBUF[12]_inst_i_13_n_0 ;
  wire \A_OBUF[12]_inst_i_14_n_0 ;
  wire \A_OBUF[12]_inst_i_15_n_0 ;
  wire \A_OBUF[12]_inst_i_16_n_0 ;
  wire \A_OBUF[12]_inst_i_17_n_0 ;
  wire \A_OBUF[12]_inst_i_18_n_0 ;
  wire \A_OBUF[12]_inst_i_19_n_0 ;
  wire \A_OBUF[12]_inst_i_20_n_0 ;
  wire \A_OBUF[12]_inst_i_23_n_0 ;
  wire \A_OBUF[12]_inst_i_3_n_0 ;
  wire \A_OBUF[12]_inst_i_4_n_0 ;
  wire \A_OBUF[12]_inst_i_6_n_0 ;
  wire \A_OBUF[12]_inst_i_7_n_0 ;
  wire \A_OBUF[12]_inst_i_8_n_0 ;
  wire \A_OBUF[12]_inst_i_9_n_0 ;
  wire \A_OBUF[14]_inst_i_2_n_0 ;
  wire \A_OBUF[15]_inst_i_2_n_0 ;
  wire \A_OBUF[15]_inst_i_4_n_0 ;
  wire \A_OBUF[15]_inst_i_5_n_0 ;
  wire \A_OBUF[5]_inst_i_2_n_0 ;
  wire \A_OBUF[5]_inst_i_3_n_0 ;
  wire \A_OBUF[5]_inst_i_4_n_0 ;
  wire \A_OBUF[5]_inst_i_7_n_0 ;
  wire \A_OBUF[7]_inst_i_2_n_0 ;
  wire \A_OBUF[7]_inst_i_3_n_0 ;
  wire \A_OBUF[7]_inst_i_4_n_0 ;
  wire \A_OBUF[8]_inst_i_2_n_0 ;
  wire [15:0]B;
  wire [15:0]B_OBUF;
  wire \B_OBUF[10]_inst_i_10_n_0 ;
  wire \B_OBUF[10]_inst_i_2_n_0 ;
  wire \B_OBUF[10]_inst_i_3_n_0 ;
  wire \B_OBUF[10]_inst_i_4_n_0 ;
  wire \B_OBUF[10]_inst_i_5_n_0 ;
  wire \B_OBUF[10]_inst_i_8_n_0 ;
  wire \B_OBUF[10]_inst_i_9_n_0 ;
  wire \B_OBUF[11]_inst_i_10_n_0 ;
  wire \B_OBUF[11]_inst_i_11_n_0 ;
  wire \B_OBUF[11]_inst_i_12_n_0 ;
  wire \B_OBUF[11]_inst_i_13_n_0 ;
  wire \B_OBUF[11]_inst_i_14_n_0 ;
  wire \B_OBUF[11]_inst_i_15_n_0 ;
  wire \B_OBUF[11]_inst_i_16_n_0 ;
  wire \B_OBUF[11]_inst_i_17_n_0 ;
  wire \B_OBUF[11]_inst_i_20_n_0 ;
  wire \B_OBUF[11]_inst_i_2_n_0 ;
  wire \B_OBUF[11]_inst_i_6_n_0 ;
  wire \B_OBUF[11]_inst_i_7_n_0 ;
  wire \B_OBUF[11]_inst_i_8_n_0 ;
  wire \B_OBUF[11]_inst_i_9_n_0 ;
  wire \B_OBUF[12]_inst_i_10_n_0 ;
  wire \B_OBUF[12]_inst_i_12_n_0 ;
  wire \B_OBUF[12]_inst_i_13_n_0 ;
  wire \B_OBUF[12]_inst_i_14_n_0 ;
  wire \B_OBUF[12]_inst_i_15_n_0 ;
  wire \B_OBUF[12]_inst_i_16_n_0 ;
  wire \B_OBUF[12]_inst_i_17_n_0 ;
  wire \B_OBUF[12]_inst_i_18_n_0 ;
  wire \B_OBUF[12]_inst_i_19_n_0 ;
  wire \B_OBUF[12]_inst_i_20_n_0 ;
  wire \B_OBUF[12]_inst_i_23_n_0 ;
  wire \B_OBUF[12]_inst_i_3_n_0 ;
  wire \B_OBUF[12]_inst_i_4_n_0 ;
  wire \B_OBUF[12]_inst_i_6_n_0 ;
  wire \B_OBUF[12]_inst_i_7_n_0 ;
  wire \B_OBUF[12]_inst_i_8_n_0 ;
  wire \B_OBUF[12]_inst_i_9_n_0 ;
  wire \B_OBUF[14]_inst_i_2_n_0 ;
  wire \B_OBUF[15]_inst_i_2_n_0 ;
  wire \B_OBUF[15]_inst_i_4_n_0 ;
  wire \B_OBUF[15]_inst_i_5_n_0 ;
  wire \B_OBUF[5]_inst_i_2_n_0 ;
  wire \B_OBUF[5]_inst_i_3_n_0 ;
  wire \B_OBUF[5]_inst_i_4_n_0 ;
  wire \B_OBUF[5]_inst_i_7_n_0 ;
  wire \B_OBUF[7]_inst_i_2_n_0 ;
  wire \B_OBUF[7]_inst_i_3_n_0 ;
  wire \B_OBUF[7]_inst_i_4_n_0 ;
  wire \B_OBUF[8]_inst_i_2_n_0 ;
  wire [15:0]C;
  wire [15:1]C_OBUF;
  wire \C_OBUF[14]_inst_i_3_n_0 ;
  wire \C_OBUF[14]_inst_i_4_n_0 ;
  wire \C_OBUF[1]_inst_i_2_n_0 ;
  wire \C_OBUF[9]_inst_i_3_n_0 ;
  wire \C_OBUF[9]_inst_i_4_n_0 ;
  wire [19:0]D;
  wire [19:0]D_OBUF;
  wire \D_OBUF[12]_inst_i_10_n_0 ;
  wire \D_OBUF[12]_inst_i_11_n_0 ;
  wire \D_OBUF[12]_inst_i_12_n_0 ;
  wire \D_OBUF[12]_inst_i_13_n_0 ;
  wire \D_OBUF[12]_inst_i_14_n_0 ;
  wire \D_OBUF[12]_inst_i_15_n_0 ;
  wire \D_OBUF[12]_inst_i_16_n_0 ;
  wire \D_OBUF[12]_inst_i_17_n_0 ;
  wire \D_OBUF[12]_inst_i_18_n_0 ;
  wire \D_OBUF[12]_inst_i_19_n_0 ;
  wire \D_OBUF[12]_inst_i_20_n_0 ;
  wire \D_OBUF[12]_inst_i_21_n_0 ;
  wire \D_OBUF[12]_inst_i_22_n_0 ;
  wire \D_OBUF[12]_inst_i_23_n_0 ;
  wire \D_OBUF[12]_inst_i_24_n_0 ;
  wire \D_OBUF[12]_inst_i_25_n_0 ;
  wire \D_OBUF[12]_inst_i_26_n_0 ;
  wire \D_OBUF[12]_inst_i_27_n_0 ;
  wire \D_OBUF[12]_inst_i_28_n_0 ;
  wire \D_OBUF[12]_inst_i_2_n_0 ;
  wire \D_OBUF[12]_inst_i_3_n_0 ;
  wire \D_OBUF[12]_inst_i_4_n_0 ;
  wire \D_OBUF[12]_inst_i_5_n_0 ;
  wire \D_OBUF[12]_inst_i_6_n_0 ;
  wire \D_OBUF[12]_inst_i_7_n_0 ;
  wire \D_OBUF[12]_inst_i_8_n_0 ;
  wire \D_OBUF[12]_inst_i_9_n_0 ;
  wire \D_OBUF[16]_inst_i_2_n_0 ;
  wire \D_OBUF[16]_inst_i_3_n_0 ;
  wire \D_OBUF[16]_inst_i_4_n_0 ;
  wire \D_OBUF[19]_inst_i_10_n_0 ;
  wire \D_OBUF[19]_inst_i_11_n_0 ;
  wire \D_OBUF[19]_inst_i_12_n_0 ;
  wire \D_OBUF[19]_inst_i_13_n_0 ;
  wire \D_OBUF[19]_inst_i_14_n_0 ;
  wire \D_OBUF[19]_inst_i_15_n_0 ;
  wire \D_OBUF[19]_inst_i_16_n_0 ;
  wire \D_OBUF[19]_inst_i_18_n_0 ;
  wire \D_OBUF[19]_inst_i_19_n_0 ;
  wire \D_OBUF[19]_inst_i_20_n_0 ;
  wire \D_OBUF[19]_inst_i_21_n_0 ;
  wire \D_OBUF[19]_inst_i_22_n_0 ;
  wire \D_OBUF[19]_inst_i_23_n_0 ;
  wire \D_OBUF[19]_inst_i_24_n_0 ;
  wire \D_OBUF[19]_inst_i_25_n_0 ;
  wire \D_OBUF[19]_inst_i_26_n_0 ;
  wire \D_OBUF[19]_inst_i_27_n_0 ;
  wire \D_OBUF[19]_inst_i_28_n_0 ;
  wire \D_OBUF[19]_inst_i_2_n_0 ;
  wire \D_OBUF[19]_inst_i_30_n_0 ;
  wire \D_OBUF[19]_inst_i_31_n_0 ;
  wire \D_OBUF[19]_inst_i_32_n_0 ;
  wire \D_OBUF[19]_inst_i_33_n_0 ;
  wire \D_OBUF[19]_inst_i_34_n_0 ;
  wire \D_OBUF[19]_inst_i_35_n_0 ;
  wire \D_OBUF[19]_inst_i_36_n_0 ;
  wire \D_OBUF[19]_inst_i_37_n_0 ;
  wire \D_OBUF[19]_inst_i_38_n_0 ;
  wire \D_OBUF[19]_inst_i_39_n_0 ;
  wire \D_OBUF[19]_inst_i_3_n_0 ;
  wire \D_OBUF[19]_inst_i_40_n_0 ;
  wire \D_OBUF[19]_inst_i_41_n_0 ;
  wire \D_OBUF[19]_inst_i_4_n_0 ;
  wire \D_OBUF[19]_inst_i_5_n_0 ;
  wire \D_OBUF[19]_inst_i_6_n_0 ;
  wire \D_OBUF[19]_inst_i_7_n_0 ;
  wire \D_OBUF[19]_inst_i_8_n_0 ;
  wire \D_OBUF[19]_inst_i_9_n_0 ;
  wire \D_OBUF[4]_inst_i_2_n_0 ;
  wire \D_OBUF[4]_inst_i_3_n_0 ;
  wire \D_OBUF[4]_inst_i_4_n_0 ;
  wire \D_OBUF[8]_inst_i_10_n_0 ;
  wire \D_OBUF[8]_inst_i_11_n_0 ;
  wire \D_OBUF[8]_inst_i_12_n_0 ;
  wire \D_OBUF[8]_inst_i_13_n_0 ;
  wire \D_OBUF[8]_inst_i_14_n_0 ;
  wire \D_OBUF[8]_inst_i_15_n_0 ;
  wire \D_OBUF[8]_inst_i_2_n_0 ;
  wire \D_OBUF[8]_inst_i_3_n_0 ;
  wire \D_OBUF[8]_inst_i_4_n_0 ;
  wire \D_OBUF[8]_inst_i_5_n_0 ;
  wire \D_OBUF[8]_inst_i_6_n_0 ;
  wire \D_OBUF[8]_inst_i_7_n_0 ;
  wire \D_OBUF[8]_inst_i_8_n_0 ;
  wire \D_OBUF[8]_inst_i_9_n_0 ;
  wire [7:0]X_1;
  wire [7:0]X_1_IBUF;
  wire [7:0]X_2;
  wire [7:0]X_2_IBUF;
  wire [7:0]Y_1;
  wire [7:0]Y_1_IBUF;
  wire [7:0]Y_2;
  wire [7:0]Y_2_IBUF;
  wire [23:21]\bcd_inst/temp_reg1_out0_out ;
  wire \cla_inst/Ci_2 ;
  wire \cla_inst/Ci_3 ;
  wire [0:0]\cla_inst/tGG ;
  wire [3:3]\cla_inst/u0/P_bit ;
  wire \cla_inst/u0/m1/C_1__1 ;
  wire [3:3]\cla_inst/u1/P_bit ;
  wire \cla_inst/u1/m1/C_0__1 ;
  wire [3:2]\cla_inst/u2/P_bit ;
  wire \cla_inst/u2/m1/C_1__1 ;
  wire [3:3]\cla_inst/u3/C_internal ;
  wire \cla_inst/u3/m1/C_0__1 ;
  wire [2:2]\csm1_inst/final_adder_unit/tGG ;
  wire [3:3]\csm1_inst/final_adder_unit/u2/C_internal ;
  wire [3:2]\csm1_inst/final_adder_unit/u2/P_bit ;
  wire \csm1_inst/final_adder_unit/u2/m1/C_1__1 ;
  wire [2:1]\csm1_inst/final_adder_unit/u3/P_bit ;
  wire \csm1_inst/final_adder_unit/u3/m1/C_0__1 ;
  wire \csm1_inst/final_adder_unit/u3/m1/C_1__1 ;
  wire [13:8]\csm1_inst/final_carry ;
  wire \csm1_inst/p_42_out ;
  wire \csm1_inst/p_43_out ;
  wire \csm1_inst/p_44_out ;
  wire \csm1_inst/p_45_out ;
  wire \csm1_inst/p_46_out ;
  wire \csm1_inst/p_47_out ;
  wire \csm1_inst/p_48_out ;
  wire \csm1_inst/p_49_out ;
  wire \csm1_inst/p_50_out ;
  wire \csm1_inst/p_51_out ;
  wire \csm1_inst/p_52_out ;
  wire \csm1_inst/p_53_out ;
  wire [2:2]\csm2_inst/final_adder_unit/tGG ;
  wire [3:3]\csm2_inst/final_adder_unit/u2/C_internal ;
  wire [3:2]\csm2_inst/final_adder_unit/u2/P_bit ;
  wire \csm2_inst/final_adder_unit/u2/m1/C_1__1 ;
  wire [2:1]\csm2_inst/final_adder_unit/u3/P_bit ;
  wire \csm2_inst/final_adder_unit/u3/m1/C_0__1 ;
  wire \csm2_inst/final_adder_unit/u3/m1/C_1__1 ;
  wire [13:8]\csm2_inst/final_carry ;
  wire \csm2_inst/p_42_out ;
  wire \csm2_inst/p_43_out ;
  wire \csm2_inst/p_44_out ;
  wire \csm2_inst/p_45_out ;
  wire \csm2_inst/p_46_out ;
  wire \csm2_inst/p_47_out ;
  wire \csm2_inst/p_48_out ;
  wire \csm2_inst/p_49_out ;
  wire \csm2_inst/p_50_out ;
  wire \csm2_inst/p_51_out ;
  wire \csm2_inst/p_52_out ;
  wire \csm2_inst/p_53_out ;

  OBUF \A_OBUF[0]_inst 
       (.I(A_OBUF[0]),
        .O(A[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A_OBUF[0]_inst_i_1 
       (.I0(X_1_IBUF[0]),
        .I1(Y_1_IBUF[0]),
        .O(A_OBUF[0]));
  OBUF \A_OBUF[10]_inst 
       (.I(A_OBUF[10]),
        .O(A[10]));
  LUT6 #(
    .INIT(64'h10F771FFEF088E00)) 
    \A_OBUF[10]_inst_i_1 
       (.I0(\A_OBUF[10]_inst_i_2_n_0 ),
        .I1(\A_OBUF[10]_inst_i_3_n_0 ),
        .I2(\A_OBUF[10]_inst_i_4_n_0 ),
        .I3(\A_OBUF[10]_inst_i_5_n_0 ),
        .I4(\csm1_inst/final_carry [8]),
        .I5(\csm1_inst/final_adder_unit/u2/P_bit [2]),
        .O(A_OBUF[10]));
  LUT6 #(
    .INIT(64'hADD5522A077FF880)) 
    \A_OBUF[10]_inst_i_10 
       (.I0(Y_1_IBUF[2]),
        .I1(X_1_IBUF[4]),
        .I2(\A_OBUF[11]_inst_i_15_n_0 ),
        .I3(\A_OBUF[11]_inst_i_16_n_0 ),
        .I4(\A_OBUF[11]_inst_i_17_n_0 ),
        .I5(X_1_IBUF[5]),
        .O(\A_OBUF[10]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAF880A8800000)) 
    \A_OBUF[10]_inst_i_2 
       (.I0(Y_1_IBUF[1]),
        .I1(X_1_IBUF[5]),
        .I2(\A_OBUF[10]_inst_i_8_n_0 ),
        .I3(\A_OBUF[10]_inst_i_9_n_0 ),
        .I4(X_1_IBUF[6]),
        .I5(\A_OBUF[10]_inst_i_10_n_0 ),
        .O(\A_OBUF[10]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \A_OBUF[10]_inst_i_3 
       (.I0(\A_OBUF[11]_inst_i_8_n_0 ),
        .I1(\A_OBUF[11]_inst_i_9_n_0 ),
        .I2(X_1_IBUF[6]),
        .I3(Y_1_IBUF[2]),
        .O(\A_OBUF[10]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \A_OBUF[10]_inst_i_4 
       (.I0(Y_1_IBUF[1]),
        .I1(X_1_IBUF[7]),
        .O(\A_OBUF[10]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hADD5522A077FF880)) 
    \A_OBUF[10]_inst_i_5 
       (.I0(Y_1_IBUF[2]),
        .I1(X_1_IBUF[6]),
        .I2(\A_OBUF[11]_inst_i_8_n_0 ),
        .I3(\A_OBUF[11]_inst_i_9_n_0 ),
        .I4(\A_OBUF[11]_inst_i_10_n_0 ),
        .I5(X_1_IBUF[7]),
        .O(\A_OBUF[10]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAF880A8800000)) 
    \A_OBUF[10]_inst_i_6 
       (.I0(Y_1_IBUF[0]),
        .I1(X_1_IBUF[6]),
        .I2(\A_OBUF[7]_inst_i_2_n_0 ),
        .I3(\A_OBUF[7]_inst_i_3_n_0 ),
        .I4(X_1_IBUF[7]),
        .I5(\A_OBUF[7]_inst_i_4_n_0 ),
        .O(\csm1_inst/final_carry [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \A_OBUF[10]_inst_i_7 
       (.I0(\csm1_inst/final_carry [10]),
        .I1(\A_OBUF[11]_inst_i_2_n_0 ),
        .O(\csm1_inst/final_adder_unit/u2/P_bit [2]));
  LUT4 #(
    .INIT(16'h9666)) 
    \A_OBUF[10]_inst_i_8 
       (.I0(\A_OBUF[11]_inst_i_15_n_0 ),
        .I1(\A_OBUF[11]_inst_i_16_n_0 ),
        .I2(X_1_IBUF[4]),
        .I3(Y_1_IBUF[2]),
        .O(\A_OBUF[10]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAF880A8800000)) 
    \A_OBUF[10]_inst_i_9 
       (.I0(Y_1_IBUF[1]),
        .I1(X_1_IBUF[3]),
        .I2(\csm1_inst/p_50_out ),
        .I3(\csm1_inst/p_51_out ),
        .I4(X_1_IBUF[4]),
        .I5(\A_OBUF[5]_inst_i_7_n_0 ),
        .O(\A_OBUF[10]_inst_i_9_n_0 ));
  OBUF \A_OBUF[11]_inst 
       (.I(A_OBUF[11]),
        .O(A[11]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h17E8)) 
    \A_OBUF[11]_inst_i_1 
       (.I0(\A_OBUF[11]_inst_i_2_n_0 ),
        .I1(\csm1_inst/final_carry [10]),
        .I2(\csm1_inst/final_adder_unit/u2/m1/C_1__1 ),
        .I3(\csm1_inst/final_adder_unit/u2/P_bit [3]),
        .O(A_OBUF[11]));
  LUT6 #(
    .INIT(64'hE81717E83FC03FC0)) 
    \A_OBUF[11]_inst_i_10 
       (.I0(X_1_IBUF[5]),
        .I1(\A_OBUF[11]_inst_i_12_n_0 ),
        .I2(\A_OBUF[11]_inst_i_13_n_0 ),
        .I3(\A_OBUF[11]_inst_i_14_n_0 ),
        .I4(X_1_IBUF[6]),
        .I5(Y_1_IBUF[3]),
        .O(\A_OBUF[11]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787777888)) 
    \A_OBUF[11]_inst_i_11 
       (.I0(X_1_IBUF[7]),
        .I1(Y_1_IBUF[4]),
        .I2(Y_1_IBUF[5]),
        .I3(X_1_IBUF[6]),
        .I4(\A_OBUF[12]_inst_i_9_n_0 ),
        .I5(\A_OBUF[12]_inst_i_8_n_0 ),
        .O(\A_OBUF[11]_inst_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \A_OBUF[11]_inst_i_12 
       (.I0(\A_OBUF[12]_inst_i_18_n_0 ),
        .I1(\A_OBUF[12]_inst_i_19_n_0 ),
        .I2(X_1_IBUF[4]),
        .I3(Y_1_IBUF[4]),
        .O(\A_OBUF[11]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAF880A8800000)) 
    \A_OBUF[11]_inst_i_13 
       (.I0(Y_1_IBUF[3]),
        .I1(X_1_IBUF[3]),
        .I2(\csm1_inst/p_46_out ),
        .I3(\csm1_inst/p_47_out ),
        .I4(X_1_IBUF[4]),
        .I5(\A_OBUF[11]_inst_i_20_n_0 ),
        .O(\A_OBUF[11]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E83FC03FC0)) 
    \A_OBUF[11]_inst_i_14 
       (.I0(X_1_IBUF[4]),
        .I1(\A_OBUF[12]_inst_i_18_n_0 ),
        .I2(\A_OBUF[12]_inst_i_19_n_0 ),
        .I3(\A_OBUF[12]_inst_i_20_n_0 ),
        .I4(X_1_IBUF[5]),
        .I5(Y_1_IBUF[4]),
        .O(\A_OBUF[11]_inst_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \A_OBUF[11]_inst_i_15 
       (.I0(\csm1_inst/p_46_out ),
        .I1(\csm1_inst/p_47_out ),
        .I2(X_1_IBUF[3]),
        .I3(Y_1_IBUF[3]),
        .O(\A_OBUF[11]_inst_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \A_OBUF[11]_inst_i_16 
       (.I0(Y_1_IBUF[2]),
        .I1(X_1_IBUF[3]),
        .I2(\csm1_inst/p_48_out ),
        .I3(\csm1_inst/p_49_out ),
        .O(\A_OBUF[11]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hADD5522A077FF880)) 
    \A_OBUF[11]_inst_i_17 
       (.I0(Y_1_IBUF[3]),
        .I1(X_1_IBUF[3]),
        .I2(\csm1_inst/p_46_out ),
        .I3(\csm1_inst/p_47_out ),
        .I4(\A_OBUF[11]_inst_i_20_n_0 ),
        .I5(X_1_IBUF[4]),
        .O(\A_OBUF[11]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h13DFEC206CA06CA0)) 
    \A_OBUF[11]_inst_i_18 
       (.I0(X_1_IBUF[1]),
        .I1(X_1_IBUF[0]),
        .I2(Y_1_IBUF[5]),
        .I3(Y_1_IBUF[6]),
        .I4(X_1_IBUF[2]),
        .I5(Y_1_IBUF[4]),
        .O(\csm1_inst/p_46_out ));
  LUT6 #(
    .INIT(64'hAA80C08000000000)) 
    \A_OBUF[11]_inst_i_19 
       (.I0(X_1_IBUF[2]),
        .I1(X_1_IBUF[1]),
        .I2(Y_1_IBUF[4]),
        .I3(X_1_IBUF[0]),
        .I4(Y_1_IBUF[5]),
        .I5(Y_1_IBUF[3]),
        .O(\csm1_inst/p_47_out ));
  LUT4 #(
    .INIT(16'h9666)) 
    \A_OBUF[11]_inst_i_2 
       (.I0(\A_OBUF[11]_inst_i_6_n_0 ),
        .I1(\A_OBUF[11]_inst_i_7_n_0 ),
        .I2(X_1_IBUF[7]),
        .I3(Y_1_IBUF[3]),
        .O(\A_OBUF[11]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \A_OBUF[11]_inst_i_20 
       (.I0(\csm1_inst/p_45_out ),
        .I1(\csm1_inst/p_44_out ),
        .I2(X_1_IBUF[3]),
        .I3(Y_1_IBUF[4]),
        .O(\A_OBUF[11]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8C88888808000)) 
    \A_OBUF[11]_inst_i_3 
       (.I0(X_1_IBUF[7]),
        .I1(Y_1_IBUF[2]),
        .I2(X_1_IBUF[6]),
        .I3(\A_OBUF[11]_inst_i_8_n_0 ),
        .I4(\A_OBUF[11]_inst_i_9_n_0 ),
        .I5(\A_OBUF[11]_inst_i_10_n_0 ),
        .O(\csm1_inst/final_carry [10]));
  LUT6 #(
    .INIT(64'hECCCC888C8888000)) 
    \A_OBUF[11]_inst_i_4 
       (.I0(\csm1_inst/final_carry [8]),
        .I1(\A_OBUF[10]_inst_i_5_n_0 ),
        .I2(Y_1_IBUF[1]),
        .I3(X_1_IBUF[7]),
        .I4(\A_OBUF[10]_inst_i_3_n_0 ),
        .I5(\A_OBUF[10]_inst_i_2_n_0 ),
        .O(\csm1_inst/final_adder_unit/u2/m1/C_1__1 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \A_OBUF[11]_inst_i_5 
       (.I0(Y_1_IBUF[3]),
        .I1(X_1_IBUF[7]),
        .I2(\A_OBUF[11]_inst_i_6_n_0 ),
        .I3(\A_OBUF[11]_inst_i_7_n_0 ),
        .I4(\A_OBUF[12]_inst_i_6_n_0 ),
        .I5(\A_OBUF[11]_inst_i_11_n_0 ),
        .O(\csm1_inst/final_adder_unit/u2/P_bit [3]));
  LUT6 #(
    .INIT(64'hFFC8C88888808000)) 
    \A_OBUF[11]_inst_i_6 
       (.I0(X_1_IBUF[6]),
        .I1(Y_1_IBUF[3]),
        .I2(X_1_IBUF[5]),
        .I3(\A_OBUF[11]_inst_i_12_n_0 ),
        .I4(\A_OBUF[11]_inst_i_13_n_0 ),
        .I5(\A_OBUF[11]_inst_i_14_n_0 ),
        .O(\A_OBUF[11]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \A_OBUF[11]_inst_i_7 
       (.I0(\A_OBUF[12]_inst_i_13_n_0 ),
        .I1(\A_OBUF[12]_inst_i_14_n_0 ),
        .I2(X_1_IBUF[6]),
        .I3(Y_1_IBUF[4]),
        .O(\A_OBUF[11]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \A_OBUF[11]_inst_i_8 
       (.I0(\A_OBUF[11]_inst_i_12_n_0 ),
        .I1(\A_OBUF[11]_inst_i_13_n_0 ),
        .I2(X_1_IBUF[5]),
        .I3(Y_1_IBUF[3]),
        .O(\A_OBUF[11]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAF880A8800000)) 
    \A_OBUF[11]_inst_i_9 
       (.I0(Y_1_IBUF[2]),
        .I1(X_1_IBUF[4]),
        .I2(\A_OBUF[11]_inst_i_15_n_0 ),
        .I3(\A_OBUF[11]_inst_i_16_n_0 ),
        .I4(X_1_IBUF[5]),
        .I5(\A_OBUF[11]_inst_i_17_n_0 ),
        .O(\A_OBUF[11]_inst_i_9_n_0 ));
  OBUF \A_OBUF[12]_inst 
       (.I(A_OBUF[12]),
        .O(A[12]));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \A_OBUF[12]_inst_i_1 
       (.I0(\csm1_inst/final_carry [12]),
        .I1(\A_OBUF[12]_inst_i_3_n_0 ),
        .I2(\A_OBUF[12]_inst_i_4_n_0 ),
        .I3(Y_1_IBUF[5]),
        .I4(X_1_IBUF[7]),
        .I5(\csm1_inst/final_adder_unit/tGG ),
        .O(A_OBUF[12]));
  LUT6 #(
    .INIT(64'h2000FBB2FBB22000)) 
    \A_OBUF[12]_inst_i_10 
       (.I0(\csm1_inst/final_carry [10]),
        .I1(\A_OBUF[12]_inst_i_17_n_0 ),
        .I2(\A_OBUF[11]_inst_i_6_n_0 ),
        .I3(\A_OBUF[11]_inst_i_7_n_0 ),
        .I4(\A_OBUF[11]_inst_i_11_n_0 ),
        .I5(\A_OBUF[12]_inst_i_6_n_0 ),
        .O(\A_OBUF[12]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \A_OBUF[12]_inst_i_11 
       (.I0(Y_1_IBUF[1]),
        .I1(X_1_IBUF[7]),
        .I2(\A_OBUF[10]_inst_i_3_n_0 ),
        .I3(\A_OBUF[10]_inst_i_2_n_0 ),
        .O(\csm1_inst/final_carry [9]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \A_OBUF[12]_inst_i_12 
       (.I0(\csm1_inst/final_adder_unit/u2/P_bit [3]),
        .I1(\A_OBUF[11]_inst_i_2_n_0 ),
        .I2(\csm1_inst/final_carry [10]),
        .O(\A_OBUF[12]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8C88888808000)) 
    \A_OBUF[12]_inst_i_13 
       (.I0(X_1_IBUF[5]),
        .I1(Y_1_IBUF[4]),
        .I2(X_1_IBUF[4]),
        .I3(\A_OBUF[12]_inst_i_18_n_0 ),
        .I4(\A_OBUF[12]_inst_i_19_n_0 ),
        .I5(\A_OBUF[12]_inst_i_20_n_0 ),
        .O(\A_OBUF[12]_inst_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \A_OBUF[12]_inst_i_14 
       (.I0(\A_OBUF[12]_inst_i_15_n_0 ),
        .I1(\A_OBUF[12]_inst_i_16_n_0 ),
        .I2(X_1_IBUF[5]),
        .I3(Y_1_IBUF[5]),
        .O(\A_OBUF[12]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8C88888808000)) 
    \A_OBUF[12]_inst_i_15 
       (.I0(X_1_IBUF[4]),
        .I1(Y_1_IBUF[5]),
        .I2(X_1_IBUF[3]),
        .I3(\csm1_inst/p_43_out ),
        .I4(\csm1_inst/p_42_out ),
        .I5(\A_OBUF[12]_inst_i_23_n_0 ),
        .O(\A_OBUF[12]_inst_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    \A_OBUF[12]_inst_i_16 
       (.I0(\A_OBUF[15]_inst_i_5_n_0 ),
        .I1(X_1_IBUF[4]),
        .I2(Y_1_IBUF[6]),
        .I3(X_1_IBUF[3]),
        .I4(Y_1_IBUF[7]),
        .O(\A_OBUF[12]_inst_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \A_OBUF[12]_inst_i_17 
       (.I0(Y_1_IBUF[3]),
        .I1(X_1_IBUF[7]),
        .O(\A_OBUF[12]_inst_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \A_OBUF[12]_inst_i_18 
       (.I0(Y_1_IBUF[4]),
        .I1(X_1_IBUF[3]),
        .I2(\csm1_inst/p_45_out ),
        .I3(\csm1_inst/p_44_out ),
        .O(\A_OBUF[12]_inst_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \A_OBUF[12]_inst_i_19 
       (.I0(\csm1_inst/p_43_out ),
        .I1(\csm1_inst/p_42_out ),
        .I2(X_1_IBUF[3]),
        .I3(Y_1_IBUF[5]),
        .O(\A_OBUF[12]_inst_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hEA80)) 
    \A_OBUF[12]_inst_i_2 
       (.I0(\A_OBUF[12]_inst_i_6_n_0 ),
        .I1(Y_1_IBUF[4]),
        .I2(X_1_IBUF[7]),
        .I3(\A_OBUF[12]_inst_i_7_n_0 ),
        .O(\csm1_inst/final_carry [12]));
  LUT6 #(
    .INIT(64'hE81717E83FC03FC0)) 
    \A_OBUF[12]_inst_i_20 
       (.I0(X_1_IBUF[3]),
        .I1(\csm1_inst/p_43_out ),
        .I2(\csm1_inst/p_42_out ),
        .I3(\A_OBUF[12]_inst_i_23_n_0 ),
        .I4(X_1_IBUF[4]),
        .I5(Y_1_IBUF[5]),
        .O(\A_OBUF[12]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hA0808080E0000000)) 
    \A_OBUF[12]_inst_i_21 
       (.I0(X_1_IBUF[2]),
        .I1(X_1_IBUF[0]),
        .I2(Y_1_IBUF[5]),
        .I3(Y_1_IBUF[6]),
        .I4(X_1_IBUF[1]),
        .I5(Y_1_IBUF[7]),
        .O(\csm1_inst/p_43_out ));
  LUT5 #(
    .INIT(32'h9FC0C0C0)) 
    \A_OBUF[12]_inst_i_22 
       (.I0(X_1_IBUF[0]),
        .I1(X_1_IBUF[2]),
        .I2(Y_1_IBUF[6]),
        .I3(X_1_IBUF[1]),
        .I4(Y_1_IBUF[7]),
        .O(\csm1_inst/p_42_out ));
  LUT6 #(
    .INIT(64'hA5FF7800F000F000)) 
    \A_OBUF[12]_inst_i_23 
       (.I0(X_1_IBUF[1]),
        .I1(X_1_IBUF[0]),
        .I2(X_1_IBUF[3]),
        .I3(Y_1_IBUF[6]),
        .I4(X_1_IBUF[2]),
        .I5(Y_1_IBUF[7]),
        .O(\A_OBUF[12]_inst_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hA080A000C0800000)) 
    \A_OBUF[12]_inst_i_24 
       (.I0(X_1_IBUF[2]),
        .I1(X_1_IBUF[1]),
        .I2(Y_1_IBUF[4]),
        .I3(X_1_IBUF[0]),
        .I4(Y_1_IBUF[5]),
        .I5(Y_1_IBUF[6]),
        .O(\csm1_inst/p_45_out ));
  LUT6 #(
    .INIT(64'h15BFEA406AC06AC0)) 
    \A_OBUF[12]_inst_i_25 
       (.I0(X_1_IBUF[0]),
        .I1(Y_1_IBUF[6]),
        .I2(X_1_IBUF[1]),
        .I3(Y_1_IBUF[7]),
        .I4(X_1_IBUF[2]),
        .I5(Y_1_IBUF[5]),
        .O(\csm1_inst/p_44_out ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \A_OBUF[12]_inst_i_3 
       (.I0(Y_1_IBUF[5]),
        .I1(X_1_IBUF[6]),
        .I2(\A_OBUF[12]_inst_i_8_n_0 ),
        .I3(\A_OBUF[12]_inst_i_9_n_0 ),
        .O(\A_OBUF[12]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    \A_OBUF[12]_inst_i_4 
       (.I0(\A_OBUF[15]_inst_i_4_n_0 ),
        .I1(X_1_IBUF[6]),
        .I2(Y_1_IBUF[6]),
        .I3(X_1_IBUF[5]),
        .I4(Y_1_IBUF[7]),
        .O(\A_OBUF[12]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAAAAAAAAAAA)) 
    \A_OBUF[12]_inst_i_5 
       (.I0(\A_OBUF[12]_inst_i_10_n_0 ),
        .I1(\A_OBUF[8]_inst_i_2_n_0 ),
        .I2(\csm1_inst/final_carry [8]),
        .I3(\A_OBUF[10]_inst_i_5_n_0 ),
        .I4(\csm1_inst/final_carry [9]),
        .I5(\A_OBUF[12]_inst_i_12_n_0 ),
        .O(\csm1_inst/final_adder_unit/tGG ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \A_OBUF[12]_inst_i_6 
       (.I0(Y_1_IBUF[4]),
        .I1(X_1_IBUF[6]),
        .I2(\A_OBUF[12]_inst_i_13_n_0 ),
        .I3(\A_OBUF[12]_inst_i_14_n_0 ),
        .O(\A_OBUF[12]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \A_OBUF[12]_inst_i_7 
       (.I0(\A_OBUF[12]_inst_i_8_n_0 ),
        .I1(\A_OBUF[12]_inst_i_9_n_0 ),
        .I2(X_1_IBUF[6]),
        .I3(Y_1_IBUF[5]),
        .O(\A_OBUF[12]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \A_OBUF[12]_inst_i_8 
       (.I0(Y_1_IBUF[5]),
        .I1(X_1_IBUF[5]),
        .I2(\A_OBUF[12]_inst_i_15_n_0 ),
        .I3(\A_OBUF[12]_inst_i_16_n_0 ),
        .O(\A_OBUF[12]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE73F18C078007800)) 
    \A_OBUF[12]_inst_i_9 
       (.I0(X_1_IBUF[3]),
        .I1(\A_OBUF[15]_inst_i_5_n_0 ),
        .I2(X_1_IBUF[4]),
        .I3(Y_1_IBUF[7]),
        .I4(X_1_IBUF[5]),
        .I5(Y_1_IBUF[6]),
        .O(\A_OBUF[12]_inst_i_9_n_0 ));
  OBUF \A_OBUF[13]_inst 
       (.I(A_OBUF[13]),
        .O(A[13]));
  LUT2 #(
    .INIT(4'h6)) 
    \A_OBUF[13]_inst_i_1 
       (.I0(\csm1_inst/final_adder_unit/u3/m1/C_0__1 ),
        .I1(\csm1_inst/final_adder_unit/u3/P_bit [1]),
        .O(A_OBUF[13]));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    \A_OBUF[13]_inst_i_2 
       (.I0(\A_OBUF[15]_inst_i_2_n_0 ),
        .I1(\csm1_inst/final_carry [13]),
        .I2(X_1_IBUF[7]),
        .I3(Y_1_IBUF[6]),
        .I4(X_1_IBUF[6]),
        .I5(Y_1_IBUF[7]),
        .O(\csm1_inst/final_adder_unit/u3/P_bit [1]));
  OBUF \A_OBUF[14]_inst 
       (.I(A_OBUF[14]),
        .O(A[14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h099FF660)) 
    \A_OBUF[14]_inst_i_1 
       (.I0(\A_OBUF[14]_inst_i_2_n_0 ),
        .I1(\A_OBUF[15]_inst_i_2_n_0 ),
        .I2(\csm1_inst/final_carry [13]),
        .I3(\csm1_inst/final_adder_unit/u3/m1/C_0__1 ),
        .I4(\csm1_inst/final_adder_unit/u3/P_bit [2]),
        .O(A_OBUF[14]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7888)) 
    \A_OBUF[14]_inst_i_2 
       (.I0(Y_1_IBUF[7]),
        .I1(X_1_IBUF[6]),
        .I2(Y_1_IBUF[6]),
        .I3(X_1_IBUF[7]),
        .O(\A_OBUF[14]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hEA80)) 
    \A_OBUF[14]_inst_i_3 
       (.I0(\A_OBUF[12]_inst_i_3_n_0 ),
        .I1(Y_1_IBUF[5]),
        .I2(X_1_IBUF[7]),
        .I3(\A_OBUF[12]_inst_i_4_n_0 ),
        .O(\csm1_inst/final_carry [13]));
  LUT6 #(
    .INIT(64'hE88E8E8E8EE8E8E8)) 
    \A_OBUF[14]_inst_i_4 
       (.I0(\csm1_inst/final_adder_unit/tGG ),
        .I1(\csm1_inst/final_carry [12]),
        .I2(\A_OBUF[12]_inst_i_4_n_0 ),
        .I3(Y_1_IBUF[5]),
        .I4(X_1_IBUF[7]),
        .I5(\A_OBUF[12]_inst_i_3_n_0 ),
        .O(\csm1_inst/final_adder_unit/u3/m1/C_0__1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h64280888)) 
    \A_OBUF[14]_inst_i_5 
       (.I0(X_1_IBUF[7]),
        .I1(Y_1_IBUF[7]),
        .I2(Y_1_IBUF[6]),
        .I3(X_1_IBUF[6]),
        .I4(\A_OBUF[15]_inst_i_2_n_0 ),
        .O(\csm1_inst/final_adder_unit/u3/P_bit [2]));
  OBUF \A_OBUF[15]_inst 
       (.I(A_OBUF[15]),
        .O(A[15]));
  LUT6 #(
    .INIT(64'hECA8888888808000)) 
    \A_OBUF[15]_inst_i_1 
       (.I0(X_1_IBUF[7]),
        .I1(Y_1_IBUF[7]),
        .I2(Y_1_IBUF[6]),
        .I3(X_1_IBUF[6]),
        .I4(\A_OBUF[15]_inst_i_2_n_0 ),
        .I5(\csm1_inst/final_adder_unit/u3/m1/C_1__1 ),
        .O(A_OBUF[15]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hEA808080)) 
    \A_OBUF[15]_inst_i_2 
       (.I0(\A_OBUF[15]_inst_i_4_n_0 ),
        .I1(X_1_IBUF[6]),
        .I2(Y_1_IBUF[6]),
        .I3(X_1_IBUF[5]),
        .I4(Y_1_IBUF[7]),
        .O(\A_OBUF[15]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8EE8)) 
    \A_OBUF[15]_inst_i_3 
       (.I0(\csm1_inst/final_adder_unit/u3/m1/C_0__1 ),
        .I1(\csm1_inst/final_carry [13]),
        .I2(\A_OBUF[15]_inst_i_2_n_0 ),
        .I3(\A_OBUF[14]_inst_i_2_n_0 ),
        .O(\csm1_inst/final_adder_unit/u3/m1/C_1__1 ));
  LUT6 #(
    .INIT(64'hF8C0E00080008000)) 
    \A_OBUF[15]_inst_i_4 
       (.I0(X_1_IBUF[3]),
        .I1(\A_OBUF[15]_inst_i_5_n_0 ),
        .I2(X_1_IBUF[4]),
        .I3(Y_1_IBUF[7]),
        .I4(X_1_IBUF[5]),
        .I5(Y_1_IBUF[6]),
        .O(\A_OBUF[15]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFA00800000000000)) 
    \A_OBUF[15]_inst_i_5 
       (.I0(X_1_IBUF[1]),
        .I1(X_1_IBUF[0]),
        .I2(X_1_IBUF[3]),
        .I3(Y_1_IBUF[6]),
        .I4(X_1_IBUF[2]),
        .I5(Y_1_IBUF[7]),
        .O(\A_OBUF[15]_inst_i_5_n_0 ));
  OBUF \A_OBUF[1]_inst 
       (.I(A_OBUF[1]),
        .O(A[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h7888)) 
    \A_OBUF[1]_inst_i_1 
       (.I0(X_1_IBUF[1]),
        .I1(Y_1_IBUF[0]),
        .I2(X_1_IBUF[0]),
        .I3(Y_1_IBUF[1]),
        .O(A_OBUF[1]));
  OBUF \A_OBUF[2]_inst 
       (.I(A_OBUF[2]),
        .O(A[2]));
  LUT6 #(
    .INIT(64'h07F7F80878887888)) 
    \A_OBUF[2]_inst_i_1 
       (.I0(X_1_IBUF[1]),
        .I1(Y_1_IBUF[1]),
        .I2(X_1_IBUF[0]),
        .I3(Y_1_IBUF[2]),
        .I4(X_1_IBUF[2]),
        .I5(Y_1_IBUF[0]),
        .O(A_OBUF[2]));
  OBUF \A_OBUF[3]_inst 
       (.I(A_OBUF[3]),
        .O(A[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \A_OBUF[3]_inst_i_1 
       (.I0(\csm1_inst/p_53_out ),
        .I1(\csm1_inst/p_52_out ),
        .I2(X_1_IBUF[3]),
        .I3(Y_1_IBUF[0]),
        .O(A_OBUF[3]));
  LUT6 #(
    .INIT(64'hAA800000C0800000)) 
    \A_OBUF[3]_inst_i_2 
       (.I0(X_1_IBUF[2]),
        .I1(X_1_IBUF[1]),
        .I2(Y_1_IBUF[1]),
        .I3(X_1_IBUF[0]),
        .I4(Y_1_IBUF[0]),
        .I5(Y_1_IBUF[2]),
        .O(\csm1_inst/p_53_out ));
  LUT6 #(
    .INIT(64'h07F7F80878887888)) 
    \A_OBUF[3]_inst_i_3 
       (.I0(X_1_IBUF[1]),
        .I1(Y_1_IBUF[2]),
        .I2(X_1_IBUF[0]),
        .I3(Y_1_IBUF[3]),
        .I4(X_1_IBUF[2]),
        .I5(Y_1_IBUF[1]),
        .O(\csm1_inst/p_52_out ));
  OBUF \A_OBUF[4]_inst 
       (.I(A_OBUF[4]),
        .O(A[4]));
  LUT4 #(
    .INIT(16'h9666)) 
    \A_OBUF[4]_inst_i_1 
       (.I0(\A_OBUF[5]_inst_i_2_n_0 ),
        .I1(\A_OBUF[5]_inst_i_3_n_0 ),
        .I2(X_1_IBUF[4]),
        .I3(Y_1_IBUF[0]),
        .O(A_OBUF[4]));
  OBUF \A_OBUF[5]_inst 
       (.I(A_OBUF[5]),
        .O(A[5]));
  LUT6 #(
    .INIT(64'hADD5522A077FF880)) 
    \A_OBUF[5]_inst_i_1 
       (.I0(Y_1_IBUF[0]),
        .I1(X_1_IBUF[4]),
        .I2(\A_OBUF[5]_inst_i_2_n_0 ),
        .I3(\A_OBUF[5]_inst_i_3_n_0 ),
        .I4(\A_OBUF[5]_inst_i_4_n_0 ),
        .I5(X_1_IBUF[5]),
        .O(A_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \A_OBUF[5]_inst_i_2 
       (.I0(Y_1_IBUF[0]),
        .I1(X_1_IBUF[3]),
        .I2(\csm1_inst/p_53_out ),
        .I3(\csm1_inst/p_52_out ),
        .O(\A_OBUF[5]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \A_OBUF[5]_inst_i_3 
       (.I0(\csm1_inst/p_50_out ),
        .I1(\csm1_inst/p_51_out ),
        .I2(X_1_IBUF[3]),
        .I3(Y_1_IBUF[1]),
        .O(\A_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hADD5522A077FF880)) 
    \A_OBUF[5]_inst_i_4 
       (.I0(Y_1_IBUF[1]),
        .I1(X_1_IBUF[3]),
        .I2(\csm1_inst/p_50_out ),
        .I3(\csm1_inst/p_51_out ),
        .I4(\A_OBUF[5]_inst_i_7_n_0 ),
        .I5(X_1_IBUF[4]),
        .O(\A_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2777D88878887888)) 
    \A_OBUF[5]_inst_i_5 
       (.I0(X_1_IBUF[0]),
        .I1(Y_1_IBUF[4]),
        .I2(X_1_IBUF[1]),
        .I3(Y_1_IBUF[3]),
        .I4(X_1_IBUF[2]),
        .I5(Y_1_IBUF[2]),
        .O(\csm1_inst/p_50_out ));
  LUT6 #(
    .INIT(64'hAA80C08000000000)) 
    \A_OBUF[5]_inst_i_6 
       (.I0(X_1_IBUF[2]),
        .I1(X_1_IBUF[1]),
        .I2(Y_1_IBUF[2]),
        .I3(X_1_IBUF[0]),
        .I4(Y_1_IBUF[3]),
        .I5(Y_1_IBUF[1]),
        .O(\csm1_inst/p_51_out ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \A_OBUF[5]_inst_i_7 
       (.I0(\csm1_inst/p_48_out ),
        .I1(\csm1_inst/p_49_out ),
        .I2(X_1_IBUF[3]),
        .I3(Y_1_IBUF[2]),
        .O(\A_OBUF[5]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h07F7F80878887888)) 
    \A_OBUF[5]_inst_i_8 
       (.I0(X_1_IBUF[1]),
        .I1(Y_1_IBUF[4]),
        .I2(X_1_IBUF[0]),
        .I3(Y_1_IBUF[5]),
        .I4(X_1_IBUF[2]),
        .I5(Y_1_IBUF[3]),
        .O(\csm1_inst/p_48_out ));
  LUT6 #(
    .INIT(64'hAE80808000000000)) 
    \A_OBUF[5]_inst_i_9 
       (.I0(X_1_IBUF[2]),
        .I1(X_1_IBUF[0]),
        .I2(Y_1_IBUF[4]),
        .I3(X_1_IBUF[1]),
        .I4(Y_1_IBUF[3]),
        .I5(Y_1_IBUF[2]),
        .O(\csm1_inst/p_49_out ));
  OBUF \A_OBUF[6]_inst 
       (.I(A_OBUF[6]),
        .O(A[6]));
  LUT4 #(
    .INIT(16'h9666)) 
    \A_OBUF[6]_inst_i_1 
       (.I0(\A_OBUF[7]_inst_i_2_n_0 ),
        .I1(\A_OBUF[7]_inst_i_3_n_0 ),
        .I2(X_1_IBUF[6]),
        .I3(Y_1_IBUF[0]),
        .O(A_OBUF[6]));
  OBUF \A_OBUF[7]_inst 
       (.I(A_OBUF[7]),
        .O(A[7]));
  LUT6 #(
    .INIT(64'hADD5522A077FF880)) 
    \A_OBUF[7]_inst_i_1 
       (.I0(Y_1_IBUF[0]),
        .I1(X_1_IBUF[6]),
        .I2(\A_OBUF[7]_inst_i_2_n_0 ),
        .I3(\A_OBUF[7]_inst_i_3_n_0 ),
        .I4(\A_OBUF[7]_inst_i_4_n_0 ),
        .I5(X_1_IBUF[7]),
        .O(A_OBUF[7]));
  LUT6 #(
    .INIT(64'hFAAAF880A8800000)) 
    \A_OBUF[7]_inst_i_2 
       (.I0(Y_1_IBUF[0]),
        .I1(X_1_IBUF[4]),
        .I2(\A_OBUF[5]_inst_i_2_n_0 ),
        .I3(\A_OBUF[5]_inst_i_3_n_0 ),
        .I4(X_1_IBUF[5]),
        .I5(\A_OBUF[5]_inst_i_4_n_0 ),
        .O(\A_OBUF[7]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \A_OBUF[7]_inst_i_3 
       (.I0(\A_OBUF[10]_inst_i_8_n_0 ),
        .I1(\A_OBUF[10]_inst_i_9_n_0 ),
        .I2(X_1_IBUF[5]),
        .I3(Y_1_IBUF[1]),
        .O(\A_OBUF[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hADD5522A077FF880)) 
    \A_OBUF[7]_inst_i_4 
       (.I0(Y_1_IBUF[1]),
        .I1(X_1_IBUF[5]),
        .I2(\A_OBUF[10]_inst_i_8_n_0 ),
        .I3(\A_OBUF[10]_inst_i_9_n_0 ),
        .I4(\A_OBUF[10]_inst_i_10_n_0 ),
        .I5(X_1_IBUF[6]),
        .O(\A_OBUF[7]_inst_i_4_n_0 ));
  OBUF \A_OBUF[8]_inst 
       (.I(A_OBUF[8]),
        .O(A[8]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \A_OBUF[8]_inst_i_1 
       (.I0(\csm1_inst/final_carry [8]),
        .I1(\A_OBUF[8]_inst_i_2_n_0 ),
        .O(A_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \A_OBUF[8]_inst_i_2 
       (.I0(\A_OBUF[10]_inst_i_3_n_0 ),
        .I1(\A_OBUF[10]_inst_i_2_n_0 ),
        .I2(X_1_IBUF[7]),
        .I3(Y_1_IBUF[1]),
        .O(\A_OBUF[8]_inst_i_2_n_0 ));
  OBUF \A_OBUF[9]_inst 
       (.I(A_OBUF[9]),
        .O(A[9]));
  LUT6 #(
    .INIT(64'h9333366636666CCC)) 
    \A_OBUF[9]_inst_i_1 
       (.I0(\csm1_inst/final_carry [8]),
        .I1(\A_OBUF[10]_inst_i_5_n_0 ),
        .I2(Y_1_IBUF[1]),
        .I3(X_1_IBUF[7]),
        .I4(\A_OBUF[10]_inst_i_3_n_0 ),
        .I5(\A_OBUF[10]_inst_i_2_n_0 ),
        .O(A_OBUF[9]));
  OBUF \B_OBUF[0]_inst 
       (.I(B_OBUF[0]),
        .O(B[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B_OBUF[0]_inst_i_1 
       (.I0(X_2_IBUF[0]),
        .I1(Y_2_IBUF[0]),
        .O(B_OBUF[0]));
  OBUF \B_OBUF[10]_inst 
       (.I(B_OBUF[10]),
        .O(B[10]));
  LUT6 #(
    .INIT(64'h10F771FFEF088E00)) 
    \B_OBUF[10]_inst_i_1 
       (.I0(\B_OBUF[10]_inst_i_2_n_0 ),
        .I1(\B_OBUF[10]_inst_i_3_n_0 ),
        .I2(\B_OBUF[10]_inst_i_4_n_0 ),
        .I3(\B_OBUF[10]_inst_i_5_n_0 ),
        .I4(\csm2_inst/final_carry [8]),
        .I5(\csm2_inst/final_adder_unit/u2/P_bit [2]),
        .O(B_OBUF[10]));
  LUT6 #(
    .INIT(64'hADD5522A077FF880)) 
    \B_OBUF[10]_inst_i_10 
       (.I0(Y_2_IBUF[2]),
        .I1(X_2_IBUF[4]),
        .I2(\B_OBUF[11]_inst_i_15_n_0 ),
        .I3(\B_OBUF[11]_inst_i_16_n_0 ),
        .I4(\B_OBUF[11]_inst_i_17_n_0 ),
        .I5(X_2_IBUF[5]),
        .O(\B_OBUF[10]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAF880A8800000)) 
    \B_OBUF[10]_inst_i_2 
       (.I0(Y_2_IBUF[1]),
        .I1(X_2_IBUF[5]),
        .I2(\B_OBUF[10]_inst_i_8_n_0 ),
        .I3(\B_OBUF[10]_inst_i_9_n_0 ),
        .I4(X_2_IBUF[6]),
        .I5(\B_OBUF[10]_inst_i_10_n_0 ),
        .O(\B_OBUF[10]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \B_OBUF[10]_inst_i_3 
       (.I0(\B_OBUF[11]_inst_i_8_n_0 ),
        .I1(\B_OBUF[11]_inst_i_9_n_0 ),
        .I2(X_2_IBUF[6]),
        .I3(Y_2_IBUF[2]),
        .O(\B_OBUF[10]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \B_OBUF[10]_inst_i_4 
       (.I0(Y_2_IBUF[1]),
        .I1(X_2_IBUF[7]),
        .O(\B_OBUF[10]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hADD5522A077FF880)) 
    \B_OBUF[10]_inst_i_5 
       (.I0(Y_2_IBUF[2]),
        .I1(X_2_IBUF[6]),
        .I2(\B_OBUF[11]_inst_i_8_n_0 ),
        .I3(\B_OBUF[11]_inst_i_9_n_0 ),
        .I4(\B_OBUF[11]_inst_i_10_n_0 ),
        .I5(X_2_IBUF[7]),
        .O(\B_OBUF[10]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAF880A8800000)) 
    \B_OBUF[10]_inst_i_6 
       (.I0(Y_2_IBUF[0]),
        .I1(X_2_IBUF[6]),
        .I2(\B_OBUF[7]_inst_i_2_n_0 ),
        .I3(\B_OBUF[7]_inst_i_3_n_0 ),
        .I4(X_2_IBUF[7]),
        .I5(\B_OBUF[7]_inst_i_4_n_0 ),
        .O(\csm2_inst/final_carry [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \B_OBUF[10]_inst_i_7 
       (.I0(\csm2_inst/final_carry [10]),
        .I1(\B_OBUF[11]_inst_i_2_n_0 ),
        .O(\csm2_inst/final_adder_unit/u2/P_bit [2]));
  LUT4 #(
    .INIT(16'h9666)) 
    \B_OBUF[10]_inst_i_8 
       (.I0(\B_OBUF[11]_inst_i_15_n_0 ),
        .I1(\B_OBUF[11]_inst_i_16_n_0 ),
        .I2(X_2_IBUF[4]),
        .I3(Y_2_IBUF[2]),
        .O(\B_OBUF[10]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAF880A8800000)) 
    \B_OBUF[10]_inst_i_9 
       (.I0(Y_2_IBUF[1]),
        .I1(X_2_IBUF[3]),
        .I2(\csm2_inst/p_50_out ),
        .I3(\csm2_inst/p_51_out ),
        .I4(X_2_IBUF[4]),
        .I5(\B_OBUF[5]_inst_i_7_n_0 ),
        .O(\B_OBUF[10]_inst_i_9_n_0 ));
  OBUF \B_OBUF[11]_inst 
       (.I(B_OBUF[11]),
        .O(B[11]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h17E8)) 
    \B_OBUF[11]_inst_i_1 
       (.I0(\B_OBUF[11]_inst_i_2_n_0 ),
        .I1(\csm2_inst/final_carry [10]),
        .I2(\csm2_inst/final_adder_unit/u2/m1/C_1__1 ),
        .I3(\csm2_inst/final_adder_unit/u2/P_bit [3]),
        .O(B_OBUF[11]));
  LUT6 #(
    .INIT(64'hE81717E83FC03FC0)) 
    \B_OBUF[11]_inst_i_10 
       (.I0(X_2_IBUF[5]),
        .I1(\B_OBUF[11]_inst_i_12_n_0 ),
        .I2(\B_OBUF[11]_inst_i_13_n_0 ),
        .I3(\B_OBUF[11]_inst_i_14_n_0 ),
        .I4(X_2_IBUF[6]),
        .I5(Y_2_IBUF[3]),
        .O(\B_OBUF[11]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787777888)) 
    \B_OBUF[11]_inst_i_11 
       (.I0(X_2_IBUF[7]),
        .I1(Y_2_IBUF[4]),
        .I2(Y_2_IBUF[5]),
        .I3(X_2_IBUF[6]),
        .I4(\B_OBUF[12]_inst_i_9_n_0 ),
        .I5(\B_OBUF[12]_inst_i_8_n_0 ),
        .O(\B_OBUF[11]_inst_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \B_OBUF[11]_inst_i_12 
       (.I0(\B_OBUF[12]_inst_i_18_n_0 ),
        .I1(\B_OBUF[12]_inst_i_19_n_0 ),
        .I2(X_2_IBUF[4]),
        .I3(Y_2_IBUF[4]),
        .O(\B_OBUF[11]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAF880A8800000)) 
    \B_OBUF[11]_inst_i_13 
       (.I0(Y_2_IBUF[3]),
        .I1(X_2_IBUF[3]),
        .I2(\csm2_inst/p_46_out ),
        .I3(\csm2_inst/p_47_out ),
        .I4(X_2_IBUF[4]),
        .I5(\B_OBUF[11]_inst_i_20_n_0 ),
        .O(\B_OBUF[11]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E83FC03FC0)) 
    \B_OBUF[11]_inst_i_14 
       (.I0(X_2_IBUF[4]),
        .I1(\B_OBUF[12]_inst_i_18_n_0 ),
        .I2(\B_OBUF[12]_inst_i_19_n_0 ),
        .I3(\B_OBUF[12]_inst_i_20_n_0 ),
        .I4(X_2_IBUF[5]),
        .I5(Y_2_IBUF[4]),
        .O(\B_OBUF[11]_inst_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \B_OBUF[11]_inst_i_15 
       (.I0(\csm2_inst/p_46_out ),
        .I1(\csm2_inst/p_47_out ),
        .I2(X_2_IBUF[3]),
        .I3(Y_2_IBUF[3]),
        .O(\B_OBUF[11]_inst_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \B_OBUF[11]_inst_i_16 
       (.I0(Y_2_IBUF[2]),
        .I1(X_2_IBUF[3]),
        .I2(\csm2_inst/p_48_out ),
        .I3(\csm2_inst/p_49_out ),
        .O(\B_OBUF[11]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hADD5522A077FF880)) 
    \B_OBUF[11]_inst_i_17 
       (.I0(Y_2_IBUF[3]),
        .I1(X_2_IBUF[3]),
        .I2(\csm2_inst/p_46_out ),
        .I3(\csm2_inst/p_47_out ),
        .I4(\B_OBUF[11]_inst_i_20_n_0 ),
        .I5(X_2_IBUF[4]),
        .O(\B_OBUF[11]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h13DFEC206CA06CA0)) 
    \B_OBUF[11]_inst_i_18 
       (.I0(X_2_IBUF[1]),
        .I1(X_2_IBUF[0]),
        .I2(Y_2_IBUF[5]),
        .I3(Y_2_IBUF[6]),
        .I4(X_2_IBUF[2]),
        .I5(Y_2_IBUF[4]),
        .O(\csm2_inst/p_46_out ));
  LUT6 #(
    .INIT(64'hAA80C08000000000)) 
    \B_OBUF[11]_inst_i_19 
       (.I0(X_2_IBUF[2]),
        .I1(X_2_IBUF[1]),
        .I2(Y_2_IBUF[4]),
        .I3(X_2_IBUF[0]),
        .I4(Y_2_IBUF[5]),
        .I5(Y_2_IBUF[3]),
        .O(\csm2_inst/p_47_out ));
  LUT4 #(
    .INIT(16'h9666)) 
    \B_OBUF[11]_inst_i_2 
       (.I0(\B_OBUF[11]_inst_i_6_n_0 ),
        .I1(\B_OBUF[11]_inst_i_7_n_0 ),
        .I2(X_2_IBUF[7]),
        .I3(Y_2_IBUF[3]),
        .O(\B_OBUF[11]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \B_OBUF[11]_inst_i_20 
       (.I0(\csm2_inst/p_45_out ),
        .I1(\csm2_inst/p_44_out ),
        .I2(X_2_IBUF[3]),
        .I3(Y_2_IBUF[4]),
        .O(\B_OBUF[11]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8C88888808000)) 
    \B_OBUF[11]_inst_i_3 
       (.I0(X_2_IBUF[7]),
        .I1(Y_2_IBUF[2]),
        .I2(X_2_IBUF[6]),
        .I3(\B_OBUF[11]_inst_i_8_n_0 ),
        .I4(\B_OBUF[11]_inst_i_9_n_0 ),
        .I5(\B_OBUF[11]_inst_i_10_n_0 ),
        .O(\csm2_inst/final_carry [10]));
  LUT6 #(
    .INIT(64'hECCCC888C8888000)) 
    \B_OBUF[11]_inst_i_4 
       (.I0(\csm2_inst/final_carry [8]),
        .I1(\B_OBUF[10]_inst_i_5_n_0 ),
        .I2(Y_2_IBUF[1]),
        .I3(X_2_IBUF[7]),
        .I4(\B_OBUF[10]_inst_i_3_n_0 ),
        .I5(\B_OBUF[10]_inst_i_2_n_0 ),
        .O(\csm2_inst/final_adder_unit/u2/m1/C_1__1 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \B_OBUF[11]_inst_i_5 
       (.I0(Y_2_IBUF[3]),
        .I1(X_2_IBUF[7]),
        .I2(\B_OBUF[11]_inst_i_6_n_0 ),
        .I3(\B_OBUF[11]_inst_i_7_n_0 ),
        .I4(\B_OBUF[12]_inst_i_6_n_0 ),
        .I5(\B_OBUF[11]_inst_i_11_n_0 ),
        .O(\csm2_inst/final_adder_unit/u2/P_bit [3]));
  LUT6 #(
    .INIT(64'hFFC8C88888808000)) 
    \B_OBUF[11]_inst_i_6 
       (.I0(X_2_IBUF[6]),
        .I1(Y_2_IBUF[3]),
        .I2(X_2_IBUF[5]),
        .I3(\B_OBUF[11]_inst_i_12_n_0 ),
        .I4(\B_OBUF[11]_inst_i_13_n_0 ),
        .I5(\B_OBUF[11]_inst_i_14_n_0 ),
        .O(\B_OBUF[11]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \B_OBUF[11]_inst_i_7 
       (.I0(\B_OBUF[12]_inst_i_13_n_0 ),
        .I1(\B_OBUF[12]_inst_i_14_n_0 ),
        .I2(X_2_IBUF[6]),
        .I3(Y_2_IBUF[4]),
        .O(\B_OBUF[11]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \B_OBUF[11]_inst_i_8 
       (.I0(\B_OBUF[11]_inst_i_12_n_0 ),
        .I1(\B_OBUF[11]_inst_i_13_n_0 ),
        .I2(X_2_IBUF[5]),
        .I3(Y_2_IBUF[3]),
        .O(\B_OBUF[11]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAF880A8800000)) 
    \B_OBUF[11]_inst_i_9 
       (.I0(Y_2_IBUF[2]),
        .I1(X_2_IBUF[4]),
        .I2(\B_OBUF[11]_inst_i_15_n_0 ),
        .I3(\B_OBUF[11]_inst_i_16_n_0 ),
        .I4(X_2_IBUF[5]),
        .I5(\B_OBUF[11]_inst_i_17_n_0 ),
        .O(\B_OBUF[11]_inst_i_9_n_0 ));
  OBUF \B_OBUF[12]_inst 
       (.I(B_OBUF[12]),
        .O(B[12]));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \B_OBUF[12]_inst_i_1 
       (.I0(\csm2_inst/final_carry [12]),
        .I1(\B_OBUF[12]_inst_i_3_n_0 ),
        .I2(\B_OBUF[12]_inst_i_4_n_0 ),
        .I3(Y_2_IBUF[5]),
        .I4(X_2_IBUF[7]),
        .I5(\csm2_inst/final_adder_unit/tGG ),
        .O(B_OBUF[12]));
  LUT6 #(
    .INIT(64'h2000FBB2FBB22000)) 
    \B_OBUF[12]_inst_i_10 
       (.I0(\csm2_inst/final_carry [10]),
        .I1(\B_OBUF[12]_inst_i_17_n_0 ),
        .I2(\B_OBUF[11]_inst_i_6_n_0 ),
        .I3(\B_OBUF[11]_inst_i_7_n_0 ),
        .I4(\B_OBUF[11]_inst_i_11_n_0 ),
        .I5(\B_OBUF[12]_inst_i_6_n_0 ),
        .O(\B_OBUF[12]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \B_OBUF[12]_inst_i_11 
       (.I0(Y_2_IBUF[1]),
        .I1(X_2_IBUF[7]),
        .I2(\B_OBUF[10]_inst_i_3_n_0 ),
        .I3(\B_OBUF[10]_inst_i_2_n_0 ),
        .O(\csm2_inst/final_carry [9]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \B_OBUF[12]_inst_i_12 
       (.I0(\csm2_inst/final_adder_unit/u2/P_bit [3]),
        .I1(\B_OBUF[11]_inst_i_2_n_0 ),
        .I2(\csm2_inst/final_carry [10]),
        .O(\B_OBUF[12]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8C88888808000)) 
    \B_OBUF[12]_inst_i_13 
       (.I0(X_2_IBUF[5]),
        .I1(Y_2_IBUF[4]),
        .I2(X_2_IBUF[4]),
        .I3(\B_OBUF[12]_inst_i_18_n_0 ),
        .I4(\B_OBUF[12]_inst_i_19_n_0 ),
        .I5(\B_OBUF[12]_inst_i_20_n_0 ),
        .O(\B_OBUF[12]_inst_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \B_OBUF[12]_inst_i_14 
       (.I0(\B_OBUF[12]_inst_i_15_n_0 ),
        .I1(\B_OBUF[12]_inst_i_16_n_0 ),
        .I2(X_2_IBUF[5]),
        .I3(Y_2_IBUF[5]),
        .O(\B_OBUF[12]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFC8C88888808000)) 
    \B_OBUF[12]_inst_i_15 
       (.I0(X_2_IBUF[4]),
        .I1(Y_2_IBUF[5]),
        .I2(X_2_IBUF[3]),
        .I3(\csm2_inst/p_43_out ),
        .I4(\csm2_inst/p_42_out ),
        .I5(\B_OBUF[12]_inst_i_23_n_0 ),
        .O(\B_OBUF[12]_inst_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    \B_OBUF[12]_inst_i_16 
       (.I0(\B_OBUF[15]_inst_i_5_n_0 ),
        .I1(X_2_IBUF[4]),
        .I2(Y_2_IBUF[6]),
        .I3(X_2_IBUF[3]),
        .I4(Y_2_IBUF[7]),
        .O(\B_OBUF[12]_inst_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \B_OBUF[12]_inst_i_17 
       (.I0(Y_2_IBUF[3]),
        .I1(X_2_IBUF[7]),
        .O(\B_OBUF[12]_inst_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \B_OBUF[12]_inst_i_18 
       (.I0(Y_2_IBUF[4]),
        .I1(X_2_IBUF[3]),
        .I2(\csm2_inst/p_45_out ),
        .I3(\csm2_inst/p_44_out ),
        .O(\B_OBUF[12]_inst_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \B_OBUF[12]_inst_i_19 
       (.I0(\csm2_inst/p_43_out ),
        .I1(\csm2_inst/p_42_out ),
        .I2(X_2_IBUF[3]),
        .I3(Y_2_IBUF[5]),
        .O(\B_OBUF[12]_inst_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hEA80)) 
    \B_OBUF[12]_inst_i_2 
       (.I0(\B_OBUF[12]_inst_i_6_n_0 ),
        .I1(Y_2_IBUF[4]),
        .I2(X_2_IBUF[7]),
        .I3(\B_OBUF[12]_inst_i_7_n_0 ),
        .O(\csm2_inst/final_carry [12]));
  LUT6 #(
    .INIT(64'hE81717E83FC03FC0)) 
    \B_OBUF[12]_inst_i_20 
       (.I0(X_2_IBUF[3]),
        .I1(\csm2_inst/p_43_out ),
        .I2(\csm2_inst/p_42_out ),
        .I3(\B_OBUF[12]_inst_i_23_n_0 ),
        .I4(X_2_IBUF[4]),
        .I5(Y_2_IBUF[5]),
        .O(\B_OBUF[12]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hA0808080E0000000)) 
    \B_OBUF[12]_inst_i_21 
       (.I0(X_2_IBUF[2]),
        .I1(X_2_IBUF[0]),
        .I2(Y_2_IBUF[5]),
        .I3(Y_2_IBUF[6]),
        .I4(X_2_IBUF[1]),
        .I5(Y_2_IBUF[7]),
        .O(\csm2_inst/p_43_out ));
  LUT5 #(
    .INIT(32'h9FC0C0C0)) 
    \B_OBUF[12]_inst_i_22 
       (.I0(X_2_IBUF[0]),
        .I1(X_2_IBUF[2]),
        .I2(Y_2_IBUF[6]),
        .I3(X_2_IBUF[1]),
        .I4(Y_2_IBUF[7]),
        .O(\csm2_inst/p_42_out ));
  LUT6 #(
    .INIT(64'hA5FF7800F000F000)) 
    \B_OBUF[12]_inst_i_23 
       (.I0(X_2_IBUF[1]),
        .I1(X_2_IBUF[0]),
        .I2(X_2_IBUF[3]),
        .I3(Y_2_IBUF[6]),
        .I4(X_2_IBUF[2]),
        .I5(Y_2_IBUF[7]),
        .O(\B_OBUF[12]_inst_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hA080A000C0800000)) 
    \B_OBUF[12]_inst_i_24 
       (.I0(X_2_IBUF[2]),
        .I1(X_2_IBUF[1]),
        .I2(Y_2_IBUF[4]),
        .I3(X_2_IBUF[0]),
        .I4(Y_2_IBUF[5]),
        .I5(Y_2_IBUF[6]),
        .O(\csm2_inst/p_45_out ));
  LUT6 #(
    .INIT(64'h15BFEA406AC06AC0)) 
    \B_OBUF[12]_inst_i_25 
       (.I0(X_2_IBUF[0]),
        .I1(Y_2_IBUF[6]),
        .I2(X_2_IBUF[1]),
        .I3(Y_2_IBUF[7]),
        .I4(X_2_IBUF[2]),
        .I5(Y_2_IBUF[5]),
        .O(\csm2_inst/p_44_out ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \B_OBUF[12]_inst_i_3 
       (.I0(Y_2_IBUF[5]),
        .I1(X_2_IBUF[6]),
        .I2(\B_OBUF[12]_inst_i_8_n_0 ),
        .I3(\B_OBUF[12]_inst_i_9_n_0 ),
        .O(\B_OBUF[12]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    \B_OBUF[12]_inst_i_4 
       (.I0(\B_OBUF[15]_inst_i_4_n_0 ),
        .I1(X_2_IBUF[6]),
        .I2(Y_2_IBUF[6]),
        .I3(X_2_IBUF[5]),
        .I4(Y_2_IBUF[7]),
        .O(\B_OBUF[12]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAAAAAAAAAAA)) 
    \B_OBUF[12]_inst_i_5 
       (.I0(\B_OBUF[12]_inst_i_10_n_0 ),
        .I1(\B_OBUF[8]_inst_i_2_n_0 ),
        .I2(\csm2_inst/final_carry [8]),
        .I3(\B_OBUF[10]_inst_i_5_n_0 ),
        .I4(\csm2_inst/final_carry [9]),
        .I5(\B_OBUF[12]_inst_i_12_n_0 ),
        .O(\csm2_inst/final_adder_unit/tGG ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \B_OBUF[12]_inst_i_6 
       (.I0(Y_2_IBUF[4]),
        .I1(X_2_IBUF[6]),
        .I2(\B_OBUF[12]_inst_i_13_n_0 ),
        .I3(\B_OBUF[12]_inst_i_14_n_0 ),
        .O(\B_OBUF[12]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \B_OBUF[12]_inst_i_7 
       (.I0(\B_OBUF[12]_inst_i_8_n_0 ),
        .I1(\B_OBUF[12]_inst_i_9_n_0 ),
        .I2(X_2_IBUF[6]),
        .I3(Y_2_IBUF[5]),
        .O(\B_OBUF[12]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \B_OBUF[12]_inst_i_8 
       (.I0(Y_2_IBUF[5]),
        .I1(X_2_IBUF[5]),
        .I2(\B_OBUF[12]_inst_i_15_n_0 ),
        .I3(\B_OBUF[12]_inst_i_16_n_0 ),
        .O(\B_OBUF[12]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE73F18C078007800)) 
    \B_OBUF[12]_inst_i_9 
       (.I0(X_2_IBUF[3]),
        .I1(\B_OBUF[15]_inst_i_5_n_0 ),
        .I2(X_2_IBUF[4]),
        .I3(Y_2_IBUF[7]),
        .I4(X_2_IBUF[5]),
        .I5(Y_2_IBUF[6]),
        .O(\B_OBUF[12]_inst_i_9_n_0 ));
  OBUF \B_OBUF[13]_inst 
       (.I(B_OBUF[13]),
        .O(B[13]));
  LUT2 #(
    .INIT(4'h6)) 
    \B_OBUF[13]_inst_i_1 
       (.I0(\csm2_inst/final_adder_unit/u3/m1/C_0__1 ),
        .I1(\csm2_inst/final_adder_unit/u3/P_bit [1]),
        .O(B_OBUF[13]));
  LUT6 #(
    .INIT(64'h6999966696669666)) 
    \B_OBUF[13]_inst_i_2 
       (.I0(\B_OBUF[15]_inst_i_2_n_0 ),
        .I1(\csm2_inst/final_carry [13]),
        .I2(X_2_IBUF[7]),
        .I3(Y_2_IBUF[6]),
        .I4(X_2_IBUF[6]),
        .I5(Y_2_IBUF[7]),
        .O(\csm2_inst/final_adder_unit/u3/P_bit [1]));
  OBUF \B_OBUF[14]_inst 
       (.I(B_OBUF[14]),
        .O(B[14]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h099FF660)) 
    \B_OBUF[14]_inst_i_1 
       (.I0(\B_OBUF[14]_inst_i_2_n_0 ),
        .I1(\B_OBUF[15]_inst_i_2_n_0 ),
        .I2(\csm2_inst/final_carry [13]),
        .I3(\csm2_inst/final_adder_unit/u3/m1/C_0__1 ),
        .I4(\csm2_inst/final_adder_unit/u3/P_bit [2]),
        .O(B_OBUF[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7888)) 
    \B_OBUF[14]_inst_i_2 
       (.I0(Y_2_IBUF[7]),
        .I1(X_2_IBUF[6]),
        .I2(Y_2_IBUF[6]),
        .I3(X_2_IBUF[7]),
        .O(\B_OBUF[14]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEA80)) 
    \B_OBUF[14]_inst_i_3 
       (.I0(\B_OBUF[12]_inst_i_3_n_0 ),
        .I1(Y_2_IBUF[5]),
        .I2(X_2_IBUF[7]),
        .I3(\B_OBUF[12]_inst_i_4_n_0 ),
        .O(\csm2_inst/final_carry [13]));
  LUT6 #(
    .INIT(64'hE88E8E8E8EE8E8E8)) 
    \B_OBUF[14]_inst_i_4 
       (.I0(\csm2_inst/final_adder_unit/tGG ),
        .I1(\csm2_inst/final_carry [12]),
        .I2(\B_OBUF[12]_inst_i_4_n_0 ),
        .I3(Y_2_IBUF[5]),
        .I4(X_2_IBUF[7]),
        .I5(\B_OBUF[12]_inst_i_3_n_0 ),
        .O(\csm2_inst/final_adder_unit/u3/m1/C_0__1 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h64280888)) 
    \B_OBUF[14]_inst_i_5 
       (.I0(X_2_IBUF[7]),
        .I1(Y_2_IBUF[7]),
        .I2(Y_2_IBUF[6]),
        .I3(X_2_IBUF[6]),
        .I4(\B_OBUF[15]_inst_i_2_n_0 ),
        .O(\csm2_inst/final_adder_unit/u3/P_bit [2]));
  OBUF \B_OBUF[15]_inst 
       (.I(B_OBUF[15]),
        .O(B[15]));
  LUT6 #(
    .INIT(64'hECA8888888808000)) 
    \B_OBUF[15]_inst_i_1 
       (.I0(X_2_IBUF[7]),
        .I1(Y_2_IBUF[7]),
        .I2(Y_2_IBUF[6]),
        .I3(X_2_IBUF[6]),
        .I4(\B_OBUF[15]_inst_i_2_n_0 ),
        .I5(\csm2_inst/final_adder_unit/u3/m1/C_1__1 ),
        .O(B_OBUF[15]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hEA808080)) 
    \B_OBUF[15]_inst_i_2 
       (.I0(\B_OBUF[15]_inst_i_4_n_0 ),
        .I1(X_2_IBUF[6]),
        .I2(Y_2_IBUF[6]),
        .I3(X_2_IBUF[5]),
        .I4(Y_2_IBUF[7]),
        .O(\B_OBUF[15]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8EE8)) 
    \B_OBUF[15]_inst_i_3 
       (.I0(\csm2_inst/final_adder_unit/u3/m1/C_0__1 ),
        .I1(\csm2_inst/final_carry [13]),
        .I2(\B_OBUF[15]_inst_i_2_n_0 ),
        .I3(\B_OBUF[14]_inst_i_2_n_0 ),
        .O(\csm2_inst/final_adder_unit/u3/m1/C_1__1 ));
  LUT6 #(
    .INIT(64'hF8C0E00080008000)) 
    \B_OBUF[15]_inst_i_4 
       (.I0(X_2_IBUF[3]),
        .I1(\B_OBUF[15]_inst_i_5_n_0 ),
        .I2(X_2_IBUF[4]),
        .I3(Y_2_IBUF[7]),
        .I4(X_2_IBUF[5]),
        .I5(Y_2_IBUF[6]),
        .O(\B_OBUF[15]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFA00800000000000)) 
    \B_OBUF[15]_inst_i_5 
       (.I0(X_2_IBUF[1]),
        .I1(X_2_IBUF[0]),
        .I2(X_2_IBUF[3]),
        .I3(Y_2_IBUF[6]),
        .I4(X_2_IBUF[2]),
        .I5(Y_2_IBUF[7]),
        .O(\B_OBUF[15]_inst_i_5_n_0 ));
  OBUF \B_OBUF[1]_inst 
       (.I(B_OBUF[1]),
        .O(B[1]));
  LUT4 #(
    .INIT(16'h7888)) 
    \B_OBUF[1]_inst_i_1 
       (.I0(X_2_IBUF[1]),
        .I1(Y_2_IBUF[0]),
        .I2(X_2_IBUF[0]),
        .I3(Y_2_IBUF[1]),
        .O(B_OBUF[1]));
  OBUF \B_OBUF[2]_inst 
       (.I(B_OBUF[2]),
        .O(B[2]));
  LUT6 #(
    .INIT(64'h13DFEC206CA06CA0)) 
    \B_OBUF[2]_inst_i_1 
       (.I0(X_2_IBUF[1]),
        .I1(X_2_IBUF[0]),
        .I2(Y_2_IBUF[1]),
        .I3(Y_2_IBUF[2]),
        .I4(X_2_IBUF[2]),
        .I5(Y_2_IBUF[0]),
        .O(B_OBUF[2]));
  OBUF \B_OBUF[3]_inst 
       (.I(B_OBUF[3]),
        .O(B[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \B_OBUF[3]_inst_i_1 
       (.I0(\csm2_inst/p_53_out ),
        .I1(\csm2_inst/p_52_out ),
        .I2(X_2_IBUF[3]),
        .I3(Y_2_IBUF[0]),
        .O(B_OBUF[3]));
  LUT6 #(
    .INIT(64'hA080A000C0800000)) 
    \B_OBUF[3]_inst_i_2 
       (.I0(X_2_IBUF[2]),
        .I1(X_2_IBUF[1]),
        .I2(Y_2_IBUF[0]),
        .I3(X_2_IBUF[0]),
        .I4(Y_2_IBUF[1]),
        .I5(Y_2_IBUF[2]),
        .O(\csm2_inst/p_53_out ));
  LUT6 #(
    .INIT(64'h07F7F80878887888)) 
    \B_OBUF[3]_inst_i_3 
       (.I0(X_2_IBUF[1]),
        .I1(Y_2_IBUF[2]),
        .I2(X_2_IBUF[0]),
        .I3(Y_2_IBUF[3]),
        .I4(X_2_IBUF[2]),
        .I5(Y_2_IBUF[1]),
        .O(\csm2_inst/p_52_out ));
  OBUF \B_OBUF[4]_inst 
       (.I(B_OBUF[4]),
        .O(B[4]));
  LUT4 #(
    .INIT(16'h9666)) 
    \B_OBUF[4]_inst_i_1 
       (.I0(\B_OBUF[5]_inst_i_2_n_0 ),
        .I1(\B_OBUF[5]_inst_i_3_n_0 ),
        .I2(X_2_IBUF[4]),
        .I3(Y_2_IBUF[0]),
        .O(B_OBUF[4]));
  OBUF \B_OBUF[5]_inst 
       (.I(B_OBUF[5]),
        .O(B[5]));
  LUT6 #(
    .INIT(64'hADD5522A077FF880)) 
    \B_OBUF[5]_inst_i_1 
       (.I0(Y_2_IBUF[0]),
        .I1(X_2_IBUF[4]),
        .I2(\B_OBUF[5]_inst_i_2_n_0 ),
        .I3(\B_OBUF[5]_inst_i_3_n_0 ),
        .I4(\B_OBUF[5]_inst_i_4_n_0 ),
        .I5(X_2_IBUF[5]),
        .O(B_OBUF[5]));
  LUT4 #(
    .INIT(16'hF880)) 
    \B_OBUF[5]_inst_i_2 
       (.I0(Y_2_IBUF[0]),
        .I1(X_2_IBUF[3]),
        .I2(\csm2_inst/p_53_out ),
        .I3(\csm2_inst/p_52_out ),
        .O(\B_OBUF[5]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9666)) 
    \B_OBUF[5]_inst_i_3 
       (.I0(\csm2_inst/p_50_out ),
        .I1(\csm2_inst/p_51_out ),
        .I2(X_2_IBUF[3]),
        .I3(Y_2_IBUF[1]),
        .O(\B_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hADD5522A077FF880)) 
    \B_OBUF[5]_inst_i_4 
       (.I0(Y_2_IBUF[1]),
        .I1(X_2_IBUF[3]),
        .I2(\csm2_inst/p_50_out ),
        .I3(\csm2_inst/p_51_out ),
        .I4(\B_OBUF[5]_inst_i_7_n_0 ),
        .I5(X_2_IBUF[4]),
        .O(\B_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h07F7F80878887888)) 
    \B_OBUF[5]_inst_i_5 
       (.I0(X_2_IBUF[1]),
        .I1(Y_2_IBUF[3]),
        .I2(X_2_IBUF[0]),
        .I3(Y_2_IBUF[4]),
        .I4(X_2_IBUF[2]),
        .I5(Y_2_IBUF[2]),
        .O(\csm2_inst/p_50_out ));
  LUT6 #(
    .INIT(64'hAA80C08000000000)) 
    \B_OBUF[5]_inst_i_6 
       (.I0(X_2_IBUF[2]),
        .I1(X_2_IBUF[1]),
        .I2(Y_2_IBUF[2]),
        .I3(X_2_IBUF[0]),
        .I4(Y_2_IBUF[3]),
        .I5(Y_2_IBUF[1]),
        .O(\csm2_inst/p_51_out ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \B_OBUF[5]_inst_i_7 
       (.I0(\csm2_inst/p_48_out ),
        .I1(\csm2_inst/p_49_out ),
        .I2(X_2_IBUF[3]),
        .I3(Y_2_IBUF[2]),
        .O(\B_OBUF[5]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h07F7F80878887888)) 
    \B_OBUF[5]_inst_i_8 
       (.I0(X_2_IBUF[1]),
        .I1(Y_2_IBUF[4]),
        .I2(X_2_IBUF[0]),
        .I3(Y_2_IBUF[5]),
        .I4(X_2_IBUF[2]),
        .I5(Y_2_IBUF[3]),
        .O(\csm2_inst/p_48_out ));
  LUT6 #(
    .INIT(64'hAA80C08000000000)) 
    \B_OBUF[5]_inst_i_9 
       (.I0(X_2_IBUF[2]),
        .I1(X_2_IBUF[1]),
        .I2(Y_2_IBUF[3]),
        .I3(X_2_IBUF[0]),
        .I4(Y_2_IBUF[4]),
        .I5(Y_2_IBUF[2]),
        .O(\csm2_inst/p_49_out ));
  OBUF \B_OBUF[6]_inst 
       (.I(B_OBUF[6]),
        .O(B[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \B_OBUF[6]_inst_i_1 
       (.I0(\B_OBUF[7]_inst_i_2_n_0 ),
        .I1(\B_OBUF[7]_inst_i_3_n_0 ),
        .I2(X_2_IBUF[6]),
        .I3(Y_2_IBUF[0]),
        .O(B_OBUF[6]));
  OBUF \B_OBUF[7]_inst 
       (.I(B_OBUF[7]),
        .O(B[7]));
  LUT6 #(
    .INIT(64'hADD5522A077FF880)) 
    \B_OBUF[7]_inst_i_1 
       (.I0(Y_2_IBUF[0]),
        .I1(X_2_IBUF[6]),
        .I2(\B_OBUF[7]_inst_i_2_n_0 ),
        .I3(\B_OBUF[7]_inst_i_3_n_0 ),
        .I4(\B_OBUF[7]_inst_i_4_n_0 ),
        .I5(X_2_IBUF[7]),
        .O(B_OBUF[7]));
  LUT6 #(
    .INIT(64'hFAAAF880A8800000)) 
    \B_OBUF[7]_inst_i_2 
       (.I0(Y_2_IBUF[0]),
        .I1(X_2_IBUF[4]),
        .I2(\B_OBUF[5]_inst_i_2_n_0 ),
        .I3(\B_OBUF[5]_inst_i_3_n_0 ),
        .I4(X_2_IBUF[5]),
        .I5(\B_OBUF[5]_inst_i_4_n_0 ),
        .O(\B_OBUF[7]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \B_OBUF[7]_inst_i_3 
       (.I0(\B_OBUF[10]_inst_i_8_n_0 ),
        .I1(\B_OBUF[10]_inst_i_9_n_0 ),
        .I2(X_2_IBUF[5]),
        .I3(Y_2_IBUF[1]),
        .O(\B_OBUF[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hADD5522A077FF880)) 
    \B_OBUF[7]_inst_i_4 
       (.I0(Y_2_IBUF[1]),
        .I1(X_2_IBUF[5]),
        .I2(\B_OBUF[10]_inst_i_8_n_0 ),
        .I3(\B_OBUF[10]_inst_i_9_n_0 ),
        .I4(\B_OBUF[10]_inst_i_10_n_0 ),
        .I5(X_2_IBUF[6]),
        .O(\B_OBUF[7]_inst_i_4_n_0 ));
  OBUF \B_OBUF[8]_inst 
       (.I(B_OBUF[8]),
        .O(B[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \B_OBUF[8]_inst_i_1 
       (.I0(\csm2_inst/final_carry [8]),
        .I1(\B_OBUF[8]_inst_i_2_n_0 ),
        .O(B_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \B_OBUF[8]_inst_i_2 
       (.I0(\B_OBUF[10]_inst_i_3_n_0 ),
        .I1(\B_OBUF[10]_inst_i_2_n_0 ),
        .I2(X_2_IBUF[7]),
        .I3(Y_2_IBUF[1]),
        .O(\B_OBUF[8]_inst_i_2_n_0 ));
  OBUF \B_OBUF[9]_inst 
       (.I(B_OBUF[9]),
        .O(B[9]));
  LUT6 #(
    .INIT(64'h9333366636666CCC)) 
    \B_OBUF[9]_inst_i_1 
       (.I0(\csm2_inst/final_carry [8]),
        .I1(\B_OBUF[10]_inst_i_5_n_0 ),
        .I2(Y_2_IBUF[1]),
        .I3(X_2_IBUF[7]),
        .I4(\B_OBUF[10]_inst_i_3_n_0 ),
        .I5(\B_OBUF[10]_inst_i_2_n_0 ),
        .O(B_OBUF[9]));
  OBUF \C_OBUF[0]_inst 
       (.I(D_OBUF[0]),
        .O(C[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7888)) 
    \C_OBUF[0]_inst_i_1 
       (.I0(X_2_IBUF[0]),
        .I1(Y_2_IBUF[0]),
        .I2(X_1_IBUF[0]),
        .I3(Y_1_IBUF[0]),
        .O(D_OBUF[0]));
  OBUF \C_OBUF[10]_inst 
       (.I(C_OBUF[10]),
        .O(C[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \C_OBUF[10]_inst_i_1 
       (.I0(\cla_inst/u2/m1/C_1__1 ),
        .I1(\cla_inst/u2/P_bit [2]),
        .O(C_OBUF[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \C_OBUF[10]_inst_i_2 
       (.I0(B_OBUF[10]),
        .I1(A_OBUF[10]),
        .O(\cla_inst/u2/P_bit [2]));
  OBUF \C_OBUF[11]_inst 
       (.I(C_OBUF[11]),
        .O(C[11]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \C_OBUF[11]_inst_i_1 
       (.I0(A_OBUF[10]),
        .I1(B_OBUF[10]),
        .I2(\cla_inst/u2/m1/C_1__1 ),
        .I3(A_OBUF[11]),
        .I4(B_OBUF[11]),
        .O(C_OBUF[11]));
  LUT6 #(
    .INIT(64'hFFFFF660F6600000)) 
    \C_OBUF[11]_inst_i_2 
       (.I0(\csm1_inst/final_carry [8]),
        .I1(\A_OBUF[8]_inst_i_2_n_0 ),
        .I2(\cla_inst/Ci_2 ),
        .I3(B_OBUF[8]),
        .I4(B_OBUF[9]),
        .I5(A_OBUF[9]),
        .O(\cla_inst/u2/m1/C_1__1 ));
  OBUF \C_OBUF[12]_inst 
       (.I(C_OBUF[12]),
        .O(C[12]));
  LUT3 #(
    .INIT(8'h96)) 
    \C_OBUF[12]_inst_i_1 
       (.I0(\cla_inst/Ci_3 ),
        .I1(A_OBUF[12]),
        .I2(B_OBUF[12]),
        .O(C_OBUF[12]));
  OBUF \C_OBUF[13]_inst 
       (.I(C_OBUF[13]),
        .O(C[13]));
  LUT6 #(
    .INIT(64'h6669699999969666)) 
    \C_OBUF[13]_inst_i_1 
       (.I0(\csm1_inst/final_adder_unit/u3/m1/C_0__1 ),
        .I1(\csm1_inst/final_adder_unit/u3/P_bit [1]),
        .I2(A_OBUF[12]),
        .I3(B_OBUF[12]),
        .I4(\cla_inst/Ci_3 ),
        .I5(B_OBUF[13]),
        .O(C_OBUF[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFCE8E8C0)) 
    \C_OBUF[13]_inst_i_2 
       (.I0(\C_OBUF[14]_inst_i_4_n_0 ),
        .I1(A_OBUF[11]),
        .I2(B_OBUF[11]),
        .I3(A_OBUF[10]),
        .I4(B_OBUF[10]),
        .O(\cla_inst/Ci_3 ));
  OBUF \C_OBUF[14]_inst 
       (.I(C_OBUF[14]),
        .O(C[14]));
  LUT6 #(
    .INIT(64'hF660099F099FF660)) 
    \C_OBUF[14]_inst_i_1 
       (.I0(\csm1_inst/final_adder_unit/u3/m1/C_0__1 ),
        .I1(\csm1_inst/final_adder_unit/u3/P_bit [1]),
        .I2(B_OBUF[13]),
        .I3(\cla_inst/u3/m1/C_0__1 ),
        .I4(A_OBUF[14]),
        .I5(B_OBUF[14]),
        .O(C_OBUF[14]));
  LUT6 #(
    .INIT(64'hFFFFEAAAEAAA0000)) 
    \C_OBUF[14]_inst_i_2 
       (.I0(\C_OBUF[14]_inst_i_3_n_0 ),
        .I1(\C_OBUF[14]_inst_i_4_n_0 ),
        .I2(\cla_inst/u2/P_bit [3]),
        .I3(\cla_inst/u2/P_bit [2]),
        .I4(B_OBUF[12]),
        .I5(A_OBUF[12]),
        .O(\cla_inst/u3/m1/C_0__1 ));
  LUT6 #(
    .INIT(64'h08808FF88FF80880)) 
    \C_OBUF[14]_inst_i_3 
       (.I0(B_OBUF[10]),
        .I1(A_OBUF[10]),
        .I2(\csm1_inst/final_adder_unit/u2/C_internal ),
        .I3(\csm1_inst/final_adder_unit/u2/P_bit [3]),
        .I4(\csm2_inst/final_adder_unit/u2/C_internal ),
        .I5(\csm2_inst/final_adder_unit/u2/P_bit [3]),
        .O(\C_OBUF[14]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF660F6600000)) 
    \C_OBUF[14]_inst_i_4 
       (.I0(\csm1_inst/final_carry [8]),
        .I1(\A_OBUF[8]_inst_i_2_n_0 ),
        .I2(\cla_inst/Ci_2 ),
        .I3(B_OBUF[8]),
        .I4(A_OBUF[9]),
        .I5(B_OBUF[9]),
        .O(\C_OBUF[14]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    \C_OBUF[14]_inst_i_5 
       (.I0(\csm2_inst/final_adder_unit/u2/P_bit [3]),
        .I1(\csm2_inst/final_adder_unit/u2/m1/C_1__1 ),
        .I2(\csm2_inst/final_carry [10]),
        .I3(\B_OBUF[11]_inst_i_2_n_0 ),
        .I4(\csm1_inst/final_adder_unit/u2/P_bit [3]),
        .I5(\csm1_inst/final_adder_unit/u2/C_internal ),
        .O(\cla_inst/u2/P_bit [3]));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \C_OBUF[14]_inst_i_6 
       (.I0(\A_OBUF[8]_inst_i_2_n_0 ),
        .I1(\csm1_inst/final_carry [8]),
        .I2(\A_OBUF[10]_inst_i_5_n_0 ),
        .I3(\csm1_inst/final_carry [9]),
        .I4(\csm1_inst/final_carry [10]),
        .I5(\A_OBUF[11]_inst_i_2_n_0 ),
        .O(\csm1_inst/final_adder_unit/u2/C_internal ));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \C_OBUF[14]_inst_i_7 
       (.I0(\B_OBUF[8]_inst_i_2_n_0 ),
        .I1(\csm2_inst/final_carry [8]),
        .I2(\B_OBUF[10]_inst_i_5_n_0 ),
        .I3(\csm2_inst/final_carry [9]),
        .I4(\csm2_inst/final_carry [10]),
        .I5(\B_OBUF[11]_inst_i_2_n_0 ),
        .O(\csm2_inst/final_adder_unit/u2/C_internal ));
  OBUF \C_OBUF[15]_inst 
       (.I(C_OBUF[15]),
        .O(C[15]));
  LUT3 #(
    .INIT(8'h96)) 
    \C_OBUF[15]_inst_i_1 
       (.I0(A_OBUF[15]),
        .I1(B_OBUF[15]),
        .I2(\cla_inst/u3/C_internal ),
        .O(C_OBUF[15]));
  LUT6 #(
    .INIT(64'hFFFFF660F6600000)) 
    \C_OBUF[15]_inst_i_2 
       (.I0(\csm1_inst/final_adder_unit/u3/m1/C_0__1 ),
        .I1(\csm1_inst/final_adder_unit/u3/P_bit [1]),
        .I2(\cla_inst/u3/m1/C_0__1 ),
        .I3(B_OBUF[13]),
        .I4(B_OBUF[14]),
        .I5(A_OBUF[14]),
        .O(\cla_inst/u3/C_internal ));
  OBUF \C_OBUF[1]_inst 
       (.I(C_OBUF[1]),
        .O(C[1]));
  LUT6 #(
    .INIT(64'h96333CCC69CC3CCC)) 
    \C_OBUF[1]_inst_i_1 
       (.I0(\C_OBUF[1]_inst_i_2_n_0 ),
        .I1(A_OBUF[1]),
        .I2(X_2_IBUF[1]),
        .I3(Y_2_IBUF[0]),
        .I4(X_2_IBUF[0]),
        .I5(Y_2_IBUF[1]),
        .O(C_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \C_OBUF[1]_inst_i_2 
       (.I0(Y_1_IBUF[0]),
        .I1(X_1_IBUF[0]),
        .O(\C_OBUF[1]_inst_i_2_n_0 ));
  OBUF \C_OBUF[2]_inst 
       (.I(C_OBUF[2]),
        .O(C[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \C_OBUF[2]_inst_i_1 
       (.I0(B_OBUF[2]),
        .I1(A_OBUF[2]),
        .I2(\cla_inst/u0/m1/C_1__1 ),
        .O(C_OBUF[2]));
  OBUF \C_OBUF[3]_inst 
       (.I(C_OBUF[3]),
        .O(C[3]));
  LUT4 #(
    .INIT(16'h17E8)) 
    \C_OBUF[3]_inst_i_1 
       (.I0(A_OBUF[2]),
        .I1(B_OBUF[2]),
        .I2(\cla_inst/u0/m1/C_1__1 ),
        .I3(\cla_inst/u0/P_bit ),
        .O(C_OBUF[3]));
  LUT6 #(
    .INIT(64'h4DCCC000D400C000)) 
    \C_OBUF[3]_inst_i_2 
       (.I0(\C_OBUF[1]_inst_i_2_n_0 ),
        .I1(A_OBUF[1]),
        .I2(X_2_IBUF[1]),
        .I3(Y_2_IBUF[0]),
        .I4(X_2_IBUF[0]),
        .I5(Y_2_IBUF[1]),
        .O(\cla_inst/u0/m1/C_1__1 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h78878778)) 
    \C_OBUF[3]_inst_i_3 
       (.I0(Y_2_IBUF[0]),
        .I1(X_2_IBUF[3]),
        .I2(\csm2_inst/p_52_out ),
        .I3(\csm2_inst/p_53_out ),
        .I4(A_OBUF[3]),
        .O(\cla_inst/u0/P_bit ));
  OBUF \C_OBUF[4]_inst 
       (.I(C_OBUF[4]),
        .O(C[4]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \C_OBUF[4]_inst_i_1 
       (.I0(B_OBUF[4]),
        .I1(A_OBUF[4]),
        .I2(\cla_inst/tGG ),
        .O(C_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \C_OBUF[4]_inst_i_2 
       (.I0(B_OBUF[3]),
        .I1(A_OBUF[3]),
        .I2(\cla_inst/u0/m1/C_1__1 ),
        .I3(A_OBUF[2]),
        .I4(B_OBUF[2]),
        .O(\cla_inst/tGG ));
  OBUF \C_OBUF[5]_inst 
       (.I(C_OBUF[5]),
        .O(C[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \C_OBUF[5]_inst_i_1 
       (.I0(B_OBUF[5]),
        .I1(A_OBUF[5]),
        .I2(\cla_inst/u1/m1/C_0__1 ),
        .O(C_OBUF[5]));
  OBUF \C_OBUF[6]_inst 
       (.I(C_OBUF[6]),
        .O(C[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \C_OBUF[6]_inst_i_1 
       (.I0(B_OBUF[6]),
        .I1(A_OBUF[6]),
        .I2(\cla_inst/u1/m1/C_0__1 ),
        .I3(B_OBUF[5]),
        .I4(A_OBUF[5]),
        .O(C_OBUF[6]));
  OBUF \C_OBUF[7]_inst 
       (.I(C_OBUF[7]),
        .O(C[7]));
  LUT6 #(
    .INIT(64'h001717FFFFE8E800)) 
    \C_OBUF[7]_inst_i_1 
       (.I0(\cla_inst/u1/m1/C_0__1 ),
        .I1(B_OBUF[5]),
        .I2(A_OBUF[5]),
        .I3(A_OBUF[6]),
        .I4(B_OBUF[6]),
        .I5(\cla_inst/u1/P_bit ),
        .O(C_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \C_OBUF[7]_inst_i_2 
       (.I0(\cla_inst/tGG ),
        .I1(B_OBUF[4]),
        .I2(A_OBUF[4]),
        .O(\cla_inst/u1/m1/C_0__1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \C_OBUF[7]_inst_i_3 
       (.I0(B_OBUF[7]),
        .I1(A_OBUF[7]),
        .O(\cla_inst/u1/P_bit ));
  OBUF \C_OBUF[8]_inst 
       (.I(C_OBUF[8]),
        .O(C[8]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \C_OBUF[8]_inst_i_1 
       (.I0(\csm1_inst/final_carry [8]),
        .I1(\A_OBUF[8]_inst_i_2_n_0 ),
        .I2(B_OBUF[8]),
        .I3(\cla_inst/Ci_2 ),
        .O(C_OBUF[8]));
  OBUF \C_OBUF[9]_inst 
       (.I(C_OBUF[9]),
        .O(C[9]));
  LUT6 #(
    .INIT(64'hF660099F099FF660)) 
    \C_OBUF[9]_inst_i_1 
       (.I0(\csm1_inst/final_carry [8]),
        .I1(\A_OBUF[8]_inst_i_2_n_0 ),
        .I2(\cla_inst/Ci_2 ),
        .I3(B_OBUF[8]),
        .I4(B_OBUF[9]),
        .I5(A_OBUF[9]),
        .O(C_OBUF[9]));
  LUT6 #(
    .INIT(64'hFFFCFC00FFE8E800)) 
    \C_OBUF[9]_inst_i_2 
       (.I0(\C_OBUF[9]_inst_i_3_n_0 ),
        .I1(B_OBUF[6]),
        .I2(A_OBUF[6]),
        .I3(B_OBUF[7]),
        .I4(A_OBUF[7]),
        .I5(\C_OBUF[9]_inst_i_4_n_0 ),
        .O(\cla_inst/Ci_2 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h06600000)) 
    \C_OBUF[9]_inst_i_3 
       (.I0(B_OBUF[4]),
        .I1(A_OBUF[4]),
        .I2(B_OBUF[5]),
        .I3(A_OBUF[5]),
        .I4(\cla_inst/tGG ),
        .O(\C_OBUF[9]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \C_OBUF[9]_inst_i_4 
       (.I0(B_OBUF[4]),
        .I1(A_OBUF[4]),
        .I2(A_OBUF[5]),
        .I3(B_OBUF[5]),
        .O(\C_OBUF[9]_inst_i_4_n_0 ));
  OBUF \D_OBUF[0]_inst 
       (.I(D_OBUF[0]),
        .O(D[0]));
  OBUF \D_OBUF[10]_inst 
       (.I(D_OBUF[10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h281157EA3129C246)) 
    \D_OBUF[10]_inst_i_1 
       (.I0(\D_OBUF[12]_inst_i_5_n_0 ),
        .I1(\D_OBUF[12]_inst_i_3_n_0 ),
        .I2(\D_OBUF[12]_inst_i_4_n_0 ),
        .I3(\D_OBUF[12]_inst_i_6_n_0 ),
        .I4(\D_OBUF[12]_inst_i_7_n_0 ),
        .I5(\D_OBUF[12]_inst_i_2_n_0 ),
        .O(D_OBUF[10]));
  OBUF \D_OBUF[11]_inst 
       (.I(D_OBUF[11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h02805431154C2008)) 
    \D_OBUF[11]_inst_i_1 
       (.I0(\D_OBUF[12]_inst_i_2_n_0 ),
        .I1(\D_OBUF[12]_inst_i_3_n_0 ),
        .I2(\D_OBUF[12]_inst_i_6_n_0 ),
        .I3(\D_OBUF[12]_inst_i_7_n_0 ),
        .I4(\D_OBUF[12]_inst_i_5_n_0 ),
        .I5(\D_OBUF[12]_inst_i_4_n_0 ),
        .O(D_OBUF[11]));
  OBUF \D_OBUF[12]_inst 
       (.I(D_OBUF[12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h0E9336B0C8333C2C)) 
    \D_OBUF[12]_inst_i_1 
       (.I0(\D_OBUF[12]_inst_i_2_n_0 ),
        .I1(\D_OBUF[12]_inst_i_3_n_0 ),
        .I2(\D_OBUF[12]_inst_i_4_n_0 ),
        .I3(\D_OBUF[12]_inst_i_5_n_0 ),
        .I4(\D_OBUF[12]_inst_i_6_n_0 ),
        .I5(\D_OBUF[12]_inst_i_7_n_0 ),
        .O(D_OBUF[12]));
  LUT6 #(
    .INIT(64'h0EB33EB0C83FFC2C)) 
    \D_OBUF[12]_inst_i_10 
       (.I0(\D_OBUF[12]_inst_i_9_n_0 ),
        .I1(\D_OBUF[12]_inst_i_12_n_0 ),
        .I2(\D_OBUF[12]_inst_i_13_n_0 ),
        .I3(\D_OBUF[12]_inst_i_14_n_0 ),
        .I4(\D_OBUF[12]_inst_i_15_n_0 ),
        .I5(\D_OBUF[12]_inst_i_16_n_0 ),
        .O(\D_OBUF[12]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h6966)) 
    \D_OBUF[12]_inst_i_11 
       (.I0(\D_OBUF[12]_inst_i_13_n_0 ),
        .I1(\D_OBUF[12]_inst_i_14_n_0 ),
        .I2(\D_OBUF[12]_inst_i_16_n_0 ),
        .I3(\D_OBUF[12]_inst_i_18_n_0 ),
        .O(\D_OBUF[12]_inst_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h11989A56)) 
    \D_OBUF[12]_inst_i_12 
       (.I0(\D_OBUF[19]_inst_i_24_n_0 ),
        .I1(\D_OBUF[19]_inst_i_22_n_0 ),
        .I2(\D_OBUF[19]_inst_i_23_n_0 ),
        .I3(\D_OBUF[19]_inst_i_21_n_0 ),
        .I4(\D_OBUF[19]_inst_i_20_n_0 ),
        .O(\D_OBUF[12]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0E9336B0C8333C2C)) 
    \D_OBUF[12]_inst_i_13 
       (.I0(C_OBUF[7]),
        .I1(\D_OBUF[12]_inst_i_23_n_0 ),
        .I2(C_OBUF[9]),
        .I3(\D_OBUF[12]_inst_i_24_n_0 ),
        .I4(\D_OBUF[12]_inst_i_25_n_0 ),
        .I5(C_OBUF[8]),
        .O(\D_OBUF[12]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0E3E0FB0C8FCCB2C)) 
    \D_OBUF[12]_inst_i_14 
       (.I0(\D_OBUF[12]_inst_i_13_n_0 ),
        .I1(\D_OBUF[19]_inst_i_20_n_0 ),
        .I2(\D_OBUF[19]_inst_i_21_n_0 ),
        .I3(\D_OBUF[19]_inst_i_22_n_0 ),
        .I4(\D_OBUF[19]_inst_i_23_n_0 ),
        .I5(\D_OBUF[19]_inst_i_24_n_0 ),
        .O(\D_OBUF[12]_inst_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h3266318C)) 
    \D_OBUF[12]_inst_i_15 
       (.I0(\D_OBUF[19]_inst_i_23_n_0 ),
        .I1(\D_OBUF[19]_inst_i_21_n_0 ),
        .I2(\D_OBUF[19]_inst_i_20_n_0 ),
        .I3(\D_OBUF[19]_inst_i_22_n_0 ),
        .I4(\D_OBUF[19]_inst_i_24_n_0 ),
        .O(\D_OBUF[12]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0E360FB0C83CCB2C)) 
    \D_OBUF[12]_inst_i_16 
       (.I0(C_OBUF[6]),
        .I1(\D_OBUF[12]_inst_i_26_n_0 ),
        .I2(C_OBUF[8]),
        .I3(\D_OBUF[12]_inst_i_27_n_0 ),
        .I4(\D_OBUF[12]_inst_i_28_n_0 ),
        .I5(C_OBUF[7]),
        .O(\D_OBUF[12]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hA494A51A62566186)) 
    \D_OBUF[12]_inst_i_17 
       (.I0(\D_OBUF[12]_inst_i_13_n_0 ),
        .I1(\D_OBUF[19]_inst_i_20_n_0 ),
        .I2(\D_OBUF[19]_inst_i_21_n_0 ),
        .I3(\D_OBUF[19]_inst_i_22_n_0 ),
        .I4(\D_OBUF[19]_inst_i_23_n_0 ),
        .I5(\D_OBUF[19]_inst_i_24_n_0 ),
        .O(\D_OBUF[12]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0E3E0FB0C8FCCB2C)) 
    \D_OBUF[12]_inst_i_18 
       (.I0(\D_OBUF[12]_inst_i_16_n_0 ),
        .I1(\D_OBUF[19]_inst_i_25_n_0 ),
        .I2(\D_OBUF[19]_inst_i_24_n_0 ),
        .I3(\D_OBUF[19]_inst_i_26_n_0 ),
        .I4(\D_OBUF[19]_inst_i_27_n_0 ),
        .I5(\D_OBUF[12]_inst_i_13_n_0 ),
        .O(\D_OBUF[12]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h660511F84561981A)) 
    \D_OBUF[12]_inst_i_19 
       (.I0(\D_OBUF[19]_inst_i_20_n_0 ),
        .I1(\D_OBUF[19]_inst_i_21_n_0 ),
        .I2(\D_OBUF[19]_inst_i_23_n_0 ),
        .I3(\D_OBUF[19]_inst_i_22_n_0 ),
        .I4(\D_OBUF[19]_inst_i_24_n_0 ),
        .I5(\D_OBUF[12]_inst_i_13_n_0 ),
        .O(\D_OBUF[12]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0E9336B0C8333C2C)) 
    \D_OBUF[12]_inst_i_2 
       (.I0(\D_OBUF[8]_inst_i_6_n_0 ),
        .I1(\D_OBUF[12]_inst_i_8_n_0 ),
        .I2(\D_OBUF[12]_inst_i_9_n_0 ),
        .I3(\D_OBUF[12]_inst_i_10_n_0 ),
        .I4(\D_OBUF[12]_inst_i_11_n_0 ),
        .I5(\D_OBUF[8]_inst_i_3_n_0 ),
        .O(\D_OBUF[12]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA419941A62955686)) 
    \D_OBUF[12]_inst_i_20 
       (.I0(C_OBUF[8]),
        .I1(\D_OBUF[19]_inst_i_38_n_0 ),
        .I2(C_OBUF[10]),
        .I3(\D_OBUF[19]_inst_i_32_n_0 ),
        .I4(\D_OBUF[19]_inst_i_39_n_0 ),
        .I5(C_OBUF[9]),
        .O(\D_OBUF[12]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0EB33EB0C83FFC2C)) 
    \D_OBUF[12]_inst_i_21 
       (.I0(C_OBUF[7]),
        .I1(\D_OBUF[12]_inst_i_23_n_0 ),
        .I2(C_OBUF[9]),
        .I3(\D_OBUF[12]_inst_i_24_n_0 ),
        .I4(\D_OBUF[12]_inst_i_25_n_0 ),
        .I5(C_OBUF[8]),
        .O(\D_OBUF[12]_inst_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h281157EA3129C246)) 
    \D_OBUF[12]_inst_i_22 
       (.I0(\D_OBUF[19]_inst_i_32_n_0 ),
        .I1(\D_OBUF[19]_inst_i_38_n_0 ),
        .I2(C_OBUF[10]),
        .I3(\D_OBUF[19]_inst_i_39_n_0 ),
        .I4(C_OBUF[9]),
        .I5(C_OBUF[8]),
        .O(\D_OBUF[12]_inst_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hA4255A9292A4495A)) 
    \D_OBUF[12]_inst_i_23 
       (.I0(C_OBUF[10]),
        .I1(C_OBUF[15]),
        .I2(C_OBUF[14]),
        .I3(C_OBUF[13]),
        .I4(C_OBUF[12]),
        .I5(C_OBUF[11]),
        .O(\D_OBUF[12]_inst_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0E3E0FB0C8FCCB2C)) 
    \D_OBUF[12]_inst_i_24 
       (.I0(C_OBUF[9]),
        .I1(\D_OBUF[19]_inst_i_34_n_0 ),
        .I2(C_OBUF[11]),
        .I3(\D_OBUF[19]_inst_i_35_n_0 ),
        .I4(\D_OBUF[19]_inst_i_36_n_0 ),
        .I5(C_OBUF[10]),
        .O(\D_OBUF[12]_inst_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h92C3492CC3492C34)) 
    \D_OBUF[12]_inst_i_25 
       (.I0(C_OBUF[12]),
        .I1(C_OBUF[15]),
        .I2(C_OBUF[13]),
        .I3(C_OBUF[14]),
        .I4(C_OBUF[11]),
        .I5(C_OBUF[10]),
        .O(\D_OBUF[12]_inst_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hA494A51A62566186)) 
    \D_OBUF[12]_inst_i_26 
       (.I0(C_OBUF[9]),
        .I1(\D_OBUF[19]_inst_i_34_n_0 ),
        .I2(C_OBUF[11]),
        .I3(\D_OBUF[19]_inst_i_35_n_0 ),
        .I4(\D_OBUF[19]_inst_i_36_n_0 ),
        .I5(C_OBUF[10]),
        .O(\D_OBUF[12]_inst_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h660511F84561981A)) 
    \D_OBUF[12]_inst_i_27 
       (.I0(\D_OBUF[19]_inst_i_34_n_0 ),
        .I1(C_OBUF[11]),
        .I2(\D_OBUF[19]_inst_i_36_n_0 ),
        .I3(\D_OBUF[19]_inst_i_35_n_0 ),
        .I4(C_OBUF[10]),
        .I5(C_OBUF[9]),
        .O(\D_OBUF[12]_inst_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h2008174424011280)) 
    \D_OBUF[12]_inst_i_28 
       (.I0(C_OBUF[9]),
        .I1(C_OBUF[10]),
        .I2(\D_OBUF[19]_inst_i_35_n_0 ),
        .I3(\D_OBUF[19]_inst_i_34_n_0 ),
        .I4(C_OBUF[11]),
        .I5(\D_OBUF[19]_inst_i_36_n_0 ),
        .O(\D_OBUF[12]_inst_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \D_OBUF[12]_inst_i_3 
       (.I0(\D_OBUF[16]_inst_i_4_n_0 ),
        .I1(\D_OBUF[19]_inst_i_11_n_0 ),
        .O(\D_OBUF[12]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0E9336B0C8333C2C)) 
    \D_OBUF[12]_inst_i_4 
       (.I0(\D_OBUF[12]_inst_i_9_n_0 ),
        .I1(\D_OBUF[12]_inst_i_12_n_0 ),
        .I2(\D_OBUF[12]_inst_i_13_n_0 ),
        .I3(\D_OBUF[12]_inst_i_14_n_0 ),
        .I4(\D_OBUF[12]_inst_i_15_n_0 ),
        .I5(\D_OBUF[12]_inst_i_16_n_0 ),
        .O(\D_OBUF[12]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0EB33EB0C83FFC2C)) 
    \D_OBUF[12]_inst_i_5 
       (.I0(\D_OBUF[12]_inst_i_4_n_0 ),
        .I1(\D_OBUF[19]_inst_i_7_n_0 ),
        .I2(\D_OBUF[19]_inst_i_8_n_0 ),
        .I3(\D_OBUF[19]_inst_i_9_n_0 ),
        .I4(\D_OBUF[19]_inst_i_10_n_0 ),
        .I5(\D_OBUF[19]_inst_i_11_n_0 ),
        .O(\D_OBUF[12]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \D_OBUF[12]_inst_i_6 
       (.I0(\D_OBUF[16]_inst_i_3_n_0 ),
        .I1(\D_OBUF[19]_inst_i_11_n_0 ),
        .I2(\D_OBUF[16]_inst_i_4_n_0 ),
        .O(\D_OBUF[12]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0E9336B0C8333C2C)) 
    \D_OBUF[12]_inst_i_7 
       (.I0(\D_OBUF[8]_inst_i_3_n_0 ),
        .I1(\D_OBUF[12]_inst_i_17_n_0 ),
        .I2(\D_OBUF[12]_inst_i_16_n_0 ),
        .I3(\D_OBUF[12]_inst_i_18_n_0 ),
        .I4(\D_OBUF[12]_inst_i_19_n_0 ),
        .I5(\D_OBUF[12]_inst_i_9_n_0 ),
        .O(\D_OBUF[12]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \D_OBUF[12]_inst_i_8 
       (.I0(\D_OBUF[12]_inst_i_18_n_0 ),
        .I1(\D_OBUF[12]_inst_i_16_n_0 ),
        .O(\D_OBUF[12]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0E9336B0C8333C2C)) 
    \D_OBUF[12]_inst_i_9 
       (.I0(C_OBUF[5]),
        .I1(\D_OBUF[12]_inst_i_20_n_0 ),
        .I2(C_OBUF[7]),
        .I3(\D_OBUF[12]_inst_i_21_n_0 ),
        .I4(\D_OBUF[12]_inst_i_22_n_0 ),
        .I5(C_OBUF[6]),
        .O(\D_OBUF[12]_inst_i_9_n_0 ));
  OBUF \D_OBUF[13]_inst 
       (.I(D_OBUF[13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hA4255A9292A4495A)) 
    \D_OBUF[13]_inst_i_1 
       (.I0(\D_OBUF[16]_inst_i_2_n_0 ),
        .I1(\D_OBUF[19]_inst_i_4_n_0 ),
        .I2(\D_OBUF[19]_inst_i_5_n_0 ),
        .I3(\D_OBUF[19]_inst_i_6_n_0 ),
        .I4(\D_OBUF[19]_inst_i_3_n_0 ),
        .I5(\D_OBUF[19]_inst_i_2_n_0 ),
        .O(D_OBUF[13]));
  OBUF \D_OBUF[14]_inst 
       (.I(D_OBUF[14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h92C3492CC3492C34)) 
    \D_OBUF[14]_inst_i_1 
       (.I0(\D_OBUF[19]_inst_i_3_n_0 ),
        .I1(\D_OBUF[19]_inst_i_4_n_0 ),
        .I2(\D_OBUF[19]_inst_i_6_n_0 ),
        .I3(\D_OBUF[19]_inst_i_5_n_0 ),
        .I4(\D_OBUF[19]_inst_i_2_n_0 ),
        .I5(\D_OBUF[16]_inst_i_2_n_0 ),
        .O(D_OBUF[14]));
  OBUF \D_OBUF[15]_inst 
       (.I(D_OBUF[15]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h0821104242088410)) 
    \D_OBUF[15]_inst_i_1 
       (.I0(\D_OBUF[16]_inst_i_2_n_0 ),
        .I1(\D_OBUF[19]_inst_i_2_n_0 ),
        .I2(\D_OBUF[19]_inst_i_3_n_0 ),
        .I3(\D_OBUF[19]_inst_i_4_n_0 ),
        .I4(\D_OBUF[19]_inst_i_5_n_0 ),
        .I5(\D_OBUF[19]_inst_i_6_n_0 ),
        .O(D_OBUF[15]));
  OBUF \D_OBUF[16]_inst 
       (.I(D_OBUF[16]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h0E8FF038380EE3F0)) 
    \D_OBUF[16]_inst_i_1 
       (.I0(\D_OBUF[16]_inst_i_2_n_0 ),
        .I1(\D_OBUF[19]_inst_i_4_n_0 ),
        .I2(\D_OBUF[19]_inst_i_5_n_0 ),
        .I3(\D_OBUF[19]_inst_i_6_n_0 ),
        .I4(\D_OBUF[19]_inst_i_3_n_0 ),
        .I5(\D_OBUF[19]_inst_i_2_n_0 ),
        .O(D_OBUF[16]));
  LUT6 #(
    .INIT(64'h0E9336B0C8333C2C)) 
    \D_OBUF[16]_inst_i_2 
       (.I0(\D_OBUF[12]_inst_i_7_n_0 ),
        .I1(\D_OBUF[16]_inst_i_3_n_0 ),
        .I2(\D_OBUF[19]_inst_i_11_n_0 ),
        .I3(\D_OBUF[16]_inst_i_4_n_0 ),
        .I4(\D_OBUF[19]_inst_i_12_n_0 ),
        .I5(\D_OBUF[12]_inst_i_4_n_0 ),
        .O(\D_OBUF[16]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hA51A6186)) 
    \D_OBUF[16]_inst_i_3 
       (.I0(\D_OBUF[19]_inst_i_8_n_0 ),
        .I1(\D_OBUF[19]_inst_i_15_n_0 ),
        .I2(\D_OBUF[19]_inst_i_16_n_0 ),
        .I3(\bcd_inst/temp_reg1_out0_out [23]),
        .I4(\D_OBUF[19]_inst_i_18_n_0 ),
        .O(\D_OBUF[16]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0E8FF038380EE3F0)) 
    \D_OBUF[16]_inst_i_4 
       (.I0(\D_OBUF[19]_inst_i_11_n_0 ),
        .I1(\bcd_inst/temp_reg1_out0_out [23]),
        .I2(\D_OBUF[19]_inst_i_15_n_0 ),
        .I3(\D_OBUF[19]_inst_i_16_n_0 ),
        .I4(\D_OBUF[19]_inst_i_18_n_0 ),
        .I5(\D_OBUF[19]_inst_i_8_n_0 ),
        .O(\D_OBUF[16]_inst_i_4_n_0 ));
  OBUF \D_OBUF[17]_inst 
       (.I(D_OBUF[17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hC80E03F0)) 
    \D_OBUF[17]_inst_i_1 
       (.I0(\D_OBUF[19]_inst_i_2_n_0 ),
        .I1(\D_OBUF[19]_inst_i_3_n_0 ),
        .I2(\D_OBUF[19]_inst_i_4_n_0 ),
        .I3(\D_OBUF[19]_inst_i_5_n_0 ),
        .I4(\D_OBUF[19]_inst_i_6_n_0 ),
        .O(D_OBUF[17]));
  OBUF \D_OBUF[18]_inst 
       (.I(D_OBUF[18]),
        .O(D[18]));
  LUT4 #(
    .INIT(16'h320C)) 
    \D_OBUF[18]_inst_i_1 
       (.I0(\D_OBUF[19]_inst_i_3_n_0 ),
        .I1(\D_OBUF[19]_inst_i_4_n_0 ),
        .I2(\D_OBUF[19]_inst_i_6_n_0 ),
        .I3(\D_OBUF[19]_inst_i_5_n_0 ),
        .O(D_OBUF[18]));
  OBUF \D_OBUF[19]_inst 
       (.I(D_OBUF[19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00F01000)) 
    \D_OBUF[19]_inst_i_1 
       (.I0(\D_OBUF[19]_inst_i_2_n_0 ),
        .I1(\D_OBUF[19]_inst_i_3_n_0 ),
        .I2(\D_OBUF[19]_inst_i_4_n_0 ),
        .I3(\D_OBUF[19]_inst_i_5_n_0 ),
        .I4(\D_OBUF[19]_inst_i_6_n_0 ),
        .O(D_OBUF[19]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h581A)) 
    \D_OBUF[19]_inst_i_10 
       (.I0(\bcd_inst/temp_reg1_out0_out [23]),
        .I1(\D_OBUF[19]_inst_i_15_n_0 ),
        .I2(\D_OBUF[19]_inst_i_16_n_0 ),
        .I3(\D_OBUF[19]_inst_i_18_n_0 ),
        .O(\D_OBUF[19]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0E360FB0C83CCB2C)) 
    \D_OBUF[19]_inst_i_11 
       (.I0(\D_OBUF[12]_inst_i_16_n_0 ),
        .I1(\D_OBUF[19]_inst_i_25_n_0 ),
        .I2(\D_OBUF[19]_inst_i_24_n_0 ),
        .I3(\D_OBUF[19]_inst_i_26_n_0 ),
        .I4(\D_OBUF[19]_inst_i_27_n_0 ),
        .I5(\D_OBUF[12]_inst_i_13_n_0 ),
        .O(\D_OBUF[19]_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6318318C)) 
    \D_OBUF[19]_inst_i_12 
       (.I0(\D_OBUF[19]_inst_i_16_n_0 ),
        .I1(\D_OBUF[19]_inst_i_15_n_0 ),
        .I2(\bcd_inst/temp_reg1_out0_out [23]),
        .I3(\D_OBUF[19]_inst_i_18_n_0 ),
        .I4(\D_OBUF[19]_inst_i_8_n_0 ),
        .O(\D_OBUF[19]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF92C3492C)) 
    \D_OBUF[19]_inst_i_13 
       (.I0(\D_OBUF[19]_inst_i_18_n_0 ),
        .I1(\bcd_inst/temp_reg1_out0_out [23]),
        .I2(\D_OBUF[19]_inst_i_16_n_0 ),
        .I3(\D_OBUF[19]_inst_i_15_n_0 ),
        .I4(\D_OBUF[19]_inst_i_8_n_0 ),
        .I5(\D_OBUF[19]_inst_i_11_n_0 ),
        .O(\D_OBUF[19]_inst_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h21084210)) 
    \D_OBUF[19]_inst_i_14 
       (.I0(\D_OBUF[19]_inst_i_8_n_0 ),
        .I1(\D_OBUF[19]_inst_i_18_n_0 ),
        .I2(\D_OBUF[19]_inst_i_16_n_0 ),
        .I3(\D_OBUF[19]_inst_i_15_n_0 ),
        .I4(\bcd_inst/temp_reg1_out0_out [23]),
        .O(\D_OBUF[19]_inst_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hF0007888)) 
    \D_OBUF[19]_inst_i_15 
       (.I0(\D_OBUF[19]_inst_i_28_n_0 ),
        .I1(C_OBUF[15]),
        .I2(\bcd_inst/temp_reg1_out0_out [21]),
        .I3(\D_OBUF[19]_inst_i_30_n_0 ),
        .I4(\D_OBUF[19]_inst_i_31_n_0 ),
        .O(\D_OBUF[19]_inst_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h09FFF600)) 
    \D_OBUF[19]_inst_i_16 
       (.I0(\D_OBUF[19]_inst_i_32_n_0 ),
        .I1(\D_OBUF[19]_inst_i_33_n_0 ),
        .I2(\D_OBUF[19]_inst_i_21_n_0 ),
        .I3(\D_OBUF[19]_inst_i_22_n_0 ),
        .I4(\D_OBUF[19]_inst_i_23_n_0 ),
        .O(\D_OBUF[19]_inst_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \D_OBUF[19]_inst_i_17 
       (.I0(\D_OBUF[19]_inst_i_28_n_0 ),
        .I1(C_OBUF[15]),
        .I2(\D_OBUF[19]_inst_i_31_n_0 ),
        .O(\bcd_inst/temp_reg1_out0_out [23]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h9B32303C)) 
    \D_OBUF[19]_inst_i_18 
       (.I0(\D_OBUF[19]_inst_i_24_n_0 ),
        .I1(\D_OBUF[19]_inst_i_22_n_0 ),
        .I2(\D_OBUF[19]_inst_i_23_n_0 ),
        .I3(\D_OBUF[19]_inst_i_21_n_0 ),
        .I4(\D_OBUF[19]_inst_i_20_n_0 ),
        .O(\D_OBUF[19]_inst_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFF6318)) 
    \D_OBUF[19]_inst_i_19 
       (.I0(\D_OBUF[19]_inst_i_16_n_0 ),
        .I1(\D_OBUF[19]_inst_i_15_n_0 ),
        .I2(\bcd_inst/temp_reg1_out0_out [23]),
        .I3(\D_OBUF[19]_inst_i_18_n_0 ),
        .I4(\D_OBUF[19]_inst_i_8_n_0 ),
        .O(\D_OBUF[19]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0E9336B0C8333C2C)) 
    \D_OBUF[19]_inst_i_2 
       (.I0(\D_OBUF[12]_inst_i_4_n_0 ),
        .I1(\D_OBUF[19]_inst_i_7_n_0 ),
        .I2(\D_OBUF[19]_inst_i_8_n_0 ),
        .I3(\D_OBUF[19]_inst_i_9_n_0 ),
        .I4(\D_OBUF[19]_inst_i_10_n_0 ),
        .I5(\D_OBUF[19]_inst_i_11_n_0 ),
        .O(\D_OBUF[19]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \D_OBUF[19]_inst_i_20 
       (.I0(\D_OBUF[19]_inst_i_33_n_0 ),
        .I1(\D_OBUF[19]_inst_i_32_n_0 ),
        .O(\D_OBUF[19]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0E360FB0C83CCB2C)) 
    \D_OBUF[19]_inst_i_21 
       (.I0(C_OBUF[9]),
        .I1(\D_OBUF[19]_inst_i_34_n_0 ),
        .I2(C_OBUF[11]),
        .I3(\D_OBUF[19]_inst_i_35_n_0 ),
        .I4(\D_OBUF[19]_inst_i_36_n_0 ),
        .I5(C_OBUF[10]),
        .O(\D_OBUF[19]_inst_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hC03E03E0C07C03E0)) 
    \D_OBUF[19]_inst_i_22 
       (.I0(C_OBUF[11]),
        .I1(C_OBUF[12]),
        .I2(C_OBUF[13]),
        .I3(C_OBUF[14]),
        .I4(C_OBUF[15]),
        .I5(C_OBUF[10]),
        .O(\D_OBUF[19]_inst_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \D_OBUF[19]_inst_i_23 
       (.I0(\D_OBUF[19]_inst_i_37_n_0 ),
        .I1(\bcd_inst/temp_reg1_out0_out [21]),
        .O(\D_OBUF[19]_inst_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0E9336B0C8333C2C)) 
    \D_OBUF[19]_inst_i_24 
       (.I0(C_OBUF[8]),
        .I1(\D_OBUF[19]_inst_i_38_n_0 ),
        .I2(C_OBUF[10]),
        .I3(\D_OBUF[19]_inst_i_32_n_0 ),
        .I4(\D_OBUF[19]_inst_i_39_n_0 ),
        .I5(C_OBUF[9]),
        .O(\D_OBUF[19]_inst_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h8087787878800778)) 
    \D_OBUF[19]_inst_i_25 
       (.I0(\D_OBUF[19]_inst_i_28_n_0 ),
        .I1(C_OBUF[15]),
        .I2(\D_OBUF[19]_inst_i_21_n_0 ),
        .I3(\D_OBUF[19]_inst_i_40_n_0 ),
        .I4(\D_OBUF[19]_inst_i_41_n_0 ),
        .I5(\D_OBUF[19]_inst_i_32_n_0 ),
        .O(\D_OBUF[19]_inst_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h08F77008008FF700)) 
    \D_OBUF[19]_inst_i_26 
       (.I0(\D_OBUF[19]_inst_i_28_n_0 ),
        .I1(C_OBUF[15]),
        .I2(\D_OBUF[19]_inst_i_41_n_0 ),
        .I3(\D_OBUF[19]_inst_i_40_n_0 ),
        .I4(\D_OBUF[19]_inst_i_32_n_0 ),
        .I5(\D_OBUF[19]_inst_i_21_n_0 ),
        .O(\D_OBUF[19]_inst_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0780007800078000)) 
    \D_OBUF[19]_inst_i_27 
       (.I0(\D_OBUF[19]_inst_i_28_n_0 ),
        .I1(C_OBUF[15]),
        .I2(\D_OBUF[19]_inst_i_21_n_0 ),
        .I3(\D_OBUF[19]_inst_i_32_n_0 ),
        .I4(\D_OBUF[19]_inst_i_41_n_0 ),
        .I5(\D_OBUF[19]_inst_i_40_n_0 ),
        .O(\D_OBUF[19]_inst_i_27_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \D_OBUF[19]_inst_i_28 
       (.I0(C_OBUF[14]),
        .I1(C_OBUF[13]),
        .O(\D_OBUF[19]_inst_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h320C)) 
    \D_OBUF[19]_inst_i_29 
       (.I0(C_OBUF[12]),
        .I1(C_OBUF[15]),
        .I2(C_OBUF[13]),
        .I3(C_OBUF[14]),
        .O(\bcd_inst/temp_reg1_out0_out [21]));
  LUT3 #(
    .INIT(8'h78)) 
    \D_OBUF[19]_inst_i_3 
       (.I0(\D_OBUF[19]_inst_i_12_n_0 ),
        .I1(\D_OBUF[19]_inst_i_13_n_0 ),
        .I2(\D_OBUF[19]_inst_i_14_n_0 ),
        .O(\D_OBUF[19]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF9CFF3FCF18FE3F8)) 
    \D_OBUF[19]_inst_i_30 
       (.I0(C_OBUF[11]),
        .I1(C_OBUF[12]),
        .I2(C_OBUF[13]),
        .I3(C_OBUF[14]),
        .I4(C_OBUF[15]),
        .I5(C_OBUF[10]),
        .O(\D_OBUF[19]_inst_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFF3CFB2C)) 
    \D_OBUF[19]_inst_i_31 
       (.I0(C_OBUF[12]),
        .I1(C_OBUF[15]),
        .I2(C_OBUF[13]),
        .I3(C_OBUF[14]),
        .I4(C_OBUF[11]),
        .O(\D_OBUF[19]_inst_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0E8FF038380EE3F0)) 
    \D_OBUF[19]_inst_i_32 
       (.I0(C_OBUF[10]),
        .I1(C_OBUF[15]),
        .I2(C_OBUF[14]),
        .I3(C_OBUF[13]),
        .I4(C_OBUF[12]),
        .I5(C_OBUF[11]),
        .O(\D_OBUF[19]_inst_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0FC00FC00FC03F80)) 
    \D_OBUF[19]_inst_i_33 
       (.I0(C_OBUF[10]),
        .I1(C_OBUF[13]),
        .I2(C_OBUF[14]),
        .I3(C_OBUF[15]),
        .I4(C_OBUF[12]),
        .I5(C_OBUF[11]),
        .O(\D_OBUF[19]_inst_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h1441AAAA82286996)) 
    \D_OBUF[19]_inst_i_34 
       (.I0(C_OBUF[12]),
        .I1(A_OBUF[15]),
        .I2(B_OBUF[15]),
        .I3(\cla_inst/u3/C_internal ),
        .I4(C_OBUF[14]),
        .I5(C_OBUF[13]),
        .O(\D_OBUF[19]_inst_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h6969960000699696)) 
    \D_OBUF[19]_inst_i_35 
       (.I0(A_OBUF[15]),
        .I1(B_OBUF[15]),
        .I2(\cla_inst/u3/C_internal ),
        .I3(C_OBUF[14]),
        .I4(C_OBUF[13]),
        .I5(C_OBUF[12]),
        .O(\D_OBUF[19]_inst_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h4114144100008228)) 
    \D_OBUF[19]_inst_i_36 
       (.I0(C_OBUF[12]),
        .I1(A_OBUF[15]),
        .I2(B_OBUF[15]),
        .I3(\cla_inst/u3/C_internal ),
        .I4(C_OBUF[13]),
        .I5(C_OBUF[14]),
        .O(\D_OBUF[19]_inst_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hF03FEF0FF17FEF0F)) 
    \D_OBUF[19]_inst_i_37 
       (.I0(C_OBUF[11]),
        .I1(C_OBUF[12]),
        .I2(C_OBUF[15]),
        .I3(C_OBUF[14]),
        .I4(C_OBUF[13]),
        .I5(C_OBUF[10]),
        .O(\D_OBUF[19]_inst_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hA51A6186)) 
    \D_OBUF[19]_inst_i_38 
       (.I0(C_OBUF[11]),
        .I1(C_OBUF[14]),
        .I2(C_OBUF[13]),
        .I3(C_OBUF[15]),
        .I4(C_OBUF[12]),
        .O(\D_OBUF[19]_inst_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h6318318C)) 
    \D_OBUF[19]_inst_i_39 
       (.I0(C_OBUF[13]),
        .I1(C_OBUF[14]),
        .I2(C_OBUF[15]),
        .I3(C_OBUF[12]),
        .I4(C_OBUF[11]),
        .O(\D_OBUF[19]_inst_i_39_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \D_OBUF[19]_inst_i_4 
       (.I0(\D_OBUF[19]_inst_i_15_n_0 ),
        .I1(\D_OBUF[19]_inst_i_16_n_0 ),
        .I2(\bcd_inst/temp_reg1_out0_out [23]),
        .O(\D_OBUF[19]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hB02C)) 
    \D_OBUF[19]_inst_i_40 
       (.I0(C_OBUF[12]),
        .I1(C_OBUF[15]),
        .I2(C_OBUF[14]),
        .I3(C_OBUF[13]),
        .O(\D_OBUF[19]_inst_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h0FB0CB2C)) 
    \D_OBUF[19]_inst_i_41 
       (.I0(C_OBUF[11]),
        .I1(C_OBUF[14]),
        .I2(C_OBUF[13]),
        .I3(C_OBUF[15]),
        .I4(C_OBUF[12]),
        .O(\D_OBUF[19]_inst_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h9A18)) 
    \D_OBUF[19]_inst_i_5 
       (.I0(\D_OBUF[19]_inst_i_15_n_0 ),
        .I1(\D_OBUF[19]_inst_i_16_n_0 ),
        .I2(\bcd_inst/temp_reg1_out0_out [23]),
        .I3(\D_OBUF[19]_inst_i_18_n_0 ),
        .O(\D_OBUF[19]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBEF7410841084108)) 
    \D_OBUF[19]_inst_i_6 
       (.I0(\D_OBUF[19]_inst_i_18_n_0 ),
        .I1(\bcd_inst/temp_reg1_out0_out [23]),
        .I2(\D_OBUF[19]_inst_i_16_n_0 ),
        .I3(\D_OBUF[19]_inst_i_15_n_0 ),
        .I4(\D_OBUF[19]_inst_i_10_n_0 ),
        .I5(\D_OBUF[19]_inst_i_19_n_0 ),
        .O(\D_OBUF[19]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h1A86)) 
    \D_OBUF[19]_inst_i_7 
       (.I0(\D_OBUF[19]_inst_i_18_n_0 ),
        .I1(\bcd_inst/temp_reg1_out0_out [23]),
        .I2(\D_OBUF[19]_inst_i_15_n_0 ),
        .I3(\D_OBUF[19]_inst_i_16_n_0 ),
        .O(\D_OBUF[19]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0E360FB0C83CCB2C)) 
    \D_OBUF[19]_inst_i_8 
       (.I0(\D_OBUF[12]_inst_i_13_n_0 ),
        .I1(\D_OBUF[19]_inst_i_20_n_0 ),
        .I2(\D_OBUF[19]_inst_i_21_n_0 ),
        .I3(\D_OBUF[19]_inst_i_22_n_0 ),
        .I4(\D_OBUF[19]_inst_i_23_n_0 ),
        .I5(\D_OBUF[19]_inst_i_24_n_0 ),
        .O(\D_OBUF[19]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0FB0CB2C)) 
    \D_OBUF[19]_inst_i_9 
       (.I0(\D_OBUF[19]_inst_i_8_n_0 ),
        .I1(\D_OBUF[19]_inst_i_15_n_0 ),
        .I2(\D_OBUF[19]_inst_i_16_n_0 ),
        .I3(\bcd_inst/temp_reg1_out0_out [23]),
        .I4(\D_OBUF[19]_inst_i_18_n_0 ),
        .O(\D_OBUF[19]_inst_i_9_n_0 ));
  OBUF \D_OBUF[1]_inst 
       (.I(D_OBUF[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h900F690F0F960F90)) 
    \D_OBUF[1]_inst_i_1 
       (.I0(\D_OBUF[4]_inst_i_2_n_0 ),
        .I1(C_OBUF[3]),
        .I2(C_OBUF[1]),
        .I3(\D_OBUF[4]_inst_i_3_n_0 ),
        .I4(C_OBUF[2]),
        .I5(\D_OBUF[4]_inst_i_4_n_0 ),
        .O(D_OBUF[1]));
  OBUF \D_OBUF[2]_inst 
       (.I(D_OBUF[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0FF0060F0FF0F090)) 
    \D_OBUF[2]_inst_i_1 
       (.I0(\D_OBUF[4]_inst_i_2_n_0 ),
        .I1(C_OBUF[3]),
        .I2(C_OBUF[2]),
        .I3(\D_OBUF[4]_inst_i_4_n_0 ),
        .I4(C_OBUF[1]),
        .I5(\D_OBUF[4]_inst_i_3_n_0 ),
        .O(D_OBUF[2]));
  OBUF \D_OBUF[3]_inst 
       (.I(D_OBUF[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0696990000669606)) 
    \D_OBUF[3]_inst_i_1 
       (.I0(\D_OBUF[4]_inst_i_2_n_0 ),
        .I1(C_OBUF[3]),
        .I2(C_OBUF[1]),
        .I3(\D_OBUF[4]_inst_i_3_n_0 ),
        .I4(\D_OBUF[4]_inst_i_4_n_0 ),
        .I5(C_OBUF[2]),
        .O(D_OBUF[3]));
  OBUF \D_OBUF[4]_inst 
       (.I(D_OBUF[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h609F00FF99669F60)) 
    \D_OBUF[4]_inst_i_1 
       (.I0(\D_OBUF[4]_inst_i_2_n_0 ),
        .I1(C_OBUF[3]),
        .I2(C_OBUF[1]),
        .I3(\D_OBUF[4]_inst_i_3_n_0 ),
        .I4(C_OBUF[2]),
        .I5(\D_OBUF[4]_inst_i_4_n_0 ),
        .O(D_OBUF[4]));
  LUT6 #(
    .INIT(64'h0EB33EB0C83FFC2C)) 
    \D_OBUF[4]_inst_i_2 
       (.I0(C_OBUF[3]),
        .I1(\D_OBUF[8]_inst_i_13_n_0 ),
        .I2(C_OBUF[5]),
        .I3(\D_OBUF[8]_inst_i_14_n_0 ),
        .I4(\D_OBUF[8]_inst_i_15_n_0 ),
        .I5(C_OBUF[4]),
        .O(\D_OBUF[4]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6966)) 
    \D_OBUF[4]_inst_i_3 
       (.I0(\D_OBUF[8]_inst_i_11_n_0 ),
        .I1(C_OBUF[4]),
        .I2(C_OBUF[3]),
        .I3(\D_OBUF[4]_inst_i_2_n_0 ),
        .O(\D_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h60FF99FFFF66FF60)) 
    \D_OBUF[4]_inst_i_4 
       (.I0(\D_OBUF[8]_inst_i_11_n_0 ),
        .I1(C_OBUF[4]),
        .I2(C_OBUF[2]),
        .I3(\D_OBUF[8]_inst_i_12_n_0 ),
        .I4(C_OBUF[3]),
        .I5(\D_OBUF[4]_inst_i_2_n_0 ),
        .O(\D_OBUF[4]_inst_i_4_n_0 ));
  OBUF \D_OBUF[5]_inst 
       (.I(D_OBUF[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h900F690F0F960F90)) 
    \D_OBUF[5]_inst_i_1 
       (.I0(\D_OBUF[8]_inst_i_2_n_0 ),
        .I1(\D_OBUF[8]_inst_i_3_n_0 ),
        .I2(\D_OBUF[8]_inst_i_4_n_0 ),
        .I3(\D_OBUF[8]_inst_i_5_n_0 ),
        .I4(\D_OBUF[8]_inst_i_6_n_0 ),
        .I5(\D_OBUF[8]_inst_i_7_n_0 ),
        .O(D_OBUF[5]));
  OBUF \D_OBUF[6]_inst 
       (.I(D_OBUF[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0FF0060F0FF0F090)) 
    \D_OBUF[6]_inst_i_1 
       (.I0(\D_OBUF[8]_inst_i_2_n_0 ),
        .I1(\D_OBUF[8]_inst_i_3_n_0 ),
        .I2(\D_OBUF[8]_inst_i_6_n_0 ),
        .I3(\D_OBUF[8]_inst_i_7_n_0 ),
        .I4(\D_OBUF[8]_inst_i_4_n_0 ),
        .I5(\D_OBUF[8]_inst_i_5_n_0 ),
        .O(D_OBUF[6]));
  OBUF \D_OBUF[7]_inst 
       (.I(D_OBUF[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0696990000669606)) 
    \D_OBUF[7]_inst_i_1 
       (.I0(\D_OBUF[8]_inst_i_2_n_0 ),
        .I1(\D_OBUF[8]_inst_i_3_n_0 ),
        .I2(\D_OBUF[8]_inst_i_4_n_0 ),
        .I3(\D_OBUF[8]_inst_i_5_n_0 ),
        .I4(\D_OBUF[8]_inst_i_7_n_0 ),
        .I5(\D_OBUF[8]_inst_i_6_n_0 ),
        .O(D_OBUF[7]));
  OBUF \D_OBUF[8]_inst 
       (.I(D_OBUF[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h609F00FF99669F60)) 
    \D_OBUF[8]_inst_i_1 
       (.I0(\D_OBUF[8]_inst_i_2_n_0 ),
        .I1(\D_OBUF[8]_inst_i_3_n_0 ),
        .I2(\D_OBUF[8]_inst_i_4_n_0 ),
        .I3(\D_OBUF[8]_inst_i_5_n_0 ),
        .I4(\D_OBUF[8]_inst_i_6_n_0 ),
        .I5(\D_OBUF[8]_inst_i_7_n_0 ),
        .O(D_OBUF[8]));
  LUT6 #(
    .INIT(64'h281157EA3129C246)) 
    \D_OBUF[8]_inst_i_10 
       (.I0(\D_OBUF[12]_inst_i_24_n_0 ),
        .I1(\D_OBUF[12]_inst_i_23_n_0 ),
        .I2(C_OBUF[9]),
        .I3(\D_OBUF[12]_inst_i_25_n_0 ),
        .I4(C_OBUF[8]),
        .I5(C_OBUF[7]),
        .O(\D_OBUF[8]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0EB33EB0C83FFC2C)) 
    \D_OBUF[8]_inst_i_11 
       (.I0(C_OBUF[4]),
        .I1(\D_OBUF[8]_inst_i_8_n_0 ),
        .I2(C_OBUF[6]),
        .I3(\D_OBUF[8]_inst_i_9_n_0 ),
        .I4(\D_OBUF[8]_inst_i_10_n_0 ),
        .I5(C_OBUF[5]),
        .O(\D_OBUF[8]_inst_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6966)) 
    \D_OBUF[8]_inst_i_12 
       (.I0(C_OBUF[5]),
        .I1(\D_OBUF[8]_inst_i_14_n_0 ),
        .I2(C_OBUF[4]),
        .I3(\D_OBUF[8]_inst_i_11_n_0 ),
        .O(\D_OBUF[8]_inst_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \D_OBUF[8]_inst_i_13 
       (.I0(\D_OBUF[8]_inst_i_9_n_0 ),
        .I1(C_OBUF[6]),
        .O(\D_OBUF[8]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0EB33EB0C83FFC2C)) 
    \D_OBUF[8]_inst_i_14 
       (.I0(C_OBUF[5]),
        .I1(\D_OBUF[12]_inst_i_20_n_0 ),
        .I2(C_OBUF[7]),
        .I3(\D_OBUF[12]_inst_i_21_n_0 ),
        .I4(\D_OBUF[12]_inst_i_22_n_0 ),
        .I5(C_OBUF[6]),
        .O(\D_OBUF[8]_inst_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h6966)) 
    \D_OBUF[8]_inst_i_15 
       (.I0(C_OBUF[7]),
        .I1(\D_OBUF[12]_inst_i_21_n_0 ),
        .I2(C_OBUF[6]),
        .I3(\D_OBUF[8]_inst_i_9_n_0 ),
        .O(\D_OBUF[8]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0EB33EB0C83FFC2C)) 
    \D_OBUF[8]_inst_i_2 
       (.I0(\D_OBUF[8]_inst_i_3_n_0 ),
        .I1(\D_OBUF[12]_inst_i_17_n_0 ),
        .I2(\D_OBUF[12]_inst_i_16_n_0 ),
        .I3(\D_OBUF[12]_inst_i_18_n_0 ),
        .I4(\D_OBUF[12]_inst_i_19_n_0 ),
        .I5(\D_OBUF[12]_inst_i_9_n_0 ),
        .O(\D_OBUF[8]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0E9336B0C8333C2C)) 
    \D_OBUF[8]_inst_i_3 
       (.I0(C_OBUF[4]),
        .I1(\D_OBUF[8]_inst_i_8_n_0 ),
        .I2(C_OBUF[6]),
        .I3(\D_OBUF[8]_inst_i_9_n_0 ),
        .I4(\D_OBUF[8]_inst_i_10_n_0 ),
        .I5(C_OBUF[5]),
        .O(\D_OBUF[8]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h609F00FF99669F60)) 
    \D_OBUF[8]_inst_i_4 
       (.I0(\D_OBUF[8]_inst_i_11_n_0 ),
        .I1(C_OBUF[4]),
        .I2(C_OBUF[2]),
        .I3(\D_OBUF[8]_inst_i_12_n_0 ),
        .I4(C_OBUF[3]),
        .I5(\D_OBUF[4]_inst_i_2_n_0 ),
        .O(\D_OBUF[8]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6966)) 
    \D_OBUF[8]_inst_i_5 
       (.I0(\D_OBUF[12]_inst_i_9_n_0 ),
        .I1(\D_OBUF[12]_inst_i_10_n_0 ),
        .I2(\D_OBUF[8]_inst_i_3_n_0 ),
        .I3(\D_OBUF[8]_inst_i_2_n_0 ),
        .O(\D_OBUF[8]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0E9336B0C8333C2C)) 
    \D_OBUF[8]_inst_i_6 
       (.I0(C_OBUF[3]),
        .I1(\D_OBUF[8]_inst_i_13_n_0 ),
        .I2(C_OBUF[5]),
        .I3(\D_OBUF[8]_inst_i_14_n_0 ),
        .I4(\D_OBUF[8]_inst_i_15_n_0 ),
        .I5(C_OBUF[4]),
        .O(\D_OBUF[8]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0EB33EB0C83FFC2C)) 
    \D_OBUF[8]_inst_i_7 
       (.I0(\D_OBUF[8]_inst_i_6_n_0 ),
        .I1(\D_OBUF[12]_inst_i_8_n_0 ),
        .I2(\D_OBUF[12]_inst_i_9_n_0 ),
        .I3(\D_OBUF[12]_inst_i_10_n_0 ),
        .I4(\D_OBUF[12]_inst_i_11_n_0 ),
        .I5(\D_OBUF[8]_inst_i_3_n_0 ),
        .O(\D_OBUF[8]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA419941A62955686)) 
    \D_OBUF[8]_inst_i_8 
       (.I0(C_OBUF[7]),
        .I1(\D_OBUF[12]_inst_i_23_n_0 ),
        .I2(C_OBUF[9]),
        .I3(\D_OBUF[12]_inst_i_24_n_0 ),
        .I4(\D_OBUF[12]_inst_i_25_n_0 ),
        .I5(C_OBUF[8]),
        .O(\D_OBUF[8]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0E3E0FB0C8FCCB2C)) 
    \D_OBUF[8]_inst_i_9 
       (.I0(C_OBUF[6]),
        .I1(\D_OBUF[12]_inst_i_26_n_0 ),
        .I2(C_OBUF[8]),
        .I3(\D_OBUF[12]_inst_i_27_n_0 ),
        .I4(\D_OBUF[12]_inst_i_28_n_0 ),
        .I5(C_OBUF[7]),
        .O(\D_OBUF[8]_inst_i_9_n_0 ));
  OBUF \D_OBUF[9]_inst 
       (.I(D_OBUF[9]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hA419941A62955686)) 
    \D_OBUF[9]_inst_i_1 
       (.I0(\D_OBUF[12]_inst_i_2_n_0 ),
        .I1(\D_OBUF[12]_inst_i_3_n_0 ),
        .I2(\D_OBUF[12]_inst_i_4_n_0 ),
        .I3(\D_OBUF[12]_inst_i_5_n_0 ),
        .I4(\D_OBUF[12]_inst_i_6_n_0 ),
        .I5(\D_OBUF[12]_inst_i_7_n_0 ),
        .O(D_OBUF[9]));
  IBUF \X_1_IBUF[0]_inst 
       (.I(X_1[0]),
        .O(X_1_IBUF[0]));
  IBUF \X_1_IBUF[1]_inst 
       (.I(X_1[1]),
        .O(X_1_IBUF[1]));
  IBUF \X_1_IBUF[2]_inst 
       (.I(X_1[2]),
        .O(X_1_IBUF[2]));
  IBUF \X_1_IBUF[3]_inst 
       (.I(X_1[3]),
        .O(X_1_IBUF[3]));
  IBUF \X_1_IBUF[4]_inst 
       (.I(X_1[4]),
        .O(X_1_IBUF[4]));
  IBUF \X_1_IBUF[5]_inst 
       (.I(X_1[5]),
        .O(X_1_IBUF[5]));
  IBUF \X_1_IBUF[6]_inst 
       (.I(X_1[6]),
        .O(X_1_IBUF[6]));
  IBUF \X_1_IBUF[7]_inst 
       (.I(X_1[7]),
        .O(X_1_IBUF[7]));
  IBUF \X_2_IBUF[0]_inst 
       (.I(X_2[0]),
        .O(X_2_IBUF[0]));
  IBUF \X_2_IBUF[1]_inst 
       (.I(X_2[1]),
        .O(X_2_IBUF[1]));
  IBUF \X_2_IBUF[2]_inst 
       (.I(X_2[2]),
        .O(X_2_IBUF[2]));
  IBUF \X_2_IBUF[3]_inst 
       (.I(X_2[3]),
        .O(X_2_IBUF[3]));
  IBUF \X_2_IBUF[4]_inst 
       (.I(X_2[4]),
        .O(X_2_IBUF[4]));
  IBUF \X_2_IBUF[5]_inst 
       (.I(X_2[5]),
        .O(X_2_IBUF[5]));
  IBUF \X_2_IBUF[6]_inst 
       (.I(X_2[6]),
        .O(X_2_IBUF[6]));
  IBUF \X_2_IBUF[7]_inst 
       (.I(X_2[7]),
        .O(X_2_IBUF[7]));
  IBUF \Y_1_IBUF[0]_inst 
       (.I(Y_1[0]),
        .O(Y_1_IBUF[0]));
  IBUF \Y_1_IBUF[1]_inst 
       (.I(Y_1[1]),
        .O(Y_1_IBUF[1]));
  IBUF \Y_1_IBUF[2]_inst 
       (.I(Y_1[2]),
        .O(Y_1_IBUF[2]));
  IBUF \Y_1_IBUF[3]_inst 
       (.I(Y_1[3]),
        .O(Y_1_IBUF[3]));
  IBUF \Y_1_IBUF[4]_inst 
       (.I(Y_1[4]),
        .O(Y_1_IBUF[4]));
  IBUF \Y_1_IBUF[5]_inst 
       (.I(Y_1[5]),
        .O(Y_1_IBUF[5]));
  IBUF \Y_1_IBUF[6]_inst 
       (.I(Y_1[6]),
        .O(Y_1_IBUF[6]));
  IBUF \Y_1_IBUF[7]_inst 
       (.I(Y_1[7]),
        .O(Y_1_IBUF[7]));
  IBUF \Y_2_IBUF[0]_inst 
       (.I(Y_2[0]),
        .O(Y_2_IBUF[0]));
  IBUF \Y_2_IBUF[1]_inst 
       (.I(Y_2[1]),
        .O(Y_2_IBUF[1]));
  IBUF \Y_2_IBUF[2]_inst 
       (.I(Y_2[2]),
        .O(Y_2_IBUF[2]));
  IBUF \Y_2_IBUF[3]_inst 
       (.I(Y_2[3]),
        .O(Y_2_IBUF[3]));
  IBUF \Y_2_IBUF[4]_inst 
       (.I(Y_2[4]),
        .O(Y_2_IBUF[4]));
  IBUF \Y_2_IBUF[5]_inst 
       (.I(Y_2[5]),
        .O(Y_2_IBUF[5]));
  IBUF \Y_2_IBUF[6]_inst 
       (.I(Y_2[6]),
        .O(Y_2_IBUF[6]));
  IBUF \Y_2_IBUF[7]_inst 
       (.I(Y_2[7]),
        .O(Y_2_IBUF[7]));
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
