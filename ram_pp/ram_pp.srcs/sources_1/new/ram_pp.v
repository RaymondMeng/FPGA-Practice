`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: wuhan university of technology
// Engineer: mc
// 
// Create Date: 2022/01/21 21:29:13
// Design Name: ram_pp 
// Module Name: ram_pp
// Project Name: ram_pp
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


module ram_pp(
    input wire sys_clk, //系统时钟
    input wire rst_n,    //系统复位
    output reg [7:0] rd_data //读出数据流
    );

parameter MAX = 256 - 1;

reg             wr_rama_en; //读写rama使能标志
reg             wr_ramb_en; //读写ramb使能标志
reg     [7:0]   wr_addr_a; //写ram_a地址
reg     [7:0]   rd_addr_a; //读ram_a地址
wire    [7:0]   din_a;     //写入ram_a的数据
wire    [7:0]   dout_a;    //从ram_a中读出的数据
reg     [7:0]   wr_addr_b; //写入ram_b地址
reg     [7:0]   rd_addr_b; //读ram_b地址
wire    [7:0]   din_b;     //写入ram_b的数据
wire    [7:0]   dout_b;    //从ram_b中读出的数据
reg             wr_rama_dd;//读写ram_a使能标志延时一拍？

//wr_rama_en 写rama控制
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        wr_rama_en <= 1'b0;
    //当ram_b写到最后一个地址的时候并且对rama的读写标志位为0时，wr_rama_en拉高，表示开始写rama
    else if((wr_addr_b == MAX) && (wr_rama_en == 1'b0))
        wr_rama_en <= 1'b1;
    //当ram_a写到最后一个地址的时候并且对rama的读写标志位为1时，wa_rama_en拉低，表示写rama完成
    else if((wr_addr_a == MAX) && (wr_rama_en == 1'b1))
        wr_rama_en <= 1'b0;
    else
        wr_rama_en <= wr_rama_en; //保持不变
end

//wr_ramb_en 
always @(*) begin //wr_rama_en发生变化时，即可触发,*指的是模块里赋值的变量如果有电平改变即可触发
    wr_ramb_en = ~wr_rama_en; //组合逻辑
end

//wr_addr_a ram_a写数据
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        wr_addr_a <= 'd0;
    //当wr_rama_en为高时，ram_a写地址增加
    else if (wr_rama_en == 1'b1) begin
        if(wr_addr_a == MAX) //写满了，清除写地址
            wr_addr_a <= 'd0;
        else
            wr_addr_a <= wr_addr_a + 1'b1; 
    end
    else
        wr_addr_a <= 'd0;
end

//din_a
assign din_a = wr_addr_a;
//assign dout_a = rd_addr_a;
//rd_addr_a 读rama的数据
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        rd_addr_a <= 'd0;
    //当wr_rama_en为低时，ram_a读地址增加
    else if(wr_rama_en == 1'b0)begin
        if(rd_addr_a == MAX)
            rd_addr_a <= 'd0; //地址遍历完了，地址清零
        else
            rd_addr_a <= rd_addr_a + 1'b1;
    end
    else
        rd_addr_a <= 'd0;
end

//wr_addr_b 写ramb的数据
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        wr_addr_b <= 'd0;
    //当wr_ramb_en为高时，ram_b写地址增加
    else if (wr_ramb_en == 1'b1) begin
        if(wr_addr_b == MAX)
            wr_addr_b <= 'd0;
        else
            wr_addr_b = wr_addr_b + 1'b1;
    end
    else
        wr_addr_b <= 'd0;
end

//din_b
assign din_b = wr_addr_b; //数据进入
//assign dout_b = rd_addr_b;
//rd_addr_b 读ramb的数据
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        rd_addr_b <= 'd0;
    //当wr_ramb_en为低时，ram_b读地址增加
    else if (wr_ramb_en == 1'b0) begin
        if(rd_addr_b == MAX)
            rd_addr_b <= 'd0;
        else
            rd_addr_b = rd_addr_b + 1'b1;
    end
    else 
        rd_addr_b <= 'd0;
end 

ram_wr256_8_rd256_8 ram_a (
  .clka(sys_clk),    // input wire clka
  .wea(wr_rama_en),      // input wire [0 : 0] wea
  .addra(wr_addr_a),  // input wire [7 : 0] addra
  .dina(din_a),    // input wire [7 : 0] dina
  .clkb(sys_clk),    // input wire clkb
  .addrb(rd_addr_a),  // input wire [7 : 0] addrb
  .doutb(dout_a)  // output wire [7 : 0] doutb
);

ram_wr256_8_rd256_8 ram_b (
  .clka(sys_clk),    // input wire clka
  .wea(wr_ramb_en),      // input wire [0 : 0] wea
  .addra(wr_addr_b),  // input wire [7 : 0] addra
  .dina(din_b),    // input wire [7 : 0] dina
  .clkb(sys_clk),    // input wire clkb
  .addrb(rd_addr_b),  // input wire [7 : 0] addrb
  .doutb(dout_b)  // output wire [7 : 0] doutb
);

//wr_rama_dd
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        wr_rama_dd <= 1'b0;
    else
        wr_rama_dd <= wr_rama_en;//时序逻辑，延迟一拍
end

//--------------------rd_data--------------------
always  @(*)begin
    //读出的数据为ram_a 中的数据
    if(wr_rama_dd == 1'b1) //延迟一拍，因为dout_b相对于读地址延迟了一拍
        rd_data = dout_b; //组合逻辑
    //读出的数据为ram_b 中的数据
    else
        rd_data = dout_a; //组合逻辑
end

endmodule
