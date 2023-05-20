`timescale 1ns / 1ps

// data memory

module data_mem(
input [31:0] addr,
input clk,
input reset,
input rd_en,
input wr_en,
input [31:0] wr_data,
output [31:0] rd_data
);
reg [31:0] dmem [31:0];
wire [4:0] real_addr;
integer k;
assign real_addr=addr[6:2];
assign rd_data=(rd_en)? dmem[real_addr]:32'bx;
always @ (posedge clk)
begin
     if(reset)
	  begin
	         dmem[0]= 32'b00000010001100101000000000100001;
				dmem[1]= 32'b00000010001100101000000000100001;
				dmem[2]= 32'b00000010001100101000000000100001;
				dmem[3]= 32'b00000010001100101000000000100001;
				dmem[4]= 32'b00000010001100101000000000100001;
				dmem[5]= 32'b00000010001100101000000000100001;
				dmem[6]= 32'b00000010001100101000000000100001;
				dmem[7]= 32'b00000000000000000000000000001010;
				dmem[8]= 32'b00000000000000000000000000001010;
				dmem[9]= 32'b00000000000000000000000000001010;
				dmem[10]= 32'b00000000000000000000000000001010;
				dmem[11]= 32'b00000000000000000000000000001010;
				dmem[12]= 32'b00000000000000000000000000001010;
				dmem[13]= 32'b00000000000000000000000000001010;
				dmem[14]= 32'b00000000000000000000000000001010;
				dmem[15]= 32'b00000000000000000000000000001010;
				dmem[16]= 32'b00000000000000000000000000001010;
				dmem[17]= 32'b00000000000000000000000000001010;
				dmem[18]= 32'b00000000000000000000000000001010;
				dmem[19]= 32'b00000000000000000000000000001010;
				dmem[20]= 32'b00000000000000000000000000001010;
				dmem[21]= 32'b00000000000000000000000000001010;
				dmem[22]= 32'b00000000000000000000000000001010;
				dmem[23]= 32'b00000000000000000000000000001010;
				dmem[24]= 32'b00000000000000000000000000001010;
				dmem[25]= 32'b00000000000000000000000000001010;
				dmem[26]= 32'b00000000000000000000000000001010;
				dmem[27]= 32'b00000000000000000000000000001010;
				dmem[28]= 32'b00000000000000000000000000001010;
				dmem[29]= 32'b00000000000000000000000000001010;
				dmem[30]= 32'b00000000000000000000000000001010;
				dmem[31]= 32'b00000000000000000000000000001010;
		end
	  else if(wr_en)
	  dmem[real_addr]=wr_data;
end
endmodule
