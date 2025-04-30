// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Apr 30 03:53:57 2025
// Host        : DESKTOP-ED72SOS running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               E:/Dev/dev-git/digital-system-design-verilog/design_practice/midterm/problem3/problem3.sim/sim_1/synth/timing/xsim/tb_booth_mul_top_time_synth.v
// Design      : booth_mul_top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* DONE = "2'b11" *) (* IDLE = "2'b00" *) (* LOAD = "2'b01" *) 
(* WAIT_CALC = "2'b10" *) 
(* NotValidForBitStream *)
module booth_mul_top
   (clk,
    rst,
    start,
    Mcand,
    Mplier,
    Product,
    done);
  input clk;
  input rst;
  input start;
  input [7:0]Mcand;
  input [7:0]Mplier;
  output [15:0]Product;
  output done;

  wire \FSM_sequential_state_reg_n_0_[1] ;
  wire [7:0]Mcand;
  wire [7:0]Mcand_IBUF;
  wire [7:0]Mplier;
  wire [7:0]Mplier_IBUF;
  wire [15:1]P;
  wire [15:0]Product;
  wire \Product[15]_i_1_n_0 ;
  wire [15:0]Product_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire \cyc_cnt[0]_i_1_n_0 ;
  wire \cyc_cnt[1]_i_1_n_0 ;
  wire \cyc_cnt[2]_i_1_n_0 ;
  wire \cyc_cnt_reg_n_0_[0] ;
  wire \cyc_cnt_reg_n_0_[1] ;
  wire \cyc_cnt_reg_n_0_[2] ;
  wire done;
  wire done_OBUF;
  wire done_i_1_n_0;
  wire [1:0]n_state;
  wire [0:0]partial_product;
  wire rst;
  wire rst_IBUF;
  wire start;
  wire start_IBUF;
  wire [0:0]state;

initial begin
 $sdf_annotate("tb_booth_mul_top_time_synth.sdf",,,,"tool_control");
end
  LUT6 #(
    .INIT(64'hAAAB555500010000)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state),
        .I1(\cyc_cnt_reg_n_0_[1] ),
        .I2(\cyc_cnt_reg_n_0_[0] ),
        .I3(\cyc_cnt_reg_n_0_[2] ),
        .I4(\FSM_sequential_state_reg_n_0_[1] ),
        .I5(start_IBUF),
        .O(n_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hBC)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(start_IBUF),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(state),
        .O(n_state[1]));
  (* FSM_ENCODED_STATES = "LOAD:01,WAIT_CALC:10,IDLE:00,DONE:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(n_state[0]),
        .Q(state));
  (* FSM_ENCODED_STATES = "LOAD:01,WAIT_CALC:10,IDLE:00,DONE:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(n_state[1]),
        .Q(\FSM_sequential_state_reg_n_0_[1] ));
  IBUF \Mcand_IBUF[0]_inst 
       (.I(Mcand[0]),
        .O(Mcand_IBUF[0]));
  IBUF \Mcand_IBUF[1]_inst 
       (.I(Mcand[1]),
        .O(Mcand_IBUF[1]));
  IBUF \Mcand_IBUF[2]_inst 
       (.I(Mcand[2]),
        .O(Mcand_IBUF[2]));
  IBUF \Mcand_IBUF[3]_inst 
       (.I(Mcand[3]),
        .O(Mcand_IBUF[3]));
  IBUF \Mcand_IBUF[4]_inst 
       (.I(Mcand[4]),
        .O(Mcand_IBUF[4]));
  IBUF \Mcand_IBUF[5]_inst 
       (.I(Mcand[5]),
        .O(Mcand_IBUF[5]));
  IBUF \Mcand_IBUF[6]_inst 
       (.I(Mcand[6]),
        .O(Mcand_IBUF[6]));
  IBUF \Mcand_IBUF[7]_inst 
       (.I(Mcand[7]),
        .O(Mcand_IBUF[7]));
  IBUF \Mplier_IBUF[0]_inst 
       (.I(Mplier[0]),
        .O(Mplier_IBUF[0]));
  IBUF \Mplier_IBUF[1]_inst 
       (.I(Mplier[1]),
        .O(Mplier_IBUF[1]));
  IBUF \Mplier_IBUF[2]_inst 
       (.I(Mplier[2]),
        .O(Mplier_IBUF[2]));
  IBUF \Mplier_IBUF[3]_inst 
       (.I(Mplier[3]),
        .O(Mplier_IBUF[3]));
  IBUF \Mplier_IBUF[4]_inst 
       (.I(Mplier[4]),
        .O(Mplier_IBUF[4]));
  IBUF \Mplier_IBUF[5]_inst 
       (.I(Mplier[5]),
        .O(Mplier_IBUF[5]));
  IBUF \Mplier_IBUF[6]_inst 
       (.I(Mplier[6]),
        .O(Mplier_IBUF[6]));
  IBUF \Mplier_IBUF[7]_inst 
       (.I(Mplier[7]),
        .O(Mplier_IBUF[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \Product[0]_i_1 
       (.I0(Mplier_IBUF[0]),
        .I1(Mcand_IBUF[0]),
        .O(partial_product));
  LUT2 #(
    .INIT(4'h8)) 
    \Product[15]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\Product[15]_i_1_n_0 ));
  OBUF \Product_OBUF[0]_inst 
       (.I(Product_OBUF[0]),
        .O(Product[0]));
  OBUF \Product_OBUF[10]_inst 
       (.I(Product_OBUF[10]),
        .O(Product[10]));
  OBUF \Product_OBUF[11]_inst 
       (.I(Product_OBUF[11]),
        .O(Product[11]));
  OBUF \Product_OBUF[12]_inst 
       (.I(Product_OBUF[12]),
        .O(Product[12]));
  OBUF \Product_OBUF[13]_inst 
       (.I(Product_OBUF[13]),
        .O(Product[13]));
  OBUF \Product_OBUF[14]_inst 
       (.I(Product_OBUF[14]),
        .O(Product[14]));
  OBUF \Product_OBUF[15]_inst 
       (.I(Product_OBUF[15]),
        .O(Product[15]));
  OBUF \Product_OBUF[1]_inst 
       (.I(Product_OBUF[1]),
        .O(Product[1]));
  OBUF \Product_OBUF[2]_inst 
       (.I(Product_OBUF[2]),
        .O(Product[2]));
  OBUF \Product_OBUF[3]_inst 
       (.I(Product_OBUF[3]),
        .O(Product[3]));
  OBUF \Product_OBUF[4]_inst 
       (.I(Product_OBUF[4]),
        .O(Product[4]));
  OBUF \Product_OBUF[5]_inst 
       (.I(Product_OBUF[5]),
        .O(Product[5]));
  OBUF \Product_OBUF[6]_inst 
       (.I(Product_OBUF[6]),
        .O(Product[6]));
  OBUF \Product_OBUF[7]_inst 
       (.I(Product_OBUF[7]),
        .O(Product[7]));
  OBUF \Product_OBUF[8]_inst 
       (.I(Product_OBUF[8]),
        .O(Product[8]));
  OBUF \Product_OBUF[9]_inst 
       (.I(Product_OBUF[9]),
        .O(Product[9]));
  FDCE #(
    .INIT(1'b0)) 
    \Product_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\Product[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(partial_product),
        .Q(Product_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Product_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\Product[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(P[10]),
        .Q(Product_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Product_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\Product[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(P[11]),
        .Q(Product_OBUF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Product_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\Product[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(P[12]),
        .Q(Product_OBUF[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Product_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\Product[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(P[13]),
        .Q(Product_OBUF[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Product_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\Product[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(P[14]),
        .Q(Product_OBUF[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Product_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\Product[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(P[15]),
        .Q(Product_OBUF[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Product_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\Product[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(P[1]),
        .Q(Product_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Product_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\Product[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(P[2]),
        .Q(Product_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Product_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\Product[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(P[3]),
        .Q(Product_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Product_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\Product[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(P[4]),
        .Q(Product_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Product_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\Product[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(P[5]),
        .Q(Product_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Product_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\Product[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(P[6]),
        .Q(Product_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Product_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\Product[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(P[7]),
        .Q(Product_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Product_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\Product[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(P[8]),
        .Q(Product_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Product_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\Product[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(P[9]),
        .Q(Product_OBUF[9]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB6)) 
    \cyc_cnt[0]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state_reg_n_0_[1] ),
        .I2(\cyc_cnt_reg_n_0_[0] ),
        .O(\cyc_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEF1C)) 
    \cyc_cnt[1]_i_1 
       (.I0(\cyc_cnt_reg_n_0_[0] ),
        .I1(state),
        .I2(\FSM_sequential_state_reg_n_0_[1] ),
        .I3(\cyc_cnt_reg_n_0_[1] ),
        .O(\cyc_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFE0F0100)) 
    \cyc_cnt[2]_i_1 
       (.I0(\cyc_cnt_reg_n_0_[0] ),
        .I1(\cyc_cnt_reg_n_0_[1] ),
        .I2(state),
        .I3(\FSM_sequential_state_reg_n_0_[1] ),
        .I4(\cyc_cnt_reg_n_0_[2] ),
        .O(\cyc_cnt[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cyc_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\cyc_cnt[0]_i_1_n_0 ),
        .Q(\cyc_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cyc_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\cyc_cnt[1]_i_1_n_0 ),
        .Q(\cyc_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cyc_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\cyc_cnt[2]_i_1_n_0 ),
        .Q(\cyc_cnt_reg_n_0_[2] ));
  OBUF done_OBUF_inst
       (.I(done_OBUF),
        .O(done));
  LUT2 #(
    .INIT(4'h9)) 
    done_i_1
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(state),
        .O(done_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    done_reg
       (.C(clk_IBUF_BUFG),
        .CE(done_i_1_n_0),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_state_reg_n_0_[1] ),
        .Q(done_OBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
  radix4_booth_multiplier u_datapath
       (.D(P),
        .Mcand_IBUF(Mcand_IBUF),
        .Mplier_IBUF(Mplier_IBUF));
endmodule

module cla
   (D,
    Mplier_IBUF,
    Mcand_IBUF);
  output [14:0]D;
  input [7:0]Mplier_IBUF;
  input [7:0]Mcand_IBUF;

  wire [14:0]D;
  wire [7:0]Mcand_IBUF;
  wire [7:0]Mplier_IBUF;
  wire SUM__28_carry__0_i_10_n_0;
  wire SUM__28_carry__0_i_11_n_0;
  wire SUM__28_carry__0_i_1_n_0;
  wire SUM__28_carry__0_i_2_n_0;
  wire SUM__28_carry__0_i_3_n_0;
  wire SUM__28_carry__0_i_4_n_0;
  wire SUM__28_carry__0_i_5_n_0;
  wire SUM__28_carry__0_i_6_n_0;
  wire SUM__28_carry__0_i_7_n_0;
  wire SUM__28_carry__0_i_8_n_0;
  wire SUM__28_carry__0_i_9_n_0;
  wire SUM__28_carry__0_n_0;
  wire SUM__28_carry__0_n_1;
  wire SUM__28_carry__0_n_2;
  wire SUM__28_carry__0_n_3;
  wire SUM__28_carry__0_n_4;
  wire SUM__28_carry__0_n_5;
  wire SUM__28_carry__0_n_6;
  wire SUM__28_carry__0_n_7;
  wire SUM__28_carry__1_i_1_n_0;
  wire SUM__28_carry__1_i_2_n_0;
  wire SUM__28_carry__1_i_3_n_0;
  wire SUM__28_carry__1_i_4_n_0;
  wire SUM__28_carry__1_i_5_n_0;
  wire SUM__28_carry__1_n_1;
  wire SUM__28_carry__1_n_3;
  wire SUM__28_carry__1_n_6;
  wire SUM__28_carry__1_n_7;
  wire SUM__28_carry_i_1_n_0;
  wire SUM__28_carry_i_2_n_0;
  wire SUM__28_carry_i_3_n_0;
  wire SUM__28_carry_i_4_n_0;
  wire SUM__28_carry_i_5_n_0;
  wire SUM__28_carry_i_6_n_0;
  wire SUM__28_carry_i_7_n_0;
  wire SUM__28_carry_i_8_n_0;
  wire SUM__28_carry_i_9_n_0;
  wire SUM__28_carry_n_0;
  wire SUM__28_carry_n_1;
  wire SUM__28_carry_n_2;
  wire SUM__28_carry_n_3;
  wire SUM__28_carry_n_4;
  wire SUM__28_carry_n_5;
  wire SUM__28_carry_n_6;
  wire SUM__28_carry_n_7;
  wire SUM__57_carry__0_i_1_n_0;
  wire SUM__57_carry__0_i_2_n_0;
  wire SUM__57_carry__0_i_3_n_0;
  wire SUM__57_carry__0_i_4_n_0;
  wire SUM__57_carry__0_n_0;
  wire SUM__57_carry__0_n_1;
  wire SUM__57_carry__0_n_2;
  wire SUM__57_carry__0_n_3;
  wire SUM__57_carry__1_i_1_n_0;
  wire SUM__57_carry__1_i_2_n_0;
  wire SUM__57_carry__1_i_3_n_0;
  wire SUM__57_carry__1_i_4_n_0;
  wire SUM__57_carry__1_n_1;
  wire SUM__57_carry__1_n_2;
  wire SUM__57_carry__1_n_3;
  wire SUM__57_carry_i_1_n_0;
  wire SUM__57_carry_i_2_n_0;
  wire SUM__57_carry_i_3_n_0;
  wire SUM__57_carry_i_4_n_0;
  wire SUM__57_carry_n_0;
  wire SUM__57_carry_n_1;
  wire SUM__57_carry_n_2;
  wire SUM__57_carry_n_3;
  wire SUM_carry__0_i_10_n_0;
  wire SUM_carry__0_i_11_n_0;
  wire SUM_carry__0_i_12_n_0;
  wire SUM_carry__0_i_13_n_0;
  wire SUM_carry__0_i_14_n_0;
  wire SUM_carry__0_i_15_n_0;
  wire SUM_carry__0_i_1_n_0;
  wire SUM_carry__0_i_5_n_0;
  wire SUM_carry__0_i_6_n_0;
  wire SUM_carry__0_i_7_n_0;
  wire SUM_carry__0_i_8_n_0;
  wire SUM_carry__0_i_9_n_0;
  wire SUM_carry__0_n_0;
  wire SUM_carry__0_n_1;
  wire SUM_carry__0_n_2;
  wire SUM_carry__0_n_3;
  wire SUM_carry__0_n_4;
  wire SUM_carry__0_n_5;
  wire SUM_carry__0_n_6;
  wire SUM_carry__0_n_7;
  wire SUM_carry__1_i_1_n_0;
  wire SUM_carry__1_i_2_n_0;
  wire SUM_carry__1_i_3_n_0;
  wire SUM_carry__1_i_4_n_0;
  wire SUM_carry__1_i_5_n_0;
  wire SUM_carry__1_n_2;
  wire SUM_carry__1_n_3;
  wire SUM_carry__1_n_5;
  wire SUM_carry__1_n_6;
  wire SUM_carry__1_n_7;
  wire SUM_carry_i_4_n_0;
  wire SUM_carry_i_5_n_0;
  wire SUM_carry_i_6_n_0;
  wire SUM_carry_i_8_n_0;
  wire SUM_carry_i_9_n_0;
  wire SUM_carry_n_0;
  wire SUM_carry_n_1;
  wire SUM_carry_n_2;
  wire SUM_carry_n_3;
  wire SUM_carry_n_4;
  wire [7:1]partial_product__0;
  wire [3:1]NLW_SUM__28_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_SUM__28_carry__1_O_UNCONNECTED;
  wire [0:0]NLW_SUM__57_carry_O_UNCONNECTED;
  wire [3:3]NLW_SUM__57_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_SUM_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_SUM_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA66A)) 
    \Product[4]_i_1 
       (.I0(SUM_carry_n_4),
        .I1(Mcand_IBUF[0]),
        .I2(Mplier_IBUF[3]),
        .I3(Mplier_IBUF[4]),
        .O(D[3]));
  CARRY4 SUM__28_carry
       (.CI(1'b0),
        .CO({SUM__28_carry_n_0,SUM__28_carry_n_1,SUM__28_carry_n_2,SUM__28_carry_n_3}),
        .CYINIT(1'b0),
        .DI({SUM__28_carry_i_1_n_0,SUM__28_carry_i_2_n_0,SUM__28_carry_i_3_n_0,1'b0}),
        .O({SUM__28_carry_n_4,SUM__28_carry_n_5,SUM__28_carry_n_6,SUM__28_carry_n_7}),
        .S({SUM__28_carry_i_4_n_0,SUM__28_carry_i_5_n_0,SUM__28_carry_i_6_n_0,SUM__28_carry_i_7_n_0}));
  CARRY4 SUM__28_carry__0
       (.CI(SUM__28_carry_n_0),
        .CO({SUM__28_carry__0_n_0,SUM__28_carry__0_n_1,SUM__28_carry__0_n_2,SUM__28_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({SUM__28_carry__0_i_1_n_0,SUM__28_carry__0_i_2_n_0,SUM__28_carry__0_i_3_n_0,SUM__28_carry__0_i_4_n_0}),
        .O({SUM__28_carry__0_n_4,SUM__28_carry__0_n_5,SUM__28_carry__0_n_6,SUM__28_carry__0_n_7}),
        .S({SUM__28_carry__0_i_5_n_0,SUM__28_carry__0_i_6_n_0,SUM__28_carry__0_i_7_n_0,SUM__28_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'hFFE1E199550F0FFF)) 
    SUM__28_carry__0_i_1
       (.I0(Mcand_IBUF[5]),
        .I1(SUM_carry__0_i_9_n_0),
        .I2(Mcand_IBUF[6]),
        .I3(Mplier_IBUF[6]),
        .I4(Mplier_IBUF[5]),
        .I5(Mplier_IBUF[7]),
        .O(SUM__28_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h001E1E66CCF0F000)) 
    SUM__28_carry__0_i_10
       (.I0(SUM_carry_i_8_n_0),
        .I1(Mcand_IBUF[3]),
        .I2(Mcand_IBUF[4]),
        .I3(Mplier_IBUF[6]),
        .I4(Mplier_IBUF[5]),
        .I5(Mplier_IBUF[7]),
        .O(SUM__28_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h001E1E66CCF0F000)) 
    SUM__28_carry__0_i_11
       (.I0(SUM__28_carry_i_8_n_0),
        .I1(Mcand_IBUF[2]),
        .I2(Mcand_IBUF[3]),
        .I3(Mplier_IBUF[6]),
        .I4(Mplier_IBUF[5]),
        .I5(Mplier_IBUF[7]),
        .O(SUM__28_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h5416682A563C6A00)) 
    SUM__28_carry__0_i_2
       (.I0(Mplier_IBUF[5]),
        .I1(Mplier_IBUF[3]),
        .I2(Mplier_IBUF[4]),
        .I3(Mcand_IBUF[6]),
        .I4(Mcand_IBUF[7]),
        .I5(SUM_carry__0_i_10_n_0),
        .O(SUM__28_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h001E1E66CCF0F000)) 
    SUM__28_carry__0_i_3
       (.I0(SUM_carry__0_i_9_n_0),
        .I1(Mcand_IBUF[5]),
        .I2(Mcand_IBUF[6]),
        .I3(Mplier_IBUF[4]),
        .I4(Mplier_IBUF[3]),
        .I5(Mplier_IBUF[5]),
        .O(SUM__28_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h001E1E66CCF0F000)) 
    SUM__28_carry__0_i_4
       (.I0(SUM_carry__0_i_11_n_0),
        .I1(Mcand_IBUF[4]),
        .I2(Mcand_IBUF[5]),
        .I3(Mplier_IBUF[4]),
        .I4(Mplier_IBUF[3]),
        .I5(Mplier_IBUF[5]),
        .O(SUM__28_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h5969696559595995)) 
    SUM__28_carry__0_i_5
       (.I0(SUM__28_carry__0_i_1_n_0),
        .I1(Mcand_IBUF[7]),
        .I2(Mplier_IBUF[5]),
        .I3(Mplier_IBUF[3]),
        .I4(Mplier_IBUF[4]),
        .I5(SUM_carry__0_i_12_n_0),
        .O(SUM__28_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    SUM__28_carry__0_i_6
       (.I0(SUM__28_carry__0_i_2_n_0),
        .I1(SUM__28_carry__0_i_9_n_0),
        .O(SUM__28_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    SUM__28_carry__0_i_7
       (.I0(SUM__28_carry__0_i_3_n_0),
        .I1(SUM__28_carry__0_i_10_n_0),
        .O(SUM__28_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    SUM__28_carry__0_i_8
       (.I0(SUM__28_carry__0_i_4_n_0),
        .I1(SUM__28_carry__0_i_11_n_0),
        .O(SUM__28_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h001E1E66CCF0F000)) 
    SUM__28_carry__0_i_9
       (.I0(SUM_carry__0_i_11_n_0),
        .I1(Mcand_IBUF[4]),
        .I2(Mcand_IBUF[5]),
        .I3(Mplier_IBUF[6]),
        .I4(Mplier_IBUF[5]),
        .I5(Mplier_IBUF[7]),
        .O(SUM__28_carry__0_i_9_n_0));
  CARRY4 SUM__28_carry__1
       (.CI(SUM__28_carry__0_n_0),
        .CO({NLW_SUM__28_carry__1_CO_UNCONNECTED[3],SUM__28_carry__1_n_1,NLW_SUM__28_carry__1_CO_UNCONNECTED[1],SUM__28_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,SUM__28_carry__1_i_1_n_0,SUM__28_carry__1_i_2_n_0}),
        .O({NLW_SUM__28_carry__1_O_UNCONNECTED[3:2],SUM__28_carry__1_n_6,SUM__28_carry__1_n_7}),
        .S({1'b0,1'b1,SUM__28_carry__1_i_3_n_0,SUM__28_carry__1_i_4_n_0}));
  LUT6 #(
    .INIT(64'h5416682A563C6A00)) 
    SUM__28_carry__1_i_1
       (.I0(Mplier_IBUF[7]),
        .I1(Mplier_IBUF[5]),
        .I2(Mplier_IBUF[6]),
        .I3(Mcand_IBUF[6]),
        .I4(Mcand_IBUF[7]),
        .I5(SUM_carry__0_i_10_n_0),
        .O(SUM__28_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h001E1E66CCF0F000)) 
    SUM__28_carry__1_i_2
       (.I0(SUM_carry__0_i_9_n_0),
        .I1(Mcand_IBUF[5]),
        .I2(Mcand_IBUF[6]),
        .I3(Mplier_IBUF[6]),
        .I4(Mplier_IBUF[5]),
        .I5(Mplier_IBUF[7]),
        .O(SUM__28_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hEFFBDFF7EFF7D777)) 
    SUM__28_carry__1_i_3
       (.I0(Mcand_IBUF[7]),
        .I1(Mplier_IBUF[7]),
        .I2(Mplier_IBUF[5]),
        .I3(Mplier_IBUF[6]),
        .I4(Mcand_IBUF[6]),
        .I5(SUM_carry__0_i_10_n_0),
        .O(SUM__28_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    SUM__28_carry__1_i_4
       (.I0(SUM__28_carry__1_i_2_n_0),
        .I1(SUM__28_carry__1_i_5_n_0),
        .O(SUM__28_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hF197E187E98F99FF)) 
    SUM__28_carry__1_i_5
       (.I0(Mplier_IBUF[5]),
        .I1(Mplier_IBUF[6]),
        .I2(Mplier_IBUF[7]),
        .I3(Mcand_IBUF[7]),
        .I4(SUM_carry__0_i_10_n_0),
        .I5(Mcand_IBUF[6]),
        .O(SUM__28_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h001E1E66CCF0F000)) 
    SUM__28_carry_i_1
       (.I0(SUM_carry_i_8_n_0),
        .I1(Mcand_IBUF[3]),
        .I2(Mcand_IBUF[4]),
        .I3(Mplier_IBUF[4]),
        .I4(Mplier_IBUF[3]),
        .I5(Mplier_IBUF[5]),
        .O(SUM__28_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h001E1E66CCF0F000)) 
    SUM__28_carry_i_2
       (.I0(SUM__28_carry_i_8_n_0),
        .I1(Mcand_IBUF[2]),
        .I2(Mcand_IBUF[3]),
        .I3(Mplier_IBUF[4]),
        .I4(Mplier_IBUF[3]),
        .I5(Mplier_IBUF[5]),
        .O(SUM__28_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h001E1E66CCF0F000)) 
    SUM__28_carry_i_3
       (.I0(Mcand_IBUF[0]),
        .I1(Mcand_IBUF[1]),
        .I2(Mcand_IBUF[2]),
        .I3(Mplier_IBUF[4]),
        .I4(Mplier_IBUF[3]),
        .I5(Mplier_IBUF[5]),
        .O(SUM__28_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    SUM__28_carry_i_4
       (.I0(SUM__28_carry_i_1_n_0),
        .I1(SUM__28_carry_i_9_n_0),
        .O(SUM__28_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9A9A956A956A6A6A)) 
    SUM__28_carry_i_5
       (.I0(SUM__28_carry_i_2_n_0),
        .I1(Mplier_IBUF[7]),
        .I2(Mcand_IBUF[0]),
        .I3(Mcand_IBUF[1]),
        .I4(Mplier_IBUF[6]),
        .I5(Mplier_IBUF[5]),
        .O(SUM__28_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hA66A)) 
    SUM__28_carry_i_6
       (.I0(SUM__28_carry_i_3_n_0),
        .I1(Mcand_IBUF[0]),
        .I2(Mplier_IBUF[5]),
        .I3(Mplier_IBUF[6]),
        .O(SUM__28_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h1760E860)) 
    SUM__28_carry_i_7
       (.I0(Mplier_IBUF[3]),
        .I1(Mplier_IBUF[4]),
        .I2(Mcand_IBUF[1]),
        .I3(Mcand_IBUF[0]),
        .I4(Mplier_IBUF[5]),
        .O(SUM__28_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    SUM__28_carry_i_8
       (.I0(Mcand_IBUF[0]),
        .I1(Mcand_IBUF[1]),
        .O(SUM__28_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h001E1E66CCF0F000)) 
    SUM__28_carry_i_9
       (.I0(Mcand_IBUF[0]),
        .I1(Mcand_IBUF[1]),
        .I2(Mcand_IBUF[2]),
        .I3(Mplier_IBUF[6]),
        .I4(Mplier_IBUF[5]),
        .I5(Mplier_IBUF[7]),
        .O(SUM__28_carry_i_9_n_0));
  CARRY4 SUM__57_carry
       (.CI(1'b0),
        .CO({SUM__57_carry_n_0,SUM__57_carry_n_1,SUM__57_carry_n_2,SUM__57_carry_n_3}),
        .CYINIT(1'b0),
        .DI({SUM_carry__0_n_5,SUM_carry__0_n_6,SUM_carry__0_n_7,SUM_carry_n_4}),
        .O({D[6:4],NLW_SUM__57_carry_O_UNCONNECTED[0]}),
        .S({SUM__57_carry_i_1_n_0,SUM__57_carry_i_2_n_0,SUM__57_carry_i_3_n_0,SUM__57_carry_i_4_n_0}));
  CARRY4 SUM__57_carry__0
       (.CI(SUM__57_carry_n_0),
        .CO({SUM__57_carry__0_n_0,SUM__57_carry__0_n_1,SUM__57_carry__0_n_2,SUM__57_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({SUM_carry__1_n_5,SUM_carry__1_n_6,SUM_carry__1_n_7,SUM_carry__0_n_4}),
        .O(D[10:7]),
        .S({SUM__57_carry__0_i_1_n_0,SUM__57_carry__0_i_2_n_0,SUM__57_carry__0_i_3_n_0,SUM__57_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    SUM__57_carry__0_i_1
       (.I0(SUM_carry__1_n_5),
        .I1(SUM__28_carry__0_n_5),
        .O(SUM__57_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    SUM__57_carry__0_i_2
       (.I0(SUM_carry__1_n_6),
        .I1(SUM__28_carry__0_n_6),
        .O(SUM__57_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    SUM__57_carry__0_i_3
       (.I0(SUM_carry__1_n_7),
        .I1(SUM__28_carry__0_n_7),
        .O(SUM__57_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    SUM__57_carry__0_i_4
       (.I0(SUM_carry__0_n_4),
        .I1(SUM__28_carry_n_4),
        .O(SUM__57_carry__0_i_4_n_0));
  CARRY4 SUM__57_carry__1
       (.CI(SUM__57_carry__0_n_0),
        .CO({NLW_SUM__57_carry__1_CO_UNCONNECTED[3],SUM__57_carry__1_n_1,SUM__57_carry__1_n_2,SUM__57_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,SUM_carry__1_n_5,SUM_carry__1_n_5,SUM_carry__1_n_5}),
        .O(D[14:11]),
        .S({SUM__57_carry__1_i_1_n_0,SUM__57_carry__1_i_2_n_0,SUM__57_carry__1_i_3_n_0,SUM__57_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    SUM__57_carry__1_i_1
       (.I0(SUM_carry__1_n_5),
        .I1(SUM__28_carry__1_n_1),
        .O(SUM__57_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    SUM__57_carry__1_i_2
       (.I0(SUM_carry__1_n_5),
        .I1(SUM__28_carry__1_n_6),
        .O(SUM__57_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    SUM__57_carry__1_i_3
       (.I0(SUM_carry__1_n_5),
        .I1(SUM__28_carry__1_n_7),
        .O(SUM__57_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    SUM__57_carry__1_i_4
       (.I0(SUM_carry__1_n_5),
        .I1(SUM__28_carry__0_n_4),
        .O(SUM__57_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    SUM__57_carry_i_1
       (.I0(SUM_carry__0_n_5),
        .I1(SUM__28_carry_n_5),
        .O(SUM__57_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    SUM__57_carry_i_2
       (.I0(SUM_carry__0_n_6),
        .I1(SUM__28_carry_n_6),
        .O(SUM__57_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    SUM__57_carry_i_3
       (.I0(SUM_carry__0_n_7),
        .I1(SUM__28_carry_n_7),
        .O(SUM__57_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hA66A)) 
    SUM__57_carry_i_4
       (.I0(SUM_carry_n_4),
        .I1(Mcand_IBUF[0]),
        .I2(Mplier_IBUF[3]),
        .I3(Mplier_IBUF[4]),
        .O(SUM__57_carry_i_4_n_0));
  CARRY4 SUM_carry
       (.CI(1'b0),
        .CO({SUM_carry_n_0,SUM_carry_n_1,SUM_carry_n_2,SUM_carry_n_3}),
        .CYINIT(1'b0),
        .DI({partial_product__0[4:2],1'b0}),
        .O({SUM_carry_n_4,D[2:0]}),
        .S({SUM_carry_i_4_n_0,SUM_carry_i_5_n_0,SUM_carry_i_6_n_0,partial_product__0[1]}));
  CARRY4 SUM_carry__0
       (.CI(SUM_carry_n_0),
        .CO({SUM_carry__0_n_0,SUM_carry__0_n_1,SUM_carry__0_n_2,SUM_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({SUM_carry__0_i_1_n_0,partial_product__0[7:5]}),
        .O({SUM_carry__0_n_4,SUM_carry__0_n_5,SUM_carry__0_n_6,SUM_carry__0_n_7}),
        .S({SUM_carry__0_i_5_n_0,SUM_carry__0_i_6_n_0,SUM_carry__0_i_7_n_0,SUM_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'hFFE1E199550F0FFF)) 
    SUM_carry__0_i_1
       (.I0(Mcand_IBUF[5]),
        .I1(SUM_carry__0_i_9_n_0),
        .I2(Mcand_IBUF[6]),
        .I3(Mplier_IBUF[2]),
        .I4(Mplier_IBUF[1]),
        .I5(Mplier_IBUF[3]),
        .O(SUM_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    SUM_carry__0_i_10
       (.I0(Mcand_IBUF[4]),
        .I1(Mcand_IBUF[2]),
        .I2(Mcand_IBUF[0]),
        .I3(Mcand_IBUF[1]),
        .I4(Mcand_IBUF[3]),
        .I5(Mcand_IBUF[5]),
        .O(SUM_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    SUM_carry__0_i_11
       (.I0(Mcand_IBUF[2]),
        .I1(Mcand_IBUF[0]),
        .I2(Mcand_IBUF[1]),
        .I3(Mcand_IBUF[3]),
        .O(SUM_carry__0_i_11_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    SUM_carry__0_i_12
       (.I0(SUM_carry__0_i_10_n_0),
        .I1(Mcand_IBUF[6]),
        .O(SUM_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'h001E1E66CCF0F000)) 
    SUM_carry__0_i_13
       (.I0(SUM_carry__0_i_11_n_0),
        .I1(Mcand_IBUF[4]),
        .I2(Mcand_IBUF[5]),
        .I3(Mplier_IBUF[2]),
        .I4(Mplier_IBUF[1]),
        .I5(Mplier_IBUF[3]),
        .O(SUM_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h001E1E66CCF0F000)) 
    SUM_carry__0_i_14
       (.I0(SUM_carry_i_8_n_0),
        .I1(Mcand_IBUF[3]),
        .I2(Mcand_IBUF[4]),
        .I3(Mplier_IBUF[2]),
        .I4(Mplier_IBUF[1]),
        .I5(Mplier_IBUF[3]),
        .O(SUM_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h001E1E66CCF0F000)) 
    SUM_carry__0_i_15
       (.I0(SUM__28_carry_i_8_n_0),
        .I1(Mcand_IBUF[2]),
        .I2(Mcand_IBUF[3]),
        .I3(Mplier_IBUF[2]),
        .I4(Mplier_IBUF[1]),
        .I5(Mplier_IBUF[3]),
        .O(SUM_carry__0_i_15_n_0));
  LUT5 #(
    .INIT(32'h57A82828)) 
    SUM_carry__0_i_2
       (.I0(Mplier_IBUF[1]),
        .I1(SUM_carry__0_i_10_n_0),
        .I2(Mcand_IBUF[6]),
        .I3(Mcand_IBUF[7]),
        .I4(Mplier_IBUF[0]),
        .O(partial_product__0[7]));
  LUT5 #(
    .INIT(32'h486A6AC0)) 
    SUM_carry__0_i_3
       (.I0(Mplier_IBUF[1]),
        .I1(Mplier_IBUF[0]),
        .I2(Mcand_IBUF[6]),
        .I3(Mcand_IBUF[5]),
        .I4(SUM_carry__0_i_9_n_0),
        .O(partial_product__0[6]));
  LUT5 #(
    .INIT(32'h486A6AC0)) 
    SUM_carry__0_i_4
       (.I0(Mplier_IBUF[1]),
        .I1(Mplier_IBUF[0]),
        .I2(Mcand_IBUF[5]),
        .I3(Mcand_IBUF[4]),
        .I4(SUM_carry__0_i_11_n_0),
        .O(partial_product__0[5]));
  LUT5 #(
    .INIT(32'h5A956595)) 
    SUM_carry__0_i_5
       (.I0(SUM_carry__0_i_1_n_0),
        .I1(SUM_carry__0_i_12_n_0),
        .I2(Mplier_IBUF[1]),
        .I3(Mcand_IBUF[7]),
        .I4(Mplier_IBUF[0]),
        .O(SUM_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hD887777727788888)) 
    SUM_carry__0_i_6
       (.I0(Mplier_IBUF[0]),
        .I1(Mcand_IBUF[7]),
        .I2(Mcand_IBUF[6]),
        .I3(SUM_carry__0_i_10_n_0),
        .I4(Mplier_IBUF[1]),
        .I5(SUM_carry__0_i_13_n_0),
        .O(SUM_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hE1990FFF1E66F000)) 
    SUM_carry__0_i_7
       (.I0(SUM_carry__0_i_9_n_0),
        .I1(Mcand_IBUF[5]),
        .I2(Mcand_IBUF[6]),
        .I3(Mplier_IBUF[0]),
        .I4(Mplier_IBUF[1]),
        .I5(SUM_carry__0_i_14_n_0),
        .O(SUM_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hE1990FFF1E66F000)) 
    SUM_carry__0_i_8
       (.I0(SUM_carry__0_i_11_n_0),
        .I1(Mcand_IBUF[4]),
        .I2(Mcand_IBUF[5]),
        .I3(Mplier_IBUF[0]),
        .I4(Mplier_IBUF[1]),
        .I5(SUM_carry__0_i_15_n_0),
        .O(SUM_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    SUM_carry__0_i_9
       (.I0(Mcand_IBUF[3]),
        .I1(Mcand_IBUF[1]),
        .I2(Mcand_IBUF[0]),
        .I3(Mcand_IBUF[2]),
        .I4(Mcand_IBUF[4]),
        .O(SUM_carry__0_i_9_n_0));
  CARRY4 SUM_carry__1
       (.CI(SUM_carry__0_n_0),
        .CO({NLW_SUM_carry__1_CO_UNCONNECTED[3:2],SUM_carry__1_n_2,SUM_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,SUM_carry__1_i_1_n_0,SUM_carry__1_i_2_n_0}),
        .O({NLW_SUM_carry__1_O_UNCONNECTED[3],SUM_carry__1_n_5,SUM_carry__1_n_6,SUM_carry__1_n_7}),
        .S({1'b0,1'b1,SUM_carry__1_i_3_n_0,SUM_carry__1_i_4_n_0}));
  LUT6 #(
    .INIT(64'h5416682A563C6A00)) 
    SUM_carry__1_i_1
       (.I0(Mplier_IBUF[3]),
        .I1(Mplier_IBUF[1]),
        .I2(Mplier_IBUF[2]),
        .I3(Mcand_IBUF[6]),
        .I4(Mcand_IBUF[7]),
        .I5(SUM_carry__0_i_10_n_0),
        .O(SUM_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h001E1E66CCF0F000)) 
    SUM_carry__1_i_2
       (.I0(SUM_carry__0_i_9_n_0),
        .I1(Mcand_IBUF[5]),
        .I2(Mcand_IBUF[6]),
        .I3(Mplier_IBUF[2]),
        .I4(Mplier_IBUF[1]),
        .I5(Mplier_IBUF[3]),
        .O(SUM_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hEFFBDFF7EFF7D777)) 
    SUM_carry__1_i_3
       (.I0(Mcand_IBUF[7]),
        .I1(Mplier_IBUF[3]),
        .I2(Mplier_IBUF[1]),
        .I3(Mplier_IBUF[2]),
        .I4(Mcand_IBUF[6]),
        .I5(SUM_carry__0_i_10_n_0),
        .O(SUM_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    SUM_carry__1_i_4
       (.I0(SUM_carry__1_i_2_n_0),
        .I1(SUM_carry__1_i_5_n_0),
        .O(SUM_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hF197E187E98F99FF)) 
    SUM_carry__1_i_5
       (.I0(Mplier_IBUF[1]),
        .I1(Mplier_IBUF[2]),
        .I2(Mplier_IBUF[3]),
        .I3(Mcand_IBUF[7]),
        .I4(SUM_carry__0_i_10_n_0),
        .I5(Mcand_IBUF[6]),
        .O(SUM_carry__1_i_5_n_0));
  LUT5 #(
    .INIT(32'h486A6AC0)) 
    SUM_carry_i_1
       (.I0(Mplier_IBUF[1]),
        .I1(Mplier_IBUF[0]),
        .I2(Mcand_IBUF[4]),
        .I3(Mcand_IBUF[3]),
        .I4(SUM_carry_i_8_n_0),
        .O(partial_product__0[4]));
  LUT6 #(
    .INIT(64'h486A486A486A6AC0)) 
    SUM_carry_i_2
       (.I0(Mplier_IBUF[1]),
        .I1(Mplier_IBUF[0]),
        .I2(Mcand_IBUF[3]),
        .I3(Mcand_IBUF[2]),
        .I4(Mcand_IBUF[0]),
        .I5(Mcand_IBUF[1]),
        .O(partial_product__0[3]));
  LUT5 #(
    .INIT(32'h486A6AC0)) 
    SUM_carry_i_3
       (.I0(Mplier_IBUF[1]),
        .I1(Mplier_IBUF[0]),
        .I2(Mcand_IBUF[2]),
        .I3(Mcand_IBUF[1]),
        .I4(Mcand_IBUF[0]),
        .O(partial_product__0[2]));
  LUT6 #(
    .INIT(64'hE1990FFF1E66F000)) 
    SUM_carry_i_4
       (.I0(SUM_carry_i_8_n_0),
        .I1(Mcand_IBUF[3]),
        .I2(Mcand_IBUF[4]),
        .I3(Mplier_IBUF[0]),
        .I4(Mplier_IBUF[1]),
        .I5(SUM_carry_i_9_n_0),
        .O(SUM_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9A9A956A956A6A6A)) 
    SUM_carry_i_5
       (.I0(partial_product__0[3]),
        .I1(Mplier_IBUF[3]),
        .I2(Mcand_IBUF[0]),
        .I3(Mcand_IBUF[1]),
        .I4(Mplier_IBUF[2]),
        .I5(Mplier_IBUF[1]),
        .O(SUM_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h356A3FC0CA6AC0C0)) 
    SUM_carry_i_6
       (.I0(Mcand_IBUF[1]),
        .I1(Mcand_IBUF[2]),
        .I2(Mplier_IBUF[0]),
        .I3(Mcand_IBUF[0]),
        .I4(Mplier_IBUF[1]),
        .I5(Mplier_IBUF[2]),
        .O(SUM_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h6AC0)) 
    SUM_carry_i_7
       (.I0(Mcand_IBUF[1]),
        .I1(Mcand_IBUF[0]),
        .I2(Mplier_IBUF[1]),
        .I3(Mplier_IBUF[0]),
        .O(partial_product__0[1]));
  LUT3 #(
    .INIT(8'hFE)) 
    SUM_carry_i_8
       (.I0(Mcand_IBUF[1]),
        .I1(Mcand_IBUF[0]),
        .I2(Mcand_IBUF[2]),
        .O(SUM_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h001E1E66CCF0F000)) 
    SUM_carry_i_9
       (.I0(Mcand_IBUF[0]),
        .I1(Mcand_IBUF[1]),
        .I2(Mcand_IBUF[2]),
        .I3(Mplier_IBUF[2]),
        .I4(Mplier_IBUF[1]),
        .I5(Mplier_IBUF[3]),
        .O(SUM_carry_i_9_n_0));
endmodule

module radix4_booth_multiplier
   (D,
    Mplier_IBUF,
    Mcand_IBUF);
  output [14:0]D;
  input [7:0]Mplier_IBUF;
  input [7:0]Mcand_IBUF;

  wire [14:0]D;
  wire [7:0]Mcand_IBUF;
  wire [7:0]Mplier_IBUF;

  cla add3
       (.D(D),
        .Mcand_IBUF(Mcand_IBUF),
        .Mplier_IBUF(Mplier_IBUF));
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
