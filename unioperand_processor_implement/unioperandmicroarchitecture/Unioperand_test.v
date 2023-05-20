`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:14:49 12/19/2021
// Design Name:   top1
// Module Name:   G:/MSCS/01_Advance_Computer_Architecture/projects/L1F21MSCS0054_unioperandmicroarchitecture/Unioperand_test.v
// Project Name:  L1F21MSCS0054_unioperandmicroarchitecture
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Unioperand_test;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [15:0] alu_out;
	wire [15:0] acc_out;
	wire [15:0] dm_out;
	wire [15:0] im_out;
	wire [4:0] pc_out;
	wire [7:0] cw;
	wire zf;
	wire j;

	// Instantiate the Unit Under Test (UUT)
	top1 uut (
		.clk(clk), 
		.rst(rst), 
		.alu_out(alu_out), 
		.acc_out(acc_out), 
		.dm_out(dm_out), 
		.im_out(im_out), 
		.pc_out(pc_out), 
		.cw(cw), 
		.zf(zf), 
		.j(j)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		// Wait 50 ns for global reset to finish
//		
//		#200;
//		
//		rst =1;
		
		
//		
//		# 20;
//		
		forever
		#50 clk =! clk;
        
		// Add stimulus here

	end
      
endmodule

