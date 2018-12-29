module MULTIPLIER_TB;
   reg[31:0] a,b;
   wire [31:0] prod;
   MULTIPLIER mult0(prod,a,b);
   initial
     begin
	$dumpfile("MULTIPLIER_TB.vcd");
	$dumpvars(0,MULTIPLIER_TB);
	
	a = 2;
	b = 8;
	#10;
	a = 4;
	b = 54;
	#10;
	a = 0;
	b = 456;
	
     end
endmodule // MULTLIPLIER_TB
