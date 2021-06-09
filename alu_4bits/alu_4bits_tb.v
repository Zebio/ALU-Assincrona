`timescale 1 ns/10 ps;  // time-unit = 1 ns, precision = 10 ps

module alu_4bits_tb();

reg [7:0] a,b;
reg [1:0] opr;

wire [7:0] soma;
wire [1:0] of,neg,zero;

alu_4bits dut(a,b,opr,soma,of,neg,zero);

initial
begin
	a		=8'b00000000;  //NULL
	b		=8'b00000000;	//NULL
	opr	=2'b00;			//NULL
	#1
	
	a		=8'b01011010;  //3
	b		=8'b01011001;	//4
	opr	=2'b01;			//0 = soma
	#1
	
	a		=8'b00000000;  //NULL
	b		=8'b00000000;	//NULL
	opr	=2'b00;			//NULL
	#1000000;
	$stop;
	
end

endmodule
