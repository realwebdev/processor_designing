`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:44:41 12/12/2021 
// Design Name: 
// Module Name:    accumulator16b 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module accumulator16b(out,in,clk,load,rst
    );
	 
	 output reg [15:0] out;
	 input [15:0] in;
	 input load,rst,clk;
	 
	 always@(posedge clk or negedge rst)
	 begin
		if(rst==0)
			out <= 0;
		else if (load==1)
			out <= in;
	 
	 
	 end
endmodule
