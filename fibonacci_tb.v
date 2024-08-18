module fibonacci_tb();

reg clk,rst;
wire [31:0]value;

fibonacci DUT(clk,rst,value);

initial
begin
	rst=1;
	#10 rst=0;
end

initial
begin
	clk=0;
	forever #10 clk=~clk;
end

initial
begin

	#300 $finish;
end
always @(posedge clk)
    begin
        $display("rst=%0b, clk=%0b, value=%0d", rst, clk, value);
    end
endmodule
