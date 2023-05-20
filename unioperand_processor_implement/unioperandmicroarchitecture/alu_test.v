`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:22:43 12/13/2021
// Design Name:   alu16b
// Module Name:   G:/MSCS/01_Advance_Computer_Architecture/projects/L1F21MSCS0054_unioperandmicroarchitecture/alu_test.v
// Project Name:  L1F21MSCS0054_unioperandmicroarchitecture
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu16b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_test;

	// Inputs
	reg [15:0] in1;
	reg [15:0] in2;
	reg clk;
	reg rst;
	reg [2:0] sel;

	// Outputs
	wire [15:0] out;
	wire zf;

	// Instantiate the Unit Under Test (UUT)
	alu16b uut (
		.out(out), 
		.in1(in1), 
		.in2(in2), 
		.clk(clk), 
		.rst(rst), 
		.sel(sel), 
		.zf(zf)
	);

	initial begin
		// Initialize Inputs
		in1 = 0;
		in2 = 0;
		clk = 0;
		rst = 0;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

