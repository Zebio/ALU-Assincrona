module seg7_dual_rail(drdata,seg7,neg);

input      [7:0]drdata;
output reg [6:0]  seg7;
output reg neg;

always@(*)
begin

	case(drdata)
	8'b01010101:seg7 = 7'b1000000;//0
	8'b01010110:seg7 = 7'b1111001;//1
	8'b01011001:seg7 = 7'b0100100;//2
	8'b01011010:seg7 = 7'b0110000;//3
	8'b01100101:seg7 = 7'b0011001;//4
	8'b01100110:seg7 = 7'b0010010;//5
	8'b01101001:seg7 = 7'b0000010;//6
	8'b01101010:seg7 = 7'b1111000;//7
	8'b10010101:seg7 = 7'b0000000;//-8
	8'b10010110:seg7 = 7'b1111000;//-7
	8'b10011001:seg7 = 7'b0000010;//-6
	8'b10011010:seg7 = 7'b0010010;//-5
	8'b10100101:seg7 = 7'b0011001;//-4
	8'b10100110:seg7 = 7'b0110000;//-3
	8'b10101001:seg7 = 7'b0100100;//-2
	8'b10101010:seg7 = 7'b1111001;//-1
	default: 	seg7 = 7'b1111111;
	endcase
	
	neg = drdata[7];
	
end
endmodule 