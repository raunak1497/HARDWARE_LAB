module PC_TB;
   reg[31:0] in;
   wire [31:0] out;
   reg 	       clk,en,inc,jump,reset;
   PC pc0(out,in,inc,jump,reset,clk);
   initial
     begin
	$dumpfile("PC_TB.vcd");
	$dumpvars(0,PC_TB);
     
	//reset
	inc = 1'b0;
	jump = 1'b0;
	reset = 1'b1;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	#10;
	//increment
	inc = 1'b1;
	jump = 1'b0;
	reset = 1'b0;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	#10;
	//jump
	in = 132;
	inc = 1'b0;
	jump = 1'b1;
	reset = 1'b0;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	#10;
	//increment
	inc = 1'b1;
	jump = 1'b0;
	reset = 1'b0;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	#10;
	//increment
	inc = 1'b1;
	jump = 1'b0;
	reset = 1'b0;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	#10;
	//reset
	reset = 1'b1;
	jump = 1'b0;
	inc = 1'b0;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
     end // initial begin
endmodule // PC_TB
