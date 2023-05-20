`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:21:12 12/13/2021
// Design Name:   accumulator16b
// Module Name:   G:/MSCS/01_Advance_Computer_Architecture/projects/L1F21MSCS0054_unioperandmicroarchitecture/register_test.v
// Project Name:  L1F21MSCS0054_unioperandmicroarchitecture
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: accumulator16b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module register_test;

	// Inputs
	reg [15:0] in;
	reg clk;
	reg load;
	reg rst;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	accumulator16b uut (
		.out(out), 
		.in(in), 
		.clk(clk), 
		.load(load), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		clk = 0;
		load = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

