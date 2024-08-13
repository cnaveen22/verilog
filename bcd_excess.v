module bcd_excess(B,E);

input [3:0]B;
output [3:0]E;

wire [9:0]w;

decode_4to10 d1(B,w);

or o1(E[0],w[0],w[2],w[4],w[6],w[8]);
or o2(E[1],w[0],w[3],w[4],w[7],w[8]);
or o3(E[2],w[1],w[2],w[3],w[4],w[9]);
or o4(E[3],w[5],w[6],w[7],w[8],w[9]);

endmodule
