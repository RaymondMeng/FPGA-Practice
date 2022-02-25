`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Wuhan University Of Technology
// Engineer: Raymond_Meng
// 
// Create Date: 2021/11/30 19:33:44
// Design Name: led_toggle
// Module Name: led_toggle
// Project Name: led_toggle
// Target Devices: xcz7020
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: 板子上外接一个50MHz的晶振，也就是20ns计数一次，总共计数50000000次，也就是1s
// 
//////////////////////////////////////////////////////////////////////////////////

//需要知道的一点是module里的paramter定义、过程块定义都是并行的，但always initial里是顺序的
module led_toggle(
    input  wire sys_clk,  //系统时钟
    input  wire rst_n,    //系统复位
    output reg [3:0] led  //输出led
    );

reg [27:0] cnt; //0.25s counter
wire add_cnt; 
wire end_cnt;

//-------------------------cnt------------------------就是计时器的作用
always @(posedge sys_clk or negedge rst_n)begin //相当于循环语句，根据条件是否满足来判断程序是否执行
    if(rst_n == 1'b0) begin //如果复位键按下，计数器置零
        cnt <= 'd0; //always语句里都要用非阻塞赋值
    end
    else if (add_cnt) begin //计数器加一条件
        if (end_cnt) //如果即将溢出
            cnt <= 'd0; //计数器置零 十进制0
        else
            cnt <= cnt + 1'b1; //计数器加一
    end
end

assign add_cnt = 1;
assign end_cnt = add_cnt && (cnt == 5000_0000 - 1); //必须是在计数而且即将溢出 和C语言区分开来，这里在硬件上已经关系在一起了
                                    //和10000000等效，增强可读性
//---------------------led----------------------
always @(posedge sys_clk or negedge rst_n) begin
    if (rst_n == 1'b0) begin
        led <= 4'b1110; //重置状态
    end
    else if (end_cnt) begin //完成一次计数周期后才会发生移位操作
        led <= {led[2:0], led[3]}; //位拼接法移位操作
    end
    else begin
        led <= led; //保持状态，感觉可要可不要
    end
end

endmodule
