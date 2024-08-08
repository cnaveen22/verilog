module bcd_adder(a,b,s,c2);

input [3:0]a,b;
output [3:0]s;
output c2;
wire [3:0]w;
wire c1,o1,o2,o3;

adder_4bit A1(a,b,w,c1);
and and1(o1,w[3],w[2]);
and and2(o2,w[3],w[1]);
or or1(o3,c1,o1,o2);
adder_4bit A2(w,{1'b0,o3,o3,1'b0},s[3:0],c2);

endmodule
