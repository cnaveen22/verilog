module adder_4bit(a,b,s,c1);

input [3:0]a,b;
output reg [3:0]s;
output reg c1;

always@(*)
begin
	{c1,s}=a+b;
end
endmodule 
