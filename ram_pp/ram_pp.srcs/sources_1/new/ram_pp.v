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
    input wire sys_clk, //ϵͳʱ��
    input wire rst_n,    //ϵͳ��λ
    output reg [7:0] rd_data //����������
    );

parameter MAX = 256 - 1;

reg             wr_rama_en; //��дramaʹ�ܱ�־
reg             wr_ramb_en; //��дrambʹ�ܱ�־
reg     [7:0]   wr_addr_a; //дram_a��ַ
reg     [7:0]   rd_addr_a; //��ram_a��ַ
wire    [7:0]   din_a;     //д��ram_a������
wire    [7:0]   dout_a;    //��ram_a�ж���������
reg     [7:0]   wr_addr_b; //д��ram_b��ַ
reg     [7:0]   rd_addr_b; //��ram_b��ַ
wire    [7:0]   din_b;     //д��ram_b������
wire    [7:0]   dout_b;    //��ram_b�ж���������
reg             wr_rama_dd;//��дram_aʹ�ܱ�־��ʱһ�ģ�

//wr_rama_en дrama����
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        wr_rama_en <= 1'b0;
    //��ram_bд�����һ����ַ��ʱ���Ҷ�rama�Ķ�д��־λΪ0ʱ��wr_rama_en���ߣ���ʾ��ʼдrama
    else if((wr_addr_b == MAX) && (wr_rama_en == 1'b0))
        wr_rama_en <= 1'b1;
    //��ram_aд�����һ����ַ��ʱ���Ҷ�rama�Ķ�д��־λΪ1ʱ��wa_rama_en���ͣ���ʾдrama���
    else if((wr_addr_a == MAX) && (wr_rama_en == 1'b1))
        wr_rama_en <= 1'b0;
    else
        wr_rama_en <= wr_rama_en; //���ֲ���
end

//wr_ramb_en 
always @(*) begin //wr_rama_en�����仯ʱ�����ɴ���,*ָ����ģ���︳ֵ�ı�������е�ƽ�ı伴�ɴ���
    wr_ramb_en = ~wr_rama_en; //����߼�
end

//wr_addr_a ram_aд����
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        wr_addr_a <= 'd0;
    //��wr_rama_enΪ��ʱ��ram_aд��ַ����
    else if (wr_rama_en == 1'b1) begin
        if(wr_addr_a == MAX) //д���ˣ����д��ַ
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
//rd_addr_a ��rama������
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        rd_addr_a <= 'd0;
    //��wr_rama_enΪ��ʱ��ram_a����ַ����
    else if(wr_rama_en == 1'b0)begin
        if(rd_addr_a == MAX)
            rd_addr_a <= 'd0; //��ַ�������ˣ���ַ����
        else
            rd_addr_a <= rd_addr_a + 1'b1;
    end
    else
        rd_addr_a <= 'd0;
end

//wr_addr_b дramb������
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        wr_addr_b <= 'd0;
    //��wr_ramb_enΪ��ʱ��ram_bд��ַ����
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
assign din_b = wr_addr_b; //���ݽ���
//assign dout_b = rd_addr_b;
//rd_addr_b ��ramb������
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        rd_addr_b <= 'd0;
    //��wr_ramb_enΪ��ʱ��ram_b����ַ����
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
        wr_rama_dd <= wr_rama_en;//ʱ���߼����ӳ�һ��
end

//--------------------rd_data--------------------
always  @(*)begin
    //����������Ϊram_a �е�����
    if(wr_rama_dd == 1'b1) //�ӳ�һ�ģ���Ϊdout_b����ڶ���ַ�ӳ���һ��
        rd_data = dout_b; //����߼�
    //����������Ϊram_b �е�����
    else
        rd_data = dout_a; //����߼�
end

endmodule
