module decoder_tb;
  reg [2:0]din;
  reg enable;
  wire [7:0]dout;
  decoder d1(din,enable,dout);
  integer i;
  initial begin
    $monitor("time=%t,enable=%b,din=%b,dout=%b",$time,enable,din,dout);
    enable=1'b0;
    #10;
    enable=1'b1;
    for(i=0;i<8;i=i+1)
      begin
        din=i+3'b001;
        #10;
      end    
  end
endmodule
