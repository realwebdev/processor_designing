`timescale 1ns / 1ps

module mips_singlecycle(//pc_in, pc_out, pc4, pc_br , pc_br2, instruction, rd_data1, rd_data2, wr_data, addr, rd_data, reg_dst, reg_wr, Alus, mem_wr, mem_rd, mem2reg, pcs, in2, sign_extended, clk, reset, alu_result);
input clk,
input reset,
output [31:0] alu_result,
output [31:0] rd_data1, rd_data2, pc_out,
output [31:0] in2,
output [31:0]instruction

);

// pc signals
wire [31:0]  pc_in,  pc4, pc_br , pc_br2;
wire [31:0] rdfromdm;
//imem signals
//wire [31:0] instruction;  
// reg_file signals
wire [4:0] wr_addr;
wire [31:0]   wr_data;
// dmem signals
wire [31:0] addr, rd_data;
// control signals
wire reg_dst, reg_wr, Alus, mem_wr, mem_rd, mem2reg, pcs;
wire [2:0] Aluop;
// Alu signals
//wire [31:0] in2;
wire zero;
// sign_extended
wire [31:0] sign_extended;
program_counter p_counter(.clk(clk),.reset(reset),.pc_in(pc_in),.pc_out(pc_out));

assign pc4=pc_out+32'b100;

//instruction memory

ins_mem ins_memory(.pc(pc_out),.instruction(instruction),.reset(reset));

//tempreg1

reg [31:0] tempreg1;
always@(posedge clk)
begin

	tempreg1 <= instruction;
	
end


//Control Unit 9 signals
control_unit cu(.reset(reset),.opcode(instruction[31:26]),.func(instruction[5:0]),.reg_dst(reg_dst),.reg_wr(reg_wr),.Alus(Alus),.Aluop(Aluop),.mem_wr(mem_wr),.mem_rd(mem_rd),.mem2reg(mem2reg),.pcs(pcs));





//Register Block
reg_file reg_f(.clk(clk),.reset(reset),.write_en(reg_wr),.rd_addr1(tempreg1[25:21]),.rd_addr2(tempreg1[20:16]),
.wr_addr(wr_addr),.wr_data(wr_data),.rd_data1(rd_data1),.rd_data2(rd_data2));


//sign extension convert 16 to 32 by adding 16 bit at MSB
sign_extend sg(.data_in(tempreg1[15:0]),.data_out(sign_extended));


//tempreg2

reg [31:0] tempreg21;
reg [31:0] tempreg22;
reg [4:0] write_reg_twenty_to_sixteen;
reg [4:0] write_reg_fifteen_to_eleven;
reg [31:0]extend; 

always@(posedge clk)
begin

	tempreg21 <= rd_data1;
	tempreg22 <= rd_data2;
	write_reg_twenty_to_sixteen <= tempreg1[20:16];
	write_reg_fifteen_to_eleven <= tempreg1[15:11];
	extend<=sign_extended;
end


// 1. Mux for instruction selection (after Instruction memotry before general register
Mux_5 mux1(.in0(instruction[20:16]),.in1(instruction[15:11]),.sel(reg_dst),.mux_out(wr_addr));


// 2. MUX for ALU input selection

Mux_32 mux2(.in0(tempreg22),.in1(extend),.sel(Alus),.mux_out(in2));

//alu

Alu alu(.in1(tempreg21),.in2(in2),.out(alu_result),.aluop(Aluop),.zero(zero));

//Shift 2 left

shift_left sh(.data_in(extend),.data_out(pc_br));

//Adder for pc+4+branch equal

ALU_add_only add(.in1(pc4),.in2(pc_br),.out(pc_br2));


//tempreg3
reg [31:0] tempreg31;
reg [31:0] tempreg32;
reg [31:0] branch;
reg [4:0] tempwr_addr;
always@(posedge clk)
begin

	tempreg31 <= alu_result;
	tempreg31 <= tempreg22;
	branch <= pc_br2;
	tempwr_addr <= wr_addr;
end 

//DataMemory contain operands
data_mem d_memory(.addr(alu_result),.clk(clk),.reset(reset),.rd_en(mem_rd),.wr_en(mem_wr),
.wr_data(rd_data2),.rd_data(rdfromdm));


//tempreg4

reg [31:0] tempreg41;
reg [31:0] tempreg42;
reg [4:0] tempwr_addr4;

always@(posedge clk)
begin

	tempreg41 <= rdfromdm;
	tempreg42 <= tempreg31;
	tempwr_addr4 <= tempwr_addr;

end 

//Mux 3. for selection of Data Write back

Mux_32 mux3(.in0(tempreg31),.in1(tempreg41),.sel(mem2reg),.mux_out(wr_data));

//4. Mux for Branch equal

Mux_32 mux4(.in0(pc4),.in1(pc_br2),.sel(pcs),.mux_out(pc_in));



endmodule