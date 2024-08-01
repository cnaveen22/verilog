module half_adder(a_in, b_in, sum_o, carry_o); 
input a_in;
input b_in; 
output sum_o; 
output carry_o;
assign sum_o = a_in ^ b_in; 
assign carry_o = a_in & b_in;
endmodule
