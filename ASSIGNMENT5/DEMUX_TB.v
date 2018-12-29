module DEMUX1X2_TB;
wire out0,out1;
reg s0,in;
DEMUX1X2 demux0(out0,out1,s0,in);
initial
  begin
     $dumpfile("DEMUX1X2_TB.vcd");
     $dumpvars(0,DEMUX1X2_TB);
		#10;
		s0 = 1'b0;in = 1'b0;
		#10;
		s0 = 1'b0;in = 1'b1;
		#10;
		s0 = 1'b1;in = 1'b0;
		#10;
		s0 = 1'b1;in = 1'b1;
	end
endmodule
