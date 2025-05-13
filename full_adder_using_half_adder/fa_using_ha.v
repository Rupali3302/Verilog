module half_adder(a,b,sum,carry);
  input a,b;
  output sum,carry;
  assign sum=a^b;
  assign carry =a&b;
endmodule

module fa_using_ha(a,b,c_in,s,c);
  input a,b,c_in;
  output s,c;
  wire l,m,n;
  half_adder h1(.a(a),.b(b),.sum(l),.carry(m));
  half_adder h2(.a(l),.b(c_in),.sum(s),.carry(n));
  assign c=m|n;
endmodule
