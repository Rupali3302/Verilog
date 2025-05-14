module decoder_tb;
  parameter N=3;
  reg [N-1:0]in;
  wire [2**N-1:0]out;
  decoder #(N) dut(in,out);
  initial begin
    $monitor("time=%t,in=%b,out=%b",$time,in,out);
    for(integer i=0;i<2**N;i=i+1)
      begin
        in=i;
        #3;
      end
  end
endmodule
