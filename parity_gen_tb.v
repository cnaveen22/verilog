module parity_gen_tb();

reg clk,rst,w;
wire z;

parity_gen DUT(clk,rst,w,z);

initial
begin
	clk=0;
	forever #10 clk=~clk;
end

task reset();
	begin
		@(negedge clk);
		//#10;
		rst=1'b1;
		@(negedge clk);
		//#10
		rst=1'b0;
	end
endtask

task inp(input i);
	begin
	@(negedge clk);
	w=i;
	end
endtask

initial
begin
	reset;
	
	inp(0);
	inp(1);
	inp(0);
	#20;
	
	inp(1);
	inp(0);
	inp(0);
	#20;
	inp(0);
	inp(0);
	inp(1);
	
end

initial
	$monitor("clk=%0d,rst=%0d, inputs w=%0d,output=%0d",clk,rst,w,z);
initial
	#400 $stop;
endmodule
