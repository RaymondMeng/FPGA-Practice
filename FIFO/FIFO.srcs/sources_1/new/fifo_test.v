`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: wuhan university of technology
// Engineer: mengcheng
// 
// Create Date: 2022/01/25 11:07:37
// Design Name: fifo_test
// Module Name: fifo_test
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


module fifo_test(
    input wire sys_clk,
    input wire rst_n
    );

parameter MAX = 256 - 1;
parameter RD_START = 128 - 1;
reg wr_en; //写fifo指示信号
reg wr_flag; //写数据指示信号
reg [8:0] wr_cnt; //写FIFO计数器
reg [7:0] wr_dara; //写FIFO数据
wire      full, empty; //空满信号
reg       rd_en; //读FIFO使能
reg       rd_start; //读FIFO开始信号
wire [7:0] rd_data; //读出的数据

//wr_flag
//写FIFO指示信号 为wr_en准备的
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        wr_flag <= 1'b1;
    //计数器计满了
    else if (wr_cnt == MAX && wr_flag == 1'b1) begin
        wr_flag <= 1'b0; 
    end
    else if (empty == 1'b1) begin
        wr_flag <= 1'b1;
    end
    else
        wr_flag <= wr_flag;
end

//wr_en
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        wr_en <= 1'b0; //复位为0
    else
        wr_en <= wr_flag;
end

//wr_cnt
always @(posedge clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        wr_cnt <= 'd0;
    else if (wr_flag == 1'b1) begin
        if(wr_cnt == MAX)
            wr_cnt <= 'd0;
        else
            wr_cnt <= wr_cnt + 1'b1;
    end
    else
        wr_cnt <= 'd0;
end

//wr_data
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        wr_data <= 'd0;
    else 
        wr_data <= wr_cnt; //写入FIFO数据
end

//rd_start
//开始读FIFO数据
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        rd_start <= 1'b0;
    else if(wr_cnt == RD_START) //当写入128个数据后，开始从FIFO中读取数据
        rd_start <= 1'b1;
    else
        rd_start <= 1'b0;
end

//rd_en
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        rd_en <= 1'b0;
    else if(rd_start == 1'b1) //读开始信号拉高后，使能信号拉高
        rd_en <= 1'b1;
    else if(empty == 1'b1) //FIFO读空后停止读
        rd_en <= 1'b0;
    else
        rd_en <= rd_en;
end

fifo_wr256_8_rd256_8 your_instance_name (
  .wr_clk(sys_clk),  // input wire wr_clk
  .rd_clk(sys_clk),  // input wire rd_clk
  .din(wr_data),        // input wire [7 : 0] din
  .wr_en(wr_en),    // input wire wr_en
  .rd_en(rd_en),    // input wire rd_en
  .dout(rd_data),      // output wire [7 : 0] dout
  .full(full),      // output wire full
  .empty(empty)    // output wire empty
);

endmodule
