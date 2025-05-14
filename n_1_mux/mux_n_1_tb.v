
module mux_n_1_tb;
  parameter N=3;
  reg [N-1:0]sel;
  reg [2**N-1:0]in;
  wire out;
  
  mux_n_1 #(N) dut (in,sel,out);
  initial
    begin
      in=8'b1100_1111;
      for(integer i=0;i<2**N;i=i+1)
        begin
          sel=i;
          #2;
        end
    end
  initial
 	begin
    	$monitor("time=%t,sel=%b,in=%b,out=%b",$time,sel,in,out);
      $dumpvars();
      $dumpfile("mux_n_1_tb.vcd");
    end
endmodule
