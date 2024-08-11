
module comparator_1bit(a,b,G,E,L);

input a,b;
output G,E,L;

assign G=a&~b;
assign L=~a&b;
assign E=~(a^b);

endmodule
