`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:54:23 12/13/2021
// Design Name:   topmodule
// Module Name:   G:/MSCS/01_Advance_Computer_Architecture/projects/L1F21MSCS0054_unioperandmicroarchitecture/unioperandtest.v
// Project Name:  L1F21MSCS0054_unioperandmicroarchitecture
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: topmodule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module unioperandtest;

	// Outputs
	wire out;

	// Bidirs
	wire r;
	wire w;
	wire clk;
	wire rst;
	wire we;

	// Instantiate the Unit Under Test (UUT)
	topmodule uut (
		.r(r), 
		.out(out), 
		.w(w), 
		.clk(clk), 
		.rst(rst), 
		.we(we)
	);

	initial begin
		// Initialize Inputs

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	rst = 1;

	end
      
endmodule

