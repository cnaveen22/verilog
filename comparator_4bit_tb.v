module comparator_4bit_tb();

reg [3:0]A,B;
wire E;

integer i;

comparator_4bit dut(A,B,E);

initial
begin
	for(i=0;i<256;i=i+1)
	begin
		{A,B}=i;
		#10;
	end
end
initial
$monitor("inputs A=%0b,B=%0b,output E=%0b",A,B,E);
endmodule
