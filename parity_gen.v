
module parity_gen(clk,rst,w,z);

input clk,rst,w;
output z;

parameter idle=4'b0000,
	s0=4'b0001,
	s1=4'b0010,
	s00=4'b0011,
	s01=4'b0100,
	s10=4'b0101,
	s11=4'b0111,
	s001=4'b1000,
	s010=4'b1001,
	s100=4'b1010,
	s111=4'b1011;

reg [3:0]pres,ns;

always@(posedge clk)
begin
	if(rst)
		pres<=idle;
	else
		pres<=ns;
end

always@(*)
begin
	ns=idle;
	case(pres)
	
		idle:begin
			if(w)
				ns=s1;
			else
				ns=s0;
		end

		s0:begin
			if(w)
				ns=s01;
			else
				ns=s00;
		end

		s1:begin
			if(w)
				ns=s11;
			else
				ns=s10;
		end

		s00:begin
			if(w)
				ns=s001;
			else
				ns=s00;
		end

		s01:begin
			if(w)
				ns=s11;
			else
				ns=s010;
		end

		s10:begin
			if(w)
				ns=s01;
			else
				ns=s100;
		end

		s11:begin
			if(w)
				ns=s111;
			else
				ns=s10;
		end

		s001:begin
			if(w)
				ns=s11;
			else
				ns=s010;
		end

		s010:begin
			if(w)
				ns=s01;
			else
				ns=s100;
		end

		s100:begin
			if(w)
				ns=s100;
			else
				ns=s00;
		end

		s111:begin
			if(w)
				ns=s111;
			else
				ns=s10;
		end
	endcase
end

assign z=(pres==s001|pres==s010|pres==s100|pres==s111) ? 1'b1:1'b0;

endmodule
