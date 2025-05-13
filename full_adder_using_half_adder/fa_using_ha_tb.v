//Full adder using half adder test bench

module fa_using_ha_tb;
  reg a,b,c_in;
  wire s,c;
  fa_using_ha dut(a,b,c_in,s,c);
  
  initial begin
    #5 a=0;b=0;c_in=0;
    #5 a=0;b=0;c_in=1;    
    #5 a=0;b=1;c_in=0;    
    #5 a=0;b=1;c_in=1;    
    #5 a=1;b=0;c_in=0;    
    #5 a=1;b=0;c_in=1;    
    #5 a=1;b=1;c_in=0;
    #5 a=1;b=1;c_in=1;
  end
  
  initial begin
    $dumpvars;
    $dumpfile("fa_using_ha.vcd");
    $monitor("time=%t,a=%b,b=%b,c_in=%b,sum=%b,carry=%b",$time,a,b,c_in,s,c);
  end
endmodule