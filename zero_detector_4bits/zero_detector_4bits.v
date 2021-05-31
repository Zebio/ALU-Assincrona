module zero_detector_4bits(e,z);

input  [7:0]e;
output [1:0]z;
wire   [1:0]x,y;


THAND thand1(x[0],e[7],e[5],e[6],e[4]);
THAND thand2(y[0],e[3],e[1],e[2],e[0]);

TH22 th221(x[1],e[6],e[4]);
TH22 th222(y[1],e[2],e[0]);


THAND thand3(z[0],x[0],y[0],x[1],y[1]);
TH22  thand4(z[1],x[1],y[1]);

endmodule
