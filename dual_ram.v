module dual_ram(din,dout,wr_addr,rd_addr,we,re,clk,rst);

parameter depth=16,
	  width=8,
	  addr=4;

input [width-1:0]din;
input [addr-1:0]wr_addr,rd_addr;
input clk,rst,we,re;

output reg [width-1:0]dout;
reg [width-1:0]mem[depth-1:0];
integer i;

always@(posedge clk)
begin
	if(rst)
	begin
		dout<=0;
		for(i=0;i<16;i=i+1)
		mem[i]<=8'd0;
	end
	else
	begin
		if(we)
		mem[wr_addr]<=din;
		else
		mem[wr_addr]<=mem[wr_addr];

		if(re)
		dout<=mem[rd_addr];
		else
			mem[rd_addr]<=mem[addr];
end
end
endmodule
