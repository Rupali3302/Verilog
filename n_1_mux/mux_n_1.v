//N select lines ------------------2**N inputs---------------------1 output
//User choice of select lines

module mux_n_1 #(parameter N=3)(input [2**N-1:0]in,input [N-1:0]sel,output reg out);
  always@(sel,in)
    begin
      out=in[sel];
    end
endmodule
