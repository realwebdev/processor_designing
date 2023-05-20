`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:24:58 12/13/2021 
// Design Name: 
// Module Name:    topmodule 
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

module top1(clk, rst, alu_out, pc_out, cw, zf, acc_out, dm_out, im_out, j );
input clk, rst;
output [15:0] alu_out, acc_out, dm_out, im_out;
output [4:0] pc_out;  
output [7:0] cw;
output zf,j;





//program counter


//checked
counter5b pc16b (
    .out(pc_out), 
    .in(im_out[4:0]), 
    .load(cw[7] & zf), 
    .inc(cw[6]), 
    .rst(rst), 
    .clk(clk)
    );





// instruction memory

im_code instmem (
  .a(pc_out), // input [4 : 0] a
  .d(16'd0), // input [15 : 0] d
  .clk(clk), // input clk
  .we(1'b0), // input we
  .spo(im_out) // output [15 : 0] spo
);

//datamemory

dm_code dm (
  .a(im_out[4:0]), // input [4 : 0] a
  .d(acc_out), // input [15 : 0] d
  .clk(clk), // input clk
  .we(cw[4]), // input we
  .spo(dm_out) // output [15 : 0] spo
);




	 
// Control Unit
	 
control_unit cu16b (
    .opcode(im_out[15:12]), 
    .cw(cw)
    );
	 
	 
 // ALU
	 
alu16b alu (
    .out(alu_out), 
    .in1(acc_out), 
    .in2(dm_out), 
    .clk(clk),  
    .sel(cw[3:1]), 
    .zf(zf)
    );
	 
//register 

accumulator16b accumulator (
    .out(acc_out), 
    .in(alu_out), 
    .clk(clk), 
    .load(cw[0]), 
    .rst(rst)
    );


endmodule