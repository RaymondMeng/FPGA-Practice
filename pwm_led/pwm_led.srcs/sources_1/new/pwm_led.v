`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: wuhan university of technology
// Engineer: mengcheng
// 
// Create Date: 2022/01/18 00:19:27
// Design Name: pwm_led
// Module Name: pwm_led
// Project Name: 
// Target Devices: xc7z020clg400-2
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


module pwm_led(
    input wire sys_clk,
    input wire rst_n,
    output wire led
);

//parameter define 
parameter CNT_10MS = 500000 - 1; //10ms所需计数最大值
parameter CNT_2S = 200 - 1; //2s所需计数最大值 200个10ms
parameter CHANGE_TIME = 100 - 1; //1s计数所需最大值 100 个10ms
parameter PWM_OFFSET = 5000; //每次脉冲调制的改变值 500000/100

reg [19:0] cnt_10ms; //10ms计数器
reg [7:0]  cnt_2s; //2s计数器
reg        pwm; //调制方波
reg [19:0] duty_cycle; //占空比
reg        work_flag; //工作状态，0由灭到亮 1由亮到灭

assign led = ~pwm;

//cnt_10ms
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0) //复位
        cnt_10ms <= 'd0;
    else if(cnt_10ms == CNT_10MS) //计数器溢出
        cnt_10ms <= 'd0;
    else //加一
        cnt_10ms <= cnt_10ms + 1'b1;
end

//cnt_2s
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        cnt_2s <= 'd0;
    else if(cnt_10ms == CNT_10MS)begin
        if(cnt_2s == CNT_2S)
            cnt_2s <= 'd0;
        else
            cnt_2s <= cnt_2s + 1'b1;
    end
end

//work_flag   提出疑问，为什么这里没有else 不需要work_flag <= work_flag;? 因为这里不需要自己给自己赋值，因为这里赋的是常数
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        work_flag <= 1'b0;
    //0-1秒，逐渐变亮 计数到1s时，状态发送改变
    else if(cnt_2s == CHANGE_TIME && cnt_10ms == CNT_10MS) //一定要同时满足吗？ 前者满足不就满足后者了吗？等会实验一下
        work_flag <= 1'b1;
    //1-2s，逐渐变暗，计数到2s时，状态发生改变
    else if(cnt_2s == CNT_2S && cnt_10ms == CNT_10MS)
        work_flag <= 1'b0;
end

//duty_cycle 我懂了，它是一个实时综合的电路啊，就是一个触发器，有时序进入，如果下一时刻不去变化，那么上一时刻的电路仍然存在，跟软件设计不同，软件设计不需要考虑上一时刻的过程。就是说如果这一时刻里，always里没有满足的语句，不代表什么都不执行，FPGA里表现为数据是通过上一时刻留下来的电路的，所以要不满足条件时，保持数据不变，需要自己赋给自己
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        duty_cycle <= 'd0;
    else if(work_flag == 1'b0)begin //占空比增加
        if(cnt_10ms == CNT_10MS) //计时周期已到
            duty_cycle <= duty_cycle + PWM_OFFSET; //每次加5000   
        else
            duty_cycle <= duty_cycle;
    end
    else if(work_flag == 1'b1)begin //占空比减少
        if(cnt_10ms == CNT_10MS)
            duty_cycle <= duty_cycle - PWM_OFFSET; //每次减少5000
        else
            duty_cycle <= duty_cycle; 
    end
end

//pwm
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        pwm <= 1'b0;
    else if(cnt_10ms < duty_cycle)
        pwm <= 1'b1;
    else 
        pwm <= 1'b0;
end

endmodule
