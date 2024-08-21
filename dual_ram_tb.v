
module dual_ram_tb();

parameter width=8,depth=16,addr=4;
reg clk,rst,we,re;
reg [addr-1:0]wr_addr,rd_addr;
reg [width-1:0]din;
wire [width-1:0]dout;
integer x,y;

dual_ram DUT (din,dout,wr_addr,rd_addr,we,re,clk,rst);


task intialize;
begin
	{clk,we,re}=1'b0;
	{wr_addr,rd_addr,din}=0;
end
endtask

always #10 clk = ~clk;

task reset;
begin
	@(negedge clk);
	rst=1'b1;
	@(negedge clk);
	rst=1'b0;
end
endtask

task write(input [7:0]in,input [3:0]wad,w);
begin
	@(negedge clk);
	din=in;
	wr_addr=wad;
	we=w;
	
end
endtask

task read(input [3:0]rad,r);
begin
	@(negedge clk);
	rd_addr=rad;
	re=r;
	
end
endtask

initial
begin
	intialize;
	reset;
	#10;
	for(x=0;x<16;x=x+1)
	write({$random}%256,x,1);
	#20;
	write({$random}%256,x,0);
	#20;
	for(y=0;y<16;y=y+1)
	read(y,1);
end

always@(negedge clk)
begin
	$display("clk=%0b rst=%0b wdr=%0b we=%0b din=%0d and re=%0b rdr=%0b dout=%0d",clk,rst,we,re,wr_addr,rd_addr,din,dout);
end

initial
	#700 $finish;
endmodule
