`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/01/28 02:02:31
// Design Name: 
// Module Name: test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test(clk, key, dispcode, CS);
input clk, key;
output reg [6 : 0] dispcode = N0;
output reg [1 : 0] CS;
reg [6 : 0] num;
reg [3 : 0] num_t;
reg [19 : 0] count1;
reg [7 : 0] count2;
reg timeflag;
reg keyflag = 1, lastkeyflag = 1;//1 up, 0 down

/* 共阴极：不带小数点
0,1,2,3,4,5,6,7,
3fh,06h,5bh,4fh,66h,6dh,7dh,07h
8,9,
7fh,6fh,00h*/
parameter N0 = 7'h3f,
           N1 = 7'h06,
           N2 = 7'h5b,
           N3 = 7'h4f,
           N4 = 7'h66,
           N5 = 7'h6d,
           N6 = 7'h7d,
           N7 = 7'h07,
           N8 = 7'h7f,
           N9 = 7'h6f,
          N10 = 7'h77;
          
always @(posedge clk)
    begin
        if(count1 < 20'd500000) //10ms
            count1 = count1 + 1'd1;
        else
            begin
                count1 = 0;
                if(count2 < 1)
                    count2 = count2 + 1'd1;
                else
                    begin
                        count2 = 0;
                        timeflag = ~timeflag;//每10ms翻转一次
                    end
             end
     end
     
always @(posedge timeflag)//延时去抖动
    begin 
        if(lastkeyflag == 0 && key == 0)
            keyflag = 0;
        if(lastkeyflag == 1 && key == 1)
            keyflag = 1;
            
        lastkeyflag = key;
    end
    
always @(posedge timeflag)//数码管动态显示
    begin
        CS = CS + 1;
        if(CS > 2'd2)
            CS = 2'd1;
            
        if(CS == 2'd1)
            num_t = num % 10;
        if(CS == 2'd2)
            num_t = num / 10;
        case(num_t)
            4'd0 : dispcode = N0;
            4'd1 : dispcode = N1;
            4'd2 : dispcode = N2;
            4'd3 : dispcode = N3;
            4'd4 : dispcode = N4;
            4'd5 : dispcode = N5;
            4'd6 : dispcode = N6;
            4'd7 : dispcode = N7;
            4'd8 : dispcode = N8;
            4'd9 : dispcode = N9;
           4'd10 : dispcode = N10;
         default : dispcode = 7'h40;
         endcase
    end
          
endmodule
