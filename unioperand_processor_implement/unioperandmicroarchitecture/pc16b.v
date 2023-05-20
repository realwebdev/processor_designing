`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:37:49 12/12/2021 
// Design Name: 
// Module Name:    pc16b 
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

module counter5b(out,in,load,inc,rst,clk
    );

input load,inc,rst,clk;
output reg [4:0] out;
input [4:0] in;


always@(posedge clk or negedge rst)
begin
if(rst==0)
	out <= 0;
else if (load == 1)
	out <= in;
else if(inc ==1 )
	out <= out + 1;
end



endmodule

