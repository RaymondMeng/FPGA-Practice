`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/21 10:52:54
// Design Name: 
// Module Name: pll_test
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


module pll_test(
    input wire sys_clk,
    input wire rst_n,
    output reg [2:0] led
    );
    
    parameter CNT_MAX = 50000000 - 1;
    
    reg [27:0] timer1;
    reg [27:0] timer2;
    reg [27:0] timer3;
    
    wire clk_out1;
    wire clk_out2;
    wire clk_out3;
    wire locked;

    //clock ip引用
    clock inst_clock
    (
        // Clock out ports
        .clk_out1(clk_out1),     // output clk_out1 25M 0
        .clk_out2(clk_out2),     // output clk_out2 50M 0
        .clk_out3(clk_out3),     // output clk_out3 100M 90
        // Status and control signals
        .reset(~rst_n), // input reset
        .locked(locked),       // output locked
        // Clock in ports
        .clk_in1(sys_clk)
    );      // input clk_in1

    //计数器1
    always @(posedge clk_out1 or negedge rst_n) begin
        if(rst_n == 1'b0)
            timer1 <= 'd0;
        else if (locked == 1'b1) begin
            if(timer1 == CNT_MAX) //计数到2S
                timer1 <= 'd0;
            else
                timer1 <= timer1 + 1'b1;
        end
        else
            timer1 <= 'd0;
    end

    //计数器2
    always @(posedge clk_out2 or negedge rst_n) begin
        if(rst_n == 1'b0)
            timer2 <= 'd0;
        else if (locked == 1'b1) begin
            if(timer2 == CNT_MAX) //计数到1S
                timer2 <= 'd0;
            else
                timer2 <= timer2 + 1'b1;
        end
        else
            timer2 <= 'd0;
    end

    //计数器3
    always @(posedge clk_out3 or negedge rst_n) begin
        if(rst_n == 1'b0)
            timer3 <= 'd0;
        else if (locked == 1'b1) begin
            if(timer3 == CNT_MAX) //计数到0.5S
                timer3 <= 'd0;
            else
                timer3 <= timer3 + 1'b1;
        end
        else
            timer3 <= 'd0;
    end

    //led1
    always @(posedge clk_out1 or negedge rst_n) begin
        if(rst_n == 1'b0)
            led[0] <= 1'b1;
        else if(timer1 == CNT_MAX)
            led[0] <= ~led[0];
        else
            led[0] <= led[0];
    end

    //led2
    always @(posedge clk_out2 or negedge rst_n) begin
        if(rst_n == 1'b0)
            led[1] <= 1'b1;
        else if(timer2 == CNT_MAX)
            led[1] <= ~led[1];
        else
            led[1] <= led[1];
    end

    //led3
    always @(posedge clk_out3 or negedge rst_n) begin
        if(rst_n == 1'b0)
            led[2] <= 1'b1;
        else if(timer3 == CNT_MAX)
            led[2] <= ~led[2];
        else
            led[2] <= led[2];
    end

endmodule
