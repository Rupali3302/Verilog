
module half_adder_tb;
    reg a,b;
    wire sum,carry;
    half_adder dut(a,b,sum,carry);
    initial 
        begin
            $dumpfile("half_adder_tb.vcd");
            $dumpvars(0,half_adder_tb);
            a=1'b0;
            b=1'b0;
            #10;
            a=1'b0;
            b=1'b1;
            #10;
            a=1'b1;
            b=1'b0;
            #10;
            a=1'b1;
            b=1'b1;
        end
    initial 
        begin 
          $monitor("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);

            #50;
            $finish;
        end
endmodule