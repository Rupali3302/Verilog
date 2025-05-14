module mux_4_1_tb();
  reg [3:0]in;
  reg [1:0]sel;
  wire out;
  mux_4_1 dut(in,sel,out);
  initial
    begin
      $monitor("time=%t,sel=%b,in=%b,out=%b",$time,sel,in,out);
       in=4'b1011; 
      for(integer i=0;i<4;i=i+1)
        begin
          sel=i;
          #2;
        end
    end
  
endmodule
