`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/19 19:52:26
// Design Name: 
// Module Name: pwm_led
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


module pwm_led_sim();
reg rst_n;
reg sys_clk;
wire led;

parameter CNT_10MS = 500000 - 1;
parameter CNT_2S = 200 - 1;
parameter CHANGE_TIME = 100 - 1;
parameter PWM_OFFSET = 5000;

pwm_led_sim #(
    .CNT_10MS(CNT_10MS),
    .CNT_2S(CNT_2S),
    .CHANGE_TIME(CHANG_TIME),
    .PWM_OFFSET(PWM_OFFSET)
)inst_pwm_led_sim(
    .sys_clk (sys_clk),
    .rst_n (rst_n),
    .led (led)
);

initial begin 
    sys_clk = 0;
    forever #(10) sys_clk = ~sys_clk;
end

initial begin 
    rst_n = 0;
    repeat(10) @(posedge sys_clk);
    rst_n = 1;
end

endmodule
