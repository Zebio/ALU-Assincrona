`timescale 1 ns/10 ps;  // time-unit = 1 ns, precision = 10 ps

module reg_ass_estr2_tb();

reg Ef,Et,Hab;

wire St, Sf;

reg_ass_estr2 dut(Et,Ef,Hab,St,Sf);

initial
begin
	Ef=0;
	Et=0;
	Hab=0;
	#1
	Ef=1;
	#1
	Hab=1;
	#1;
	Hab=0;
	#1;
end
endmodule 
