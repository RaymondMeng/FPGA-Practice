`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/26 01:22:56
// Design Name: 
// Module Name: microphone
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


module microphone #(
    parameter sample_bits = 24
)(
    input                      sclk,  //����ʱ��
    input                      lrck,  //�����л���������������ֻ������һ������
    input                      sdata, //��������
    input                      reset_n,
    output [sample_bits-1 : 0] sound_left,
    output [sample_bits-1 : 0] sound_right,
    output                     dat_end
);

reg [sample_bits-1 : 0] sound_left_data;
reg [4:0] count;

always @(posedge sclk or negedge reset_n) begin
    if (reset_n == 1'b0) begin
        sound_left_data <= 'd0; 
    end
    else if (lrck == 1'b0 && count < 'd25) begin
        sound_left_data <= {sound_left_data[sample_bits-2 : 0], sdata}; //���ƽ���Ĵ���
    end
    else begin
        sound_left_data <= 'd0;
    end
end

//����λ����
always @(posedge sclk or negedge reset_n) begin
    if (reset_n == 1'b0) begin
        count <= 'd0;
    end
    else if (lrck == 1'b0) begin
        count <= count + 1'b1;
    end
    else begin
        count <= 'd0;
    end
end

assign sound_left = (count == 'd24 && !lrck) ? sound_left_data : sound_left; 
assign dat_end    = (count == 'd24 && !lrck) ? 1'b1 : 1'b0;

endmodule
