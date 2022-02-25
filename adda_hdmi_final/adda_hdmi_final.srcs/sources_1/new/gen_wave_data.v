
`timescale 1ns / 1ps
module gen_wave_data(
	input 	wire 			clk 	,
	input	wire			rst 	,
    input   wire    [1:0]   choice  ,
	output	wire 	[7:0]	da_data 	
    );

reg 	[9:0]	rom_addr 	;
wire     [7:0]   da_data1    ; //正弦波
wire     [7:0]   da_data2    ; //方波
wire     [7:0]   da_data3    ; //三角波
reg     [7:0]   real_dat    ;

assign da_data = da_data3;

always @(posedge clk) begin
	if (rst==1'b1) begin
		rom_addr <= 'd0;
	end
	else begin
		rom_addr <= rom_addr + 1'b1;
	end
end

//选择输出哪一种波形的数字数据
always @(choice) begin
    case (choice)
        2'b00: real_dat <= da_data1;
        2'b01: real_dat <= da_data2;
        2'b10: real_dat <= da_data3;
        default: real_dat <= real_dat;
    endcase
end

rom_sin_1024_8 inst_rom_sin_1024_8 (
  .clka(clk),    // input wire clka
  .addra(rom_addr),  // input wire [9 : 0] addra
  .douta(da_data1)  // output wire [7 : 0] douta
);

rom_rectangle_1024_8 inst_rom_rectangle_1024_8 (
  .clka(clk),    // input wire clka
  .addra(rom_addr),  // input wire [9 : 0] addra
  .douta(da_data2)  // output wire [7 : 0] douta
);

rom_square_1024_8 inst_rom_square_1024_8 (
  .clka(clk),    // input wire clka
  .addra(rom_addr),  // input wire [9 : 0] addra
  .douta(da_data3)  // output wire [7 : 0] douta
);


endmodule
