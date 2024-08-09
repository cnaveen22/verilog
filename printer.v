module printer(A,B,C,Alaram1,Alaram2,Alaram3);

input A,B,C;
output reg Alaram1,Alaram2,Alaram3;

always@(*)
begin
	case({A,B,C})	
        
		3'b000:{Alaram1,Alaram2,Alaram3}=3'b000;
		3'b001:{Alaram1,Alaram2,Alaram3}=3'b110;
		3'b010:{Alaram1,Alaram2,Alaram3}=3'b100;
		3'b011:{Alaram1,Alaram2,Alaram3}=3'b111;
		3'b100:{Alaram1,Alaram2,Alaram3}=3'b010;
		3'b101:{Alaram1,Alaram2,Alaram3}=3'b111;
		3'b110:{Alaram1,Alaram2,Alaram3}=3'b111;
		3'b111:{Alaram1,Alaram2,Alaram3}=3'b111;
	endcase
end

endmodule
