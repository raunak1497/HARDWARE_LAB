module FULL_SUB_TB;
   wire diff,borr;
   reg 	a,b,bin;
   FULL_SUB fs0(diff,borr,a,b,bin);
   initial
     begin
	$dumpfile("FULL_SUB_TB.vcd");
	$dumpvars(0,FULL_SUB_TB);
	#10;
	a = 1'b0;
	b = 1'b0;
	bin = 1'b0;
	#10;
	a = 1'b0;
	b = 1'b0;
	bin = 1'b1;
	#10;
	a = 1'b0;
	b = 1'b1;
	bin = 1'b0;
	#10;
	a = 1'b0;
	b = 1'b1;
	bin = 1'b1;
	#10;
	a = 1'b1;
	b = 1'b0;
	bin = 1'b0;
	#10;
	a = 1'b1;
	b = 1'b0;
	bin = 1'b1;
	#10;
	a = 1'b1;
	b = 1'b1;
	bin = 1'b0;
	#10;
	a = 1'b1;
	b = 1'b1;
	bin = 1'b1;
     end // initial begin
endmodule // FULL_SUB_TB
