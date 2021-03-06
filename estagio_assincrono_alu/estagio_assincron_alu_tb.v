
`timescale 1 us/10 ps;  // time-unit = 1 ns, precision = 10 ps

module estagio_assincron_alu_tb();

reg  [7:0] a,b;
reg  [1:0] opr;
reg  ack_in;

wire [7:0]soma;
wire [1:0]of,neg,zero;
wire ack_out;

reg [8:0]i;

// duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
localparam period = 1; 

estagio_assincron_alu dut(a,b,opr,ack_in,soma,of,neg,zero,ack_out);

initial 
begin
	a		=8'b00000000;  //NULL
	b		=8'b00000000;	//NULL
	opr	=2'b00;			//NULL
	ack_in=1;				//1
	for(i=0;i<200;i=i+1)
	begin
		a=8'b01011010;
		b=8'b10101010;
		opr=2'b01;
		ack_in=0;
		#1;
		a=8'b00000000;
		b=8'b00000000;
		opr=2'b00;
		ack_in=1;
		#1;
	end
	
	#59999600;				//1u x 10^6 = 1ms
	$stop;
end


endmodule 