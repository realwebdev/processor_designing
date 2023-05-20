`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:12:15 02/23/2022
// Design Name:   mips_singlecycle
// Module Name:   F:/MSCS/01_Advance_Computer_Architecture/projects/mips3/mipstest12.v
// Project Name:  mips3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips_singlecycle
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mipstest12;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [31:0] alu_result;
	wire [31:0] rd_data1;
	wire [31:0] rd_data2;
	wire [31:0] pc_out;
	wire [31:0] in2;
	wire [31:0] instruction;

	// Instantiate the Unit Under Test (UUT)
	mips_singlecycle uut (
		.clk(clk), 
		.reset(reset), 
		.alu_result(alu_result), 
		.rd_data1(rd_data1), 
		.rd_data2(rd_data2), 
		.pc_out(pc_out), 
		.in2(in2), 
		.instruction(instruction)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#300;
	//reset=1;
        
		  forever #50;
		  clk=!clk;
        
		// Add stimulus here

	end
      
endmodule

