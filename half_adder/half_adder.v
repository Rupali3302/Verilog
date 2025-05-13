
//Gate level

module half_adder(a,b,sum,carry);
    input a,b;
    output sum,carry;
    wire sum,carry;
    xor x1(sum,a,b);
    and a1(carry,a,b);
endmodule

// Data flow model

module half_adder(a,b,sum,carry);
    input a,b;
    output sum,carry;
    assign sum=a^b;
    assign carry=a&b;
endmodule

//Behavioural model


module half_adder(a,b,sum,carry);
    input a,b;
    output reg sum,carry;
    always @(a,b)
    begin 
    	sum=a^b;
    	carry=a&b;
    end
endmodule
