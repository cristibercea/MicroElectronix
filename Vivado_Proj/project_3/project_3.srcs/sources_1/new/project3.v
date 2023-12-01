module mux41(
output m,
input a1,a2,a3,a4,l1,l2
);
    wire l1n,l2n;
    //not(l1n,l1);
    assign l1n=~l1;
    //not(l2n,l2);
    assign l2n=~l2;
    wire b1,b2,b3,b4;
    assign b1=l1n&l2n&a1;
    assign b2=l1&l2n&a2;
    assign b3=l1n&l2&a3;
    assign b4=l1&l2&a4;
    assign m=b1|b2|b3|b4;
endmodule
