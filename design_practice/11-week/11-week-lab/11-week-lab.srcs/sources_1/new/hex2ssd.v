`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module hex2ssd( // hex 값을 7세그먼트 신호로 변환하는 모듈입니다.
  input [3:0] hex, // 4비트 16진수 입력입니다.
  output reg [6:0] seg // 7세그먼트 표시를 위한 7비트 출력입니다.
);

  always @ (*) // 입력 hex 값이 변경될 때 항상 실행됩니다.
  begin
    case(hex) // hex 입력 값에 따라 seg 출력을 결정합니다.
      4'h0 : seg = 7'h3f; //0
      4'h1 : seg = 7'h06; //1
      4'h2 : seg = 7'h5b; //2
      4'h3 : seg = 7'h4f; //3
      4'h4 : seg = 7'h66; //4
      4'h5 : seg = 7'h6d; //5
      4'h6 : seg = 7'h7d; //6
      4'h7 : seg = 7'h07; //7
      4'h8 : seg = 7'h7f; //8
      4'h9 : seg = 7'h67; //9
      4'ha : seg = 7'h77; // A
      4'hb : seg = 7'h7c; // b
      4'hc : seg = 7'h39; // C
      4'hd : seg = 7'h5e; // d
      4'he : seg = 7'h79; // E
      4'hf : seg = 7'h71; // F
      default : seg = 7'h00; // 기본값은 모든 세그먼트 off 입니다.
    endcase
  end
endmodule