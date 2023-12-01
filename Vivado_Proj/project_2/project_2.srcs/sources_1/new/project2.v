/*module half_adder(
input a,b,
output sum,carry
);

xor(sum,a,b);
and(carry,a,b);

endmodule 

module fa(
input A,B,Cin,
output SUM, Cout
);

wire sum1,c1,c2;
half_adder ha1(.sum(sum1),.carry(c1),.a(A),.b(B));
half_adder ha2(.sum(SUM),.carry(c2),.a(sum1),.b(Cin));
or(Cout,c1,c2);

endmodule 
*/
module fa(
input A,B,Cin,
output SUM, Cout
);
wire a,b,c;
xor(a,A,B);
xor(SUM,a,Cin);
and(b,A,B);
and(c,a,Cin);
or(Cout,b,c);
endmodule 