module decoder #(parameter N = 3) (input  [N-1:0] in,output reg [2**N-1:0] out);
    always @(*) 
      begin  
       out=1<<in;
      end
endmodule
