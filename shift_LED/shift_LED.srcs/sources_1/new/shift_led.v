`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/17 05:11:17
// Design Name: led_shift
// Module Name: shift_led
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

`timescale 1ns / 1ps
module shift_led(
    input   wire             sys_clk ,
    input   wire               rst_n ,
    output  reg       [3:0]      led    
    );
//====================================================
//internal signals
//====================================================
reg     [27:0]    cnt     ;//计数一秒钟
wire              add_cnt ;//cnt的加一条件
wire              end_cnt ;//cnt的结束条件

//---------------------cnt-----------------------------
always @(posedge sys_clk or negedge rst_n)begin
    if(rst_n == 1'b0)begin
        cnt <= 'd0;
    end
    else if(add_cnt)begin
        if(end_cnt)
            cnt <= 'd0;
        else
            cnt <= cnt + 1'b1;
    end
    else begin
        cnt <= 'd0;
    end
end

assign add_cnt = 1 ;
assign end_cnt = add_cnt && cnt == 50000000-1 ;

//--------------------led--------------------//
always @(posedge sys_clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
        led <= 4'b1110;
    end
    else if(end_cnt == 1'b1)begin
        led <= {led[2:0], led[3]};
    end
    else begin
        led <= led;
    end
end

endmodule









