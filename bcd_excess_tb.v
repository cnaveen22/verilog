module bcd_excess_tb();
reg [3:0]B;
wire [3:0]E;
integer i;
bcd_excess dut(B,E);

initial
begin
	for(i=0;i<10;i=i+1)
	begin
		B=i;
		#10;
	end
end
endmodule
