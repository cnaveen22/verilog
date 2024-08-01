module half_adder_test;
reg a_in;
reg b_in; 
wire sum_o; 
wire carry_o;
// Instantiate design under test
half_adder DUT(.a_in(a_in), .b_in(b_in), .sum_o(sum_o), .carry_o(carry_o));
initial begin
// Dump waves
$dumpfile("dump.vcd");
$dumpvars(1);
a_in = 1'b0; 
b_in = 1'b0;
#10 a_in = 1'b1; b_in = 1'b0; 
#10 a_in = 1'b0; b_in = 1'b1; 
#10 a_in = 1'b1; b_in = 1'b1; 
#10 a_in = 1'b0; b_in = 1'b0;
end 
endmodule
