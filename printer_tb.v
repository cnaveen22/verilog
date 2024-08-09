module printer_tb();

reg A,B,C;
wire Alaram1,Alaram2,Alaram3;
integer i;

printer dut(.A(A),.B(B),.C(C),.Alaram1(Alaram1),.Alaram2(Alaram2),.Alaram3(Alaram3));

initial
begin
	 for(i=0;i<8;i=i+1)
	 begin
		{A,B,C}=i;
		#10;
	 end
end
initial
	$monitor("A=%0b B=%0b C=%0b outputs Alaram1=%0b Alaram2=%0b Alaram3=%0b",A,B,C,Alaram1,Alaram2,Alaram3);
initial
	#150 $finish;
endmodule
