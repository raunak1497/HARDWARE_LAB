module ALU(out,s1,s0,x,y);
   input[31:0] x,y;
   output [31:0] out;
   input 	 s1,s0;
   wire [31:0] 	 in0,in1,in2;
   MULTIPLIER mult0(in0,x,y);
   DIV_REM divrem0(in1,in2,x,y);
   MUX3X1_32BIT mux0(out,s1,s0,in0,in1,in2);
endmodule // ALU


