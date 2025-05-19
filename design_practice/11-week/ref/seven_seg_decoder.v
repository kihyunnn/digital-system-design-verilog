module seven_seg_decoder (
  input  [3:0] x,
  output [6:0] hex_LEDs  // Active‐Low: 0→ON, 1→OFF
);

  reg [6:2] top_5_segments;

  // a, b 세그먼트 계산 후 반전
  assign hex_LEDs[0] = ~(
       (~x[3]&~x[2]&~x[1]& x[0]) |
       (~x[3]& x[2]&~x[1]&~x[0]) |
       ( x[3]&~x[2]& x[1]& x[0]) |
       ( x[3]& x[2]&~x[1]& x[0]) |
       ( x[3]& x[2]& x[1]& x[0])
  );
  assign hex_LEDs[1] = ~(
       (~x[3]& x[2]&~x[1]& x[0]) |
       (~x[3]& x[2]& x[1]&~x[0]) |
       ( x[3]&~x[2]& x[1]&~x[0]) |
       ( x[3]& x[2]&~x[1]& x[0]) |
       ( x[3]& x[2]& x[1]&~x[0]) |
       ( x[3]& x[2]& x[1]& x[0])
  );
  // c~g 세그먼트: reg 값 반전
  assign hex_LEDs[6:2] = ~top_5_segments[6:2];

  always @(*) begin
    case (x)
      4'h0: top_5_segments = 5'b10000; // c~g: 1=OFF, 0=ON
      4'h1: top_5_segments = 5'b11110;
      4'h2: top_5_segments = 5'b01001;
      4'h3: top_5_segments = 5'b01100;
      4'h4: top_5_segments = 5'b00110;
      4'h5: top_5_segments = 5'b00100;
      4'h6: top_5_segments = 5'b00000;
      4'h7: top_5_segments = 5'b11110;
      4'h8: top_5_segments = 5'b00000;
      4'h9: top_5_segments = 5'b00100;
      4'hA: top_5_segments = 5'b10001;
      4'hB: top_5_segments = 5'b00010;
      4'hC: top_5_segments = 5'b00010;
      4'hD: top_5_segments = 5'b10011;
      4'hE: top_5_segments = 5'b00100;
      4'hF: top_5_segments = 5'b00011;
      default: top_5_segments = 5'b11111; // all OFF
    endcase
  end

endmodule
