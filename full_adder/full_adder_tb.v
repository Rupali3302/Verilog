
module full_adder_tb;
  reg a,b,c_in;
  wire sum,carry;
  integer i;
  full_adder dut(a,b,c_in,sum,carry);
  initial
    begin
      a=1'b0;
      b=1'b0;
    end
  initial
    begin
      for(i=0;i<8;i=i+1)
        begin
          {a,b,c_in}=i;
          #10;
        end
    end
  initial 
    begin
      $monitor("time=%t,a=%b,b=%b,c_in=%b,sum=%b,carry=%b",$time,a,b,c_in,sum,carry);
      $dumpvars;
      $dumpfile("full_adder.vcd");
    end
endmodule
