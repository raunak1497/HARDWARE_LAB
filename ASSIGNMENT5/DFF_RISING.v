module DFF_RISING(q,q_bar,d,clk);
   input d,clk;
   output q,q_bar;
   DFF dff0(q0,,d,~clk);
   DFF dff1(q,q_bar,q0,clk);
endmodule // DFF_RISING
