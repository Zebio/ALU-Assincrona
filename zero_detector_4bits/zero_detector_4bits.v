module zero_detector_4bits(e,z);

input  [7:0]e;
output [1:0]z;
wire   [1:0]x,y;


THAND(x[0],e[7],e[5],e[6],e[4]);
THAND(y[0],e[3],e[1],e[2],e[0]);

TH22(x[1],e[6],e[4]);
TH22(y[1],e[2],e[0]);


THAND(z[0],x[0],y[0],x[1],y[1]);
TH22 (z[1],x[1],y[1]);

endmodule
