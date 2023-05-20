`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:20:05 12/13/2021
// Design Name:   counter5b
// Module Name:   G:/MSCS/01_Advance_Computer_Architecture/projects/L1F21MSCS0054_unioperandmicroarchitecture/counter_test.v
// Project Name:  L1F21MSCS0054_unioperandmicroarchitecture
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter5b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter_test;

	// Inputs
	reg [4:0] in;
	reg load;
	reg inc;
	reg rst;
	reg clk;

	// Outputs
	wire [4:0] out;

	// Instantiate the Unit Under Test (UUT)
	counter5b uut (
		.out(out), 
		.in(in), 
		.load(load), 
		.inc(inc), 
		.rst(rst), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		load = 0;
		inc = 0;
		rst = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

