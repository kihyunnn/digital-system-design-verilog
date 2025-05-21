`timescale 1ns / 1ps
module pattern_gen(
    input clk,                  // 입력 클럭 (25.2MHz 픽셀 클럭) 입니다.
    input reset_n,              // 리셋 신호 (active low) 입니다.
    input [1:0] pattern_select, // 출력 패턴 선택 (2비트) 입니다.
    output o_vs,                // 수직 동기 신호 출력 입니다.
    output o_hs,                // 수평 동기 신호 출력 입니다.
    //output o_de,              // 데이터 유효 신호 출력 (주석 처리됨) 입니다.

    ////Color data out for Zybo 7000 (주석 처리된 이전 버전용 출력 포트) 입니다.
    //output [4:0] o_r_data,
    //output [5:0] o_g_data,
    //output [4:0] o_b_data

    ////Color data out for Zybo 7010 or Zybo 7020 (현재 사용되는 출력 포트) 입니다.
    output [3:0] o_r_data,      // Red 데이터 출력 (4비트) 입니다.
    output [3:0] o_g_data,      // Green 데이터 출력 (4비트) 입니다.
    output [3:0] o_b_data       // Blue 데이터 출력 (4비트) 입니다.
);

// Parameters 입니다.
// 주석 처리된 1280x720 해상도 파라미터 입니다.
// parameter h_front_porch = 32'd110;
// parameter h_sync_width  = 32'd40;
// parameter h_back_porch  = 32'd220;
// parameter h_active      = 32'd1280;
// parameter v_front_porch = 32'd5;
// parameter v_sync_width  = 32'd5;
// parameter v_back_porch  = 32'd20;
// parameter v_active      = 32'd720;

// 640x480 해상도 @ 60Hz VESA 표준 파라미터 입니다.
parameter h_front_porch     = 32'd16;   // 수평 프론트 포치 기간 입니다. [cite: 29]
parameter h_sync_width      = 32'd96;   // 수평 동기 펄스 폭 입니다. [cite: 29]
parameter h_back_porch      = 32'd48;   // 수평 백 포치 기간 입니다. [cite: 29]
parameter h_active          = 32'd640;  // 수평 활성 픽셀 수 (Visible Area) 입니다. [cite: 29]

parameter v_front_porch     = 32'd10;   // 수직 프론트 포치 기간 입니다. [cite: 29]
parameter v_sync_width      = 32'd2;    // 수직 동기 펄스 폭 입니다. [cite: 29]
parameter v_back_porch      = 32'd33;   // 수직 백 포치 기간 입니다. [cite: 29]
parameter v_active          = 32'd480;  // 수직 활성 라인 수 (Visible Area) 입니다. [cite: 29]

// 전체 수평 및 수직 기간 계산 입니다.
parameter h_total           = h_front_porch + h_sync_width + h_back_porch + h_active; // 800 입니다. [cite: 29]
parameter v_total           = v_front_porch + v_sync_width + v_back_porch + v_active; // 525 입니다. [cite: 29]

parameter init_cnt_top      = 32'h0000_0fff; // 초기 안정화 카운터 최대 값 입니다. [cite: 30]

// Reg. Wires 입니다.
reg [31:0] init_cnt;          // 초기 안정화용 카운터 입니다.
reg [31:0] h_cnt;             // 수평 카운터 (현재 픽셀 위치) 입니다.

wire h_sync_hit;              // 수평 동기 펄스 시작 지점 감지 입니다.
wire h_back_porch_hit;        // 수평 백 포치 종료 지점 감지 (활성 영역 시작 직전) 입니다.
wire h_active_hit;            // 수평 활성 영역 종료 지점 감지 입니다.
wire h_front_porch_hit;       // 수평 프론트 포치 종료 지점 감지 (한 라인 종료) 입니다.

reg [31:0] line_cnt;          // 수직 카운터 (현재 라인 위치) 입니다.
wire active_line;             // 현재 라인이 수직 활성 영역에 있는지 여부 입니다.

reg vs;                       // 내부 수직 동기 신호 레지스터 입니다.
reg hs;                       // 내부 수평 동기 신호 레지스터 입니다.
reg de;                       // 내부 데이터 유효 신호 레지스터 입니다.

reg [15:0] de_cnt;            // 활성 영역 내 픽셀 카운터 (패턴 생성용) 입니다.

// Initial Waiting 입니다.
// 시스템 시작 후 일정 시간 동안 대기하여 안정화 합니다.
always @(posedge clk, negedge reset_n) begin
    if(~reset_n) begin         // 리셋 시 입니다.
        init_cnt <= 32'b0;
    end else if(init_cnt == init_cnt_top) begin // 카운터가 최대 값에 도달하면 유지 입니다.
        init_cnt <= init_cnt;
    end else begin             // 최대 값까지 카운트 증가 입니다.
        init_cnt <= init_cnt + 1'b1;
    end
end

// Horizon Count 입니다.
// 수평 픽셀 카운터 입니다.
always @(posedge clk, negedge reset_n) begin
    if (~reset_n) begin        // 리셋 시 입니다.
        h_cnt <= 32'b0;
    end else if(h_cnt == h_total - 1'b1) begin // 한 라인의 끝에 도달하면 (0 ~ h_total-1) 입니다.
        h_cnt <= 32'b0;       // 카운터 리셋 입니다.
    end else if(init_cnt == init_cnt_top) begin // 초기 안정화 완료 후 입니다.
        h_cnt <= h_cnt + 1'b1; // 매 픽셀 클럭마다 카운트 증가 입니다.
    end
end

// Horizon hit point 입니다.
// 수평 타이밍 구간별 감지 신호 생성 입니다.
assign h_sync_hit        = (h_cnt == h_sync_width - 1'b1) ? 1'b1 : 1'b0; // HSYNC 펄스 시작 후 폭 만큼 진행된 시점 (HSYNC 종료 시점) 입니다.
assign h_back_porch_hit  = (h_cnt == h_sync_width + h_back_porch - 1'b1) ? 1'b1 : 1'b0; // HSYNC + Back Porch 종료 시점 (Visible Area 시작 시점) 입니다.
assign h_active_hit      = (h_cnt == h_sync_width + h_back_porch + h_active - 1'b1) ? 1'b1 : 1'b0; // Visible Area 종료 시점 (Front Porch 시작 시점) 입니다.
assign h_front_porch_hit = (h_cnt == h_total - 1'b1) ? 1'b1 : 1'b0; // Front Porch 종료 시점 (한 라인 전체 종료 시점), 즉 h_cnt == h_total - 1'b1 과 동일합니다.

// Vertical Count 입니다.
// 수직 라인 카운터 입니다.
always @(posedge clk, negedge reset_n) begin
    if(~reset_n) begin         // 리셋 시 입니다.
        line_cnt <= 32'b0;
    end else if(h_front_porch_hit && (line_cnt == v_total - 1'b1)) begin // 한 프레임의 마지막 라인이 끝나면 입니다.
        line_cnt <= 32'b0;    // 카운터 리셋 입니다.
    end else if(h_front_porch_hit) begin // 한 라인이 끝날 때마다 (h_front_porch_hit이 1일때) 입니다.
        line_cnt <= line_cnt + 1'b1; // 라인 카운트 증가 입니다.
    end
end

// Vertical active line. 입니다.
// 현재 라인이 수직 활성 영역 (실제 화면이 표시되는 라인)인지 판단합니다.
assign active_line = ((line_cnt >= v_sync_width + v_back_porch) && (line_cnt < v_sync_width + v_back_porch + v_active)) ? 1'b1 : 1'b0;
// VSYNC와 VBP 이후부터 VSYNC+VBP+VACTIVE 이전까지를 활성 라인으로 정의합니다.

// Make VSYNC 입니다.
// 수직 동기 신호 (o_vs) 생성 입니다.
// 주어진 코드는 line_cnt가 (v_sync_width-1) 일 때 vs를 1로 만들고, (v_total-1)일때 0으로 만듭니다.
// VESA 표준은 특정 기간 동안 low(NEGATIVE) 또는 high(POSITIVE)를 유지합니다. 슬라이드 코드를 따릅니다.
always @(posedge clk, negedge reset_n) begin
    if (~reset_n) begin        // 리셋 시 입니다.
        vs <= 1'b0; 
    end else if((line_cnt == v_total - 1'b1) && (h_front_porch_hit)) begin // 프레임 끝에서 입니다.
         vs <= 1'b0;
    end else if((line_cnt == v_sync_width - 1'b1) && (h_front_porch_hit)) begin // 슬라이드 119 라인, VSYNC 펄스 시작점으로 간주될 수 있습니다.
        vs <= 1'b1;
    end
end

// Make HSYNC 입니다.
// 수평 동기 신호 (o_hs) 생성 입니다.
// 주어진 코드는 h_sync_hit (즉, h_cnt == h_sync_width -1) 시점에 hs를 1로 만들고, h_front_porch_hit 시점에 0으로 만듭니다.
// VESA 표준은 특정 기간 동안 Active 레벨을 유지합니다. 슬라이드 코드를 따릅니다.
always @(posedge clk, negedge reset_n) begin
    if(~reset_n) begin         // 리셋 시 입니다.
        hs <= 1'b0; 
    end else if(h_front_porch_hit) begin // 한 라인이 끝나면 (HSYNC 비활성 구간 시작) 입니다.
        hs <= 1'b0;
    end else if(h_sync_hit) begin // HSYNC 펄스 시작점으로 간주될 수 있습니다.
        hs <= 1'b1;
    end
end

assign o_vs = vs; // 내부 vs 신호를 출력 포트 o_vs에 할당합니다.
assign o_hs = hs; // 내부 hs 신호를 출력 포트 o_hs에 할당합니다.
// assign o_de = de; // 데이터 유효 신호 출력 (주석 처리됨) 입니다.

// Make Data Enable Signal 입니다.
// 데이터 유효 신호 (de) 생성. 이 신호가 1일 때 RGB 데이터가 유효함을 의미합니다.
always @(posedge clk, negedge reset_n) begin
    if(~reset_n) begin         // 리셋 시 입니다.
        de <= 1'b0;
    end else if(active_line) begin // 현재 라인이 활성 라인일 때 입니다.
        if(h_back_porch_hit) begin // 수평 백 포치 종료 시점 (Visible Area 시작) 입니다.
            de <= 1'b1;       // 데이터 유효 신호 활성화 입니다.
        end else if(h_active_hit) begin // 수평 활성 영역 종료 시점 (Visible Area 끝) 입니다.
            de <= 1'b0;       // 데이터 유효 신호 비활성화 입니다.
        end
    end else begin // 활성 라인이 아닐 때 (수직 블랭킹 기간) 입니다.
        de <= 1'b0;           // 데이터 유효 신호 비활성화 입니다.
    end
end

// de_cnt는 활성 데이터 구간(de=1)에서 픽셀을 카운트합니다.
always @(posedge clk, negedge reset_n) begin
    if(~reset_n) begin
        de_cnt <= 16'b0;
    end else if(~de) begin     // 데이터 유효 신호가 비활성일 때 입니다.
        de_cnt <= 16'b0;    // 카운터 리셋 입니다.
    end else if(de) begin      // 데이터 유효 신호가 활성일 때 입니다.
        de_cnt <= de_cnt + 1'b1; // 카운트 증가 입니다.
    end
end

//// RGB Vdieo Pattern Code //// 입니다.
// de_cnt (활성 픽셀 가로 카운터) 와 h_active (총 활성 가로 픽셀 수)를 비교하여 패턴 생성합니다.

// Pattern 0 (White/Black) 입니다. [cite: 41]
// 화면의 왼쪽 절반은 White, 오른쪽 절반은 Black 입니다.
wire p0_r_en = (de_cnt < (h_active / 2)); // 왼쪽 절반 Red ON 입니다.
wire p0_g_en = (de_cnt < (h_active / 2)); // 왼쪽 절반 Green ON 입니다.
wire p0_b_en = (de_cnt < (h_active / 2)); // 왼쪽 절반 Blue ON 입니다.
                                        // 결과적으로 왼쪽은 흰색(R+G+B), 오른쪽은 검은색(모두 OFF) 입니다.

// Pattern 1 (White / Red / Greeen / Blue) 입니다. [cite: 42]
// 화면을 4등분하여 흰색, 빨강, 초록, 파랑 순으로 표시합니다.
wire p1_r_en = (de_cnt < (h_active * 2 / 4)); // 0~1/2 지점 Red ON (흰색, 빨강 부분) 입니다.
wire p1_g_en = ((de_cnt < (h_active * 1 / 4)) || (de_cnt >= (h_active * 2 / 4) && de_cnt < (h_active * 3 / 4))); // 0~1/4 (흰색), 2/4~3/4 (초록) Green ON 입니다.
wire p1_b_en = ((de_cnt < (h_active * 1 / 4)) || (de_cnt >= (h_active * 3 / 4))); // 0~1/4 (흰색), 3/4~끝 (파랑) Blue ON 입니다.
                                        // 결과: 0~1/4 흰색, 1/4~2/4 빨강, 2/4~3/4 초록, 3/4~끝 파랑 입니다.

// Pattern 2 (Red / Greeen / Blue / White / Black) 입니다. [cite: 43]
// 화면을 5등분하여 빨강, 초록, 파랑, 흰색, 검은색 순으로 표시합니다.
wire p2_r_en = (de_cnt < (h_active * 1 / 5)) || ((de_cnt >= (h_active * 3 / 5)) && (de_cnt < (h_active * 4 / 5))); // 0~1/5 (빨강), 3/5~4/5 (흰색) Red ON 입니다.
wire p2_g_en = ((de_cnt >= (h_active * 1 / 5)) && (de_cnt < (h_active * 2 / 5))) || ((de_cnt >= (h_active * 3 / 5)) && (de_cnt < (h_active * 4 / 5))); // 1/5~2/5 (초록), 3/5~4/5 (흰색) Green ON 입니다.
wire p2_b_en = ((de_cnt >= (h_active * 2 / 5)) && (de_cnt < (h_active * 4 / 5))); // 2/5~3/5 (파랑), 3/5~4/5 (흰색) Blue ON 입니다.
                                        // 결과: 0~1/5 빨강, 1/5~2/5 초록, 2/5~3/5 파랑, 3/5~4/5 흰색, 4/5~끝 검은색 입니다.

// Pattern 3 (Home work!) - 사용자가 구현할 부분 입니다. [cite: 44, 51]
// 초기값은 모두 1'b1 이므로 흰색으로 출력됩니다.
    // Pattern 3 (White / Red / 
    //            Green / Blue)
    // (R,G,B)  (1,1,1),(1,0,0),
    //          (0,1,0),(0,0,1),
wire p3_r_en = (line_cnt < (v_sync_width + v_back_porch + v_active*1/2));
wire p3_g_en = (de_cnt < (h_active*1/2));
wire p3_b_en = ((line_cnt < (v_sync_width + v_back_porch+v_active*1/2)) && (de_cnt < (h_active*1/2)) || (line_cnt >= (v_sync_width + v_back_porch+v_active*1/2)) && (de_cnt >= (h_active*1/2)));
// 패턴 선택 로직 (pattern_select 입력에 따라 r_en, g_en, b_en 결정) 입니다. [cite: 45]
wire r_en = (pattern_select == 2'd0) ? p0_r_en :
            (pattern_select == 2'd1) ? p1_r_en :
            (pattern_select == 2'd2) ? p2_r_en : p3_r_en;

wire g_en = (pattern_select == 2'd0) ? p0_g_en :
            (pattern_select == 2'd1) ? p1_g_en :
            (pattern_select == 2'd2) ? p2_g_en : p3_g_en;

wire b_en = (pattern_select == 2'd0) ? p0_b_en :
            (pattern_select == 2'd1) ? p1_b_en :
            (pattern_select == 2'd2) ? p2_b_en : p3_b_en;

////// Color data out assign ////// 입니다.
// 주석 처리된 Zybo 7000용 데이터 출력 (5-6-5 비트 RGB) 입니다.
// assign o_r_data = (de & r_en) ? 5'd31 : 5'b0;
// assign o_g_data = (de & g_en) ? 6'd63 : 6'b0;
// assign o_b_data = (de & b_en) ? 5'd31 : 5'b0;

// Zybo 7010 or Zybo 7020용 데이터 출력 (4-4-4 비트 RGB) 입니다. [cite: 46]
// de 신호가 1이고, 각 색상 활성화 신호(r_en, g_en, b_en)가 1일 때 해당 색상의 최대값(4'd15)을, 아니면 0을 출력합니다.
assign o_r_data = (de & r_en) ? 4'd15 : 4'b0;
assign o_g_data = (de & g_en) ? 4'd15 : 4'b0;
assign o_b_data = (de & b_en) ? 4'd15 : 4'b0;

endmodule
