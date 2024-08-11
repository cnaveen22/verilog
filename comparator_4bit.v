module comparator_4bit(A,B,E);

input [3:0]A,B;
output E;
wire [3:0]W;

comparator_1bit cmp1(.a(A[0]),.b(B[0]),.E(W[0]));
comparator_1bit cmp2(.a(A[1]),.b(B[1]),.E(W[1]));
comparator_1bit cmp3(.a(A[2]),.b(B[2]),.E(W[2]));
comparator_1bit cmp4(.a(A[3]),.b(B[3]),.E(W[3]));
and a1(E,W[0],W[1],W[2],W[3]);

endmodule
