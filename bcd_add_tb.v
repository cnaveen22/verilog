module bcd_add_tb();

reg [3:0]a,b;
wire [3:0]s;
wire c2;
integer i,j;
bcd_adder dut(.a(a),.b(b),.s(s),.c2(c2));
initial
begin
	{a,b}=0;
	begin
	for(i=0;i<16;i=i+1)
	begin
		for(j=0;j<16;j=j+1)
	    	begin
		a=i;
		b=j;
		#10;
		end
	end
	end
end
initial
$monitor($time,"inputs a=%0b, b=%0b  output s=%0b, c2=%0b",a,b,s,c2);
endmodule
